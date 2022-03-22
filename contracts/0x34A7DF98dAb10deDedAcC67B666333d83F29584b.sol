contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function withdrawTo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    require ext_code.size(stor1)
    staticcall stor1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_2b56613c(?) payable {
    require msg.sender == stor0
    create contract with 0 wei
                    code: code.data[1598 len 4515]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x7cf4f6d9: address(create.new_address)
    require ext_code.size(stor1)
    call stor1.transfer(address rg1, uint256 rg2) with:
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
