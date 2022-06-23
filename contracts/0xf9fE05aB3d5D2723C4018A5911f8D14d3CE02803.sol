contract main {




// =====================  Runtime code  =====================


address owner;
address sub_56fa50d0Address;
address administratorAddress;
address sub_f4d37362Address;
uint256 stor4; offset 32
uint256 stor4;
uint256 stor5;
address stor6;
uint8 stor7; offset 160
address stor7;

function getAdministrator() {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    return administratorAddress
}

function sub_56fa50d0(?) {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    return sub_56fa50d0Address
}

function owner() {
    return owner
}

function sub_f4d37362(?) {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    return sub_f4d37362Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_b0d25a9d(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_f4d37362Address = arg1
    return 1
}

function setWBNBAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_56fa50d0Address = arg1
    return 1
}

function setAdministrator(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    administratorAddress = arg1
    return 1
}

function getSnipeConfiguration() {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    return address(stor7.field_0), uint256(stor4.field_0), stor6, stor5, bool(uint8(stor7.field_160))
}

function configureSnipe(address arg1, uint256 arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    uint256(stor4.field_0) = arg2
    stor6 = arg3
    stor5 = arg4
    address(stor7.field_0) = arg1
    uint8(stor7.field_160) = 0
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function emmergencyWithdrawBnb() {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if eth.balance(this.address) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe636f6e74726163742068617320616e20656d70747920424e422062616c616e63,
                    mem[197 len 31]
    call administratorAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function emmergencyWithdrawTkn(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
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
        args administratorAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function snipeListing() {
    require ext_code.size(sub_56fa50d0Address)
    staticcall sub_56fa50d0Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < uint256(stor4.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x65736e6970653a206e6f7420656e6f7567682077626e62206f6e2074686520636f6e74726163,
                    mem[202 len 26]
    require ext_code.size(sub_56fa50d0Address)
    call sub_56fa50d0Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_f4d37362Address, uint256(stor4.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint8(stor7.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x72736e6970653a20736e6970696e67206973206c6f636b65642e2053656520636f6e6669677572,
                    mem[203 len 25]
    uint8(stor7.field_160) = 1
    if sub_56fa50d0Address == 0 or address(stor7.field_0):
        mem[160] = stor6
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = uint256(stor4.field_0)
        mem[228] = stor5
        mem[292] = administratorAddress
        mem[324] = block.timestamp + 120
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(sub_f4d37362Address)
        call sub_f4d37362Address.0x38ed1739 with:
             gas gas_remaining wei
            args uint256(stor4.field_0), stor5, Array(len=2, data=mem[388 len 64]), administratorAddress, block.timestamp + 120
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        require mem[192 len 4], Mask(224, 0, stor4.field_32) <= 4294967296
        require mem[192 len 4], Mask(224, 0, stor4.field_32) + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 0, stor4.field_32) + 192] <= 4294967296 and mem[192 len 4], Mask(224, 0, stor4.field_32) + (32 * mem[mem[192 len 4], Mask(224, 0, stor4.field_32) + 192]) + 32 <= return_data.size
    else:
        mem[192] = stor6
        mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[228] = uint256(stor4.field_0)
        mem[260] = stor5
        mem[324] = administratorAddress
        mem[356] = block.timestamp + 120
        mem[292] = 160
        mem[388] = 3
        mem[420 len 0] = None
        require ext_code.size(sub_f4d37362Address)
        call sub_f4d37362Address.0x38ed1739 with:
             gas gas_remaining wei
            args uint256(stor4.field_0), stor5, Array(len=3, data=mem[420 len 96]), administratorAddress, block.timestamp + 120
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        require mem[224 len 4], Mask(224, 0, stor4.field_32) <= 4294967296
        require mem[224 len 4], Mask(224, 0, stor4.field_32) + 32 <= return_data.size
        require mem[mem[224 len 4], Mask(224, 0, stor4.field_32) + 224] <= 4294967296 and mem[224 len 4], Mask(224, 0, stor4.field_32) + (32 * mem[mem[224 len 4], Mask(224, 0, stor4.field_32) + 224]) + 32 <= return_data.size
    return 1
}



}
