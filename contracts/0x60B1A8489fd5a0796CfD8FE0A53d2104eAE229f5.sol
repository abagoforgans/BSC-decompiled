contract main {




// =====================  Runtime code  =====================


#
#  - get_block_hash_257335279069929(uint256 arg1)
#
address stor0;

function _fallback() payable {
    require tx.origin != msg.sender
}

function withdraw(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe4f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(uint256 arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe4f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    require ext_code.size(arg3)
    call arg3.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
