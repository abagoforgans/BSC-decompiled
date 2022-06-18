contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address owner;
address nftTokenAddress;
address erc20TokenAddress;
uint256 tokensPerBlock;
mapping of struct sub_a2aa4337;
array of struct stor6;

function tokensPerBlock() payable {
    return tokensPerBlock
}

function erc20Token() payable {
    return erc20TokenAddress
}

function owner() payable {
    return owner
}

function sub_a2aa4337(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_a2aa4337[arg1].field_0, sub_a2aa4337[arg1].field_256, sub_a2aa4337[arg1].field_512
}

function nftToken() payable {
    return nftTokenAddress
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

function setNFT(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    nftTokenAddress = arg1
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    erc20TokenAddress = arg1
}

function updateStakingReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokensPerBlock = arg1
    emit StakeRewardUpdated(tokensPerBlock);
}

function changeTokensPerblock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokensPerBlock = arg1
    emit StakeRewardUpdated(tokensPerBlock);
}

function getStakeContractBalance() payable {
    staticcall erc20TokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
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

function sub_152ed594(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call erc20TokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getCurrentStakeEarned(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_a2aa4337[arg1].field_256:
        if False and tokensPerBlock > 0:
            revert with 'NH{q', 17
        else:
            return 0
    if block.number < sub_a2aa4337[arg1].field_256:
        revert with 'NH{q', 17
    if block.number - sub_a2aa4337[arg1].field_256 and tokensPerBlock > -1 / block.number - sub_a2aa4337[arg1].field_256:
        revert with 'NH{q', 17
    return ((block.number * tokensPerBlock) - (sub_a2aa4337[arg1].field_256 * tokensPerBlock))
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function reclaimTokens() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall erc20TokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call erc20TokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getStakedNFTs(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6[address(arg1)].field_0:
        mem[128] = stor6[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * stor6[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stor6[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor6[address(arg1)].field_0, data=mem[128 len 32 * stor6[address(arg1)].field_0])
    mem[(32 * stor6[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor6[address(arg1)].field_0) + 160] = stor6[address(arg1)].field_0
    mem[(32 * stor6[address(arg1)].field_0) + 192 len 32 * stor6[address(arg1)].field_0] = mem[128 len 32 * stor6[address(arg1)].field_0]
    return memory
      from (32 * stor6[address(arg1)].field_0) + 128
       len (96 * stor6[address(arg1)].field_0) + 64
}

function sub_e7a7eef8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_a2aa4337[arg1].field_256 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_payoutStake: Can not stake from block 0'
    if not sub_a2aa4337[arg1].field_256:
        revert with 'NH{q', 17
    if block.number < sub_a2aa4337[arg1].field_256:
        revert with 'NH{q', 17
    if block.number - sub_a2aa4337[arg1].field_256 < 1:
        revert with 'NH{q', 17
    if block.number + -sub_a2aa4337[arg1].field_256 - 1 and tokensPerBlock > -1 / block.number + -sub_a2aa4337[arg1].field_256 - 1:
        revert with 'NH{q', 17
    staticcall erc20TokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < -tokensPerBlock + (block.number * tokensPerBlock) - (sub_a2aa4337[arg1].field_256 * tokensPerBlock):
        emit StakePayout(arg1, 0, sub_a2aa4337[arg1].field_256, block.number, msg.sender);
    else:
        call erc20TokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args sub_a2aa4337[arg1].field_512, -tokensPerBlock + (block.number * tokensPerBlock) - (sub_a2aa4337[arg1].field_256 * tokensPerBlock)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit StakePayout(arg1, -tokensPerBlock + (block.number * tokensPerBlock) - (sub_a2aa4337[arg1].field_256 * tokensPerBlock), sub_a2aa4337[arg1].field_256, block.number, msg.sender);
    sub_a2aa4337[arg1].field_0 = 0
    sub_a2aa4337[arg1].field_256 = 0
    sub_a2aa4337[arg1].field_512 = 0
    require ext_code.size(nftTokenAddress)
    call nftTokenAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit NftUnStaked(arg1, block.number, msg.sender);
    return 1
}

function harvest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    staticcall nftTokenAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'onlyStaker: Contract is not owner of this NFT'
    if not sub_a2aa4337[arg1].field_256:
        revert with 0, 'onlyStaker: Token is not staked'
    if sub_a2aa4337[arg1].field_512 != msg.sender:
        revert with 0, 'onlyStaker: Caller is not NFT stake owner'
    if sub_a2aa4337[arg1].field_256 >= block.number:
        revert with 0, 'requireTimeElapsed: Can not stake/unStake/harvest in same block'
    if sub_a2aa4337[arg1].field_256 <= 0:
        revert with 0, '_payoutStake: Can not stake from block 0'
    if not sub_a2aa4337[arg1].field_256:
        revert with 'NH{q', 17
    if block.number < sub_a2aa4337[arg1].field_256:
        revert with 'NH{q', 17
    if block.number - sub_a2aa4337[arg1].field_256 < 1:
        revert with 'NH{q', 17
    if block.number + -sub_a2aa4337[arg1].field_256 - 1 and tokensPerBlock > -1 / block.number + -sub_a2aa4337[arg1].field_256 - 1:
        revert with 'NH{q', 17
    staticcall erc20TokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < -tokensPerBlock + (block.number * tokensPerBlock) - (sub_a2aa4337[arg1].field_256 * tokensPerBlock):
        emit StakePayout(arg1, 0, sub_a2aa4337[arg1].field_256, block.number, msg.sender);
    else:
        call erc20TokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args sub_a2aa4337[arg1].field_512, -tokensPerBlock + (block.number * tokensPerBlock) - (sub_a2aa4337[arg1].field_256 * tokensPerBlock)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit StakePayout(arg1, -tokensPerBlock + (block.number * tokensPerBlock) - (sub_a2aa4337[arg1].field_256 * tokensPerBlock), sub_a2aa4337[arg1].field_256, block.number, msg.sender);
    sub_a2aa4337[arg1].field_256 = block.number
    stor0 = 1
}

function sub_182c5744(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 5
        if sub_a2aa4337[cd[((32 * idx) + cd[4] + 36)]].field_256:
            revert with 0, 'Stake: Token is already staked'
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        staticcall nftTokenAddress.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _35 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_35] == mem[_35 + 12 len 20]
        if mem[_35 + 12 len 20] == this.address:
            revert with 0, 'Stake: Token is already staked in this contract'
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(nftTokenAddress)
        call nftTokenAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        staticcall nftTokenAddress.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        _44 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_44] == mem[_44 + 12 len 20]
        if mem[_44 + 12 len 20] != this.address:
            revert with 0, 'Stake: Failed to take possession of NFT'
        sub_a2aa4337[cd[((32 * idx) + cd[4] + 36)]].field_0 = cd[((32 * idx) + cd[4] + 36)]
        sub_a2aa4337[cd[((32 * idx) + cd[4] + 36)]].field_256 = block.number
        sub_a2aa4337[cd[((32 * idx) + cd[4] + 36)]].field_512 = msg.sender
        mem[32] = 6
        stor6[address(msg.sender)].field_0++
        mem[0] = sha3(address(msg.sender), 6)
        stor6[address(msg.sender)][stor6[address(msg.sender)].field_0].field_0 = cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] + 32] = block.number
        emit NftStaked(cd[((32 * idx) + cd[4] + 36)], block.number, msg.sender);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor0 = 1
    return 1
}

function unStakeNFT(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    staticcall nftTokenAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'onlyStaker: Contract is not owner of this NFT'
    if not sub_a2aa4337[arg1].field_256:
        revert with 0, 'onlyStaker: Token is not staked'
    if sub_a2aa4337[arg1].field_512 != msg.sender:
        revert with 0, 'onlyStaker: Caller is not NFT stake owner'
    if sub_a2aa4337[arg1].field_256 >= block.number:
        revert with 0, 'requireTimeElapsed: Can not stake/unStake/harvest in same block'
    if sub_a2aa4337[arg1].field_256 <= 0:
        revert with 0, '_payoutStake: Can not stake from block 0'
    if not sub_a2aa4337[arg1].field_256:
        revert with 'NH{q', 17
    if block.number < sub_a2aa4337[arg1].field_256:
        revert with 'NH{q', 17
    if block.number - sub_a2aa4337[arg1].field_256 < 1:
        revert with 'NH{q', 17
    if block.number + -sub_a2aa4337[arg1].field_256 - 1 and tokensPerBlock > -1 / block.number + -sub_a2aa4337[arg1].field_256 - 1:
        revert with 'NH{q', 17
    staticcall erc20TokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < -tokensPerBlock + (block.number * tokensPerBlock) - (sub_a2aa4337[arg1].field_256 * tokensPerBlock):
        emit StakePayout(arg1, 0, sub_a2aa4337[arg1].field_256, block.number, msg.sender);
    else:
        call erc20TokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args sub_a2aa4337[arg1].field_512, -tokensPerBlock + (block.number * tokensPerBlock) - (sub_a2aa4337[arg1].field_256 * tokensPerBlock)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit StakePayout(arg1, -tokensPerBlock + (block.number * tokensPerBlock) - (sub_a2aa4337[arg1].field_256 * tokensPerBlock), sub_a2aa4337[arg1].field_256, block.number, msg.sender);
    sub_a2aa4337[arg1].field_0 = 0
    sub_a2aa4337[arg1].field_256 = 0
    sub_a2aa4337[arg1].field_512 = 0
    require ext_code.size(nftTokenAddress)
    call nftTokenAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < stor6[address(msg.sender)].field_0:
        mem[32] = 6
        if idx >= stor6[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(msg.sender), 6)
        if stor6[address(msg.sender)][idx].field_0 != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if stor6[address(msg.sender)].field_0 < 1:
            revert with 'NH{q', 17
        if stor6[address(msg.sender)].field_0 - 1 >= stor6[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if idx >= stor6[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        stor6[address(msg.sender)][idx].field_0 = stor6[address(msg.sender)][stor6[address(msg.sender)].field_0].field_0
        if not stor6[address(msg.sender)].field_0:
            revert with 'NH{q', 49
        stor6[address(msg.sender)][stor6[address(msg.sender)].field_0].field_0 = 0
        stor6[address(msg.sender)].field_0--
        emit NftUnStaked(arg1, block.number, msg.sender);
        stor0 = 1
        return 1
    emit NftUnStaked(arg1, block.number, msg.sender);
    stor0 = 1
    return 1
}



}
