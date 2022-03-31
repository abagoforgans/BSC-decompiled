contract main {




// =====================  Runtime code  =====================


address owner;
address rewardsTokenAddress;
uint256 stakingRewardsGenesis;
array of address stakingTokens;
mapping of struct stakingRewardsInfoByStakingToken;

function stakingTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stakingTokens.length
    return stakingTokens[arg1]
}

function stakingRewardsInfoByStakingToken(address arg1) payable {
    require calldata.size - 4 >= 32
    return stakingRewardsInfoByStakingToken[arg1].field_0, stakingRewardsInfoByStakingToken[arg1].field_256
}

function owner() payable {
    return owner
}

function stakingRewardsGenesis() payable {
    return stakingRewardsGenesis
}

function rewardsToken() payable {
    return rewardsTokenAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[6917 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function deploy(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stakingRewardsInfoByStakingToken[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 47, code.data[6955 len 47], mem[211 len 17]
    create contract with 0 wei
                    code: code.data[2046 len 4871], address(this.address), rewardsTokenAddress, arg1
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stakingRewardsInfoByStakingToken[address(arg1)].field_0 = address(create.new_address)
    stakingRewardsInfoByStakingToken[address(arg1)].field_256 = arg2
    stakingTokens.length++
    stakingTokens[stakingTokens.length] = arg1
}

function notifyRewardAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < stakingRewardsGenesis:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 52, code.data[7129 len 52], mem[216 len 12]
    if not stakingRewardsInfoByStakingToken[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 55, code.data[7181 len 55], mem[219 len 9]
    if stakingRewardsInfoByStakingToken[address(arg1)].field_256:
        stakingRewardsInfoByStakingToken[address(arg1)].field_256 = 0
        require ext_code.size(rewardsTokenAddress)
        call rewardsTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args stakingRewardsInfoByStakingToken[address(arg1)].field_0, stakingRewardsInfoByStakingToken[address(arg1)].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 58, code.data[7071 len 58], mem[222 len 6]
        require ext_code.size(stakingRewardsInfoByStakingToken[address(arg1)].field_0)
        call stakingRewardsInfoByStakingToken[address(arg1)].field_0.notifyRewardAmount(uint256 rg1) with:
             gas gas_remaining wei
            args stakingRewardsInfoByStakingToken[address(arg1)].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function notifyRewardAmounts() payable {
    if not stakingTokens.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 69, code.data[7002 len 69], mem[233 len 27]
    idx = 0
    while idx < stakingTokens.length:
        if block.timestamp < stakingRewardsGenesis:
            revert with 0, 32, 52, code.data[7129 len 52], mem[216 len 12]
        mem[0] = stakingTokens[idx]
        mem[32] = 4
        if not stakingRewardsInfoByStakingToken[stor3[idx]].field_0:
            revert with 0, 32, 55, code.data[7181 len 55], mem[219 len 9]
        if stakingRewardsInfoByStakingToken[stor3[idx]].field_256:
            stakingRewardsInfoByStakingToken[stor3[idx]].field_256 = 0
            mem[132] = stakingRewardsInfoByStakingToken[stor3[idx]].field_256
            require ext_code.size(rewardsTokenAddress)
            call rewardsTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args stakingRewardsInfoByStakingToken[stor3[idx]].field_0, stakingRewardsInfoByStakingToken[stor3[idx]].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 32, 58, code.data[7071 len 58], mem[222 len 6]
            mem[96] = 0x3c6b16ab00000000000000000000000000000000000000000000000000000000
            mem[100] = stakingRewardsInfoByStakingToken[stor3[idx]].field_256
            require ext_code.size(stakingRewardsInfoByStakingToken[stor3[idx]].field_0)
            call stakingRewardsInfoByStakingToken[stor3[idx]].field_0.notifyRewardAmount(uint256 rg1) with:
                 gas gas_remaining wei
                args stakingRewardsInfoByStakingToken[stor3[idx]].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
