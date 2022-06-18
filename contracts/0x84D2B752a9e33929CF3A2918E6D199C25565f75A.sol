contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
address token_address;
address sub_b247dba5Address;
address stor4;
address stor5;

function token_address() payable {
    return token_address
}

function sub_b247dba5(?) payable {
    return sub_b247dba5Address
}

function minters(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function setMinter(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    stor1[address(arg1)] = uint8(arg2)
}

function sub_5306b48b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    token_address = address(arg1)
    sub_b247dba5Address = address(arg2)
    stor4 = address(arg1)
    stor5 = address(arg2)
}

function sub_13521da0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, 'caller is not the minter'
    require ext_code.size(stor5)
    call stor5.buyNFT(uint256 arg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 1 < arg1:
        revert with 0, 'too low'
}

function tokenTransfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, 'caller is not the minter'
    require ext_code.size(stor4)
    call stor4.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function callApprove(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, 'caller is not the minter'
    require ext_code.size(stor4)
    call stor4.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function tokenBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, 'caller is not the minter'
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}



}
