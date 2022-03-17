contract main {




// =====================  Runtime code  =====================


const chi = 0xa635e03d5e740c27c04907548983db7a504fc287


function _fallback() payable {
    revert
}

function chiDeploy(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    create contract with 0 wei
                    code: arg1[all]
    require ext_code.size(0xa635e03d5e740c27c04907548983db7a504fc287)
    call 0xa635e03d5e740c27c04907548983db7a504fc287.freeFromUpTo(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, (16 * calldata.size) + 35154 / 41130
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0, uint128(create.new_address) << 96
}

function chiDeploy2(uint256 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    create2 contract with 0 wei
                    salt: arg1
                    code: arg2[all]
    require ext_code.size(0xa635e03d5e740c27c04907548983db7a504fc287)
    call 0xa635e03d5e740c27c04907548983db7a504fc287.freeFromUpTo(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, (16 * calldata.size) + 35154 / 41130
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0, uint128(create2.new_address) << 96
}



}
