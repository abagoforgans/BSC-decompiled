contract main {




// =====================  Runtime code  =====================


address owner;
uint32 stor1;
uint32 stor2;
address stor2;
address stor3;
address stor4;
address stor5;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_1103634d(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_ab07f1f2(?) payable {
    require ext_code.size(stor3)
    call stor3.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args stor5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
         gas gas_remaining wei
        args 0, stor1, address(stor2), 10^9, 0, 0, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args stor5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        require ext_code.size(stor3)
        staticcall stor3.0xdd62ed3e with:
                gas gas_remaining wei
               args stor5, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 0:
            require ext_code.size(stor3)
            call stor3.0x23b872dd with:
                 gas gas_remaining wei
                args stor5, this.address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor4)
            call stor4.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[32], uint32(stor2), 0, 0, 0, stor3, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            emit 0x83a3ff22: 0
            require ext_code.size(stor3)
            call stor3.sync() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
