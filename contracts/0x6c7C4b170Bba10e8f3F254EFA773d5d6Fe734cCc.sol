contract main {




// =====================  Runtime code  =====================


address owner;
uint256 startBlock;
uint256 endBlock;
uint256 poolId;
uint32 stor4;
address chefAddress;
uint256 stor4;
address sub_7cb68945Address;
address stakingTokenAddress;
uint256 poolAmount;
uint256 totalReward;
mapping of uint256 sub_fb81f917;
mapping of uint256 sub_5e20e9e6;
array of address addressList;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884729;

function endBlock() payable {
    return endBlock
}

function chef() payable {
    return address(chefAddress)
}

function poolId() payable {
    return poolId
}

function startBlock() payable {
    return startBlock
}

function sub_5e20e9e6(?) payable {
    require calldata.size - 4 >= 32
    return sub_5e20e9e6[arg1]
}

function stakingToken() payable {
    return stakingTokenAddress
}

function totalReward() payable {
    return totalReward
}

function sub_7cb68945(?) payable {
    return sub_7cb68945Address
}

function owner() payable {
    return owner
}

function poolAmount() payable {
    return poolAmount
}

function addressList(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < addressList.length
    return addressList[arg1]
}

function sub_fb81f917(?) payable {
    require calldata.size - 4 >= 32
    return sub_fb81f917[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_3a0ed173(?) payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require ext_code.size(address(chefAddress))
    call address(chefAddress).0xe2bbb158 with:
         gas gas_remaining wei
        args poolId, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_7cb68945Address):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(sub_7cb68945Address):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    mem[324 len 0] = 0
    call sub_7cb68945Address with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg1
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(arg1, msg.sender);
}

function sub_7affc6f8(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1:
        require ext_code.size(stakingTokenAddress)
        staticcall stakingTokenAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(chefAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x775361666542455032303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[218 len 10]
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stakingTokenAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(stakingTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
    mem[324 len 0] = 0
    call stakingTokenAddress with:
       funct uint32(stor4)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), arg1
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor4):
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    require ext_code.size(address(chefAddress))
    call address(chefAddress).0xe2bbb158 with:
         gas gas_remaining wei
        args poolId, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.number < startBlock:
        return 0
    if block.number <= endBlock:
        if totalReward:
            return 0
        if sub_fb81f917[msg.sender] <= 0:
            return 0
    else:
        if sub_fb81f917[msg.sender] <= 0:
            if block.number > endBlock:
                if sub_fb81f917[msg.sender] > 0:
                    if totalReward > 0:
                        if not totalReward:
                            if not poolAmount:
                                revert with 0, 'SafeMath: division by zero'
                            return (0 / poolAmount)
                        if sub_fb81f917[msg.sender] * totalReward / totalReward != sub_fb81f917[msg.sender]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not poolAmount:
                            revert with 0, 'SafeMath: division by zero'
                        return (sub_fb81f917[msg.sender] * totalReward / poolAmount)
            if totalReward:
                return 0
            if sub_fb81f917[msg.sender] <= 0:
                return 0
        else:
            if totalReward:
                if block.number > endBlock:
                    if sub_fb81f917[msg.sender] > 0:
                        if totalReward > 0:
                            if not totalReward:
                                if not poolAmount:
                                    revert with 0, 'SafeMath: division by zero'
                                return (0 / poolAmount)
                            if sub_fb81f917[msg.sender] * totalReward / totalReward != sub_fb81f917[msg.sender]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not poolAmount:
                                revert with 0, 'SafeMath: division by zero'
                            return (sub_fb81f917[msg.sender] * totalReward / poolAmount)
                if totalReward:
                    return 0
                if sub_fb81f917[msg.sender] <= 0:
                    return 0
    require ext_code.size(address(chefAddress))
    staticcall address(chefAddress).0xbc08799a with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not poolAmount:
            revert with 0, 'SafeMath: division by zero'
        return (0 / poolAmount)
    if sub_fb81f917[msg.sender] * ext_call.return_data[0] / ext_call.return_data[0] != sub_fb81f917[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not poolAmount:
        revert with 0, 'SafeMath: division by zero'
    return (sub_fb81f917[msg.sender] * ext_call.return_data[0] / poolAmount)
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.number >= startBlock:
        revert with 0, 'not deposit time'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_7cb68945Address):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(sub_7cb68945Address):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    call sub_7cb68945Address with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if not sub_fb81f917[msg.sender]:
            addressList.length++
            stor175B[stor11.length] = msg.sender or Mask(96, 160, stor175B[stor11.length])
        sub_fb81f917[msg.sender] += arg1
        if block.number > startBlock:
            revert with 0, 'SafeMath: subtraction overflow'
        if not startBlock - block.number:
            if sub_5e20e9e6[msg.sender] < sub_5e20e9e6[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if (startBlock * arg1) - (block.number * arg1) / startBlock - block.number != arg1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[457 len 31]
            if (startBlock * arg1) - (block.number * arg1) + sub_5e20e9e6[msg.sender] < sub_5e20e9e6[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            sub_5e20e9e6[msg.sender] = (startBlock * arg1) - (block.number * arg1) + sub_5e20e9e6[msg.sender]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if not sub_fb81f917[msg.sender]:
            addressList.length++
            stor175B[stor11.length] = msg.sender or Mask(96, 160, stor175B[stor11.length])
        sub_fb81f917[msg.sender] += arg1
        if block.number > startBlock:
            revert with 0, 'SafeMath: subtraction overflow'
        if not startBlock - block.number:
            if sub_5e20e9e6[msg.sender] < sub_5e20e9e6[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if (startBlock * arg1) - (block.number * arg1) / startBlock - block.number != arg1:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 458 len 31]
            if (startBlock * arg1) - (block.number * arg1) + sub_5e20e9e6[msg.sender] < sub_5e20e9e6[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            sub_5e20e9e6[msg.sender] = (startBlock * arg1) - (block.number * arg1) + sub_5e20e9e6[msg.sender]
    poolAmount += arg1
    require ext_code.size(address(chefAddress))
    call address(chefAddress).0xe2bbb158 with:
         gas gas_remaining wei
        args poolId, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposit(arg1, msg.sender);
}

function withdraw() payable {
    if block.number <= endBlock:
        revert with 0, 'not withdraw time'
    if totalReward:
        if not sub_fb81f917[msg.sender]:
            if not poolAmount:
                revert with 0, 'SafeMath: division by zero'
            if sub_fb81f917[msg.sender] + (0 / poolAmount) < 0 / poolAmount:
                revert with 0, 'SafeMath: addition overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_7cb68945Address):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(sub_7cb68945Address):
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_fb81f917[msg.sender] + (0 / poolAmount)) >> 32
            call sub_7cb68945Address with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, sub_fb81f917[msg.sender] + (0 / poolAmount)) << 224, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
            totalReward -= 0 / poolAmount
            poolAmount -= sub_fb81f917[msg.sender]
            sub_fb81f917[msg.sender] = 0
            emit Withdraw((0 / poolAmount), msg.sender);
        else:
            if totalReward * sub_fb81f917[msg.sender] / sub_fb81f917[msg.sender] != totalReward:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not poolAmount:
                revert with 0, 'SafeMath: division by zero'
            if sub_fb81f917[msg.sender] + (totalReward * sub_fb81f917[msg.sender] / poolAmount) < totalReward * sub_fb81f917[msg.sender] / poolAmount:
                revert with 0, 'SafeMath: addition overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_7cb68945Address):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(sub_7cb68945Address):
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_fb81f917[msg.sender] + (totalReward * sub_fb81f917[msg.sender] / poolAmount)) >> 32
            call sub_7cb68945Address with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, sub_fb81f917[msg.sender] + (totalReward * sub_fb81f917[msg.sender] / poolAmount)) << 224, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
            totalReward -= totalReward * sub_fb81f917[msg.sender] / poolAmount
            poolAmount -= sub_fb81f917[msg.sender]
            sub_fb81f917[msg.sender] = 0
            emit Withdraw((totalReward * sub_fb81f917[msg.sender] / poolAmount), msg.sender);
    else:
        require ext_code.size(address(chefAddress))
        staticcall address(chefAddress).0xbc08799a with:
                gas gas_remaining wei
               args poolId, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        totalReward = ext_call.return_data[0] - poolAmount
        require ext_code.size(address(chefAddress))
        call address(chefAddress).0xe2bbb158 with:
             gas gas_remaining wei
            args poolId, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not sub_fb81f917[msg.sender]:
            if not poolAmount:
                revert with 0, 'SafeMath: division by zero'
            if sub_fb81f917[msg.sender] + (0 / poolAmount) < 0 / poolAmount:
                revert with 0, 'SafeMath: addition overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_7cb68945Address):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(sub_7cb68945Address):
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_fb81f917[msg.sender] + (0 / poolAmount)) >> 32
            mem[388 len 0] = 0
            call sub_7cb68945Address with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, sub_fb81f917[msg.sender] + (0 / poolAmount)) << 224, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
            totalReward -= 0 / poolAmount
            poolAmount -= sub_fb81f917[msg.sender]
            sub_fb81f917[msg.sender] = 0
            emit Withdraw((0 / poolAmount), msg.sender);
        else:
            if totalReward * sub_fb81f917[msg.sender] / sub_fb81f917[msg.sender] != totalReward:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not poolAmount:
                revert with 0, 'SafeMath: division by zero'
            if sub_fb81f917[msg.sender] + (totalReward * sub_fb81f917[msg.sender] / poolAmount) < totalReward * sub_fb81f917[msg.sender] / poolAmount:
                revert with 0, 'SafeMath: addition overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_7cb68945Address):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(sub_7cb68945Address):
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_fb81f917[msg.sender] + (totalReward * sub_fb81f917[msg.sender] / poolAmount)) >> 32
            mem[388 len 0] = 0
            call sub_7cb68945Address with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, sub_fb81f917[msg.sender] + (totalReward * sub_fb81f917[msg.sender] / poolAmount)) << 224, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
            totalReward -= totalReward * sub_fb81f917[msg.sender] / poolAmount
            poolAmount -= sub_fb81f917[msg.sender]
            sub_fb81f917[msg.sender] = 0
            emit Withdraw((totalReward * sub_fb81f917[msg.sender] / poolAmount), msg.sender);
}



}
