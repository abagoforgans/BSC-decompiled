contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_2b56613c(?) payable {
    create contract with 0 wei
                    code: code.data[638 len 4378]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(create.new_address), 10 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x9276fb4a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
