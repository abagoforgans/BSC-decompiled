contract main {




// =====================  Runtime code  =====================


#
#  - sub_362bb2e9(?)
#  - sub_c41b6204(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint8 stor0; offset 16
address owner; offset 24
uint256 stor0; offset 16
uint256 stor0; offset 8
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
address stor4;
address stor5;
address stor6;

function paused() payable {
    return bool(uint8(stor0.field_16))
}

function pausers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_dafca148(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[arg1] = uint8(bool(arg2))
}

function setPauser(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = uint8(arg2)
}

function setVerifier(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = uint8(arg2)
}

function setPause(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if not stor1[address(msg.sender)]:
            revert with 0, 'Ownable: caller is not the owner'
    Mask(240, 0, stor0.field_16) = Mask(240, 0, arg1)
    emit PauseChanged(msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_3120ab2a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor4)
    call stor4.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, 'Operator is not warpgate'
    require ext_code.size(stor4)
    staticcall stor4.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Did not receive'
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if uint8(stor0.field_8):
        owner = msg.sender
        Mask(240, 0, stor0.field_16) = 0
        stor4 = arg1
        stor5 = arg2
        stor6 = arg3
        stor2[address(msg.sender)] = 1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            Mask(240, 0, stor0.field_16) = 0
            stor4 = arg1
            stor5 = arg2
            stor6 = arg3
            stor2[address(msg.sender)] = 1
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                Mask(240, 0, stor0.field_16) = 0
                stor4 = arg1
                stor5 = arg2
                stor6 = arg3
                stor2[address(msg.sender)] = 1
            else:
                Mask(248, 0, stor0.field_8) = 1
                uint8(stor0.field_0) = 1
                owner = msg.sender
                Mask(240, 0, stor0.field_16) = 0
                Mask(248, 0, stor0.field_8) = 0
                stor4 = arg1
                stor5 = arg2
                stor6 = arg3
                stor2[address(msg.sender)] = 1
                Mask(248, 0, stor0.field_8) = 0
}



}
