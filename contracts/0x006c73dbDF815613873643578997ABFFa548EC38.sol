contract main {




// =====================  Runtime code  =====================


address stor0;
array of uint256 tokenName;
array of uint256 tokenSymbol;
array of uint256 withdraw;
uint256 stor4; offset 1
uint256 stor4;

function Withdraw() {
    return withdraw[0 len withdraw.length]
}

function tokenName() {
    return tokenName[0 len tokenName.length]
}

function tokenSymbol() {
    return tokenSymbol[0 len tokenSymbol.length]
}

function _fallback() payable {
  stop
}

function flashloan() payable {
    require ext_code.size(stor0)
    staticcall stor0.0x5f7e940e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call ext_call.return_data[12 len 20] with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    staticcall stor0.0xf1525d3d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.0x6b2fdf50 with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0]), uint256(stor4.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    staticcall stor0.0x94e6e91c with:
            gas gas_remaining wei
           args msg.sender, uint255(stor4.field_1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    staticcall stor0.0xf1525d3d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.0x97cf3eab with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    staticcall stor0.0x5f7e940e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.0xe21c22cc with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    staticcall stor0.0x32e43b69 with:
            gas gas_remaining wei
           args eth.balance(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
