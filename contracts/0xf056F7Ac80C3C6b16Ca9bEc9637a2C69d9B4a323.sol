contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - recoverWrongTokens(address arg1, uint256 arg2)
#  - harvest()
#  - emergencyWithdraw()
#
uint256 stor0;
uint8 stor1;
address owner; offset 8
mapping of uint8 stor2;
address stakeTokenAddress;
address rewardTokenAddress;
uint256 sub_934272fa;
address sub_7d225125Address;
uint256 accTokenPerShare;
uint256 lastRewardTime;
mapping of struct userStakeInfo;
mapping of uint8 stor10;
mapping of uint8 stor11;
uint256 PRECISION_FACTOR;
address feeAddress;
uint256 sub_45ef79af;

function stakeTokenAddress() payable {
    return stakeTokenAddress
}

function rewardTokenAddress() payable {
    return rewardTokenAddress
}

function sub_3888a30d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor10[arg1])
}

function feeAddress() payable {
    return feeAddress
}

function sub_45ef79af(?) payable {
    return sub_45ef79af
}

function userStakeInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userStakeInfo[address(arg1)].field_0, userStakeInfo[address(arg1)].field_256, userStakeInfo[address(arg1)].field_512
}

function paused() payable {
    return bool(stor1)
}

function sub_7d225125(?) payable {
    return sub_7d225125Address
}

function isSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    return bool(stor2[address(arg1)])
}

function owner() payable {
    return owner
}

function accTokenPerShare() payable {
    return accTokenPerShare
}

function lastRewardTime() payable {
    return lastRewardTime
}

function sub_934272fa(?) payable {
    return sub_934272fa
}

function sub_b52ca3cb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor11[arg1])
}

function PRECISION_FACTOR() payable {
    return PRECISION_FACTOR
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

function sub_2df85ec8(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_45ef79af = arg1
    emit 0x72072f5d: arg1
}

function setRewardPerWeek(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_934272fa = arg1
    emit RewardPerWeekUpdated(arg1);
}

function setRewardTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'invalid address'
    rewardTokenAddress = arg1
    emit 0x97e1f675: arg1
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

function renounceSigner() payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor2[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor2[address(msg.sender)] = 0
    emit SignerRemoved(msg.sender);
}

function withdrawETH(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) <= 0:
        revert with 0, 'Insufficient balance'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'ETH TRANSFER FAILED'
}

function addSignerRole(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor2[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor2[address(arg1)] = 1
    emit SignerAdded(arg1);
}

function removeSignerRole(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor2[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor2[address(arg1)] = 0
    emit SignerRemoved(arg1);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_0cb372af(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require calldata.size > arg3 + 35
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    return sha3(this.address, this.address, address(arg1), arg2, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256)
}

function addSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor2[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SignerRole: caller does not have the Signer role'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor2[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor2[address(arg1)] = 1
    emit SignerAdded(arg1);
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stakeTokenAddress)
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp <= lastRewardTime:
        if userStakeInfo[address(arg1)].field_0 and accTokenPerShare > -1 / userStakeInfo[address(arg1)].field_0:
            revert with 0, 17
        if not PRECISION_FACTOR:
            revert with 0, 18
        if userStakeInfo[address(arg1)].field_0 * accTokenPerShare / PRECISION_FACTOR < userStakeInfo[address(arg1)].field_256:
            revert with 0, 17
        return ((userStakeInfo[address(arg1)].field_0 * accTokenPerShare / PRECISION_FACTOR) - userStakeInfo[address(arg1)].field_256)
    if not ext_call.return_data[0]:
        if userStakeInfo[address(arg1)].field_0 and accTokenPerShare > -1 / userStakeInfo[address(arg1)].field_0:
            revert with 0, 17
        if not PRECISION_FACTOR:
            revert with 0, 18
        if userStakeInfo[address(arg1)].field_0 * accTokenPerShare / PRECISION_FACTOR < userStakeInfo[address(arg1)].field_256:
            revert with 0, 17
        return ((userStakeInfo[address(arg1)].field_0 * accTokenPerShare / PRECISION_FACTOR) - userStakeInfo[address(arg1)].field_256)
    if block.timestamp < lastRewardTime:
        revert with 0, 17
    if block.timestamp - lastRewardTime and sub_934272fa > -1 / block.timestamp - lastRewardTime:
        revert with 0, 17
    if (block.timestamp * sub_934272fa) - (lastRewardTime * sub_934272fa) / 168 * 24 * 3600 and PRECISION_FACTOR > -1 / (block.timestamp * sub_934272fa) - (lastRewardTime * sub_934272fa) / 168 * 24 * 3600:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if accTokenPerShare > !((block.timestamp * sub_934272fa) - (lastRewardTime * sub_934272fa) / 168 * 24 * 3600 * PRECISION_FACTOR / ext_call.return_data[0]):
        revert with 0, 17
    if userStakeInfo[address(arg1)].field_0 and accTokenPerShare + ((block.timestamp * sub_934272fa) - (lastRewardTime * sub_934272fa) / 168 * 24 * 3600 * PRECISION_FACTOR / ext_call.return_data[0]) > -1 / userStakeInfo[address(arg1)].field_0:
        revert with 0, 17
    if not PRECISION_FACTOR:
        revert with 0, 18
    if (accTokenPerShare * userStakeInfo[address(arg1)].field_0) + ((block.timestamp * sub_934272fa) - (lastRewardTime * sub_934272fa) / 168 * 24 * 3600 * PRECISION_FACTOR / ext_call.return_data[0] * userStakeInfo[address(arg1)].field_0) / PRECISION_FACTOR < userStakeInfo[address(arg1)].field_256:
        revert with 0, 17
    return (((accTokenPerShare * userStakeInfo[address(arg1)].field_0) + ((block.timestamp * sub_934272fa) - (lastRewardTime * sub_934272fa) / 168 * 24 * 3600 * PRECISION_FACTOR / ext_call.return_data[0] * userStakeInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userStakeInfo[address(arg1)].field_256)
}

function sub_ef931fda(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 160
    require ('cd', 4)[0] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[0] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[0] + 4)]
    mem[128] = address(this.address)
    mem[148] = address(this.address)
    mem[168] = address(msg.sender)
    mem[188] = ('cd', 4).length
    mem[220 len cd[(cd[4] + ('cd', 4)[0] + 4)]] = call.data[cd[4] + ('cd', 4)[0] + 36 len cd[(cd[4] + ('cd', 4)[0] + 4)]]
    mem[96] = cd[(cd[4] + ('cd', 4)[0] + 4)] + 92
    require ('cd', 4)[1] == uint8(('cd', 4)[1])
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, this.address, msg.sender, ('cd', 4).length, call.data[cd[4] + ('cd', 4)[0] + 36 len cd[(cd[4] + ('cd', 4)[0] + 4)]])), ('cd', 4)[1] << 248, ('cd', 4)[2], ('cd', 4)[3]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Roles: account is the zero address'
    if not stor2[address(signer)]:
        revert with 0, 'signer should sign tokenId'
    if stor10[msg.sender]:
        revert with 0, 'You have already claimed the presale NFT'
    mem[0] = msg.sender
    mem[32] = 10
    stor10[msg.sender] = 1
    mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + 344] = 1
    mem[64] = cd[(cd[4] + ('cd', 4)[0] + 4)] + 408
    mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + 376] = msg.sender
    require ('cd', 4)[0] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[0] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[0] + 4)]
    mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + 408] = 0x1ac1a12200000000000000000000000000000000000000000000000000000000
    mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + 412] = 96
    mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + 508] = cd[(cd[4] + ('cd', 4)[0] + 4)]
    mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + 540 len cd[(cd[4] + ('cd', 4)[0] + 4)]] = call.data[cd[4] + ('cd', 4)[0] + 36 len cd[(cd[4] + ('cd', 4)[0] + 4)]]
    mem[(2 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 540] = 0
    mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + 444] = 0
    mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + 476] = ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 128
    mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 540] = 1
    s = cd[(cd[4] + ('cd', 4)[0] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 572
    idx = 0
    t = cd[(cd[4] + ('cd', 4)[0] + 4)] + 376
    while idx < mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + 344]:
        mem[s] = mem[t + 12 len 20]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require ext_code.size(sub_7d225125Address)
    call sub_7d225125Address.mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + 408 len 4] with:
         gas gas_remaining wei
        args mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + 412 len ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_62689508(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 160
    require ('cd', 4)[0] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[0] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[0] + 4)]
    mem[128] = address(this.address)
    mem[148] = address(this.address)
    mem[168] = address(msg.sender)
    mem[188] = ('cd', 4).length
    mem[220 len cd[(cd[4] + ('cd', 4)[0] + 4)]] = call.data[cd[4] + ('cd', 4)[0] + 36 len cd[(cd[4] + ('cd', 4)[0] + 4)]]
    mem[96] = cd[(cd[4] + ('cd', 4)[0] + 4)] + 92
    require ('cd', 4)[1] == uint8(('cd', 4)[1])
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, this.address, msg.sender, ('cd', 4).length, call.data[cd[4] + ('cd', 4)[0] + 36 len cd[(cd[4] + ('cd', 4)[0] + 4)]])), ('cd', 4)[1] << 248, ('cd', 4)[2], ('cd', 4)[3]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Roles: account is the zero address'
    if not stor2[address(signer)]:
        revert with 0, 'signer should sign tokenId'
    if not userStakeInfo[msg.sender].field_0:
        revert with 0, 'No staked token'
    if stor11[msg.sender]:
        revert with 0, 'You have already claimed the stake airdrop NFT'
    mem[0] = msg.sender
    mem[32] = 11
    stor11[msg.sender] = 1
    mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + 344] = 1
    mem[64] = cd[(cd[4] + ('cd', 4)[0] + 4)] + 408
    mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + 376] = msg.sender
    require ('cd', 4)[0] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[0] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[0] + 4)]
    mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + 408] = 0x1ac1a12200000000000000000000000000000000000000000000000000000000
    mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + 412] = 96
    mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + 508] = cd[(cd[4] + ('cd', 4)[0] + 4)]
    mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + 540 len cd[(cd[4] + ('cd', 4)[0] + 4)]] = call.data[cd[4] + ('cd', 4)[0] + 36 len cd[(cd[4] + ('cd', 4)[0] + 4)]]
    mem[(2 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 540] = 0
    mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + 444] = 0
    mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + 476] = ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 128
    mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 540] = 1
    s = cd[(cd[4] + ('cd', 4)[0] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 572
    idx = 0
    t = cd[(cd[4] + ('cd', 4)[0] + 4)] + 376
    while idx < mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + 344]:
        mem[s] = mem[t + 12 len 20]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require ext_code.size(sub_7d225125Address)
    call sub_7d225125Address.mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + 408 len 4] with:
         gas gas_remaining wei
        args mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + 412 len ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    else:
        stor0 = 2
        if stor1:
            revert with 0, 'Pausable: paused'
        else:
            require ext_code.size(stakeTokenAddress)
            staticcall stakeTokenAddress.0x18160ddd with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                if ext_call.return_data[0] and sub_45ef79af > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                else:
                    mem[ceil32(return_data.size) + 100] = this.address
                    require ext_code.size(stakeTokenAddress)
                    staticcall stakeTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0] * sub_45ef79af / 10000:
                            revert with 0, 'Total stake token amount limit'
                        else:
                            mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                            mem[(2 * ceil32(return_data.size)) + 132] = this.address
                            mem[(2 * ceil32(return_data.size)) + 164] = arg1
                            require ext_code.size(stakeTokenAddress)
                            call stakeTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg1
                            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Stake token was not successfully transferred to contract'
                                else:
                                    if block.timestamp > lastRewardTime:
                                        mem[(4 * ceil32(return_data.size)) + 100] = this.address
                                        require ext_code.size(stakeTokenAddress)
                                        staticcall stakeTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                if block.timestamp < lastRewardTime:
                                                    revert with 0, 17
                                                else:
                                                    if block.timestamp - lastRewardTime and sub_934272fa > -1 / block.timestamp - lastRewardTime:
                                                        revert with 0, 17
                                                    else:
                                                        if (block.timestamp * sub_934272fa) - (lastRewardTime * sub_934272fa) / 168 * 24 * 3600 and PRECISION_FACTOR > -1 / (block.timestamp * sub_934272fa) - (lastRewardTime * sub_934272fa) / 168 * 24 * 3600:
                                                            revert with 0, 17
                                                        else:
                                                            if not ext_call.return_data[0]:
                                                                revert with 0, 18
                                                            else:
                                                                if accTokenPerShare > !((block.timestamp * sub_934272fa) - (lastRewardTime * sub_934272fa) / 168 * 24 * 3600 * PRECISION_FACTOR / ext_call.return_data[0]):
                                                                    revert with 0, 17
                                                                else:
                                                                    accTokenPerShare += (block.timestamp * sub_934272fa) - (lastRewardTime * sub_934272fa) / 168 * 24 * 3600 * PRECISION_FACTOR / ext_call.return_data[0]
                                                                    lastRewardTime = block.timestamp
                                                                    if not userStakeInfo[msg.sender].field_0:
                                                                        if userStakeInfo[msg.sender].field_0 > !arg1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            userStakeInfo[msg.sender].field_0 += arg1
                                                                            if userStakeInfo[msg.sender].field_0 + arg1 and accTokenPerShare > -1 / userStakeInfo[msg.sender].field_0 + arg1:
                                                                                revert with 0, 17
                                                                            else:
                                                                                if not PRECISION_FACTOR:
                                                                                    revert with 0, 18
                                                                                else:
                                                                                    userStakeInfo[msg.sender].field_256 = (userStakeInfo[msg.sender].field_0 * accTokenPerShare) + (arg1 * accTokenPerShare) / PRECISION_FACTOR
                                                                                    if userStakeInfo[msg.sender].field_512:
                                                                                        emit Staked(arg1, msg.sender);
                                                                                        stor0 = 1
                                                                                    else:
                                                                                        userStakeInfo[msg.sender].field_512 = block.timestamp
                                                                                        emit Staked(arg1, msg.sender);
                                                                                        stor0 = 1
                                                                    else:
                                                                        if userStakeInfo[msg.sender].field_0 and accTokenPerShare > -1 / userStakeInfo[msg.sender].field_0:
                                                                            revert with 0, 17
                                                                        else:
                                                                            if not PRECISION_FACTOR:
                                                                                revert with 0, 18
                                                                            else:
                                                                                if userStakeInfo[msg.sender].field_0 * accTokenPerShare / PRECISION_FACTOR < userStakeInfo[msg.sender].field_256:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if not (userStakeInfo[msg.sender].field_0 * accTokenPerShare / PRECISION_FACTOR) - userStakeInfo[msg.sender].field_256:
                                                                                        if userStakeInfo[msg.sender].field_0 > !arg1:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            userStakeInfo[msg.sender].field_0 += arg1
                                                                                            if userStakeInfo[msg.sender].field_0 + arg1 and accTokenPerShare > -1 / userStakeInfo[msg.sender].field_0 + arg1:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if not PRECISION_FACTOR:
                                                                                                    revert with 0, 18
                                                                                                else:
                                                                                                    userStakeInfo[msg.sender].field_256 = (userStakeInfo[msg.sender].field_0 * accTokenPerShare) + (arg1 * accTokenPerShare) / PRECISION_FACTOR
                                                                                                    if userStakeInfo[msg.sender].field_512:
                                                                                                        emit Staked(arg1, msg.sender);
                                                                                                        stor0 = 1
                                                                                                    else:
                                                                                                        userStakeInfo[msg.sender].field_512 = block.timestamp
                                                                                                        emit Staked(arg1, msg.sender);
                                                                                                        stor0 = 1
                                                                                    else:
                                                                                        mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
                                                                                        mem[(6 * ceil32(return_data.size)) + 164] = (userStakeInfo[msg.sender].field_0 * accTokenPerShare / PRECISION_FACTOR) - userStakeInfo[msg.sender].field_256
                                                                                        mem[(6 * ceil32(return_data.size)) + 96] = 68
                                                                                        mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                                                                                        mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                                                                                        mem[(6 * ceil32(return_data.size)) + 196] = 32
                                                                                        mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                                                                        if eth.balance(this.address) < 0:
                                                                                            revert with 0, 'Address: insufficient balance for call'
                                                                                        else:
                                                                                            if not ext_code.size(rewardTokenAddress):
                                                                                                revert with 0, 'Address: call to non-contract'
                                                                                            else:
                                                                                                mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (userStakeInfo[msg.sender].field_0 * accTokenPerShare / PRECISION_FACTOR) - userStakeInfo[msg.sender].field_256, 0
                                                                                                mem[(6 * ceil32(return_data.size)) + 328] = 0
                                                                                                call rewardTokenAddress with:
                                                                                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (userStakeInfo[msg.sender].field_0 * accTokenPerShare / PRECISION_FACTOR) - userStakeInfo[msg.sender].field_256, 0) >> 224
                                                                                                     gas gas_remaining wei
                                                                                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (userStakeInfo[msg.sender].field_0 * accTokenPerShare / PRECISION_FACTOR) - userStakeInfo[msg.sender].field_256, 0) << 288)
                                                                                                if not return_data.size:
                                                                                                    if not ext_call.success:
                                                                                                        if ext_call.return_data[0]:
                                                                                                            revert with memory
                                                                                                              from 128
                                                                                                               len ext_call.return_data[0]
                                                                                                        else:
                                                                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                                                                    else:
                                                                                                        if not ext_call.return_data[0]:
                                                                                                            if userStakeInfo[msg.sender].field_0 > !arg1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                userStakeInfo[msg.sender].field_0 += arg1
                                                                                                                if userStakeInfo[msg.sender].field_0 + arg1 and accTokenPerShare > -1 / userStakeInfo[msg.sender].field_0 + arg1:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    if not PRECISION_FACTOR:
                                                                                                                        revert with 0, 18
                                                                                                                    else:
                                                                                                                        userStakeInfo[msg.sender].field_256 = (userStakeInfo[msg.sender].field_0 * accTokenPerShare) + (arg1 * accTokenPerShare) / PRECISION_FACTOR
                                                                                                                        if userStakeInfo[msg.sender].field_512:
                                                                                                                            emit Staked(arg1, msg.sender);
                                                                                                                            stor0 = 1
                                                                                                                        else:
                                                                                                                            userStakeInfo[msg.sender].field_512 = block.timestamp
                                                                                                                            emit Staked(arg1, msg.sender);
                                                                                                                            stor0 = 1
                                                                                                        else:
                                                                                                            require ext_call.return_data[0] >= 32
                                                                                                            require mem[128] == bool(mem[128])
                                                                                                            if not mem[128]:
                                                                                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                                                            else:
                                                                                                                if userStakeInfo[msg.sender].field_0 > !arg1:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    userStakeInfo[msg.sender].field_0 += arg1
                                                                                                                    if userStakeInfo[msg.sender].field_0 + arg1 and accTokenPerShare > -1 / userStakeInfo[msg.sender].field_0 + arg1:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if not PRECISION_FACTOR:
                                                                                                                            revert with 0, 18
                                                                                                                        else:
                                                                                                                            userStakeInfo[msg.sender].field_256 = (userStakeInfo[msg.sender].field_0 * accTokenPerShare) + (arg1 * accTokenPerShare) / PRECISION_FACTOR
                                                                                                                            if userStakeInfo[msg.sender].field_512:
                                                                                                                                emit Staked(arg1, msg.sender);
                                                                                                                                stor0 = 1
                                                                                                                            else:
                                                                                                                                userStakeInfo[msg.sender].field_512 = block.timestamp
                                                                                                                                emit Staked(arg1, msg.sender);
                                                                                                                                stor0 = 1
                                                                                                else:
                                                                                                    mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                    if not ext_call.success:
                                                                                                        if return_data.size:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                                                                    else:
                                                                                                        if not return_data.size:
                                                                                                            if userStakeInfo[msg.sender].field_0 > !arg1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                userStakeInfo[msg.sender].field_0 += arg1
                                                                                                                if userStakeInfo[msg.sender].field_0 + arg1 and accTokenPerShare > -1 / userStakeInfo[msg.sender].field_0 + arg1:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    if not PRECISION_FACTOR:
                                                                                                                        revert with 0, 18
                                                                                                                    else:
                                                                                                                        userStakeInfo[msg.sender].field_256 = (userStakeInfo[msg.sender].field_0 * accTokenPerShare) + (arg1 * accTokenPerShare) / PRECISION_FACTOR
                                                                                                                        if userStakeInfo[msg.sender].field_512:
                                                                                                                            emit Staked(arg1, msg.sender);
                                                                                                                            stor0 = 1
                                                                                                                        else:
                                                                                                                            userStakeInfo[msg.sender].field_512 = block.timestamp
                                                                                                                            emit Staked(arg1, msg.sender);
                                                                                                                            stor0 = 1
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                                                                                                            if not mem[(6 * ceil32(return_data.size)) + 292]:
                                                                                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                                                            else:
                                                                                                                if userStakeInfo[msg.sender].field_0 > !arg1:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    userStakeInfo[msg.sender].field_0 += arg1
                                                                                                                    if userStakeInfo[msg.sender].field_0 + arg1 and accTokenPerShare > -1 / userStakeInfo[msg.sender].field_0 + arg1:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if not PRECISION_FACTOR:
                                                                                                                            revert with 0, 18
                                                                                                                        else:
                                                                                                                            userStakeInfo[msg.sender].field_256 = (userStakeInfo[msg.sender].field_0 * accTokenPerShare) + (arg1 * accTokenPerShare) / PRECISION_FACTOR
                                                                                                                            if userStakeInfo[msg.sender].field_512:
                                                                                                                                emit Staked(arg1, msg.sender);
                                                                                                                                stor0 = 1
                                                                                                                            else:
                                                                                                                                userStakeInfo[msg.sender].field_512 = block.timestamp
                                                                                                                                emit Staked(arg1, msg.sender);
                                                                                                                                stor0 = 1
                                            else:
                                                lastRewardTime = block.timestamp
                                                if not userStakeInfo[msg.sender].field_0:
                                                    if userStakeInfo[msg.sender].field_0 > !arg1:
                                                        revert with 0, 17
                                                    else:
                                                        userStakeInfo[msg.sender].field_0 += arg1
                                                        if userStakeInfo[msg.sender].field_0 + arg1 and accTokenPerShare > -1 / userStakeInfo[msg.sender].field_0 + arg1:
                                                            revert with 0, 17
                                                        else:
                                                            if not PRECISION_FACTOR:
                                                                revert with 0, 18
                                                            else:
                                                                userStakeInfo[msg.sender].field_256 = (userStakeInfo[msg.sender].field_0 * accTokenPerShare) + (arg1 * accTokenPerShare) / PRECISION_FACTOR
                                                                if userStakeInfo[msg.sender].field_512:
                                                                    emit Staked(arg1, msg.sender);
                                                                    stor0 = 1
                                                                else:
                                                                    userStakeInfo[msg.sender].field_512 = block.timestamp
                                                                    emit Staked(arg1, msg.sender);
                                                                    stor0 = 1
                                                else:
                                                    if userStakeInfo[msg.sender].field_0 and accTokenPerShare > -1 / userStakeInfo[msg.sender].field_0:
                                                        revert with 0, 17
                                                    else:
                                                        if not PRECISION_FACTOR:
                                                            revert with 0, 18
                                                        else:
                                                            if userStakeInfo[msg.sender].field_0 * accTokenPerShare / PRECISION_FACTOR < userStakeInfo[msg.sender].field_256:
                                                                revert with 0, 17
                                                            else:
                                                                if not (userStakeInfo[msg.sender].field_0 * accTokenPerShare / PRECISION_FACTOR) - userStakeInfo[msg.sender].field_256:
                                                                    if userStakeInfo[msg.sender].field_0 > !arg1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        userStakeInfo[msg.sender].field_0 += arg1
                                                                        if userStakeInfo[msg.sender].field_0 + arg1 and accTokenPerShare > -1 / userStakeInfo[msg.sender].field_0 + arg1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            if not PRECISION_FACTOR:
                                                                                revert with 0, 18
                                                                            else:
                                                                                userStakeInfo[msg.sender].field_256 = (userStakeInfo[msg.sender].field_0 * accTokenPerShare) + (arg1 * accTokenPerShare) / PRECISION_FACTOR
                                                                                if userStakeInfo[msg.sender].field_512:
                                                                                    emit Staked(arg1, msg.sender);
                                                                                    stor0 = 1
                                                                                else:
                                                                                    userStakeInfo[msg.sender].field_512 = block.timestamp
                                                                                    emit Staked(arg1, msg.sender);
                                                                                    stor0 = 1
                                                                else:
                                                                    mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
                                                                    mem[(6 * ceil32(return_data.size)) + 164] = (userStakeInfo[msg.sender].field_0 * accTokenPerShare / PRECISION_FACTOR) - userStakeInfo[msg.sender].field_256
                                                                    mem[(6 * ceil32(return_data.size)) + 96] = 68
                                                                    mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                                                                    mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                                                                    mem[(6 * ceil32(return_data.size)) + 196] = 32
                                                                    mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                                                    if eth.balance(this.address) < 0:
                                                                        revert with 0, 'Address: insufficient balance for call'
                                                                    else:
                                                                        if not ext_code.size(rewardTokenAddress):
                                                                            revert with 0, 'Address: call to non-contract'
                                                                        else:
                                                                            mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (userStakeInfo[msg.sender].field_0 * accTokenPerShare / PRECISION_FACTOR) - userStakeInfo[msg.sender].field_256, 0
                                                                            mem[(6 * ceil32(return_data.size)) + 328] = 0
                                                                            call rewardTokenAddress with:
                                                                               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (userStakeInfo[msg.sender].field_0 * accTokenPerShare / PRECISION_FACTOR) - userStakeInfo[msg.sender].field_256, 0) >> 224
                                                                                 gas gas_remaining wei
                                                                                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (userStakeInfo[msg.sender].field_0 * accTokenPerShare / PRECISION_FACTOR) - userStakeInfo[msg.sender].field_256, 0) << 288)
                                                                            if not return_data.size:
                                                                                if not ext_call.success:
                                                                                    if ext_call.return_data[0]:
                                                                                        revert with memory
                                                                                          from 128
                                                                                           len ext_call.return_data[0]
                                                                                    else:
                                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                                else:
                                                                                    if not ext_call.return_data[0]:
                                                                                        if userStakeInfo[msg.sender].field_0 > !arg1:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            userStakeInfo[msg.sender].field_0 += arg1
                                                                                            if userStakeInfo[msg.sender].field_0 + arg1 and accTokenPerShare > -1 / userStakeInfo[msg.sender].field_0 + arg1:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if not PRECISION_FACTOR:
                                                                                                    revert with 0, 18
                                                                                                else:
                                                                                                    userStakeInfo[msg.sender].field_256 = (userStakeInfo[msg.sender].field_0 * accTokenPerShare) + (arg1 * accTokenPerShare) / PRECISION_FACTOR
                                                                                                    if userStakeInfo[msg.sender].field_512:
                                                                                                        emit Staked(arg1, msg.sender);
                                                                                                        stor0 = 1
                                                                                                    else:
                                                                                                        userStakeInfo[msg.sender].field_512 = block.timestamp
                                                                                                        emit Staked(arg1, msg.sender);
                                                                                                        stor0 = 1
                                                                                    else:
                                                                                        require ext_call.return_data[0] >= 32
                                                                                        require mem[128] == bool(mem[128])
                                                                                        if not mem[128]:
                                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                                        else:
                                                                                            if userStakeInfo[msg.sender].field_0 > !arg1:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                userStakeInfo[msg.sender].field_0 += arg1
                                                                                                if userStakeInfo[msg.sender].field_0 + arg1 and accTokenPerShare > -1 / userStakeInfo[msg.sender].field_0 + arg1:
                                                                                                    revert with 0, 17
                                                                                                else:
                                                                                                    if not PRECISION_FACTOR:
                                                                                                        revert with 0, 18
                                                                                                    else:
                                                                                                        userStakeInfo[msg.sender].field_256 = (userStakeInfo[msg.sender].field_0 * accTokenPerShare) + (arg1 * accTokenPerShare) / PRECISION_FACTOR
                                                                                                        if userStakeInfo[msg.sender].field_512:
                                                                                                            emit Staked(arg1, msg.sender);
                                                                                                            stor0 = 1
                                                                                                        else:
                                                                                                            userStakeInfo[msg.sender].field_512 = block.timestamp
                                                                                                            emit Staked(arg1, msg.sender);
                                                                                                            stor0 = 1
                                                                            else:
                                                                                mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                if not ext_call.success:
                                                                                    if return_data.size:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                                else:
                                                                                    if not return_data.size:
                                                                                        if userStakeInfo[msg.sender].field_0 > !arg1:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            userStakeInfo[msg.sender].field_0 += arg1
                                                                                            if userStakeInfo[msg.sender].field_0 + arg1 and accTokenPerShare > -1 / userStakeInfo[msg.sender].field_0 + arg1:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if not PRECISION_FACTOR:
                                                                                                    revert with 0, 18
                                                                                                else:
                                                                                                    userStakeInfo[msg.sender].field_256 = (userStakeInfo[msg.sender].field_0 * accTokenPerShare) + (arg1 * accTokenPerShare) / PRECISION_FACTOR
                                                                                                    if userStakeInfo[msg.sender].field_512:
                                                                                                        emit Staked(arg1, msg.sender);
                                                                                                        stor0 = 1
                                                                                                    else:
                                                                                                        userStakeInfo[msg.sender].field_512 = block.timestamp
                                                                                                        emit Staked(arg1, msg.sender);
                                                                                                        stor0 = 1
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                                                                                        if not mem[(6 * ceil32(return_data.size)) + 292]:
                                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                                        else:
                                                                                            if userStakeInfo[msg.sender].field_0 > !arg1:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                userStakeInfo[msg.sender].field_0 += arg1
                                                                                                if userStakeInfo[msg.sender].field_0 + arg1 and accTokenPerShare > -1 / userStakeInfo[msg.sender].field_0 + arg1:
                                                                                                    revert with 0, 17
                                                                                                else:
                                                                                                    if not PRECISION_FACTOR:
                                                                                                        revert with 0, 18
                                                                                                    else:
                                                                                                        userStakeInfo[msg.sender].field_256 = (userStakeInfo[msg.sender].field_0 * accTokenPerShare) + (arg1 * accTokenPerShare) / PRECISION_FACTOR
                                                                                                        if userStakeInfo[msg.sender].field_512:
                                                                                                            emit Staked(arg1, msg.sender);
                                                                                                            stor0 = 1
                                                                                                        else:
                                                                                                            userStakeInfo[msg.sender].field_512 = block.timestamp
                                                                                                            emit Staked(arg1, msg.sender);
                                                                                                            stor0 = 1
                                    else:
                                        if not userStakeInfo[msg.sender].field_0:
                                            if userStakeInfo[msg.sender].field_0 > !arg1:
                                                revert with 0, 17
                                            else:
                                                userStakeInfo[msg.sender].field_0 += arg1
                                                if userStakeInfo[msg.sender].field_0 + arg1 and accTokenPerShare > -1 / userStakeInfo[msg.sender].field_0 + arg1:
                                                    revert with 0, 17
                                                else:
                                                    if not PRECISION_FACTOR:
                                                        revert with 0, 18
                                                    else:
                                                        userStakeInfo[msg.sender].field_256 = (userStakeInfo[msg.sender].field_0 * accTokenPerShare) + (arg1 * accTokenPerShare) / PRECISION_FACTOR
                                                        if userStakeInfo[msg.sender].field_512:
                                                            emit Staked(arg1, msg.sender);
                                                            stor0 = 1
                                                        else:
                                                            userStakeInfo[msg.sender].field_512 = block.timestamp
                                                            emit Staked(arg1, msg.sender);
                                                            stor0 = 1
                                        else:
                                            if userStakeInfo[msg.sender].field_0 and accTokenPerShare > -1 / userStakeInfo[msg.sender].field_0:
                                                revert with 0, 17
                                            else:
                                                if not PRECISION_FACTOR:
                                                    revert with 0, 18
                                                else:
                                                    if userStakeInfo[msg.sender].field_0 * accTokenPerShare / PRECISION_FACTOR < userStakeInfo[msg.sender].field_256:
                                                        revert with 0, 17
                                                    else:
                                                        if not (userStakeInfo[msg.sender].field_0 * accTokenPerShare / PRECISION_FACTOR) - userStakeInfo[msg.sender].field_256:
                                                            if userStakeInfo[msg.sender].field_0 > !arg1:
                                                                revert with 0, 17
                                                            else:
                                                                userStakeInfo[msg.sender].field_0 += arg1
                                                                if userStakeInfo[msg.sender].field_0 + arg1 and accTokenPerShare > -1 / userStakeInfo[msg.sender].field_0 + arg1:
                                                                    revert with 0, 17
                                                                else:
                                                                    if not PRECISION_FACTOR:
                                                                        revert with 0, 18
                                                                    else:
                                                                        userStakeInfo[msg.sender].field_256 = (userStakeInfo[msg.sender].field_0 * accTokenPerShare) + (arg1 * accTokenPerShare) / PRECISION_FACTOR
                                                                        if userStakeInfo[msg.sender].field_512:
                                                                            emit Staked(arg1, msg.sender);
                                                                            stor0 = 1
                                                                        else:
                                                                            userStakeInfo[msg.sender].field_512 = block.timestamp
                                                                            emit Staked(arg1, msg.sender);
                                                                            stor0 = 1
                                                        else:
                                                            mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
                                                            mem[(4 * ceil32(return_data.size)) + 164] = (userStakeInfo[msg.sender].field_0 * accTokenPerShare / PRECISION_FACTOR) - userStakeInfo[msg.sender].field_256
                                                            mem[(4 * ceil32(return_data.size)) + 96] = 68
                                                            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                                                            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                                                            mem[(4 * ceil32(return_data.size)) + 196] = 32
                                                            mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                                            if eth.balance(this.address) < 0:
                                                                revert with 0, 'Address: insufficient balance for call'
                                                            else:
                                                                if not ext_code.size(rewardTokenAddress):
                                                                    revert with 0, 'Address: call to non-contract'
                                                                else:
                                                                    mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (userStakeInfo[msg.sender].field_0 * accTokenPerShare / PRECISION_FACTOR) - userStakeInfo[msg.sender].field_256, 0
                                                                    mem[(4 * ceil32(return_data.size)) + 328] = 0
                                                                    call rewardTokenAddress with:
                                                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (userStakeInfo[msg.sender].field_0 * accTokenPerShare / PRECISION_FACTOR) - userStakeInfo[msg.sender].field_256, 0) >> 224
                                                                         gas gas_remaining wei
                                                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (userStakeInfo[msg.sender].field_0 * accTokenPerShare / PRECISION_FACTOR) - userStakeInfo[msg.sender].field_256, 0) << 288)
                                                                    if not return_data.size:
                                                                        if not ext_call.success:
                                                                            if ext_call.return_data[0]:
                                                                                revert with memory
                                                                                  from 128
                                                                                   len ext_call.return_data[0]
                                                                            else:
                                                                                revert with 0, 'SafeERC20: low-level call failed'
                                                                        else:
                                                                            if not ext_call.return_data[0]:
                                                                                if userStakeInfo[msg.sender].field_0 > !arg1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    userStakeInfo[msg.sender].field_0 += arg1
                                                                                    if userStakeInfo[msg.sender].field_0 + arg1 and accTokenPerShare > -1 / userStakeInfo[msg.sender].field_0 + arg1:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        if not PRECISION_FACTOR:
                                                                                            revert with 0, 18
                                                                                        else:
                                                                                            userStakeInfo[msg.sender].field_256 = (userStakeInfo[msg.sender].field_0 * accTokenPerShare) + (arg1 * accTokenPerShare) / PRECISION_FACTOR
                                                                                            if userStakeInfo[msg.sender].field_512:
                                                                                                emit Staked(arg1, msg.sender);
                                                                                                stor0 = 1
                                                                                            else:
                                                                                                userStakeInfo[msg.sender].field_512 = block.timestamp
                                                                                                emit Staked(arg1, msg.sender);
                                                                                                stor0 = 1
                                                                            else:
                                                                                require ext_call.return_data[0] >= 32
                                                                                require mem[128] == bool(mem[128])
                                                                                if not mem[128]:
                                                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                                else:
                                                                                    if userStakeInfo[msg.sender].field_0 > !arg1:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        userStakeInfo[msg.sender].field_0 += arg1
                                                                                        if userStakeInfo[msg.sender].field_0 + arg1 and accTokenPerShare > -1 / userStakeInfo[msg.sender].field_0 + arg1:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            if not PRECISION_FACTOR:
                                                                                                revert with 0, 18
                                                                                            else:
                                                                                                userStakeInfo[msg.sender].field_256 = (userStakeInfo[msg.sender].field_0 * accTokenPerShare) + (arg1 * accTokenPerShare) / PRECISION_FACTOR
                                                                                                if userStakeInfo[msg.sender].field_512:
                                                                                                    emit Staked(arg1, msg.sender);
                                                                                                    stor0 = 1
                                                                                                else:
                                                                                                    userStakeInfo[msg.sender].field_512 = block.timestamp
                                                                                                    emit Staked(arg1, msg.sender);
                                                                                                    stor0 = 1
                                                                    else:
                                                                        mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                        if not ext_call.success:
                                                                            if return_data.size:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                revert with 0, 'SafeERC20: low-level call failed'
                                                                        else:
                                                                            if not return_data.size:
                                                                                if userStakeInfo[msg.sender].field_0 > !arg1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    userStakeInfo[msg.sender].field_0 += arg1
                                                                                    if userStakeInfo[msg.sender].field_0 + arg1 and accTokenPerShare > -1 / userStakeInfo[msg.sender].field_0 + arg1:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        if not PRECISION_FACTOR:
                                                                                            revert with 0, 18
                                                                                        else:
                                                                                            userStakeInfo[msg.sender].field_256 = (userStakeInfo[msg.sender].field_0 * accTokenPerShare) + (arg1 * accTokenPerShare) / PRECISION_FACTOR
                                                                                            if userStakeInfo[msg.sender].field_512:
                                                                                                emit Staked(arg1, msg.sender);
                                                                                                stor0 = 1
                                                                                            else:
                                                                                                userStakeInfo[msg.sender].field_512 = block.timestamp
                                                                                                emit Staked(arg1, msg.sender);
                                                                                                stor0 = 1
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                                                                                if not mem[(4 * ceil32(return_data.size)) + 292]:
                                                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                                else:
                                                                                    if userStakeInfo[msg.sender].field_0 > !arg1:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        userStakeInfo[msg.sender].field_0 += arg1
                                                                                        if userStakeInfo[msg.sender].field_0 + arg1 and accTokenPerShare > -1 / userStakeInfo[msg.sender].field_0 + arg1:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            if not PRECISION_FACTOR:
                                                                                                revert with 0, 18
                                                                                            else:
                                                                                                userStakeInfo[msg.sender].field_256 = (userStakeInfo[msg.sender].field_0 * accTokenPerShare) + (arg1 * accTokenPerShare) / PRECISION_FACTOR
                                                                                                if userStakeInfo[msg.sender].field_512:
                                                                                                    emit Staked(arg1, msg.sender);
                                                                                                    stor0 = 1
                                                                                                else:
                                                                                                    userStakeInfo[msg.sender].field_512 = block.timestamp
                                                                                                    emit Staked(arg1, msg.sender);
                                                                                                    stor0 = 1
}



}
