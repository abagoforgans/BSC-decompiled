contract main {




// =====================  Runtime code  =====================


address validatorAddress;
uint256 sub_5a2b326b;
mapping of uint8 stor2;
mapping of struct sub_74afbff8;

function allowList(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function validator() {
    return validatorAddress
}

function sub_5a2b326b(?) {
    return sub_5a2b326b
}

function sub_74afbff8(?) {
    require calldata.size - 4 >= 32
    mem[128] = sub_74afbff8[arg1].field_0
    idx = 128
    s = 0
    while sub_74afbff8[arg1].length + 96 > idx:
        mem[idx + 32] = sub_74afbff8[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_74afbff8[arg1].length, data=mem[128 len sub_74afbff8[arg1].length]), 
           sub_74afbff8[arg1].field_256,
           sub_74afbff8[arg1].field_512
}

function _fallback() payable {
    revert
}

function sub_d1c81da3(?) {
    require calldata.size - 4 >= 32
    if validatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Your not have access, because you not validator!'
    require arg1
    stor2[address(arg1)] = 0
    emit 0xd8e8ed07: address(arg1), block.timestamp
}

function addToAllowList(address arg1) {
    require calldata.size - 4 >= 32
    if validatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Your not have access, because you not validator!'
    require arg1
    stor2[address(arg1)] = 1
    emit 0x5631ee7d: address(arg1), block.timestamp
}

function sub_73d1cc23(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if bool(stor2[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Your not have access, because you not node!'
    require sub_5a2b326b + 1 >= sub_5a2b326b
    sub_5a2b326b++
    sub_74afbff8[stor1][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_74afbff8[stor1].field_256 = msg.sender
    sub_74afbff8[stor1].field_512 = block.timestamp
    mem[ceil32(arg1.length) + 256] = msg.sender
    mem[ceil32(arg1.length) + 224] = 64
    mem[ceil32(arg1.length) + 288] = arg1.length
    emit 0xc31c8345: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 256 len (2 * ceil32(arg1.length)) + -arg1.length + 64]
}



}
