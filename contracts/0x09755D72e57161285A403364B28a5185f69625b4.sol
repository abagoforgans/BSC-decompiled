contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address sub_9a2573acAddress;
address sub_cae81358Address;
uint256 stor4;

function sub_9a2573ac(?) {
    return sub_9a2573acAddress
}

function sub_cae81358(?) {
    return sub_cae81358Address
}

function _fallback() payable {
    revert
}

function buyToken() payable {
    require msg.value == 10^17
    require stor4 > 0
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not msg.value:
        if not msg.value:
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_9a2573acAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_cae81358Address, 0
        else:
            require msg.value
            require 750 * msg.value / msg.value == 750
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_9a2573acAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_cae81358Address, 750 * msg.value / 1000
    else:
        require msg.value
        require 250 * msg.value / msg.value == 250
        if not msg.value:
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_9a2573acAddress, 250 * msg.value / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_cae81358Address, 0
        else:
            require msg.value
            require 750 * msg.value / msg.value == 750
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_9a2573acAddress, 250 * msg.value / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_cae81358Address, 750 * msg.value / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
