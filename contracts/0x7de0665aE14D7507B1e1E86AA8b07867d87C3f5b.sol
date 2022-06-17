contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 bnbPrice;
uint256 tokenPrice;
uint256 sub_763b45ba;
uint256 sub_f7ee7068;
address stor6;

function bnbPrice() {
    return bnbPrice
}

function sub_763b45ba(?) {
    return sub_763b45ba
}

function tokenPrice() {
    return tokenPrice
}

function sub_f7ee7068(?) {
    return sub_f7ee7068
}

function _fallback() payable {
    revert
}

function sub_94667618(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    bnbPrice = arg1
}

function sub_bade03af(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    sub_763b45ba = arg1
}

function sub_de40fbb9(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    sub_f7ee7068 = arg1
}

function updateTokenPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    tokenPrice = arg1
}

function cashout(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'You are not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4fcdcb23(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'You are not the owner'
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
