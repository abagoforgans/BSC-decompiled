contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - harvest()
#  - stake(uint256 arg1)
#  - exit()
#
address owner;
address sub_53f6d059Address;
uint256 effectTime;
address sub_19292d68Address;
address cornAddress;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 userDebt;
mapping of uint256 paidRewardOf;
uint256 startTime;
uint256 period;
uint256 totalPeriod;
uint256 decimals;
uint256 rewardPerPeriod;
uint256 sub_dacd7e0c;
uint256 sub_8a5ff078;
uint8 stor16;

function sub_159c2e89(?) payable {
    return bool(stor16)
}

function totalSupply() payable {
    return totalSupply
}

function sub_19292d68(?) payable {
    return sub_19292d68Address
}

function effectTime() payable {
    return effectTime
}

function decimals() payable {
    return decimals
}

function rewardPerPeriod() payable {
    return rewardPerPeriod
}

function sub_53f6d059(?) payable {
    return sub_53f6d059Address
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function startTime() payable {
    return startTime
}

function sub_8a5ff078(?) payable {
    return sub_8a5ff078
}

function owner() payable {
    return owner
}

function corn() payable {
    return cornAddress
}

function paidRewardOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return paidRewardOf[address(arg1)]
}

function userDebt(address arg1) payable {
    require calldata.size - 4 >= 32
    return userDebt[arg1]
}

function totalPeriod() payable {
    return totalPeriod
}

function sub_dacd7e0c(?) payable {
    return sub_dacd7e0c
}

function period() payable {
    return period
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setAdmin() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_53f6d059Address = msg.sender
    emit SetAdmin(msg.sender);
    return 1
}

function updateRewardPerPeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardPerPeriod = arg1
    return 1
}

function renounceAdmin() payable {
    if not sub_53f6d059Address:
        revert with 0, 'REQUIRE ADMIN'
    if sub_53f6d059Address != msg.sender:
        revert with 0, 'REQUIRE ADMIN'
    if block.timestamp < effectTime:
        revert with 0, 'REQUIRE ADMIN'
    sub_53f6d059Address = 0
    emit 0x3c96162b 
    return 1
}

function currentPeriod() payable {
    if block.timestamp < startTime:
        return 0
    require period
    if block.timestamp - startTime - (block.timestamp - startTime % period) / period <= totalPeriod:
        return (block.timestamp - startTime - (block.timestamp - startTime % period) / period)
    return totalPeriod
}

function sub_008b25bf(?) payable {
    if not sub_53f6d059Address:
        revert with 0, 'REQUIRE ADMIN'
    if sub_53f6d059Address != msg.sender:
        revert with 0, 'REQUIRE ADMIN'
    if block.timestamp < effectTime:
        revert with 0, 'REQUIRE ADMIN'
    call sub_53f6d059Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_56d8bd13(?) payable {
    require calldata.size - 4 >= 64
    if not sub_53f6d059Address:
        revert with 0, 'REQUIRE ADMIN'
    if sub_53f6d059Address != msg.sender:
        revert with 0, 'REQUIRE ADMIN'
    if block.timestamp < effectTime:
        revert with 0, 'REQUIRE ADMIN'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args sub_53f6d059Address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getUserEarned(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < startTime:
        return 0
    require period
    if not balanceOf[address(arg1)]:
        return 0
    if block.timestamp - startTime - (block.timestamp - startTime % period) / period <= totalPeriod:
        if not block.timestamp - startTime - (block.timestamp - startTime % period) / period:
            return 0
        if not (block.timestamp - startTime - (block.timestamp - startTime % period) / period) - sub_8a5ff078:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if sub_dacd7e0c + (0 / totalSupply) < sub_dacd7e0c:
                revert with 0, 'SafeMath: addition overflow'
            if not balanceOf[address(arg1)]:
                if decimals <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require decimals
                if userDebt[address(arg1)] > 0 / decimals:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / decimals) - userDebt[address(arg1)])
            require balanceOf[address(arg1)]
            if (sub_dacd7e0c * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != sub_dacd7e0c + (0 / totalSupply):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if decimals <= 0:
                revert with 0, 'SafeMath: division by zero'
            require decimals
            if userDebt[address(arg1)] > (sub_dacd7e0c * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) / decimals:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((sub_dacd7e0c * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) / decimals) - userDebt[address(arg1)])
        require (block.timestamp - startTime - (block.timestamp - startTime % period) / period) - sub_8a5ff078
        if (block.timestamp - startTime - (block.timestamp - startTime % period) / period * rewardPerPeriod) - (sub_8a5ff078 * rewardPerPeriod) / (block.timestamp - startTime - (block.timestamp - startTime % period) / period) - sub_8a5ff078 != rewardPerPeriod:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.timestamp - startTime - (block.timestamp - startTime % period) / period * rewardPerPeriod) - (sub_8a5ff078 * rewardPerPeriod):
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if sub_dacd7e0c + (0 / totalSupply) < sub_dacd7e0c:
                revert with 0, 'SafeMath: addition overflow'
            if not balanceOf[address(arg1)]:
                if decimals <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require decimals
                if userDebt[address(arg1)] > 0 / decimals:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / decimals) - userDebt[address(arg1)])
            require balanceOf[address(arg1)]
            if (sub_dacd7e0c * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != sub_dacd7e0c + (0 / totalSupply):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if decimals <= 0:
                revert with 0, 'SafeMath: division by zero'
            require decimals
            if userDebt[address(arg1)] > (sub_dacd7e0c * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) / decimals:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((sub_dacd7e0c * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) / decimals) - userDebt[address(arg1)])
        require (block.timestamp - startTime - (block.timestamp - startTime % period) / period * rewardPerPeriod) - (sub_8a5ff078 * rewardPerPeriod)
        if (block.timestamp - startTime - (block.timestamp - startTime % period) / period * rewardPerPeriod * decimals) - (sub_8a5ff078 * rewardPerPeriod * decimals) / (block.timestamp - startTime - (block.timestamp - startTime % period) / period * rewardPerPeriod) - (sub_8a5ff078 * rewardPerPeriod) != decimals:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if sub_dacd7e0c + ((block.timestamp - startTime - (block.timestamp - startTime % period) / period * rewardPerPeriod * decimals) - (sub_8a5ff078 * rewardPerPeriod * decimals) / totalSupply) < sub_dacd7e0c:
            revert with 0, 'SafeMath: addition overflow'
        if not balanceOf[address(arg1)]:
            if decimals <= 0:
                revert with 0, 'SafeMath: division by zero'
            require decimals
            if userDebt[address(arg1)] > 0 / decimals:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / decimals) - userDebt[address(arg1)])
        require balanceOf[address(arg1)]
        if (sub_dacd7e0c * balanceOf[address(arg1)]) + ((block.timestamp - startTime - (block.timestamp - startTime % period) / period * rewardPerPeriod * decimals) - (sub_8a5ff078 * rewardPerPeriod * decimals) / totalSupply * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != sub_dacd7e0c + ((block.timestamp - startTime - (block.timestamp - startTime % period) / period * rewardPerPeriod * decimals) - (sub_8a5ff078 * rewardPerPeriod * decimals) / totalSupply):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if decimals <= 0:
            revert with 0, 'SafeMath: division by zero'
        require decimals
        if userDebt[address(arg1)] > (sub_dacd7e0c * balanceOf[address(arg1)]) + ((block.timestamp - startTime - (block.timestamp - startTime % period) / period * rewardPerPeriod * decimals) - (sub_8a5ff078 * rewardPerPeriod * decimals) / totalSupply * balanceOf[address(arg1)]) / decimals:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((sub_dacd7e0c * balanceOf[address(arg1)]) + ((block.timestamp - startTime - (block.timestamp - startTime % period) / period * rewardPerPeriod * decimals) - (sub_8a5ff078 * rewardPerPeriod * decimals) / totalSupply * balanceOf[address(arg1)]) / decimals) - userDebt[address(arg1)])
    if not totalPeriod:
        return 0
    if not totalPeriod - sub_8a5ff078:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if sub_dacd7e0c + (0 / totalSupply) < sub_dacd7e0c:
            revert with 0, 'SafeMath: addition overflow'
        if not balanceOf[address(arg1)]:
            if decimals <= 0:
                revert with 0, 'SafeMath: division by zero'
            require decimals
            if userDebt[address(arg1)] > 0 / decimals:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / decimals) - userDebt[address(arg1)])
        require balanceOf[address(arg1)]
        if (sub_dacd7e0c * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != sub_dacd7e0c + (0 / totalSupply):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if decimals <= 0:
            revert with 0, 'SafeMath: division by zero'
        require decimals
        if userDebt[address(arg1)] > (sub_dacd7e0c * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) / decimals:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((sub_dacd7e0c * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) / decimals) - userDebt[address(arg1)])
    require totalPeriod - sub_8a5ff078
    if (totalPeriod * rewardPerPeriod) - (sub_8a5ff078 * rewardPerPeriod) / totalPeriod - sub_8a5ff078 != rewardPerPeriod:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (totalPeriod * rewardPerPeriod) - (sub_8a5ff078 * rewardPerPeriod):
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if sub_dacd7e0c + (0 / totalSupply) < sub_dacd7e0c:
            revert with 0, 'SafeMath: addition overflow'
        if not balanceOf[address(arg1)]:
            if decimals <= 0:
                revert with 0, 'SafeMath: division by zero'
            require decimals
            if userDebt[address(arg1)] > 0 / decimals:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / decimals) - userDebt[address(arg1)])
        require balanceOf[address(arg1)]
        if (sub_dacd7e0c * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != sub_dacd7e0c + (0 / totalSupply):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if decimals <= 0:
            revert with 0, 'SafeMath: division by zero'
        require decimals
        if userDebt[address(arg1)] > (sub_dacd7e0c * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) / decimals:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((sub_dacd7e0c * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) / decimals) - userDebt[address(arg1)])
    require (totalPeriod * rewardPerPeriod) - (sub_8a5ff078 * rewardPerPeriod)
    if (totalPeriod * rewardPerPeriod * decimals) - (sub_8a5ff078 * rewardPerPeriod * decimals) / (totalPeriod * rewardPerPeriod) - (sub_8a5ff078 * rewardPerPeriod) != decimals:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if sub_dacd7e0c + ((totalPeriod * rewardPerPeriod * decimals) - (sub_8a5ff078 * rewardPerPeriod * decimals) / totalSupply) < sub_dacd7e0c:
        revert with 0, 'SafeMath: addition overflow'
    if not balanceOf[address(arg1)]:
        if decimals <= 0:
            revert with 0, 'SafeMath: division by zero'
        require decimals
        if userDebt[address(arg1)] > 0 / decimals:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((0 / decimals) - userDebt[address(arg1)])
    require balanceOf[address(arg1)]
    if (sub_dacd7e0c * balanceOf[address(arg1)]) + ((totalPeriod * rewardPerPeriod * decimals) - (sub_8a5ff078 * rewardPerPeriod * decimals) / totalSupply * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != sub_dacd7e0c + ((totalPeriod * rewardPerPeriod * decimals) - (sub_8a5ff078 * rewardPerPeriod * decimals) / totalSupply):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if decimals <= 0:
        revert with 0, 'SafeMath: division by zero'
    require decimals
    if userDebt[address(arg1)] > (sub_dacd7e0c * balanceOf[address(arg1)]) + ((totalPeriod * rewardPerPeriod * decimals) - (sub_8a5ff078 * rewardPerPeriod * decimals) / totalSupply * balanceOf[address(arg1)]) / decimals:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((sub_dacd7e0c * balanceOf[address(arg1)]) + ((totalPeriod * rewardPerPeriod * decimals) - (sub_8a5ff078 * rewardPerPeriod * decimals) / totalSupply * balanceOf[address(arg1)]) / decimals) - userDebt[address(arg1)])
}

function rewardOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < startTime:
        if paidRewardOf[address(arg1)] < paidRewardOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return paidRewardOf[address(arg1)]
    require period
    if not balanceOf[address(arg1)]:
        if paidRewardOf[address(arg1)] < paidRewardOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return paidRewardOf[address(arg1)]
    if block.timestamp - startTime - (block.timestamp - startTime % period) / period <= totalPeriod:
        if not block.timestamp - startTime - (block.timestamp - startTime % period) / period:
            if paidRewardOf[address(arg1)] < paidRewardOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return paidRewardOf[address(arg1)]
        if not (block.timestamp - startTime - (block.timestamp - startTime % period) / period) - sub_8a5ff078:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if sub_dacd7e0c + (0 / totalSupply) < sub_dacd7e0c:
                revert with 0, 'SafeMath: addition overflow'
            if not balanceOf[address(arg1)]:
                if decimals <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require decimals
                if userDebt[address(arg1)] > 0 / decimals:
                    revert with 0, 'SafeMath: subtraction overflow'
                if paidRewardOf[address(arg1)] + (0 / decimals) - userDebt[address(arg1)] < paidRewardOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (paidRewardOf[address(arg1)] + (0 / decimals) - userDebt[address(arg1)])
            require balanceOf[address(arg1)]
            if (sub_dacd7e0c * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != sub_dacd7e0c + (0 / totalSupply):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if decimals <= 0:
                revert with 0, 'SafeMath: division by zero'
            require decimals
            if userDebt[address(arg1)] > (sub_dacd7e0c * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) / decimals:
                revert with 0, 'SafeMath: subtraction overflow'
            if paidRewardOf[address(arg1)] + ((sub_dacd7e0c * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) / decimals) - userDebt[address(arg1)] < paidRewardOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (paidRewardOf[address(arg1)] + ((sub_dacd7e0c * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) / decimals) - userDebt[address(arg1)])
        require (block.timestamp - startTime - (block.timestamp - startTime % period) / period) - sub_8a5ff078
        if (block.timestamp - startTime - (block.timestamp - startTime % period) / period * rewardPerPeriod) - (sub_8a5ff078 * rewardPerPeriod) / (block.timestamp - startTime - (block.timestamp - startTime % period) / period) - sub_8a5ff078 != rewardPerPeriod:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.timestamp - startTime - (block.timestamp - startTime % period) / period * rewardPerPeriod) - (sub_8a5ff078 * rewardPerPeriod):
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if sub_dacd7e0c + (0 / totalSupply) < sub_dacd7e0c:
                revert with 0, 'SafeMath: addition overflow'
            if not balanceOf[address(arg1)]:
                if decimals <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require decimals
                if userDebt[address(arg1)] > 0 / decimals:
                    revert with 0, 'SafeMath: subtraction overflow'
                if paidRewardOf[address(arg1)] + (0 / decimals) - userDebt[address(arg1)] < paidRewardOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                return (paidRewardOf[address(arg1)] + (0 / decimals) - userDebt[address(arg1)])
            require balanceOf[address(arg1)]
            if (sub_dacd7e0c * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != sub_dacd7e0c + (0 / totalSupply):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if decimals <= 0:
                revert with 0, 'SafeMath: division by zero'
            require decimals
            if userDebt[address(arg1)] > (sub_dacd7e0c * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) / decimals:
                revert with 0, 'SafeMath: subtraction overflow'
            if paidRewardOf[address(arg1)] + ((sub_dacd7e0c * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) / decimals) - userDebt[address(arg1)] < paidRewardOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (paidRewardOf[address(arg1)] + ((sub_dacd7e0c * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) / decimals) - userDebt[address(arg1)])
        require (block.timestamp - startTime - (block.timestamp - startTime % period) / period * rewardPerPeriod) - (sub_8a5ff078 * rewardPerPeriod)
        if (block.timestamp - startTime - (block.timestamp - startTime % period) / period * rewardPerPeriod * decimals) - (sub_8a5ff078 * rewardPerPeriod * decimals) / (block.timestamp - startTime - (block.timestamp - startTime % period) / period * rewardPerPeriod) - (sub_8a5ff078 * rewardPerPeriod) != decimals:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if sub_dacd7e0c + ((block.timestamp - startTime - (block.timestamp - startTime % period) / period * rewardPerPeriod * decimals) - (sub_8a5ff078 * rewardPerPeriod * decimals) / totalSupply) < sub_dacd7e0c:
            revert with 0, 'SafeMath: addition overflow'
        if not balanceOf[address(arg1)]:
            if decimals <= 0:
                revert with 0, 'SafeMath: division by zero'
            require decimals
            if userDebt[address(arg1)] > 0 / decimals:
                revert with 0, 'SafeMath: subtraction overflow'
            if paidRewardOf[address(arg1)] + (0 / decimals) - userDebt[address(arg1)] < paidRewardOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (paidRewardOf[address(arg1)] + (0 / decimals) - userDebt[address(arg1)])
        require balanceOf[address(arg1)]
        if (sub_dacd7e0c * balanceOf[address(arg1)]) + ((block.timestamp - startTime - (block.timestamp - startTime % period) / period * rewardPerPeriod * decimals) - (sub_8a5ff078 * rewardPerPeriod * decimals) / totalSupply * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != sub_dacd7e0c + ((block.timestamp - startTime - (block.timestamp - startTime % period) / period * rewardPerPeriod * decimals) - (sub_8a5ff078 * rewardPerPeriod * decimals) / totalSupply):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if decimals <= 0:
            revert with 0, 'SafeMath: division by zero'
        require decimals
        if userDebt[address(arg1)] > (sub_dacd7e0c * balanceOf[address(arg1)]) + ((block.timestamp - startTime - (block.timestamp - startTime % period) / period * rewardPerPeriod * decimals) - (sub_8a5ff078 * rewardPerPeriod * decimals) / totalSupply * balanceOf[address(arg1)]) / decimals:
            revert with 0, 'SafeMath: subtraction overflow'
        if paidRewardOf[address(arg1)] + ((sub_dacd7e0c * balanceOf[address(arg1)]) + ((block.timestamp - startTime - (block.timestamp - startTime % period) / period * rewardPerPeriod * decimals) - (sub_8a5ff078 * rewardPerPeriod * decimals) / totalSupply * balanceOf[address(arg1)]) / decimals) - userDebt[address(arg1)] < paidRewardOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return (paidRewardOf[address(arg1)] + ((sub_dacd7e0c * balanceOf[address(arg1)]) + ((block.timestamp - startTime - (block.timestamp - startTime % period) / period * rewardPerPeriod * decimals) - (sub_8a5ff078 * rewardPerPeriod * decimals) / totalSupply * balanceOf[address(arg1)]) / decimals) - userDebt[address(arg1)])
    if not totalPeriod:
        if paidRewardOf[address(arg1)] < paidRewardOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return paidRewardOf[address(arg1)]
    if not totalPeriod - sub_8a5ff078:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if sub_dacd7e0c + (0 / totalSupply) < sub_dacd7e0c:
            revert with 0, 'SafeMath: addition overflow'
        if not balanceOf[address(arg1)]:
            if decimals <= 0:
                revert with 0, 'SafeMath: division by zero'
            require decimals
            if userDebt[address(arg1)] > 0 / decimals:
                revert with 0, 'SafeMath: subtraction overflow'
            if paidRewardOf[address(arg1)] + (0 / decimals) - userDebt[address(arg1)] < paidRewardOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (paidRewardOf[address(arg1)] + (0 / decimals) - userDebt[address(arg1)])
        require balanceOf[address(arg1)]
        if (sub_dacd7e0c * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != sub_dacd7e0c + (0 / totalSupply):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if decimals <= 0:
            revert with 0, 'SafeMath: division by zero'
        require decimals
        if userDebt[address(arg1)] > (sub_dacd7e0c * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) / decimals:
            revert with 0, 'SafeMath: subtraction overflow'
        if paidRewardOf[address(arg1)] + ((sub_dacd7e0c * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) / decimals) - userDebt[address(arg1)] < paidRewardOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return (paidRewardOf[address(arg1)] + ((sub_dacd7e0c * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) / decimals) - userDebt[address(arg1)])
    require totalPeriod - sub_8a5ff078
    if (totalPeriod * rewardPerPeriod) - (sub_8a5ff078 * rewardPerPeriod) / totalPeriod - sub_8a5ff078 != rewardPerPeriod:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (totalPeriod * rewardPerPeriod) - (sub_8a5ff078 * rewardPerPeriod):
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if sub_dacd7e0c + (0 / totalSupply) < sub_dacd7e0c:
            revert with 0, 'SafeMath: addition overflow'
        if not balanceOf[address(arg1)]:
            if decimals <= 0:
                revert with 0, 'SafeMath: division by zero'
            require decimals
            if userDebt[address(arg1)] > 0 / decimals:
                revert with 0, 'SafeMath: subtraction overflow'
            if paidRewardOf[address(arg1)] + (0 / decimals) - userDebt[address(arg1)] < paidRewardOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            return (paidRewardOf[address(arg1)] + (0 / decimals) - userDebt[address(arg1)])
        require balanceOf[address(arg1)]
        if (sub_dacd7e0c * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != sub_dacd7e0c + (0 / totalSupply):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if decimals <= 0:
            revert with 0, 'SafeMath: division by zero'
        require decimals
        if userDebt[address(arg1)] > (sub_dacd7e0c * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) / decimals:
            revert with 0, 'SafeMath: subtraction overflow'
        if paidRewardOf[address(arg1)] + ((sub_dacd7e0c * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) / decimals) - userDebt[address(arg1)] < paidRewardOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return (paidRewardOf[address(arg1)] + ((sub_dacd7e0c * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) / decimals) - userDebt[address(arg1)])
    require (totalPeriod * rewardPerPeriod) - (sub_8a5ff078 * rewardPerPeriod)
    if (totalPeriod * rewardPerPeriod * decimals) - (sub_8a5ff078 * rewardPerPeriod * decimals) / (totalPeriod * rewardPerPeriod) - (sub_8a5ff078 * rewardPerPeriod) != decimals:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if sub_dacd7e0c + ((totalPeriod * rewardPerPeriod * decimals) - (sub_8a5ff078 * rewardPerPeriod * decimals) / totalSupply) < sub_dacd7e0c:
        revert with 0, 'SafeMath: addition overflow'
    if not balanceOf[address(arg1)]:
        if decimals <= 0:
            revert with 0, 'SafeMath: division by zero'
        require decimals
        if userDebt[address(arg1)] > 0 / decimals:
            revert with 0, 'SafeMath: subtraction overflow'
        if paidRewardOf[address(arg1)] + (0 / decimals) - userDebt[address(arg1)] < paidRewardOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        return (paidRewardOf[address(arg1)] + (0 / decimals) - userDebt[address(arg1)])
    require balanceOf[address(arg1)]
    if (sub_dacd7e0c * balanceOf[address(arg1)]) + ((totalPeriod * rewardPerPeriod * decimals) - (sub_8a5ff078 * rewardPerPeriod * decimals) / totalSupply * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != sub_dacd7e0c + ((totalPeriod * rewardPerPeriod * decimals) - (sub_8a5ff078 * rewardPerPeriod * decimals) / totalSupply):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if decimals <= 0:
        revert with 0, 'SafeMath: division by zero'
    require decimals
    if userDebt[address(arg1)] > (sub_dacd7e0c * balanceOf[address(arg1)]) + ((totalPeriod * rewardPerPeriod * decimals) - (sub_8a5ff078 * rewardPerPeriod * decimals) / totalSupply * balanceOf[address(arg1)]) / decimals:
        revert with 0, 'SafeMath: subtraction overflow'
    if paidRewardOf[address(arg1)] + ((sub_dacd7e0c * balanceOf[address(arg1)]) + ((totalPeriod * rewardPerPeriod * decimals) - (sub_8a5ff078 * rewardPerPeriod * decimals) / totalSupply * balanceOf[address(arg1)]) / decimals) - userDebt[address(arg1)] < paidRewardOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    return (paidRewardOf[address(arg1)] + ((sub_dacd7e0c * balanceOf[address(arg1)]) + ((totalPeriod * rewardPerPeriod * decimals) - (sub_8a5ff078 * rewardPerPeriod * decimals) / totalSupply * balanceOf[address(arg1)]) / decimals) - userDebt[address(arg1)])
}



}
