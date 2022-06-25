contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stakingRewardsGenesis;
array of address stakingTokens;
address sub_b29c662aAddress;
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

function sub_b29c662a(?) payable {
    return sub_b29c662aAddress
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

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[19344 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function deploy(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stakingRewardsInfoByStakingToken[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 47, code.data[19382 len 47], mem[211 len 17]
    create contract with 0 wei
                    code: code.data[3588 len 15756], address(this.address), address(arg1), sub_b29c662aAddress, owner
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stakingRewardsInfoByStakingToken[address(arg1)].field_0 = address(create.new_address)
    stakingRewardsInfoByStakingToken[address(arg1)].field_256 = arg2
    stakingTokens.length++
    stakingTokens[stakingTokens.length] = arg1
}

function sub_8cb4e269(?) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < stakingRewardsGenesis:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 51, code.data[19551 len 51], mem[215 len 13]
    if not stakingRewardsInfoByStakingToken[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 54, code.data[19429 len 54], mem[218 len 10]
    if stakingRewardsInfoByStakingToken[address(arg1)].field_256 > 0:
        stakingRewardsInfoByStakingToken[address(arg1)].field_256 = 0
        require ext_code.size(stakingRewardsInfoByStakingToken[address(arg1)].field_0)
        call stakingRewardsInfoByStakingToken[address(arg1)].field_0.0x5c9836c0 with:
             gas gas_remaining wei
            args stakingRewardsInfoByStakingToken[address(arg1)].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_2138e17a(?) payable {
    if stakingTokens.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 68, code.data[19483 len 68], mem[232 len 28]
    idx = 0
    while idx < stakingTokens.length:
        if block.timestamp < stakingRewardsGenesis:
            revert with 0, 32, 51, code.data[19551 len 51], mem[215 len 13]
        mem[0] = stakingTokens[idx]
        mem[32] = 4
        if not stakingRewardsInfoByStakingToken[stor2[idx]].field_0:
            revert with 0, 32, 54, code.data[19429 len 54], mem[218 len 10]
        if stakingRewardsInfoByStakingToken[stor2[idx]].field_256 > 0:
            stakingRewardsInfoByStakingToken[stor2[idx]].field_256 = 0
            mem[96] = 0x5c9836c000000000000000000000000000000000000000000000000000000000
            mem[100] = stakingRewardsInfoByStakingToken[stor2[idx]].field_256
            require ext_code.size(stakingRewardsInfoByStakingToken[stor2[idx]].field_0)
            call stakingRewardsInfoByStakingToken[stor2[idx]].field_0.0x5c9836c0 with:
                 gas gas_remaining wei
                args stakingRewardsInfoByStakingToken[stor2[idx]].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
