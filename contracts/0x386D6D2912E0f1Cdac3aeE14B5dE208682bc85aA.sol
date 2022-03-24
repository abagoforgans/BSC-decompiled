contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
array of struct stor1;
mapping of uint256 stor2;
uint256 threshold;

function threshold() payable {
    return threshold
}

function _fallback() payable {
    revert
}

function isSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return not not stor2[address(arg1)]
}

function setThreshold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if this.address != msg.sender:
        revert with 0, 'Msign.onlySelf.EID00001'
    if arg1 < 1:
        revert with 0, 'Msign.assign.EID00089'
    if arg1 > stor1.length:
        revert with 0, 'Msign.assign.EID00089'
    emit 0x245c8cde: threshold, arg1, msg.sender
    threshold = arg1
}

function getMulsignWeight(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if var33002 >= stor1.length:
        return var33003
    if stor1.length <= var39001:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    require var41002 < stor1.length
    if var57002 >= stor1.length:
        return var57003
    # nil
}

function enableSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if this.address != msg.sender:
        revert with 0, 'Msign.onlySelf.EID00001'
    if stor2[address(arg1)]:
        revert with 0, 'Msign.enable.EID00015'
    stor1.length++
    stor1[stor1.length].field_0 = arg1
    stor1[stor1.length].field_160 = 0
    stor2[address(arg1)] = stor1.length
    emit 0xa96bc736: msg.sender, arg1
}

function sign(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[address(msg.sender)]:
        revert with 0, 'Msign.onlySigner.EID00082'
    if stor0[arg1][3][address(msg.sender)].field_0:
        revert with 0, 'Msign.sign.EID00084'
    if stor0[arg1].field_512:
        revert with 0, 'Msign.sign.EID00079'
    stor0[arg1][3][address(msg.sender)].field_0 = 1
    emit Sign(arg1, msg.sender);
}

function proposals(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[128] = stor0[arg1][1].field_0
    idx = 128
    s = 0
    while stor0[arg1][1].length + 96 > idx:
        mem[idx + 32] = stor0[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor0[arg1].field_0, 
           Array(len=stor0[arg1][1].length, data=mem[128 len ceil32(stor0[arg1][1].length)]),
           bool(stor0[arg1].field_512)
}

function disableSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if this.address != msg.sender:
        revert with 0, 'Msign.onlySelf.EID00001'
    if not stor2[address(arg1)]:
        revert with 0, 'Msign.disable.EID00016'
    require stor1.length - 1 < stor1.length
    require stor2[address(arg1)] - 1 < stor1.length
    stor1[stor2[address(arg1)]].field_0 = stor1[stor1.length].field_0
    stor2[stor1[stor1.length].field_0] = stor2[address(arg1)]
    require stor1.length
    stor1[stor1.length].field_0 = 0
    stor1.length--
    stor2[address(arg1)] = 0
    if stor1.length < 1:
        revert with 0, 'Msign.disable.EID00085'
    emit 0xc3b63345: msg.sender, arg1
}

function getHash(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 160] = address(arg1)
    mem[ceil32(arg2.length) + 180 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + arg2.length + 180] = 0
    mem[ceil32(arg2.length) + 128] = arg2.length + 20
    mem[ceil32(arg2.length) + arg2.length + 180] = sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
    return memory
      from ceil32(arg2.length) + arg2.length + 180
       len 32
}

function activate(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if not stor2[address(msg.sender)]:
        revert with 0, 'Msign.onlySigner.EID00082'
    if not arg1:
        revert with 0, 'Msign.activate.code.EID00090'
    if arg2.length < 4:
        revert with 0, 'Msign.activate.data.EID00090'
    mem[ceil32(arg2.length) + 160] = address(arg1)
    mem[ceil32(arg2.length) + 180 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + arg2.length + 180] = 0
    mem[ceil32(arg2.length) + 128] = arg2.length + 20
    stor0[mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]].field_0 = arg1
    stor0[mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    emit Activate(sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]), msg.sender);
    return sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
}

function signers() payable {
    if not stor1.length:
        if var29002 >= stor1.length:
            mem[(32 * stor1.length) + 128] = 32
            mem[(32 * stor1.length) + 160] = stor1.length
            idx = 0
            s = 128
            t = (32 * stor1.length) + 192
            while idx < stor1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor1.length) + 128
               len (96 * stor1.length) + 64
        if stor1.length <= var35001:
            revert with 0, 'EnumerableSet: index out of bounds'
        require var37002 < stor1.length
        require var43002 < stor1.length
        mem[(32 * var45001) + 128] = address(var45003)
        if var55002 < stor1.length:
            # nil
        else:
            mem[(32 * stor1.length) + 128] = 32
            mem[(32 * stor1.length) + 160] = stor1.length
            idx = 0
            s = 128
            t = (32 * stor1.length) + 192
            while idx < stor1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor1.length) + 128
               len (96 * stor1.length) + 64
    else:
        mem[128 len 32 * stor1.length] = code.data[8028 len 32 * stor1.length]
        if var30002 >= stor1.length:
            mem[(32 * stor1.length) + 128] = 32
            mem[(32 * stor1.length) + 160] = stor1.length
            idx = 0
            s = 128
            t = (32 * stor1.length) + 192
            while idx < stor1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor1.length) + 128
               len (96 * stor1.length) + 64
        if stor1.length <= var36001:
            revert with 0, 'EnumerableSet: index out of bounds'
        require var38002 < stor1.length
        require var44002 < stor1.length
        mem[(32 * var46001) + 128] = address(var46003)
        if var56002 < stor1.length:
            # nil
        else:
            mem[(32 * stor1.length) + 128] = 32
            mem[(32 * stor1.length) + 160] = stor1.length
            idx = 0
            s = 128
            t = (32 * stor1.length) + 192
            while idx < stor1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor1.length) + 128
               len (96 * stor1.length) + 64
}

function execute(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if var34002 >= stor1.length:
        if var34003 < threshold:
            revert with 0, 'Msign.onlyMulsign.EID00083'
        if stor0[arg1].field_512:
            revert with 0, 'Msign.execute.EID00022'
        stor0[arg1].field_512 = 1
        if not stor0[arg1].field_256:
            mem[96] = Mask(248, 8, stor0[arg1].field_256)
            call stor0[arg1].field_0 with:
               funct stor0[arg1].field_480
                 gas gas_remaining wei
                args mem[100 len stor0[arg1].field_257 - 4]
        else:
            if stor0[arg1].field_256 != 1:
                call stor0[arg1].field_0.mem[96 len 4] with:
                     gas gas_remaining wei
                    args mem[100 len -100]
            else:
                idx = 0
                s = 0
                while idx < stor0[arg1].field_257:
                    mem[idx + 96] = stor0[arg1][s + 1].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                call stor0[arg1].field_0.mem[96 len 4] with:
                     gas gas_remaining wei
                    args mem[100 len stor0[arg1].field_257 - 4]
        if not ext_call.success:
            revert with 0, 'Msign.execute.EID00020'
        emit Execute(arg1, msg.sender);
        if return_data.size:
            return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
        mem[96] = bool(ext_call.success)
        mem[128] = 64
        mem[160] = bool(ext_call.success)
        mem[192 len ceil32(bool(ext_call.success))] = mem[128 len ceil32(bool(ext_call.success))]
        if ceil32(bool(ext_call.success)) > bool(ext_call.success):
            mem[bool(ext_call.success) + 192] = 0
        return memory
          from 96
           len ceil32(bool(ext_call.success)) + 96
    if stor1.length <= var40001:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    require var42002 < stor1.length
    if var58002 < stor1.length:
        # nil
    else:
        if var58003 < threshold:
            revert with 0, 'Msign.onlyMulsign.EID00083'
        if stor0[arg1].field_512:
            revert with 0, 'Msign.execute.EID00022'
        stor0[arg1].field_512 = 1
        if not stor0[arg1].field_256:
            mem[96] = Mask(248, 8, stor0[arg1].field_256)
            call stor0[arg1].field_0 with:
               funct stor0[arg1].field_480
                 gas gas_remaining wei
                args mem[100 len stor0[arg1].field_257 - 4]
        else:
            if stor0[arg1].field_256 != 1:
                call stor0[arg1].field_0.mem[96 len 4] with:
                     gas gas_remaining wei
                    args mem[100 len -100]
            else:
                idx = 0
                s = 0
                while idx < stor0[arg1].field_257:
                    mem[idx + 96] = stor0[arg1][s + 1].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                call stor0[arg1].field_0.mem[96 len 4] with:
                     gas gas_remaining wei
                    args mem[100 len stor0[arg1].field_257 - 4]
        if not ext_call.success:
            revert with 0, 'Msign.execute.EID00020'
        emit Execute(arg1, msg.sender);
        if return_data.size:
            return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
        mem[96] = bool(ext_call.success)
        mem[128] = 64
        mem[160] = bool(ext_call.success)
        mem[192 len ceil32(bool(ext_call.success))] = mem[128 len ceil32(bool(ext_call.success))]
        if ceil32(bool(ext_call.success)) > bool(ext_call.success):
            mem[bool(ext_call.success) + 192] = 0
        return memory
          from 96
           len ceil32(bool(ext_call.success)) + 96
}



}
