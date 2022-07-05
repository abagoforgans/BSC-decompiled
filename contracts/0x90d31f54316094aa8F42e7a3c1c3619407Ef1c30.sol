contract main {




// =====================  Runtime code  =====================


const sub_0c312219(?) = (chainid == 56)

const sub_2f007946(?) = block.number

const sub_69c3adc6(?) = block.timestamp


address registryAddress;

function registryAddress() payable {
    return registryAddress
}

function _fallback() payable {
    revert
}

function sub_4f6432b6(?) payable {
    if 56 != chainid:
        return 3
    return eth.balance(0xeb2d2f1b8c558a40207669291fda468e50c8a0bb)
}

function sub_7ed1258e(?) payable {
    if 56 != chainid:
        return 2
    return eth.balance(0x8894e0a0c962cb723c1976a4421c95949be2d4e3)
}

function sub_a074b616(?) payable {
    if 56 != chainid:
        return 1
    return eth.balance(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
}

function sub_2fbc97c4(?) payable {
    if 56 != chainid:
        return 0
    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
    staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
            gas gas_remaining wei
           args 0x58f876857a02d6762e0101bb5c46a8c1ed44dc16
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getRandomNumber(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 56 != chainid:
        return sha3(arg1, 0, 1, 2, 3, block.number, block.timestamp)
    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
    staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
            gas gas_remaining wei
           args 0x58f876857a02d6762e0101bb5c46a8c1ed44dc16
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 56 != chainid:
        return sha3(arg1, ext_call.return_data[0], 1, 2, 3, block.number, block.timestamp)
    return sha3(arg1, ext_call.return_data[0], eth.balance(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), eth.balance(0x8894e0a0c962cb723c1976a4421c95949be2d4e3), eth.balance(0xeb2d2f1b8c558a40207669291fda468e50c8a0bb), block.number, block.timestamp)
}

function sub_13bc4e00(?) payable {
    require calldata.size - 4 >= 32
    if 56 != chainid:
        return uint8((sha3(arg1, 0, 1, 2, 3, block.number, block.timestamp) % 100) + 1)
    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
    staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
            gas gas_remaining wei
           args 0x58f876857a02d6762e0101bb5c46a8c1ed44dc16
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 56 != chainid:
        return uint8((sha3(arg1, ext_call.return_data[0], 1, 2, 3, block.number, block.timestamp) % 100) + 1)
    return uint8((sha3(arg1, ext_call.return_data[0], eth.balance(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), eth.balance(0x8894e0a0c962cb723c1976a4421c95949be2d4e3), eth.balance(0xeb2d2f1b8c558a40207669291fda468e50c8a0bb), block.number, block.timestamp) % 100) + 1)
}

function sub_35a72ee1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if uint8(arg1) < 1:
        revert with 0, 'require correct ship type.'
    if uint8(arg1) > 19:
        revert with 0, 'require correct ship type.'
    require ext_code.size(registryAddress)
    staticcall registryAddress.0x32b5747b with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    require ext_code.size(registryAddress)
    staticcall registryAddress.0xa9692cf6 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 192] = 32
    idx = 0
    s = (2 * ceil32(return_data.size)) + 256
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 256 len 64])
}

function sub_c71f1414(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if uint8(arg1) < 1:
        revert with 0, 'require correct ship type.'
    if uint8(arg1) > 19:
        revert with 0, 'require correct ship type.'
    if 1 == uint8(arg1):
        revert with 0, 'Not implemented'
    if 2 == uint8(arg1):
        return 32, 2, 4000 * 10^18, 4000 * 10^18
    if 3 == uint8(arg1):
        return 32, 2, 5000 * 10^18, 5000 * 10^18
    if 4 == uint8(arg1):
        revert with 0, 'Not implemented'
    if 5 == uint8(arg1):
        revert with 0, 'Not implemented'
    if 6 == uint8(arg1):
        return 32, 2, 100 * 10^18, 0
    if 7 == uint8(arg1):
        return 32, 2, 6000 * 10^18, 6000 * 10^18
    if 8 == uint8(arg1):
        return 32, 2, 400 * 10^18, 0
    if 9 == uint8(arg1):
        return 32, 2, 10000 * 10^18, 10000 * 10^18
    if 10 == uint8(arg1):
        return 32, 2, 11000 * 10^18, 11000 * 10^18
    if 11 == uint8(arg1):
        revert with 0, 'Not implemented'
    if 12 == uint8(arg1):
        return 32, 2, 1000 * 10^18, 0
    if 13 == uint8(arg1):
        return 32, 2, 12000 * 10^18, 12000 * 10^18
    if 14 == uint8(arg1):
        revert with 0, 'Not implemented'
    if 15 == uint8(arg1):
        return 32, 2, 2000 * 10^18, 2000 * 10^18
    if 16 == uint8(arg1):
        return 32, 2, 20000 * 10^18, 20000 * 10^18
    if 17 == uint8(arg1):
        return 32, 2, 24000 * 10^18, 24000 * 10^18
    if 18 == uint8(arg1):
        return 32, 2, 30000 * 10^18, 30000 * 10^18
    if uint8(arg1) != 19:
        return Array(len=2, data=call.data[calldata.size len 64])
    return 32, 2, 100000 * 10^18, 100000 * 10^18
}



}
