contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint8 stor2;
address mainAddress; offset 8
mapping of uint256 sub_150568c3;

function sub_150568c3(?) payable {
    require calldata.size - 4 >= 32
    return sub_150568c3[arg1]
}

function paused() payable {
    return bool(stor2)
}

function owner() payable {
    return owner
}

function main() payable {
    return mainAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setPrice(uint8 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_150568c3[arg1 << 248] = arg2
}

function pause(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        if not stor2:
            revert with 0, 'Pausable: not paused'
        stor2 = 0
        emit Unpaused(msg.sender);
    else:
        if stor2:
            revert with 0, 'Pausable: paused'
        stor2 = 1
        emit Paused(msg.sender);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sell(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(mainAddress)
    staticcall mainAddress.registered(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Unregistered'
    if stor2:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(mainAddress)
    staticcall mainAddress.0x30698c14 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ownerOf(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Not owner'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x42966c68 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(mainAddress)
    staticcall mainAddress.0xf3a5ce6b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getUSDTAmountOut(uint256 rg1) with:
            gas gas_remaining wei
           args sub_150568c3[arg1 << 248]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mainAddress)
    staticcall mainAddress.0x9a4da761 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Sell(arg1, sub_150568c3[arg1 << 248], ext_call.return_data[0], msg.sender);
    stor1 = 1
}



}
