contract main {




// =====================  Runtime code  =====================


address primaryOwner;
address authorityAddress;
address systemAddress;
address newAuthorityAddress;
mapping of address sub_fa86cf56;
mapping of uint256 contractIndex;
array of uint256 contracts;

function newAuthorityAddress() payable {
    return newAuthorityAddress
}

function authorityAddress() payable {
    return authorityAddress
}

function contracts(uint256 arg1) payable {
    return contracts[arg1][0 len contracts[arg1].length].field_0
}

function primaryOwner() payable {
    return primaryOwner
}

function totalContracts() payable {
    return contracts.length
}

function systemAddress() payable {
    return systemAddress
}

function contractIndex(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return contractIndex[arg1]
}

function sub_fa86cf56(?) payable {
    require calldata.size - 4 >= 32
    return sub_fa86cf56[arg1]
}

function _fallback() payable {
    revert
}

function changePrimaryOwner() payable {
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    emit 0x6840904f: 'PRIMARY_OWNER', primaryOwner, authorityAddress
    primaryOwner = authorityAddress
    return 1
}

function acceptAuthorityAddress() payable {
    if newAuthorityAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    emit 0x6840904f: 'AUTHORITY_ADDRESS', authorityAddress, newAuthorityAddress
    authorityAddress = newAuthorityAddress
    newAuthorityAddress = 0
    return 1
}

function sub_a15050a0(?) payable {
    require calldata.size - 4 >= 64
    if primaryOwner != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if not arg2:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if not sub_fa86cf56[arg1]:
        revert with 0, 'ERR_ZERO_ADDRESS'
    emit 0x56fe5614: sub_fa86cf56[arg1], arg2, arg1
    sub_fa86cf56[arg1] = arg2
    return 1
}

function stringToBytes32(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128] = mem[128]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function changeAuthorityAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if authorityAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if not arg1:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if systemAddress == arg1:
        revert with 0, 'ERR_SAME_ADDRESS'
    if authorityAddress == arg1:
        revert with 0, 'ERR_SAME_ADDRESS'
    if primaryOwner == arg1:
        revert with 0, 'ERR_SAME_ADDRESS'
    newAuthorityAddress = arg1
    return 1
}

function changeSystemAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if authorityAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if this.address == arg1:
        revert with 0, 'ERR_CONTRACT_SELF_ADDRESS'
    if not arg1:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if systemAddress == arg1:
        revert with 0, 'ERR_SAME_ADDRESS'
    if authorityAddress == arg1:
        revert with 0, 'ERR_SAME_ADDRESS'
    if primaryOwner == arg1:
        revert with 0, 'ERR_SAME_ADDRESS'
    emit 0x6840904f: 'SYSTEM_ADDRESS', systemAddress, arg1
    systemAddress = arg1
    return 1
}

function bytes32ToString(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    mem[128] = code.data[5552 len 32]
    idx = 0
    while idx < 32:
        require idx < 32
        mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    return 32, 32, mem[128]
}

function sub_e5920d06(?) payable {
    require calldata.size - 4 >= 64
    if primaryOwner != msg.sender:
        if systemAddress != msg.sender:
            revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if not arg2:
        revert with 0, 'ERR_ZERO_ADDRESS'
    if sub_fa86cf56[arg1]:
        revert with 0, 'ERR_SAME_ADDRESS'
    sub_fa86cf56[arg1] = arg2
    contractIndex[arg1] = contracts.length
    mem[384] = code.data[5552 len 32]
    idx = 0
    while idx < 32:
        require idx < 32
        mem[idx + 384 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    contracts.length++
    contracts[contracts.length].field_0 = 65
    s = 0
    idx = 384
    while 416 > idx:
        contracts[contracts.length + s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while contracts[contracts.length].length + 31 / 32 > idx:
        contracts[contracts.length + idx].field_0 = 0
        idx = idx + 1
        continue 
    emit 0x56fe5614: 0, arg2, arg1
    return 1
}

function sub_9d9c9647(?) payable {
    require calldata.size - 4 >= 32
    if authorityAddress != msg.sender:
        revert with 0, 'AUTHORIZED_ADDRESS_ONLY'
    if not sub_fa86cf56[arg1]:
        revert with 0, 'ERR_ZERO_ADDRESS'
    require 1 <= contracts.length
    require contracts.length - 1 < contracts.length
    mem[320] = stor[sha3(('name', 'contracts', 6) + contracts.length - 1)].field_0
    idx = 320
    s = 0
    while stor[('name', 'contracts', 6) + contracts.length - 1].length + 288 > idx:
        mem[idx + 32] = stor[s + sha3(('name', 'contracts', 6) + contracts.length - 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require contractIndex[arg1] < contracts.length
    contracts[stor5[arg1]][].field_0 = Array(len=stor[('name', 'contracts', 6) + contracts.length - 1].length, data=mem[320 len stor[('name', 'contracts', 6) + contracts.length - 1].length])
    contractIndex[mem[320]] = contractIndex[arg1]
    emit 0x56fe5614: sub_fa86cf56[arg1], 0, arg1
    sub_fa86cf56[arg1] = 0
    contractIndex[arg1] = 0
    require contracts.length
    contracts[contracts.length].field_0 = 0
    if 31 < stor[('name', 'contracts', 6) + contracts.length - 1].length:
        idx = 0
        while stor[('name', 'contracts', 6) + contracts.length - 1].length + 31 / 32 > idx:
            stor[idx + sha3(('name', 'contracts', 6) + contracts.length - 1)].field_0 = 0
            idx = idx + 1
            continue 
    contracts.length--
    return 1
}



}
