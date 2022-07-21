contract main {




// =====================  Runtime code  =====================


uint256 totalBNB;
uint8 stor1;
address sub_b80d02a5Address; offset 8
uint256 stor2;
address stor3;

function getTotalBNB() {
    return totalBNB
}

function sub_b80d02a5(?) {
    return sub_b80d02a5Address
}

function _fallback() payable {
    revert
}

function setRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0, 'Error Dev'
    stor2 = arg1
    return 1
}

function sub_e35e1835(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if stor3 != msg.sender:
        revert with 0, 'Error Dev'
    stor1 = uint8(bool(arg1))
    return 1
}

function sub_c512881e(?) {
    require ext_code.size(sub_b80d02a5Address)
    staticcall sub_b80d02a5Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0, 'Error Dev'
    if arg1 > totalBNB:
        revert with 0, 'Error BNB'
    if totalBNB < arg1:
        revert with 'NH{q', 17
    totalBNB -= arg1
    call stor3 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function presale() payable {
    if msg.value > 10^18:
        revert with 0, 'Error Price'
    if msg.value < 10^16:
        revert with 0, 'Error Price'
    if bool(stor1) != 1:
        revert with 0, 'End PreSale'
    require ext_code.size(sub_b80d02a5Address)
    staticcall sub_b80d02a5Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if msg.value and stor2 > -1 / msg.value:
        revert with 'NH{q', 17
    if msg.value * stor2 > ext_call.return_data[0]:
        revert with 0, 'Error Price'
    if totalBNB > -msg.value - 1:
        revert with 'NH{q', 17
    totalBNB += msg.value
    if msg.value and stor2 > -1 / msg.value:
        revert with 'NH{q', 17
    require ext_code.size(sub_b80d02a5Address)
    call sub_b80d02a5Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value * stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}



}
