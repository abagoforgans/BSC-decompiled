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
    return stakingRewardsInfoByStakingToken[arg1].field_0, 
           stakingRewardsInfoByStakingToken[arg1].field_256,
           stakingRewardsInfoByStakingToken[arg1].field_512
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
        revert with 0, 32, 32, code.data[7592 len 32]
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[7592 len 32]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[7464 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function pullExtraTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[7592 len 32]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function update(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[7592 len 32]
    if not stakingRewardsInfoByStakingToken[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 43, code.data[7502 len 43], mem[207 len 21]
    stakingRewardsInfoByStakingToken[address(arg1)].field_256 = arg2
    stakingRewardsInfoByStakingToken[address(arg1)].field_512 = arg3
}

function deploy(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[7592 len 32]
    if stakingRewardsInfoByStakingToken[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 47, code.data[7545 len 47], mem[211 len 17]
    create contract with 0 wei
                    code: code.data[2564 len 4900], address(this.address), rewardsTokenAddress, arg1
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stakingRewardsInfoByStakingToken[address(arg1)].field_0 = address(create.new_address)
    stakingRewardsInfoByStakingToken[address(arg1)].field_256 = arg2
    stakingRewardsInfoByStakingToken[address(arg1)].field_512 = arg3
    stakingTokens.length++
    stakingTokens[stakingTokens.length] = arg1
}

function notifyRewardAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < stakingRewardsGenesis:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 52, code.data[7751 len 52], mem[216 len 12]
    if not stakingRewardsInfoByStakingToken[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 55, code.data[7803 len 55], mem[219 len 9]
    if stakingRewardsInfoByStakingToken[address(arg1)].field_256 > 0:
        if stakingRewardsInfoByStakingToken[address(arg1)].field_512 > 0:
            stakingRewardsInfoByStakingToken[address(arg1)].field_256 = 0
            stakingRewardsInfoByStakingToken[address(arg1)].field_512 = 0
            require ext_code.size(rewardsTokenAddress)
            call rewardsTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args stakingRewardsInfoByStakingToken[address(arg1)].field_0, stakingRewardsInfoByStakingToken[address(arg1)].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 58, code.data[7693 len 58], mem[222 len 6]
            require ext_code.size(stakingRewardsInfoByStakingToken[address(arg1)].field_0)
            call stakingRewardsInfoByStakingToken[address(arg1)].field_0.notifyRewardAmount(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stakingRewardsInfoByStakingToken[address(arg1)].field_256, stakingRewardsInfoByStakingToken[address(arg1)].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function notifyRewardAmounts() payable {
    if not stakingTokens.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 69, code.data[7624 len 69], mem[233 len 27]
    idx = 0
    while idx < stakingTokens.length:
        if block.timestamp < stakingRewardsGenesis:
            revert with 0, 32, 52, code.data[7751 len 52], mem[216 len 12]
        mem[0] = stakingTokens[idx]
        mem[32] = 4
        if not stakingRewardsInfoByStakingToken[stor3[idx]].field_0:
            revert with 0, 32, 55, code.data[7803 len 55], mem[219 len 9]
        if stakingRewardsInfoByStakingToken[stor3[idx]].field_256 > 0:
            if stakingRewardsInfoByStakingToken[stor3[idx]].field_512 > 0:
                stakingRewardsInfoByStakingToken[stor3[idx]].field_256 = 0
                stakingRewardsInfoByStakingToken[stor3[idx]].field_512 = 0
                require ext_code.size(rewardsTokenAddress)
                call rewardsTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stakingRewardsInfoByStakingToken[stor3[idx]].field_0, stakingRewardsInfoByStakingToken[stor3[idx]].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 32, 58, code.data[7693 len 58], mem[222 len 6]
                mem[96] = 0x246132f900000000000000000000000000000000000000000000000000000000
                mem[100] = stakingRewardsInfoByStakingToken[stor3[idx]].field_256
                mem[132] = stakingRewardsInfoByStakingToken[stor3[idx]].field_512
                require ext_code.size(stakingRewardsInfoByStakingToken[stor3[idx]].field_0)
                call stakingRewardsInfoByStakingToken[stor3[idx]].field_0.notifyRewardAmount(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stakingRewardsInfoByStakingToken[stor3[idx]].field_256, stakingRewardsInfoByStakingToken[stor3[idx]].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
