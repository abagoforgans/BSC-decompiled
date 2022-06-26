contract main {




// =====================  Runtime code  =====================


address owner;
address rewardsTokenAddress;
array of address stor2;
mapping of uint256 stor3;
mapping of uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 totalRewards;
uint256 sub_754aa611;

function totalRewards() payable {
    return totalRewards
}

function sub_729c90a9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_729c90a9.length
    return sub_729c90a9[arg1]
}

function sub_754aa611(?) payable {
    return sub_754aa611
}

function owner() payable {
    return owner
}

function rewardsToken() payable {
    return rewardsTokenAddress
}

function _fallback() payable {
    revert
}

function sub_cede6707(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    stor6 = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    owner = arg1
    emit OwnershipTransferred(arg1);
}

function pendingRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if stor4[address(arg1)] and ext_call.return_data[0] > -1 / stor4[address(arg1)]:
        revert with 'NH{q', 17
    if not stor5:
        revert with 'NH{q', 18
    return (stor4[address(arg1)] * ext_call.return_data[0] / stor5)
}

function getTotalRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_729c90a9.length < 1:
        revert with 'NH{q', 17
    if arg1 > sub_729c90a9.length - 1:
        if 0 >= sub_729c90a9.length:
            revert with 'NH{q', 50
        if sub_729c90a9.length - 1 >= sub_729c90a9.length:
            revert with 'NH{q', 50
        if sub_729c90a9[sub_729c90a9.length] < sub_729c90a9:
            revert with 'NH{q', 17
        return (sub_729c90a9[sub_729c90a9.length] - sub_729c90a9)
    if sub_729c90a9.length - 1 < arg1:
        revert with 'NH{q', 17
    if sub_729c90a9.length + -arg1 - 1 >= sub_729c90a9.length:
        revert with 'NH{q', 50
    if sub_729c90a9.length - 1 >= sub_729c90a9.length:
        revert with 'NH{q', 50
    if sub_729c90a9[sub_729c90a9.length] < stor[('name', 'sub_729c90a9', 9) + sub_729c90a9.length - arg1]:
        revert with 'NH{q', 17
    return (sub_729c90a9[sub_729c90a9.length] - stor[('name', 'sub_729c90a9', 9) + sub_729c90a9.length - arg1])
}

function distribute() payable {
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < stor6:
    if totalRewards > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    totalRewards += ext_call.return_data[0]
    if sub_754aa611 > -43201:
        revert with 'NH{q', 17
    if sub_754aa611 + (12 * 3600) >= block.timestamp:
        if var98002 >= stor2.length:
        if var102001 >= stor2.length:
            revert with 'NH{q', 50
        if var116003 and ext_call.return_data[0] > -1 / var116003:
            revert with 'NH{q', 17
        if not stor5:
            revert with 'NH{q', 18
        # nil
    else:
        sub_754aa611 = block.timestamp
        sub_729c90a9.length++
        sub_729c90a9[sub_729c90a9.length] = totalRewards
        if var99002 >= stor2.length:
        if var103001 >= stor2.length:
            revert with 'NH{q', 50
        if var117003 and ext_call.return_data[0] > -1 / var117003:
            revert with 'NH{q', 17
        if not stor5:
            revert with 'NH{q', 18
        # nil
}

function setAllocation(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == owner
    if arg2:
        if not stor3[address(arg1)]:
            if stor3[address(arg1)]:
                revert with 0, 'OrderList: ITEM_EXISTS'
            stor2.length++
            stor2[stor2.length] = arg1
            stor3[address(arg1)] = stor2.length
        if stor5 > -arg2 - 1:
            revert with 'NH{q', 17
        if stor5 + arg2 < stor4[address(arg1)]:
            revert with 'NH{q', 17
        stor5 = stor5 + arg2 - stor4[address(arg1)]
        stor4[address(arg1)] = arg2
    else:
        if not stor3[address(arg1)]:
            revert with 0, 'OrderList: ITEM_NOT_PRESENT'
        if stor2.length < 1:
            revert with 'NH{q', 17
        if stor2.length - 1 >= stor2.length:
            revert with 'NH{q', 50
        if stor3[address(arg1)] < 1:
            revert with 'NH{q', 17
        if stor3[address(arg1)] - 1 >= stor2.length:
            revert with 'NH{q', 50
        stor2[stor3[address(arg1)]] = stor2[stor2.length]
        if stor2.length < 1:
            revert with 'NH{q', 17
        if stor2.length - 1 >= stor2.length:
            revert with 'NH{q', 50
        stor3[stor2[stor2.length]] = stor3[address(arg1)]
        if not stor2.length:
            revert with 'NH{q', 49
        stor2[stor2.length] = 0
        stor2.length--
        stor3[address(arg1)] = 0
        if stor5 < stor4[address(arg1)]:
            revert with 'NH{q', 17
        stor5 -= stor4[address(arg1)]
        stor4[address(arg1)] = 0
}



}
