contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address owner;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6;
address stor6;
address stor6; offset 8
address sub_1521a0fdAddress;
mapping of uint8 stor8;
mapping of uint8 stor9;
mapping of uint8 stor10;
mapping of uint256 stor11;
uint8 stor12;
uint256 stor12;

function sub_1521a0fd(?) payable {
    return sub_1521a0fdAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function lock() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor6.field_0) = 1
}

function unlock() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor6.field_0) = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_64182b3c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = arg1
}

function sub_6f6a5d06(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor12) = not bool(uint8(stor12)) or Mask(248, 8, uint256(stor12))
}

function ChangePrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function ChangePercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = arg1
}

function sub_2fea6ac4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9[address(arg1)] = 1
}

function AddWhiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = 1
}

function sub_939edd0e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor6.field_8) = address(arg1)
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

function sub_f93c3dc8(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if uint8(stor6.field_0):
        revert with 0, 'Venta Pausada'
    if arg1 and 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    if not stor9[address(arg2)]:
        revert with 0, 'Invalid Token'
    if 10^18 * arg1 > stor3:
        revert with 0, 'exceeded the purchase limit'
    if stor11[address(msg.sender)] > stor3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You have exceeded the purchase limit'
    if uint8(stor12):
        if not stor8[address(msg.sender)]:
            revert with 0, 'You  are not in WhiteList'
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 10^18 * arg1:
        revert with 0, 'Balance To Low'
    require ext_code.size(address(arg2))
    call address(arg2).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(stor6.field_0), 10^18 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Error in Transfer'
    if stor10[address(arg3)]:
        if address(arg3) != msg.sender:
            if 10^18 * arg1 <= stor5:
                if 10^18 * arg1 / 100 and stor4 > -1 / 10^18 * arg1 / 100:
                    revert with 'NH{q', 17
                if not stor2:
                    revert with 'NH{q', 18
                if 10^18 * arg1 / 100 * stor4 / stor2 and 10^18 > -1 / 10^18 * arg1 / 100 * stor4 / stor2:
                    revert with 'NH{q', 17
                if stor11[address(msg.sender)] > (-1 * 10^18 * arg1) - 1:
                    revert with 'NH{q', 17
                if stor11[address(msg.sender)] + (10^18 * arg1) < stor11[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                stor11[address(msg.sender)] += 10^18 * arg1
                require ext_code.size(sub_1521a0fdAddress)
                call sub_1521a0fdAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args owner, address(arg3), 10^18 * 10^18 * arg1 / 100 * stor4 / stor2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Balance To Low'
                emit 0x21aa57a8: address(arg3), 10^18 * 10^18 * arg1 / 100 * stor4 / stor2
            else:
                if stor5 / 100 and stor4 > -1 / stor5 / 100:
                    revert with 'NH{q', 17
                if not stor2:
                    revert with 'NH{q', 18
                if stor5 / 100 * stor4 / stor2 and 10^18 > -1 / stor5 / 100 * stor4 / stor2:
                    revert with 'NH{q', 17
                if stor11[address(msg.sender)] > (-1 * 10^18 * arg1) - 1:
                    revert with 'NH{q', 17
                if stor11[address(msg.sender)] + (10^18 * arg1) < stor11[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                stor11[address(msg.sender)] += 10^18 * arg1
                require ext_code.size(sub_1521a0fdAddress)
                call sub_1521a0fdAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args owner, address(arg3), 10^18 * stor5 / 100 * stor4 / stor2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'Balance To Low'
                emit 0x21aa57a8: address(arg3), 10^18 * stor5 / 100 * stor4 / stor2
    if not stor2:
        revert with 'NH{q', 18
    if 10^18 * arg1 / stor2 and 10^18 > -1 / 10^18 * arg1 / stor2:
        revert with 'NH{q', 17
    require ext_code.size(sub_1521a0fdAddress)
    call sub_1521a0fdAddress.0x23b872dd with:
         gas gas_remaining wei
        args owner, msg.sender, 10^18 * 10^18 * arg1 / stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Balance To Low'
    stor10[address(msg.sender)] = 1
    emit 0x19aa0fd5: msg.sender, 10^18 * 10^18 * arg1 / stor2
    stor0 = 1
}



}
