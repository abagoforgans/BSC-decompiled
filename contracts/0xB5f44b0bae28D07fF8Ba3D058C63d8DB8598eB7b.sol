contract main {




// =====================  Runtime code  =====================


const Info = Array(len=63, data=0xfe5468697320697320746865206f6666696369616c205075626c69632053616c6520636f6e747261637420666f72207374616b65636f696e2e66696e616e63, mem[191 len 1], Mask(248, -256, mem[191 len 1]) << 256)

const RATE = 155

const CAP = 2000


address owner;
address ownerPayable;
uint8 stor2; offset 160
uint128 stor2; offset 160
address stor2;
uint256 raisedAmount;

function ownerPayable() {
    return ownerPayable
}

function owner() {
    return owner
}

function raisedAmount() {
    return raisedAmount
}

function endSale() {
    require msg.sender == owner
    require ext_code.size(address(stor2.field_0))
    staticcall address(stor2.field_0).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor2.field_0))
    call address(stor2.field_0).0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    selfdestruct(ownerPayable)
}

function goalReached() {
    return raisedAmount >= 2000 * 10^18
}

function isActive() {
    return (bool(uint8(stor2.field_160)) == 1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    owner = arg1
    ownerPayable = owner
}

function tokensAvailable() {
    require ext_code.size(address(stor2.field_0))
    staticcall address(stor2.field_0).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function startSale(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require not uint8(stor2.field_160)
    address(stor2.field_0) = arg1
    require ext_code.size(address(stor2.field_0))
    call address(stor2.field_0).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(this.address), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    Mask(96, 0, stor2.field_160) = 1
}

function buyTokens() payable {
    require bool(uint8(stor2.field_160)) == 1
    require msg.value >= 10^18
    require msg.value <= 25 * 10^18
    if msg.value:
        require msg.value
        require 155 * msg.value / msg.value == 155
    require raisedAmount + msg.value >= raisedAmount
    raisedAmount += msg.value
    call ownerPayable with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor2.field_0))
    call address(stor2.field_0).0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, 155 * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function _fallback() payable {
    require bool(uint8(stor2.field_160)) == 1
    require msg.value >= 10^18
    require msg.value <= 25 * 10^18
    if msg.value:
        require msg.value
        require 155 * msg.value / msg.value == 155
    require raisedAmount + msg.value >= raisedAmount
    raisedAmount += msg.value
    call ownerPayable with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor2.field_0))
    call address(stor2.field_0).0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, 155 * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
