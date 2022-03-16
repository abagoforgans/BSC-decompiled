import json
import logging
import os
import sys
import traceback
import binascii
import timeout_decorator
from contextlib import redirect_stdout

import pano.folder as folder
from pano.contract import Contract
from pano.function import Function
from pano.loader import Loader
from pano.prettify import explain, pprint_repr, pprint_trace, pretty_type
from pano.vm import VM
from pano.whiles import make_whiles
from utils.helpers import C, rewrite_trace
from web3 import Web3
from web3.middleware import geth_poa_middleware



logger = logging.getLogger(__name__)
logger.setLevel(logging.INFO)



def decompile(code):

    """
        Fetch code from Web3, and disassemble it.

        Loader holds the disassembled line by line code,
        and the list of functions within the contract.
    """

    loader = Loader()
    loader.load(code)
    loader.run(VM(loader, just_fdests=True))

    if len(loader.lines) == 0:
        return





    """

        Main decompilation loop

    """

    problems = {}
    functions = {}

    for (hash, fname, target, stack) in loader.func_list:
        """
            hash contains function hash
            fname contains function name
            target contains line# for the given function
        """


        #print("[+]", hash, fname)

        try:
            if target > 1 and loader.lines[target][1] == "jumpdest":
                target += 1

            # TIMEOUT
            def dec():
                trace = VM(loader).run(target, stack=stack)
                explain("Initial decompiled trace", trace[1:])

                if "--explain" in sys.argv:
                    trace = rewrite_trace(
                        trace, lambda line: [] if type(line) == str else [line]
                    )
                    explain("Without assembly", trace)

                trace = make_whiles(trace)
                explain("final", trace)

                if "--explain" in sys.argv:
                    explain("folded", folder.fold(trace))

                return trace

            trace = dec()

            functions[hash] = Function(hash, trace)

        except Exception as e:
            problems[hash] = fname

            logger.error(f"Problem with %s%s\n%s", fname, C.end, traceback.format_exc())

    """

        Store decompiled contract into .json

    """

    contract = Contract(
        problems=problems,
        functions=functions,
    )

    contract.postprocess()






    if len(problems) > 0:
        print(C.gray + "#")
        for p in problems.values():
            print(f"{C.end}{C.gray}#  - {C.end}{C.fail}{p}{C.end}{C.gray}")
        print("#" + C.end)


    """
        Print out constants & storage
    """

    shown_already = set()

    for func in contract.consts:
        shown_already.add(func.hash)
        print(func.print())
        print()
        
    if shown_already:
        print()

    if len(contract.stor_defs) > 0:


        for s in contract.stor_defs:
            print(pretty_type(s))

        print()

    """
        Print out getters
    """

    for hash, func in functions.items():
        if func.getter is not None:
            shown_already.add(hash)
            print(func.print())

            if "--repr" in sys.argv:
                print()
                pprint_repr(func.trace)

            print()

    """
        Print out regular functions
    """

    func_list = list(contract.functions)
    func_list.sort(
        key=lambda f: f.priority()
    )  # sort func list by length, with some caveats

    for func in func_list:
        hash = func.hash

        if hash not in shown_already:
            shown_already.add(hash)

            print(func.print())
            print()

            if "--returns" in sys.argv:
                for r in func.returns:
                    print(r)

            if "--repr" in sys.argv:
                pprint_repr(func.orig_trace)

@timeout_decorator.timeout(120)
def start(tx, creation_code):
  
    initcode = ''
    runtimecode = ''
    includeInit = 1

    # free memory pointer
    if creation_code.startswith('6060604052'):
        codes = creation_code.split('6060604052')
        initcode = '6060604052' + codes[1]
        if(len(codes) > 2):
            runtimecode = '6060604052' + codes[2]
    elif creation_code.startswith('6080604052'):
        includeInit = 0
        codes = creation_code.split('6080604052')
        initcode = '6080604052' + codes[1]
        if(len(codes) > 2):
            runtimecode = '6080604052' + codes[2]
    else:
        return
    
    contractAddress = w3.eth.get_transaction_receipt(tx)['contractAddress']
    sys.stdout = open('../contracts/' + contractAddress + '.sol', 'w')
    print('contract main {\n\n')

    if includeInit == 1:
        print('// =======================  Init code  ======================\n\n')
        decompile(initcode)

    print('\n\n// =====================  Runtime code  =====================\n\n')
    decompile(runtimecode)
    print('\n\n}')


w3 = Web3(Web3.HTTPProvider('https://rpc.ankr.com/bsc'))
w3.middleware_onion.inject(geth_poa_middleware, layer=0)

old_blocknumber = int(open('CURRENT_BLOCK', 'r').read())
new_blocknumber = old_blocknumber + 50000
bf = open('CURRENT_BLOCK', 'w')
bf.write(str(new_blocknumber))
bf.close()

for blocknumber in range(old_blocknumber, new_blocknumber):
    sys.stdout = sys.__stdout__
    print('\n\n[' + str(blocknumber) + ']')
    txs = w3.eth.get_block(blocknumber, True)['transactions']

    for i in txs:
        sys.stdout = sys.__stdout__
        txhash = binascii.hexlify(i['hash']).decode()
        if i['to'] == None:
            print('[+] 0x' + txhash + '  ***')
            start(txhash, i['input'][2:])
        else:
            print('[+] 0x' + txhash)
            

sys.stdout.close()
