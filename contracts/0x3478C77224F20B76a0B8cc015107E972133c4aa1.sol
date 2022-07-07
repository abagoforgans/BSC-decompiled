contract main {




// =====================  Runtime code  =====================


const sub_7a92d1c8(?) = 0xc49268dc5490f3564e4b89cecc6fa1ef014732cf

const sub_8453e789(?) = 0xc49268dc5490f3564e4b89cecc6fa1ef014732cf

const sub_d940ef4d(?) = 0xc49268dc5490f3564e4b89cecc6fa1ef014732cf


function _fallback() payable {
    revert
}

function sub_ec97a786(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'Data can't be 0.'
}

function sub_194aeeef(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'Address is invalid!'
}

function sub_32e43b69(?) payable {
    require calldata.size - 4 >= 32
    if arg1 < 0:
        revert with 0, 'Amount should be greater than 0!'
}

function sub_581b9550(?) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'Address is invalid!'
    if not arg2:
        revert with 0, 'Address is invalid!'
}

function sub_54b17ade(?) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'Address is invalid'
    if arg2 <= 0:
        revert with 0, 'Amount should be greater than 0'
}

function sub_6b2fdf50(?) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0, 'Address is invalid.'
    if not arg2:
        revert with 0, 'Address is invalid.'
    if arg3 <= 0:
        revert with 0, 'Amount should be greater than 0.'
}

function swap(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 <= 0:
        if arg2 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0xfe50616e63616b653a20494e53554646494349454e545f4f55545055545f414d4f554e,
                        mem[199 len 29]
    if not arg3:
        revert with 0, 'Address can't be null'
}

function compareStrings(string arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 192] = mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 192 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) + 256, mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 192])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg2.length
    _25 = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]])
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 224] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 224 len arg1.length % 32]) == _25
    return memory
      from arg1.length + arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 224
       len 32
}



}
