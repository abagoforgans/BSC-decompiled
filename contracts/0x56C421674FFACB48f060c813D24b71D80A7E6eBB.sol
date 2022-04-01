contract main {




// =====================  Runtime code  =====================


const Info = Array(len=33, data=0xfe506f747465725377617020496e697469616c20546f6b656e204f66666572696e, mem[161 len 31], mem[223 len 1])

const RATE = 167

const CAP = 11850


address owner;
address ownerPayable;
uint8 stor2; offset 160
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
        args this.address, owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    selfdestruct(ownerPayable)
}

function goalReached() {
    return 11850 * 10^18 <= raisedAmount
}

function isActive() {
    return (1 == bool(uint8(stor2.field_160)))
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    owner = arg1
    ownerPayable = arg1
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
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args this.address, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint8(stor2.field_160) = 1
}

function buyTokens() payable {
    require 1 == bool(uint8(stor2.field_160))
    require msg.value >= 3 * 10^17
    require msg.value <= 102 * 10^18
    if msg.value:
        require msg.value
        require 167 * msg.value / msg.value == 167
    require msg.value + raisedAmount >= raisedAmount
    raisedAmount += msg.value
    call ownerPayable with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor2.field_0))
    call address(stor2.field_0).0x23b872dd with:
         gas gas_remaining wei
        args this.address, msg.sender, 167 * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function _fallback() payable {
    require 1 == bool(uint8(stor2.field_160))
    require msg.value >= 3 * 10^17
    require msg.value <= 102 * 10^18
    if msg.value:
        require msg.value
        require 167 * msg.value / msg.value == 167
    require msg.value + raisedAmount >= raisedAmount
    raisedAmount += msg.value
    call ownerPayable with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor2.field_0))
    call address(stor2.field_0).0x23b872dd with:
         gas gas_remaining wei
        args this.address, msg.sender, 167 * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
