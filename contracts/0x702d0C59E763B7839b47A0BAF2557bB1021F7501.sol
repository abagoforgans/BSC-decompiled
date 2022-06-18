contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
mapping of struct records;
address _teamWalletAddress;
address _marketingWalletAddress;
address sub_e8059ba7Address;
address sub_55f2e00eAddress;

function _marketingWalletAddress() payable {
    return _marketingWalletAddress
}

function records(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return records[arg1].field_0, records[arg1].field_256, records[arg1].field_512
}

function sub_55f2e00e(?) payable {
    return sub_55f2e00eAddress
}

function owner() payable {
    return owner
}

function sub_e8059ba7(?) payable {
    return sub_e8059ba7Address
}

function _teamWalletAddress() payable {
    return _teamWalletAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function addAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == this.address:
        revert with 0, 'No rug pull'
    if records[address(arg1)].field_256 > -arg2 - 1:
        revert with 'NH{q', 17
    records[address(arg1)].field_256 += arg2
}

function sub_d963761a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 0:
        revert with 0, 'Wallet not found'
    if arg1 > 1:
        revert with 0, 'Wallet not found'
    if not arg1:
        _teamWalletAddress = address(arg2)
    else:
        if arg1 == 1:
            _marketingWalletAddress = address(arg2)
}

function sub_d1adff0a(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 + arg3 != 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Percentages must be wrong, they dont sum to 100'
    stor4 = arg1
    stor5 = arg2
    stor6 = arg3
}

function sub_e19e82d1(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 + arg3 != 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Percentages must be wrong, they dont sum to 100'
    stor1 = arg1
    stor2 = arg2
    stor3 = arg3
}

function sub_9f99c239(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 0:
        revert with 0, 'Values must be between 0 and 100'
    if arg1 > 100:
        revert with 0, 'Values must be between 0 and 100'
    if arg2 < 0:
        revert with 0, 'Values must be between 0 and 100'
    if arg2 > 100:
        revert with 0, 'Values must be between 0 and 100'
    if arg3 < 0:
        revert with 0, 'Values must be between 0 and 100'
    if arg3 > 100:
        revert with 0, 'Values must be between 0 and 100'
    stor7 = arg1
    stor8 = arg2
    stor9 = arg3
}

function addFunds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and stor1 > -1 / arg1:
        revert with 'NH{q', 17
    if arg1 and stor2 > -1 / arg1:
        revert with 'NH{q', 17
    require ext_code.size(sub_55f2e00eAddress)
    call sub_55f2e00eAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, _teamWalletAddress, arg1 * stor1 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_55f2e00eAddress)
    call sub_55f2e00eAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, _marketingWalletAddress, arg1 * stor2 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 < arg1 * stor1 / 100:
        revert with 'NH{q', 17
    if arg1 - (arg1 * stor1 / 100) < arg1 * stor2 / 100:
        revert with 'NH{q', 17
    require ext_code.size(sub_55f2e00eAddress)
    call sub_55f2e00eAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, sub_e8059ba7Address, arg1 - (arg1 * stor1 / 100) - (arg1 * stor2 / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    require ext_call.return_data[0]
    require ext_call.return_data[0]
    if records[address(msg.sender)].field_0 > -arg1 - 1:
        revert with 'NH{q', 17
    records[address(msg.sender)].field_0 += arg1
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if records[address(arg1)].field_256 < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This wallet can't withdraw this amount'
    if records[address(arg1)].field_512 <= records[address(arg1)].field_0:
        if arg2 and stor1 > -1 / arg2:
            revert with 'NH{q', 17
        if arg2 and stor2 > -1 / arg2:
            revert with 'NH{q', 17
        require ext_code.size(sub_55f2e00eAddress)
        call sub_55f2e00eAddress.0x39509351 with:
             gas gas_remaining wei
            args sub_e8059ba7Address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(sub_55f2e00eAddress)
        call sub_55f2e00eAddress.0x23b872dd with:
             gas gas_remaining wei
            args sub_e8059ba7Address, _teamWalletAddress, arg2 * stor1 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(sub_55f2e00eAddress)
        call sub_55f2e00eAddress.0x23b872dd with:
             gas gas_remaining wei
            args sub_e8059ba7Address, _marketingWalletAddress, arg2 * stor2 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if arg2 < arg2 * stor1 / 100:
            revert with 'NH{q', 17
        if arg2 - (arg2 * stor1 / 100) < arg2 * stor2 / 100:
            revert with 'NH{q', 17
        require ext_code.size(sub_55f2e00eAddress)
        call sub_55f2e00eAddress.0x23b872dd with:
             gas gas_remaining wei
            args sub_e8059ba7Address, address(arg1), arg2 - (arg2 * stor1 / 100) - (arg2 * stor2 / 100)
    else:
        if not records[address(arg1)].field_0:
            revert with 'NH{q', 18
        if records[address(arg1)].field_512 / records[address(arg1)].field_0 < 1:
            revert with 'NH{q', 17
        if stor7 and (records[address(arg1)].field_512 / records[address(arg1)].field_0) - 1 > -1 / stor7:
            revert with 'NH{q', 17
        if stor8 > stor7 + (-1 * records[address(arg1)].field_512 / records[address(arg1)].field_0 * stor7) - 1:
            revert with 'NH{q', 17
        if stor8 - stor7 + (records[address(arg1)].field_512 / records[address(arg1)].field_0 * stor7) > stor9:
            if arg2 and stor9 > -1 / arg2:
                revert with 'NH{q', 17
            if arg2 < arg2 * stor9 / 100:
                revert with 'NH{q', 17
            if arg2 - (arg2 * stor9 / 100) and stor1 > -1 / arg2 - (arg2 * stor9 / 100):
                revert with 'NH{q', 17
            if arg2 - (arg2 * stor9 / 100) and stor2 > -1 / arg2 - (arg2 * stor9 / 100):
                revert with 'NH{q', 17
            require ext_code.size(sub_55f2e00eAddress)
            call sub_55f2e00eAddress.0x39509351 with:
                 gas gas_remaining wei
                args sub_e8059ba7Address, arg2 - (arg2 * stor9 / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(sub_55f2e00eAddress)
            call sub_55f2e00eAddress.0x23b872dd with:
                 gas gas_remaining wei
                args sub_e8059ba7Address, _teamWalletAddress, (arg2 * stor1) - (arg2 * stor9 / 100 * stor1) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(sub_55f2e00eAddress)
            call sub_55f2e00eAddress.0x23b872dd with:
                 gas gas_remaining wei
                args sub_e8059ba7Address, _marketingWalletAddress, (arg2 * stor2) - (arg2 * stor9 / 100 * stor2) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if arg2 - (arg2 * stor9 / 100) < (arg2 * stor1) - (arg2 * stor9 / 100 * stor1) / 100:
                revert with 'NH{q', 17
            if arg2 - (arg2 * stor9 / 100) - ((arg2 * stor1) - (arg2 * stor9 / 100 * stor1) / 100) < (arg2 * stor2) - (arg2 * stor9 / 100 * stor2) / 100:
                revert with 'NH{q', 17
            require ext_code.size(sub_55f2e00eAddress)
            call sub_55f2e00eAddress.0x23b872dd with:
                 gas gas_remaining wei
                args sub_e8059ba7Address, address(arg1), arg2 - (arg2 * stor9 / 100) - ((arg2 * stor1) - (arg2 * stor9 / 100 * stor1) / 100) - ((arg2 * stor2) - (arg2 * stor9 / 100 * stor2) / 100)
        else:
            if arg2 and stor8 - stor7 + (records[address(arg1)].field_512 / records[address(arg1)].field_0 * stor7) > -1 / arg2:
                revert with 'NH{q', 17
            if arg2 < (stor8 * arg2) - (stor7 * arg2) + (records[address(arg1)].field_512 / records[address(arg1)].field_0 * stor7 * arg2) / 100:
                revert with 'NH{q', 17
            if arg2 - ((stor8 * arg2) - (stor7 * arg2) + (records[address(arg1)].field_512 / records[address(arg1)].field_0 * stor7 * arg2) / 100) and stor1 > -1 / arg2 - ((stor8 * arg2) - (stor7 * arg2) + (records[address(arg1)].field_512 / records[address(arg1)].field_0 * stor7 * arg2) / 100):
                revert with 'NH{q', 17
            if arg2 - ((stor8 * arg2) - (stor7 * arg2) + (records[address(arg1)].field_512 / records[address(arg1)].field_0 * stor7 * arg2) / 100) and stor2 > -1 / arg2 - ((stor8 * arg2) - (stor7 * arg2) + (records[address(arg1)].field_512 / records[address(arg1)].field_0 * stor7 * arg2) / 100):
                revert with 'NH{q', 17
            require ext_code.size(sub_55f2e00eAddress)
            call sub_55f2e00eAddress.0x39509351 with:
                 gas gas_remaining wei
                args sub_e8059ba7Address, arg2 - ((stor8 * arg2) - (stor7 * arg2) + (records[address(arg1)].field_512 / records[address(arg1)].field_0 * stor7 * arg2) / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(sub_55f2e00eAddress)
            call sub_55f2e00eAddress.0x23b872dd with:
                 gas gas_remaining wei
                args sub_e8059ba7Address, _teamWalletAddress, (arg2 * stor1) - ((stor8 * arg2) - (stor7 * arg2) + (records[address(arg1)].field_512 / records[address(arg1)].field_0 * stor7 * arg2) / 100 * stor1) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(sub_55f2e00eAddress)
            call sub_55f2e00eAddress.0x23b872dd with:
                 gas gas_remaining wei
                args sub_e8059ba7Address, _marketingWalletAddress, (arg2 * stor2) - ((stor8 * arg2) - (stor7 * arg2) + (records[address(arg1)].field_512 / records[address(arg1)].field_0 * stor7 * arg2) / 100 * stor2) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if arg2 - ((stor8 * arg2) - (stor7 * arg2) + (records[address(arg1)].field_512 / records[address(arg1)].field_0 * stor7 * arg2) / 100) < (arg2 * stor1) - ((stor8 * arg2) - (stor7 * arg2) + (records[address(arg1)].field_512 / records[address(arg1)].field_0 * stor7 * arg2) / 100 * stor1) / 100:
                revert with 'NH{q', 17
            if arg2 - ((stor8 * arg2) - (stor7 * arg2) + (records[address(arg1)].field_512 / records[address(arg1)].field_0 * stor7 * arg2) / 100) - ((arg2 * stor1) - ((stor8 * arg2) - (stor7 * arg2) + (records[address(arg1)].field_512 / records[address(arg1)].field_0 * stor7 * arg2) / 100 * stor1) / 100) < (arg2 * stor2) - ((stor8 * arg2) - (stor7 * arg2) + (records[address(arg1)].field_512 / records[address(arg1)].field_0 * stor7 * arg2) / 100 * stor2) / 100:
                revert with 'NH{q', 17
            require ext_code.size(sub_55f2e00eAddress)
            call sub_55f2e00eAddress.0x23b872dd with:
                 gas gas_remaining wei
                args sub_e8059ba7Address, address(arg1), arg2 - ((stor8 * arg2) - (stor7 * arg2) + (records[address(arg1)].field_512 / records[address(arg1)].field_0 * stor7 * arg2) / 100) - ((arg2 * stor1) - ((stor8 * arg2) - (stor7 * arg2) + (records[address(arg1)].field_512 / records[address(arg1)].field_0 * stor7 * arg2) / 100 * stor1) / 100) - ((arg2 * stor2) - ((stor8 * arg2) - (stor7 * arg2) + (records[address(arg1)].field_512 / records[address(arg1)].field_0 * stor7 * arg2) / 100 * stor2) / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    require ext_call.return_data[0]
    require ext_call.return_data[0]
    require ext_call.return_data[0]
    if records[address(arg1)].field_256 < arg2:
        revert with 'NH{q', 17
    records[address(arg1)].field_256 -= arg2
    if records[address(arg1)].field_512 > -arg2 - 1:
        revert with 'NH{q', 17
    records[address(arg1)].field_512 += arg2
}



}
