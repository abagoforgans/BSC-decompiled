contract main {




// =====================  Runtime code  =====================


array of struct stor1;
address tokenAddress;
uint256 stakingStarts;
uint256 stakingEnds;
uint256 withdrawStarts;
uint256 withdrawEnds;
uint256 stakingCap;
uint256 stakedTotal;
uint256 stor9;
uint256 stakedBalance;
uint256 stor11;
mapping of uint256 stakeOf;
uint32 stor13;
address rewardTokenAddress;
uint256 rewardBalance;
uint256 rewardsTotal;
uint256 earlyWithdrawReward;
address rewardSetterAddress;

function rewardTokenAddress() payable {
    return address(rewardTokenAddress)
}

function withdrawStarts() payable {
    return withdrawStarts
}

function earlyWithdrawReward() payable {
    return earlyWithdrawReward
}

function stakeOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakeOf[address(arg1)]
}

function stakingCap() payable {
    return stakingCap
}

function stakedBalance() payable {
    return stakedBalance
}

function rewardSetter() payable {
    return rewardSetterAddress
}

function stakingStarts() payable {
    return stakingStarts
}

function tokenAddress() payable {
    return tokenAddress
}

function rewardBalance() payable {
    return rewardBalance
}

function stakingEnds() payable {
    return stakingEnds
}

function rewardsTotal() payable {
    return rewardsTotal
}

function stakedTotal() payable {
    return stakedTotal
}

function withdrawEnds() payable {
    return withdrawEnds
}

function _fallback() payable {
    revert
}

function stakeState() payable {
    return stakedTotal, stor9, stakedBalance, stor11
}

function rewardState() payable {
    return rewardBalance, rewardsTotal, earlyWithdrawReward
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    delegate 0x97b6ac30d9cc8a716aa330a3be67c4b10df93a98.0x9dcb1b03 with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), msg.sender, arg1, stakingStarts, stakingEnds, stakingCap, tokenAddress, 8
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == bool(delegate.return_data[0])
    return bool(delegate.return_data[0])
}

function addReward(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    delegate 0x97b6ac30d9cc8a716aa330a3be67c4b10df93a98.0xa45b92e5 with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2, address(rewardTokenAddress), 14
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == bool(delegate.return_data[0])
    return bool(delegate.return_data[0])
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    delegate 0x97b6ac30d9cc8a716aa330a3be67c4b10df93a98.0x23a01c73 with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), tokenAddress, address(rewardTokenAddress), arg1, withdrawStarts, withdrawEnds, stakingEnds, 8, 14
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == bool(delegate.return_data[0])
    return bool(delegate.return_data[0])
}

function stakeFor(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    delegate 0x97b6ac30d9cc8a716aa330a3be67c4b10df93a98.0x9dcb1b03 with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(arg1), arg2, stakingStarts, stakingEnds, stakingCap, tokenAddress, 8
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == bool(delegate.return_data[0])
    return bool(delegate.return_data[0])
}

function addMarginalReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if rewardSetterAddress != msg.sender:
        revert with 0, 'Travelstaking: Not allowed'
    earlyWithdrawReward = arg1
    delegate 0x97b6ac30d9cc8a716aa330a3be67c4b10df93a98.0x7b0414de with:
         gas gas_remaining wei
        args 0, uint32(stor13), tokenAddress, address(this.address), stakedBalance, 14
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == bool(delegate.return_data[0])
}

function name() payable {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}



}
