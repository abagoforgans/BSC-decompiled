contract main {




// =====================  Runtime code  =====================


const INVEST_MIN_AMOUNT = 100 * 10^18


uint256 sub_ceeae78e;
address stor1;
address baseTokenAddress;
address sub_ea796f7aAddress;

function baseToken() payable {
    return baseTokenAddress
}

function sub_ceeae78e(?) payable {
    return sub_ceeae78e
}

function sub_ea796f7a(?) payable {
    return sub_ea796f7aAddress
}

function _fallback() payable {
    revert
}

function setInvest(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'not base'
    sub_ea796f7aAddress = arg1
}

function Liquidity() payable {
    if stor1 != msg.sender:
        revert with 0, 'no commissionWallet'
    require ext_code.size(baseTokenAddress)
    staticcall baseTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'no liquidity'
    require ext_code.size(baseTokenAddress)
    call baseTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function invest(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(baseTokenAddress)
    staticcall baseTokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 100 * 10^18:
        revert with 0, 'not enough deposit amount'
    require ext_code.size(baseTokenAddress)
    call baseTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 >= 24:
        revert with 0, 'Invalid plan'
    require ext_code.size(sub_ea796f7aAddress)
    call sub_ea796f7aAddress.0x773dda4d with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(arg1), arg2 << 248, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_ceeae78e++
}



}
