contract main {




// =====================  Runtime code  =====================


#
#  - snipeListing()
#  - sandwichIn(address arg1, uint256 arg2, uint256 arg3)
#  - sandwichOut(address arg1, uint256 arg2)
#
address owner;
address sub_3091dde1Address;
address stor2;
uint256 stor3;
uint256 stor4;
address stor5;
uint8 stor6; offset 160
address stor6;
mapping of uint8 stor7;

function sub_3091dde1(?) {
    return sub_3091dde1Address
}

function owner() {
    return owner
}

function authenticatedSeller(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function _fallback() payable {
    revert
}

function getAdministrator() {
    if owner != msg.sender:
        if sub_3091dde1Address != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    return stor2
}

function renounceOwnership() {
    if owner != msg.sender:
        if sub_3091dde1Address != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getSnipeConfiguration() {
    if owner != msg.sender:
        if sub_3091dde1Address != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    return address(stor6.field_0), stor3, stor5, stor4, bool(uint8(stor6.field_160))
}

function authenticateSeller(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if sub_3091dde1Address != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    stor7[address(arg1)] = 1
}

function setAdministrator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if sub_3091dde1Address != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
    stor7[address(arg1)] = 1
    return 1
}

function configureSnipe(address arg1, uint256 arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg3 == arg3
    if owner != msg.sender:
        if sub_3091dde1Address != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    stor3 = arg2
    stor5 = arg3
    stor4 = arg4
    address(stor6.field_0) = arg1
    uint8(stor6.field_160) = 0
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if sub_3091dde1Address != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function emmergencyWithdrawBnb() {
    if owner != msg.sender:
        if sub_3091dde1Address != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'contract has an empty BNB balance'
    call stor2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function emmergencyWithdrawTkn(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        if sub_3091dde1Address != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'not enough tokens in contract'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}



}
