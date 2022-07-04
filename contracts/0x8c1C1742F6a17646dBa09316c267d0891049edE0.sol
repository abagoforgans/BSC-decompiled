contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function sub_4866f3bf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if msg.sender == stor1:
        stor0 = address(arg1)
}

function sub_ffd731a4(?) payable {
    if msg.sender == stor1:
        require ext_code.size(stor0)
        call stor0.0x2fbbee1a with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
