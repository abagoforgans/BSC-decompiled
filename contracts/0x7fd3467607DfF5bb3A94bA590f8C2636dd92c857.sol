contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 sub_1d0c399f;
uint256 sub_9a24253e;
mapping of uint8 stor3;
mapping of struct sub_7bc34672;

function sub_1d0c399f(?) {
    return sub_1d0c399f
}

function sub_7bc34672(?) {
    require calldata.size - 4 >= 32
    mem[128] = sub_7bc34672[arg1].field_0
    idx = 128
    s = 0
    while sub_7bc34672[arg1].length + 96 > idx:
        mem[idx + 32] = sub_7bc34672[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_7bc34672[arg1].length, data=mem[128 len sub_7bc34672[arg1].length]), 
           sub_7bc34672[arg1].field_256,
           sub_7bc34672[arg1].field_512
}

function sub_9a24253e(?) {
    return sub_9a24253e
}

function isWhiteList(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function _fallback() payable {
    revert
}

function addToWhiteList(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Your not have access, because you not owner!'
    require arg1
    stor3[address(arg1)] = 1
    emit 0xb16791d4: address(arg1), block.timestamp
}

function removeInWhiteList(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Your not have access, because you not owner!'
    require arg1
    stor3[address(arg1)] = 0
    emit 0xab52da8f: address(arg1), block.timestamp
}

function sub_6132afa1(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if bool(stor3[msg.sender]) != 1:
        revert with 0, 'Your not have access, because you not operator!'
    sub_1d0c399f = arg2
    require sub_9a24253e + 1 >= sub_9a24253e
    sub_9a24253e++
    sub_7bc34672[stor2 + 1][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_7bc34672[stor2 + 1].field_256 = msg.sender
    sub_7bc34672[stor2 + 1].field_512 = block.timestamp
    emit 0x3d30a628: Array(len=arg1.length, data=arg1[all]), msg.sender
}



}
