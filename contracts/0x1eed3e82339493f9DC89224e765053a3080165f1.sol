contract main {




// =====================  Runtime code  =====================


#
#  - redeemReward()
#
address owner;
uint256 maxRewardLevel1Number;
uint256 currentRewardLevel1Number;
uint256 stor3; offset 32
uint256 rewardLevel1;
big480 stor3;
uint256 maxRewardLevel2Number;
uint256 currentRewardLevel2Number;
uint256 stor6; offset 32
uint256 rewardLevel2;
big480 stor6;
uint256 maxRewardLevel3Number;
uint256 currentRewardLevel3Number;
uint256 stor9; offset 32
uint256 rewardLevel3;
big480 stor9;
uint256 maxRewardLevel4Number;
uint256 currentRewardLevel4Number;
uint256 stor12; offset 32
uint256 rewardLevel4;
big480 stor12;
uint256 sub_b8066c0d;
uint256 sub_e9075e1c;
uint256 stor15; offset 32
uint256 sub_cea1615e;
big480 stor15;
uint256 sub_63125f66;
uint256 sub_764b3a9e;
uint256 stor18; offset 32
uint256 sub_f783b084;
big480 stor18;
address JGNAddress;
address sub_fd4d246cAddress;
address NTFSAddress;
address devAddress;

function maxRewardLevel4Number() payable {
    return maxRewardLevel4Number
}

function RewardLevel2() payable {
    return rewardLevel2
}

function maxRewardLevel3Number() payable {
    return maxRewardLevel3Number
}

function currentRewardLevel2Number() payable {
    return currentRewardLevel2Number
}

function currentRewardLevel4Number() payable {
    return currentRewardLevel4Number
}

function maxRewardLevel1Number() payable {
    return maxRewardLevel1Number
}

function sub_63125f66(?) payable {
    return sub_63125f66
}

function NTFS() payable {
    return NTFSAddress
}

function sub_764b3a9e(?) payable {
    return sub_764b3a9e
}

function RewardLevel1() payable {
    return rewardLevel1
}

function RewardLevel4() payable {
    return rewardLevel4
}

function owner() payable {
    return owner
}

function dev() payable {
    return devAddress
}

function maxRewardLevel2Number() payable {
    return maxRewardLevel2Number
}

function sub_b8066c0d(?) payable {
    return sub_b8066c0d
}

function sub_cea1615e(?) payable {
    return sub_cea1615e
}

function currentRewardLevel1Number() payable {
    return currentRewardLevel1Number
}

function JGN() payable {
    return JGNAddress
}

function sub_e9075e1c(?) payable {
    return sub_e9075e1c
}

function currentRewardLevel3Number() payable {
    return currentRewardLevel3Number
}

function sub_f783b084(?) payable {
    return sub_f783b084
}

function sub_fd4d246c(?) payable {
    return sub_fd4d246cAddress
}

function RewardLevel3() payable {
    return rewardLevel3
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function reward_level(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 != 1:
        if 2 == arg1:
            require ext_code.size(NTFSAddress)
            staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args address(arg2), 4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 1:
                require ext_code.size(NTFSAddress)
                staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(arg2), 6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 1:
                    require ext_code.size(NTFSAddress)
                    staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args address(arg2), 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 1:
                        return 1
        else:
            if arg1 != 3:
                if 4 == arg1:
                    require ext_code.size(NTFSAddress)
                    staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args address(arg2), 9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 1:
                        return 1
                else:
                    if 5 == arg1:
                        require ext_code.size(NTFSAddress)
                        staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args address(arg2), 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= 1:
                            return 1
                    else:
                        if 6 == arg1:
                            require ext_code.size(NTFSAddress)
                            staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args address(arg2), 11
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= 1:
                                return 1
            else:
                require ext_code.size(NTFSAddress)
                staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(arg2), 4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 1:
                    require ext_code.size(NTFSAddress)
                    staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args address(arg2), 5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 1:
                        require ext_code.size(NTFSAddress)
                        staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args address(arg2), 6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= 2:
                            require ext_code.size(NTFSAddress)
                            staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args address(arg2), 7
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= 1:
                                require ext_code.size(NTFSAddress)
                                staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), 3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= 1:
                                    return 1
    else:
        require ext_code.size(NTFSAddress)
        staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args address(arg2), 4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 1:
            require ext_code.size(NTFSAddress)
            staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args address(arg2), 5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 2:
                require ext_code.size(NTFSAddress)
                staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args address(arg2), 6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 2:
                    require ext_code.size(NTFSAddress)
                    staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args address(arg2), 7
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 1:
                        require ext_code.size(NTFSAddress)
                        staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args address(arg2), 3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= 1:
                            require ext_code.size(NTFSAddress)
                            staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args address(arg2), 2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= 1:
                                require ext_code.size(NTFSAddress)
                                staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                                        gas gas_remaining wei
                                       args address(arg2), 8
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= 1:
                                    require ext_code.size(NTFSAddress)
                                    staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                                            gas gas_remaining wei
                                           args address(arg2), 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] >= 1:
                                        return 1
    return 0
}

function getReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 != 1:
        if 2 == arg1:
            require ext_code.size(NTFSAddress)
            staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args msg.sender, 4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 1:
                revert with 0, 'Cannot redeem!'
            require ext_code.size(NTFSAddress)
            staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args msg.sender, 6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 1:
                revert with 0, 'Cannot redeem!'
            require ext_code.size(NTFSAddress)
            staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args msg.sender, 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 1:
                revert with 0, 'Cannot redeem!'
            if currentRewardLevel2Number >= maxRewardLevel2Number:
                revert with 0, 'reward over!'
            if currentRewardLevel2Number + 1 < currentRewardLevel2Number:
                revert with 0, 'SafeMath: addition overflow'
            currentRewardLevel2Number++
            require ext_code.size(NTFSAddress)
            call NTFSAddress.0xf242432a with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), devAddress, 4, 1, 160, 0, mem[292]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(NTFSAddress)
            call NTFSAddress.0xf242432a with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), devAddress, 6, 1, 160, 0, mem[292]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(NTFSAddress)
            call NTFSAddress.0xf242432a with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), devAddress, 2, 1, 160, 0, mem[292]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not ext_code.hash(JGNAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(JGNAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor6.field_32)
            call JGNAddress with:
                 gas gas_remaining wei
                args Mask(480, 0, stor6.field_0), 0
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0xae5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
            else:
                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[228]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xae5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 307 len 22]
            emit 0x7371bb61: 2, msg.sender
        else:
            if arg1 != 3:
                if 4 == arg1:
                    require ext_code.size(NTFSAddress)
                    staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args msg.sender, 9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 1:
                        revert with 0, 'Cannot redeem!'
                    if currentRewardLevel4Number >= maxRewardLevel4Number:
                        revert with 0, 'reward over!'
                    if currentRewardLevel4Number + 1 < currentRewardLevel4Number:
                        revert with 0, 'SafeMath: addition overflow'
                    currentRewardLevel4Number++
                    require ext_code.size(NTFSAddress)
                    call NTFSAddress.0xf242432a with:
                         gas gas_remaining wei
                        args 0, uint32(msg.sender), devAddress, 9, 1, 160, 0, mem[292]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not ext_code.hash(JGNAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if ext_code.hash(JGNAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor12.field_32)
                    call JGNAddress with:
                         gas gas_remaining wei
                        args Mask(480, 0, stor12.field_0), 0
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0xae5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                    else:
                        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[228]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xae5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 307 len 22]
                    emit 0x7371bb61: 4, msg.sender
                else:
                    if 5 == arg1:
                        require ext_code.size(NTFSAddress)
                        staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args msg.sender, 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 1:
                            revert with 0, 'Cannot redeem!'
                        if sub_e9075e1c >= sub_b8066c0d:
                            revert with 0, 'reward over!'
                        if sub_e9075e1c + 1 < sub_e9075e1c:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_e9075e1c++
                        require ext_code.size(NTFSAddress)
                        call NTFSAddress.0xf242432a with:
                             gas gas_remaining wei
                            args 0, uint32(msg.sender), devAddress, 10, 1, 160, 0, mem[292]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not ext_code.hash(sub_fd4d246cAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(sub_fd4d246cAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor15.field_32)
                        call sub_fd4d246cAddress with:
                             gas gas_remaining wei
                            args Mask(480, 0, stor15.field_0), 0
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0xae5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                        else:
                            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[228]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xae5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 307 len 22]
                        emit 0x7371bb61: 5, msg.sender
                    else:
                        if 6 == arg1:
                            require ext_code.size(NTFSAddress)
                            staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                                    gas gas_remaining wei
                                   args msg.sender, 11
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 1:
                                revert with 0, 'Cannot redeem!'
                            if sub_764b3a9e >= sub_63125f66:
                                revert with 0, 'reward over!'
                            if sub_764b3a9e + 1 < sub_764b3a9e:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_764b3a9e++
                            require ext_code.size(NTFSAddress)
                            call NTFSAddress.0xf242432a with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), devAddress, 11, 1, 160, 0, mem[292]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not ext_code.hash(sub_fd4d246cAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if ext_code.hash(sub_fd4d246cAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor18.field_32)
                            call sub_fd4d246cAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor18.field_0), 0
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0xae5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                            else:
                                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[228]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xae5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 307 len 22]
                            emit 0x7371bb61: 6, msg.sender
            else:
                require ext_code.size(NTFSAddress)
                staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args msg.sender, 4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 1:
                    revert with 0, 'Cannot redeem!'
                require ext_code.size(NTFSAddress)
                staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args msg.sender, 5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 1:
                    revert with 0, 'Cannot redeem!'
                require ext_code.size(NTFSAddress)
                staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args msg.sender, 6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 2:
                    revert with 0, 'Cannot redeem!'
                require ext_code.size(NTFSAddress)
                staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args msg.sender, 7
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 1:
                    revert with 0, 'Cannot redeem!'
                require ext_code.size(NTFSAddress)
                staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args msg.sender, 3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 1:
                    revert with 0, 'Cannot redeem!'
                if currentRewardLevel3Number >= maxRewardLevel3Number:
                    revert with 0, 'reward over!'
                if currentRewardLevel3Number + 1 < currentRewardLevel3Number:
                    revert with 0, 'SafeMath: addition overflow'
                currentRewardLevel3Number++
                require ext_code.size(NTFSAddress)
                call NTFSAddress.0xf242432a with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), devAddress, 4, 1, 160, 0, mem[292]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(NTFSAddress)
                call NTFSAddress.0xf242432a with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), devAddress, 5, 1, 160, 0, mem[292]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(NTFSAddress)
                call NTFSAddress.0xf242432a with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), devAddress, 6, 2, 160, 0, mem[292]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(NTFSAddress)
                call NTFSAddress.0xf242432a with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), devAddress, 7, 1, 160, 0, mem[292]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(NTFSAddress)
                call NTFSAddress.0xf242432a with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), devAddress, 3, 1, 160, 0, mem[292]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not ext_code.hash(JGNAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(JGNAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor9.field_32)
                call JGNAddress with:
                     gas gas_remaining wei
                    args Mask(480, 0, stor9.field_0), 0
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0xae5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                else:
                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[228]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xae5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 307 len 22]
                emit 0x7371bb61: 3, msg.sender
    else:
        require ext_code.size(NTFSAddress)
        staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args msg.sender, 4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 1:
            revert with 0, 'Cannot redeem!'
        require ext_code.size(NTFSAddress)
        staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args msg.sender, 5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 2:
            revert with 0, 'Cannot redeem!'
        require ext_code.size(NTFSAddress)
        staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args msg.sender, 6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 2:
            revert with 0, 'Cannot redeem!'
        require ext_code.size(NTFSAddress)
        staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args msg.sender, 7
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 1:
            revert with 0, 'Cannot redeem!'
        require ext_code.size(NTFSAddress)
        staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args msg.sender, 3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 1:
            revert with 0, 'Cannot redeem!'
        require ext_code.size(NTFSAddress)
        staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args msg.sender, 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 1:
            revert with 0, 'Cannot redeem!'
        require ext_code.size(NTFSAddress)
        staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args msg.sender, 8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 1:
            revert with 0, 'Cannot redeem!'
        require ext_code.size(NTFSAddress)
        staticcall NTFSAddress.balanceOf(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args msg.sender, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 1:
            revert with 0, 'Cannot redeem!'
        if currentRewardLevel1Number >= maxRewardLevel1Number:
            revert with 0, 'reward over!'
        if currentRewardLevel1Number + 1 < currentRewardLevel1Number:
            revert with 0, 'SafeMath: addition overflow'
        currentRewardLevel1Number++
        require ext_code.size(NTFSAddress)
        call NTFSAddress.0xf242432a with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), devAddress, 4, 1, 160, 0, mem[292]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(NTFSAddress)
        call NTFSAddress.0xf242432a with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), devAddress, 5, 2, 160, 0, mem[292]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(NTFSAddress)
        call NTFSAddress.0xf242432a with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), devAddress, 6, 2, 160, 0, mem[292]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(NTFSAddress)
        call NTFSAddress.0xf242432a with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), devAddress, 7, 1, 160, 0, mem[292]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(NTFSAddress)
        call NTFSAddress.0xf242432a with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), devAddress, 3, 1, 160, 0, mem[292]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(NTFSAddress)
        call NTFSAddress.0xf242432a with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), devAddress, 2, 1, 160, 0, mem[292]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(NTFSAddress)
        call NTFSAddress.0xf242432a with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), devAddress, 8, 1, 160, 0, mem[292]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(NTFSAddress)
        call NTFSAddress.0xf242432a with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), devAddress, 1, 1, 160, 0, mem[292]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not ext_code.hash(JGNAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(JGNAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor3.field_32)
        call JGNAddress with:
             gas gas_remaining wei
            args Mask(480, 0, stor3.field_0), 0
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0xae5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                42,
                                0xae5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
        emit 0x7371bb61: 1, msg.sender
}



}
