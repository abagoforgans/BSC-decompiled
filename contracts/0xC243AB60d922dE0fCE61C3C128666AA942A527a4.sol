contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#
address owner;
mapping of struct stor1;
address sub_c76b45ecAddress;
address tokenRewardAddress;
uint256 sub_b89fba75;
uint256 sub_1ffd18e2;
uint256 TVL;
uint256 sub_b7a6eed1;
array of address stor8;
uint256 sub_54f6f363;
uint8 stor10;
uint8 stor10; offset 8
uint256 stor11;
uint256 sub_78d0ef14;

function sub_10ef134a(?) payable {
    return stor8.length
}

function sub_1ffd18e2(?) payable {
    return sub_1ffd18e2
}

function isFinish() payable {
    return bool(uint8(stor10.field_0))
}

function sub_4bc28cd1(?) payable {
    return bool(uint8(stor10.field_8))
}

function sub_54f6f363(?) payable {
    return sub_54f6f363
}

function tokenReward() payable {
    return tokenRewardAddress
}

function sub_78d0ef14(?) payable {
    return sub_78d0ef14
}

function owner() payable {
    return owner
}

function sub_b7a6eed1(?) payable {
    return sub_b7a6eed1
}

function sub_b89fba75(?) payable {
    return sub_b89fba75
}

function sub_c76b45ec(?) payable {
    return sub_c76b45ecAddress
}

function TVL() payable {
    return TVL
}

function _fallback() payable {
    revert
}

function timeNow() payable {
    if 0 == sub_78d0ef14:
        return block.timestamp
    return sub_78d0ef14
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_c4c29bc5(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1ffd18e2 = arg1
}

function sub_d725c065(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_78d0ef14 = arg1
}

function sub_bee93248(?) payable {
    require calldata.size - 4 >= 32
    if arg1 and sub_b89fba75 > -1 / arg1:
        revert with 0, 17
    return (arg1 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
}

function sub_42ac449b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor10.field_0) = uint8(bool(arg1))
}

function sub_f319843d(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c76b45ecAddress = address(arg1)
    tokenRewardAddress = address(arg2)
    sub_b89fba75 = arg3
    sub_54f6f363 = arg4
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

function emergencyWithdraw() payable {
    if not stor1[msg.sender].field_256:
        revert with 0, 'Not enough PBX'
    if stor1[msg.sender].field_256 < stor1[msg.sender].field_256:
        revert with 0, 17
    stor1[msg.sender].field_256 = 0
    if TVL < stor1[msg.sender].field_256:
        revert with 0, 17
    TVL -= stor1[msg.sender].field_256
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stor1[msg.sender].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Unstaked(msg.sender, stor1[msg.sender].field_256);
}

function sub_3c28f9ce(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'Not enough PBX'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(arg1)].field_256:
        return stor1[address(arg1)].field_256, stor1[address(arg1)].field_512, stor1[address(arg1)].field_768, 0
    if 0 == sub_78d0ef14:
        if block.timestamp < stor1[address(arg1)].field_512:
            revert with 0, 17
        if stor1[address(arg1)].field_256 and sub_b89fba75 > -1 / stor1[address(arg1)].field_256:
            revert with 0, 17
        if stor1[address(arg1)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and block.timestamp - stor1[address(arg1)].field_512 > -1 / stor1[address(arg1)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
            revert with 0, 17
        return stor1[address(arg1)].field_256, 
               stor1[address(arg1)].field_512,
               stor1[address(arg1)].field_768,
               (block.timestamp * stor1[address(arg1)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(arg1)].field_512 * stor1[address(arg1)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
    if sub_78d0ef14 < stor1[address(arg1)].field_512:
        revert with 0, 17
    if stor1[address(arg1)].field_256 and sub_b89fba75 > -1 / stor1[address(arg1)].field_256:
        revert with 0, 17
    if stor1[address(arg1)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and sub_78d0ef14 - stor1[address(arg1)].field_512 > -1 / stor1[address(arg1)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
        revert with 0, 17
    return stor1[address(arg1)].field_256, 
           stor1[address(arg1)].field_512,
           stor1[address(arg1)].field_768,
           (sub_78d0ef14 * stor1[address(arg1)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(arg1)].field_512 * stor1[address(arg1)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
}

function sub_140fb502(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 1:
        revert with 0, 17
    if arg1 - 1 >= stor8.length:
        revert with 0, 50
    if not stor1[stor8[arg1]].field_256:
        return stor8[arg1], stor1[stor8[arg1]].field_256, stor1[stor8[arg1]].field_512, stor1[stor8[arg1]].field_768, 0
    if 0 == sub_78d0ef14:
        if block.timestamp < stor1[stor8[arg1]].field_512:
            revert with 0, 17
        if stor1[stor8[arg1]].field_256 and sub_b89fba75 > -1 / stor1[stor8[arg1]].field_256:
            revert with 0, 17
        if stor1[stor8[arg1]].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and block.timestamp - stor1[stor8[arg1]].field_512 > -1 / stor1[stor8[arg1]].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
            revert with 0, 17
        return stor8[arg1], 
               stor1[stor8[arg1]].field_256,
               stor1[stor8[arg1]].field_512,
               stor1[stor8[arg1]].field_768,
               (block.timestamp * stor1[stor8[arg1]].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[stor8[arg1]].field_512 * stor1[stor8[arg1]].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
    if sub_78d0ef14 < stor1[stor8[arg1]].field_512:
        revert with 0, 17
    if stor1[stor8[arg1]].field_256 and sub_b89fba75 > -1 / stor1[stor8[arg1]].field_256:
        revert with 0, 17
    if stor1[stor8[arg1]].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and sub_78d0ef14 - stor1[stor8[arg1]].field_512 > -1 / stor1[stor8[arg1]].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
        revert with 0, 17
    return stor8[arg1], 
           stor1[stor8[arg1]].field_256,
           stor1[stor8[arg1]].field_512,
           stor1[stor8[arg1]].field_768,
           (sub_78d0ef14 * stor1[stor8[arg1]].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[stor8[arg1]].field_512 * stor1[stor8[arg1]].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor10.field_0):
        revert with 0, 'Pool is finish'
    require ext_code.size(sub_c76b45ecAddress)
    staticcall sub_c76b45ecAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'Not enough PBX'
    if sub_54f6f363:
        if sub_54f6f363 < TVL:
            revert with 0, 17
        if arg1 > sub_54f6f363 - TVL:
            revert with 0, 'Limit Stake PBX'
    if stor1[msg.sender].field_0 == msg.sender:
        if stor1[address(msg.sender)].field_256 > !arg1:
            revert with 0, 17
        stor1[address(msg.sender)].field_256 += arg1
        if sub_1ffd18e2 > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
            revert with 0, 17
        if 0 == sub_78d0ef14:
            if block.timestamp > !(24 * 3600 * sub_1ffd18e2):
                revert with 0, 17
            stor1[address(msg.sender)].field_768 = block.timestamp + (24 * 3600 * sub_1ffd18e2)
        else:
            if sub_78d0ef14 > !(24 * 3600 * sub_1ffd18e2):
                revert with 0, 17
            stor1[address(msg.sender)].field_768 = sub_78d0ef14 + (24 * 3600 * sub_1ffd18e2)
    else:
        if sub_1ffd18e2 > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
            revert with 0, 17
        if 0 == sub_78d0ef14:
            if 0 == sub_78d0ef14:
                if block.timestamp > !(24 * 3600 * sub_1ffd18e2):
                    revert with 0, 17
                stor1[address(msg.sender)].field_0 = msg.sender
                stor1[address(msg.sender)].field_256 = arg1
                stor1[address(msg.sender)].field_512 = block.timestamp
                stor1[address(msg.sender)].field_768 = block.timestamp + (24 * 3600 * sub_1ffd18e2)
            else:
                if sub_78d0ef14 > !(24 * 3600 * sub_1ffd18e2):
                    revert with 0, 17
                stor1[address(msg.sender)].field_0 = msg.sender
                stor1[address(msg.sender)].field_256 = arg1
                stor1[address(msg.sender)].field_512 = block.timestamp
                stor1[address(msg.sender)].field_768 = sub_78d0ef14 + (24 * 3600 * sub_1ffd18e2)
        else:
            if 0 == sub_78d0ef14:
                if block.timestamp > !(24 * 3600 * sub_1ffd18e2):
                    revert with 0, 17
                stor1[address(msg.sender)].field_0 = msg.sender
                stor1[address(msg.sender)].field_256 = arg1
                stor1[address(msg.sender)].field_512 = sub_78d0ef14
                stor1[address(msg.sender)].field_768 = block.timestamp + (24 * 3600 * sub_1ffd18e2)
            else:
                if sub_78d0ef14 > !(24 * 3600 * sub_1ffd18e2):
                    revert with 0, 17
                stor1[address(msg.sender)].field_0 = msg.sender
                stor1[address(msg.sender)].field_256 = arg1
                stor1[address(msg.sender)].field_512 = sub_78d0ef14
                stor1[address(msg.sender)].field_768 = sub_78d0ef14 + (24 * 3600 * sub_1ffd18e2)
        stor8.length++
        stor8[stor8.length] = msg.sender
    if TVL > !arg1:
        revert with 0, 17
    TVL += arg1
    require ext_code.size(sub_c76b45ecAddress)
    call sub_c76b45ecAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Staked(msg.sender, arg1);
}

function harvest() payable {
    if not stor1[address(msg.sender)].field_256:
        revert with 0, 'Not enough PBX'
    if 0 == sub_78d0ef14:
        if block.timestamp < stor1[address(msg.sender)].field_512:
            revert with 0, 17
        if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
            revert with 0, 17
        if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and block.timestamp - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
            revert with 0, 17
        if (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) <= 0:
            revert with 0, 'Not enough PBX'
    else:
        if sub_78d0ef14 < stor1[address(msg.sender)].field_512:
            revert with 0, 17
        if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
            revert with 0, 17
        if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and sub_78d0ef14 - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
            revert with 0, 17
        if (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) <= 0:
            revert with 0, 'Not enough PBX'
    if not stor1[address(msg.sender)].field_256:
        if not stor1[address(msg.sender)].field_256:
            if 1 == bool(uint8(stor10.field_8)):
                if False and stor11 > 0:
                    revert with 0, 17
            if not stor1[address(msg.sender)].field_256:
                if sub_b7a6eed1 > -1:
                    revert with 0, 17
            else:
                if 0 == sub_78d0ef14:
                    if block.timestamp < stor1[address(msg.sender)].field_512:
                        revert with 0, 17
                    if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                        revert with 0, 17
                    if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and block.timestamp - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                        revert with 0, 17
                    if sub_b7a6eed1 > !((block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                        revert with 0, 17
                    sub_b7a6eed1 = sub_b7a6eed1 + (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                else:
                    if sub_78d0ef14 < stor1[address(msg.sender)].field_512:
                        revert with 0, 17
                    if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                        revert with 0, 17
                    if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and sub_78d0ef14 - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                        revert with 0, 17
                    if sub_b7a6eed1 > !((sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                        revert with 0, 17
                    sub_b7a6eed1 = sub_b7a6eed1 + (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
            if 0 == sub_78d0ef14:
                stor1[msg.sender].field_512 = block.timestamp
            else:
                stor1[msg.sender].field_512 = sub_78d0ef14
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            if 0 == sub_78d0ef14:
                if block.timestamp < stor1[address(msg.sender)].field_512:
                    revert with 0, 17
                if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                    revert with 0, 17
                if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and block.timestamp - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                    revert with 0, 17
                if bool(uint8(stor10.field_8)) != 1:
                    if not stor1[address(msg.sender)].field_256:
                        if sub_b7a6eed1 > -1:
                            revert with 0, 17
                    else:
                        if 0 == sub_78d0ef14:
                            if block.timestamp < stor1[address(msg.sender)].field_512:
                                revert with 0, 17
                            if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                                revert with 0, 17
                            if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and block.timestamp - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                                revert with 0, 17
                            if sub_b7a6eed1 > !((block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                                revert with 0, 17
                            sub_b7a6eed1 = sub_b7a6eed1 + (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                        else:
                            if sub_78d0ef14 < stor1[address(msg.sender)].field_512:
                                revert with 0, 17
                            if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                                revert with 0, 17
                            if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and sub_78d0ef14 - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                                revert with 0, 17
                            if sub_b7a6eed1 > !((sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                                revert with 0, 17
                            sub_b7a6eed1 = sub_b7a6eed1 + (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                    if 0 == sub_78d0ef14:
                        stor1[msg.sender].field_512 = block.timestamp
                    else:
                        stor1[msg.sender].field_512 = sub_78d0ef14
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                else:
                    if (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) and stor11 > -1 / (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600):
                        revert with 0, 17
                    if 0 > !((block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 * stor11) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 * stor11) / 10^6):
                        revert with 0, 17
                    if not stor1[address(msg.sender)].field_256:
                        if sub_b7a6eed1 > -1:
                            revert with 0, 17
                    else:
                        if 0 == sub_78d0ef14:
                            if block.timestamp < stor1[address(msg.sender)].field_512:
                                revert with 0, 17
                            if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                                revert with 0, 17
                            if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and block.timestamp - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                                revert with 0, 17
                            if sub_b7a6eed1 > !((block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                                revert with 0, 17
                            sub_b7a6eed1 = sub_b7a6eed1 + (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                        else:
                            if sub_78d0ef14 < stor1[address(msg.sender)].field_512:
                                revert with 0, 17
                            if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                                revert with 0, 17
                            if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and sub_78d0ef14 - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                                revert with 0, 17
                            if sub_b7a6eed1 > !((sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                                revert with 0, 17
                            sub_b7a6eed1 = sub_b7a6eed1 + (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                    if 0 == sub_78d0ef14:
                        stor1[msg.sender].field_512 = block.timestamp
                    else:
                        stor1[msg.sender].field_512 = sub_78d0ef14
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 * stor11) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 * stor11) / 10^6
            else:
                if sub_78d0ef14 < stor1[address(msg.sender)].field_512:
                    revert with 0, 17
                if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                    revert with 0, 17
                if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and sub_78d0ef14 - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                    revert with 0, 17
                if bool(uint8(stor10.field_8)) != 1:
                    if not stor1[address(msg.sender)].field_256:
                        if sub_b7a6eed1 > -1:
                            revert with 0, 17
                    else:
                        if 0 == sub_78d0ef14:
                            if block.timestamp < stor1[address(msg.sender)].field_512:
                                revert with 0, 17
                            if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                                revert with 0, 17
                            if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and block.timestamp - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                                revert with 0, 17
                            if sub_b7a6eed1 > !((block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                                revert with 0, 17
                            sub_b7a6eed1 = sub_b7a6eed1 + (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                        else:
                            if sub_78d0ef14 < stor1[address(msg.sender)].field_512:
                                revert with 0, 17
                            if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                                revert with 0, 17
                            if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and sub_78d0ef14 - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                                revert with 0, 17
                            if sub_b7a6eed1 > !((sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                                revert with 0, 17
                            sub_b7a6eed1 = sub_b7a6eed1 + (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                    if 0 == sub_78d0ef14:
                        stor1[msg.sender].field_512 = block.timestamp
                    else:
                        stor1[msg.sender].field_512 = sub_78d0ef14
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                else:
                    if (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) and stor11 > -1 / (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600):
                        revert with 0, 17
                    if 0 > !((sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 * stor11) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 * stor11) / 10^6):
                        revert with 0, 17
                    if not stor1[address(msg.sender)].field_256:
                        if sub_b7a6eed1 > -1:
                            revert with 0, 17
                    else:
                        if 0 == sub_78d0ef14:
                            if block.timestamp < stor1[address(msg.sender)].field_512:
                                revert with 0, 17
                            if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                                revert with 0, 17
                            if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and block.timestamp - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                                revert with 0, 17
                            if sub_b7a6eed1 > !((block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                                revert with 0, 17
                            sub_b7a6eed1 = sub_b7a6eed1 + (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                        else:
                            if sub_78d0ef14 < stor1[address(msg.sender)].field_512:
                                revert with 0, 17
                            if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                                revert with 0, 17
                            if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and sub_78d0ef14 - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                                revert with 0, 17
                            if sub_b7a6eed1 > !((sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                                revert with 0, 17
                            sub_b7a6eed1 = sub_b7a6eed1 + (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                    if 0 == sub_78d0ef14:
                        stor1[msg.sender].field_512 = block.timestamp
                    else:
                        stor1[msg.sender].field_512 = sub_78d0ef14
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 * stor11) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 * stor11) / 10^6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit Harvest(msg.sender, 0);
    else:
        if 0 == sub_78d0ef14:
            if block.timestamp < stor1[address(msg.sender)].field_512:
                revert with 0, 17
            if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                revert with 0, 17
            if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and block.timestamp - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                revert with 0, 17
            if not stor1[address(msg.sender)].field_256:
                if 1 == bool(uint8(stor10.field_8)):
                    if False and stor11 > 0:
                        revert with 0, 17
                if (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) > -1:
                    revert with 0, 17
                if not stor1[address(msg.sender)].field_256:
                    if sub_b7a6eed1 > -1:
                        revert with 0, 17
                else:
                    if 0 == sub_78d0ef14:
                        if block.timestamp < stor1[address(msg.sender)].field_512:
                            revert with 0, 17
                        if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                            revert with 0, 17
                        if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and block.timestamp - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                            revert with 0, 17
                        if sub_b7a6eed1 > !((block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                            revert with 0, 17
                        sub_b7a6eed1 = sub_b7a6eed1 + (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                    else:
                        if sub_78d0ef14 < stor1[address(msg.sender)].field_512:
                            revert with 0, 17
                        if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                            revert with 0, 17
                        if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and sub_78d0ef14 - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                            revert with 0, 17
                        if sub_b7a6eed1 > !((sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                            revert with 0, 17
                        sub_b7a6eed1 = sub_b7a6eed1 + (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                if 0 == sub_78d0ef14:
                    stor1[msg.sender].field_512 = block.timestamp
                else:
                    stor1[msg.sender].field_512 = sub_78d0ef14
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
            else:
                if 0 == sub_78d0ef14:
                    if block.timestamp < stor1[address(msg.sender)].field_512:
                        revert with 0, 17
                    if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                        revert with 0, 17
                    if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and block.timestamp - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                        revert with 0, 17
                    if bool(uint8(stor10.field_8)) != 1:
                        if (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) > -1:
                            revert with 0, 17
                        if not stor1[address(msg.sender)].field_256:
                            if sub_b7a6eed1 > -1:
                                revert with 0, 17
                        else:
                            if 0 == sub_78d0ef14:
                                if block.timestamp < stor1[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and block.timestamp - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                                    revert with 0, 17
                                if sub_b7a6eed1 > !((block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                                    revert with 0, 17
                                sub_b7a6eed1 = sub_b7a6eed1 + (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                            else:
                                if sub_78d0ef14 < stor1[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and sub_78d0ef14 - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                                    revert with 0, 17
                                if sub_b7a6eed1 > !((sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                                    revert with 0, 17
                                sub_b7a6eed1 = sub_b7a6eed1 + (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                        if 0 == sub_78d0ef14:
                            stor1[msg.sender].field_512 = block.timestamp
                        else:
                            stor1[msg.sender].field_512 = sub_78d0ef14
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                    else:
                        if (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) and stor11 > -1 / (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600):
                            revert with 0, 17
                        if (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) > !((block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 * stor11) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 * stor11) / 10^6):
                            revert with 0, 17
                        if not stor1[address(msg.sender)].field_256:
                            if sub_b7a6eed1 > -1:
                                revert with 0, 17
                        else:
                            if 0 == sub_78d0ef14:
                                if block.timestamp < stor1[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and block.timestamp - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                                    revert with 0, 17
                                if sub_b7a6eed1 > !((block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                                    revert with 0, 17
                                sub_b7a6eed1 = sub_b7a6eed1 + (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                            else:
                                if sub_78d0ef14 < stor1[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and sub_78d0ef14 - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                                    revert with 0, 17
                                if sub_b7a6eed1 > !((sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                                    revert with 0, 17
                                sub_b7a6eed1 = sub_b7a6eed1 + (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                        if 0 == sub_78d0ef14:
                            stor1[msg.sender].field_512 = block.timestamp
                        else:
                            stor1[msg.sender].field_512 = sub_78d0ef14
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) + ((block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 * stor11) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 * stor11) / 10^6)
                else:
                    if sub_78d0ef14 < stor1[address(msg.sender)].field_512:
                        revert with 0, 17
                    if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                        revert with 0, 17
                    if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and sub_78d0ef14 - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                        revert with 0, 17
                    if bool(uint8(stor10.field_8)) != 1:
                        if (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) > -1:
                            revert with 0, 17
                        if not stor1[address(msg.sender)].field_256:
                            if sub_b7a6eed1 > -1:
                                revert with 0, 17
                        else:
                            if 0 == sub_78d0ef14:
                                if block.timestamp < stor1[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and block.timestamp - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                                    revert with 0, 17
                                if sub_b7a6eed1 > !((block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                                    revert with 0, 17
                                sub_b7a6eed1 = sub_b7a6eed1 + (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                            else:
                                if sub_78d0ef14 < stor1[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and sub_78d0ef14 - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                                    revert with 0, 17
                                if sub_b7a6eed1 > !((sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                                    revert with 0, 17
                                sub_b7a6eed1 = sub_b7a6eed1 + (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                        if 0 == sub_78d0ef14:
                            stor1[msg.sender].field_512 = block.timestamp
                        else:
                            stor1[msg.sender].field_512 = sub_78d0ef14
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                    else:
                        if (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) and stor11 > -1 / (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600):
                            revert with 0, 17
                        if (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) > !((sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 * stor11) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 * stor11) / 10^6):
                            revert with 0, 17
                        if not stor1[address(msg.sender)].field_256:
                            if sub_b7a6eed1 > -1:
                                revert with 0, 17
                        else:
                            if 0 == sub_78d0ef14:
                                if block.timestamp < stor1[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and block.timestamp - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                                    revert with 0, 17
                                if sub_b7a6eed1 > !((block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                                    revert with 0, 17
                                sub_b7a6eed1 = sub_b7a6eed1 + (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                            else:
                                if sub_78d0ef14 < stor1[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and sub_78d0ef14 - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                                    revert with 0, 17
                                if sub_b7a6eed1 > !((sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                                    revert with 0, 17
                                sub_b7a6eed1 = sub_b7a6eed1 + (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                        if 0 == sub_78d0ef14:
                            stor1[msg.sender].field_512 = block.timestamp
                        else:
                            stor1[msg.sender].field_512 = sub_78d0ef14
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) + ((sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 * stor11) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 * stor11) / 10^6)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Harvest(msg.sender, (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600));
        else:
            if sub_78d0ef14 < stor1[address(msg.sender)].field_512:
                revert with 0, 17
            if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                revert with 0, 17
            if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and sub_78d0ef14 - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                revert with 0, 17
            if not stor1[address(msg.sender)].field_256:
                if 1 == bool(uint8(stor10.field_8)):
                    if False and stor11 > 0:
                        revert with 0, 17
                if (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) > -1:
                    revert with 0, 17
                if not stor1[address(msg.sender)].field_256:
                    if sub_b7a6eed1 > -1:
                        revert with 0, 17
                else:
                    if 0 == sub_78d0ef14:
                        if block.timestamp < stor1[address(msg.sender)].field_512:
                            revert with 0, 17
                        if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                            revert with 0, 17
                        if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and block.timestamp - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                            revert with 0, 17
                        if sub_b7a6eed1 > !((block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                            revert with 0, 17
                        sub_b7a6eed1 = sub_b7a6eed1 + (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                    else:
                        if sub_78d0ef14 < stor1[address(msg.sender)].field_512:
                            revert with 0, 17
                        if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                            revert with 0, 17
                        if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and sub_78d0ef14 - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                            revert with 0, 17
                        if sub_b7a6eed1 > !((sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                            revert with 0, 17
                        sub_b7a6eed1 = sub_b7a6eed1 + (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                if 0 == sub_78d0ef14:
                    stor1[msg.sender].field_512 = block.timestamp
                else:
                    stor1[msg.sender].field_512 = sub_78d0ef14
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
            else:
                if 0 == sub_78d0ef14:
                    if block.timestamp < stor1[address(msg.sender)].field_512:
                        revert with 0, 17
                    if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                        revert with 0, 17
                    if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and block.timestamp - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                        revert with 0, 17
                    if bool(uint8(stor10.field_8)) != 1:
                        if (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) > -1:
                            revert with 0, 17
                        if not stor1[address(msg.sender)].field_256:
                            if sub_b7a6eed1 > -1:
                                revert with 0, 17
                        else:
                            if 0 == sub_78d0ef14:
                                if block.timestamp < stor1[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and block.timestamp - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                                    revert with 0, 17
                                if sub_b7a6eed1 > !((block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                                    revert with 0, 17
                                sub_b7a6eed1 = sub_b7a6eed1 + (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                            else:
                                if sub_78d0ef14 < stor1[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and sub_78d0ef14 - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                                    revert with 0, 17
                                if sub_b7a6eed1 > !((sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                                    revert with 0, 17
                                sub_b7a6eed1 = sub_b7a6eed1 + (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                        if 0 == sub_78d0ef14:
                            stor1[msg.sender].field_512 = block.timestamp
                        else:
                            stor1[msg.sender].field_512 = sub_78d0ef14
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                    else:
                        if (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) and stor11 > -1 / (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600):
                            revert with 0, 17
                        if (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) > !((block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 * stor11) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 * stor11) / 10^6):
                            revert with 0, 17
                        if not stor1[address(msg.sender)].field_256:
                            if sub_b7a6eed1 > -1:
                                revert with 0, 17
                        else:
                            if 0 == sub_78d0ef14:
                                if block.timestamp < stor1[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and block.timestamp - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                                    revert with 0, 17
                                if sub_b7a6eed1 > !((block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                                    revert with 0, 17
                                sub_b7a6eed1 = sub_b7a6eed1 + (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                            else:
                                if sub_78d0ef14 < stor1[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and sub_78d0ef14 - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                                    revert with 0, 17
                                if sub_b7a6eed1 > !((sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                                    revert with 0, 17
                                sub_b7a6eed1 = sub_b7a6eed1 + (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                        if 0 == sub_78d0ef14:
                            stor1[msg.sender].field_512 = block.timestamp
                        else:
                            stor1[msg.sender].field_512 = sub_78d0ef14
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) + ((block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 * stor11) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 * stor11) / 10^6)
                else:
                    if sub_78d0ef14 < stor1[address(msg.sender)].field_512:
                        revert with 0, 17
                    if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                        revert with 0, 17
                    if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and sub_78d0ef14 - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                        revert with 0, 17
                    if bool(uint8(stor10.field_8)) != 1:
                        if (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) > -1:
                            revert with 0, 17
                        if not stor1[address(msg.sender)].field_256:
                            if sub_b7a6eed1 > -1:
                                revert with 0, 17
                        else:
                            if 0 == sub_78d0ef14:
                                if block.timestamp < stor1[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and block.timestamp - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                                    revert with 0, 17
                                if sub_b7a6eed1 > !((block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                                    revert with 0, 17
                                sub_b7a6eed1 = sub_b7a6eed1 + (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                            else:
                                if sub_78d0ef14 < stor1[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and sub_78d0ef14 - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                                    revert with 0, 17
                                if sub_b7a6eed1 > !((sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                                    revert with 0, 17
                                sub_b7a6eed1 = sub_b7a6eed1 + (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                        if 0 == sub_78d0ef14:
                            stor1[msg.sender].field_512 = block.timestamp
                        else:
                            stor1[msg.sender].field_512 = sub_78d0ef14
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                    else:
                        if (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) and stor11 > -1 / (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600):
                            revert with 0, 17
                        if (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) > !((sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 * stor11) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 * stor11) / 10^6):
                            revert with 0, 17
                        if not stor1[address(msg.sender)].field_256:
                            if sub_b7a6eed1 > -1:
                                revert with 0, 17
                        else:
                            if 0 == sub_78d0ef14:
                                if block.timestamp < stor1[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and block.timestamp - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                                    revert with 0, 17
                                if sub_b7a6eed1 > !((block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                                    revert with 0, 17
                                sub_b7a6eed1 = sub_b7a6eed1 + (block.timestamp * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                            else:
                                if sub_78d0ef14 < stor1[address(msg.sender)].field_512:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 and sub_b89fba75 > -1 / stor1[address(msg.sender)].field_256:
                                    revert with 0, 17
                                if stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 and sub_78d0ef14 - stor1[address(msg.sender)].field_512 > -1 / stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600:
                                    revert with 0, 17
                                if sub_b7a6eed1 > !((sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)):
                                    revert with 0, 17
                                sub_b7a6eed1 = sub_b7a6eed1 + (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600)
                        if 0 == sub_78d0ef14:
                            stor1[msg.sender].field_512 = block.timestamp
                        else:
                            stor1[msg.sender].field_512 = sub_78d0ef14
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) + ((sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 * stor11) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600 * stor11) / 10^6)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Harvest(msg.sender, (sub_78d0ef14 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_256 * sub_b89fba75 / 100 / 8760 * 24 * 3600));
}



}
