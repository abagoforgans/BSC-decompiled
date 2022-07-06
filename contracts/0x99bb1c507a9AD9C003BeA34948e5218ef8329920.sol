contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint256 sub_1272ee7e;
address stor2;

function sub_1272ee7e(?) payable {
    require calldata.size - 4 >= 32
    return sub_1272ee7e[arg1]
}

function _fallback() payable {
    revert
}

function sub_5a7ee7da(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor2
    if stor0[address(arg1)]:
        revert with 0, 'PairSwapFeeStore: UPDATE_EXISTS'
    stor0[address(arg1)] = 1
}

function sub_b3bfdef2(?) payable {
    require calldata.size - 4 >= 64
    if not stor0[msg.sender]:
        if stor2 != msg.sender:
            revert with 0, 'PairSwapFeeStore: UNAUTHORIZED'
    sub_1272ee7e[address(arg1)] = arg2
}

function sub_5c55f7df(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor2
    if not stor0[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe506169725377617046656553746f72653a205550444154455f4e4f545f4558495354,
                    mem[199 len 29]
    stor0[address(arg1)] = 0
}

function sub_a8d1d223(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor0[msg.sender]:
        if stor2 != msg.sender:
            revert with 0, 'PairSwapFeeStore: UNAUTHORIZED'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 1
        sub_1272ee7e[address(cd[((32 * idx) + cd[4] + 36)])] = cd[36]
        idx = idx + 1
        continue 
}



}
