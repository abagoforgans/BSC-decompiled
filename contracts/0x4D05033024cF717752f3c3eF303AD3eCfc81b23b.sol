contract main {




// =====================  Runtime code  =====================


address shareAddress;
uint256 totalSupply;
mapping of struct balanceOf;
mapping of uint8 stor3;
address owner;
address operatorAddress;
address stor6;
mapping of struct lastSnapshotIndexOf;
array of struct rewardPerShare;

function totalSupply() payable {
    return totalSupply
}

function rewardPerShare() payable {
    if 1 > rewardPerShare.length:
        revert with 0, 'SafeMath: subtraction overflow'
    require rewardPerShare.length - 1 < rewardPerShare.length
    return rewardPerShare[rewardPerShare.length].field_0
}

function operator() payable {
    return operatorAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)].field_0
}

function getLastSnapshotIndexOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastSnapshotIndexOf[address(arg1)].field_0
}

function owner() payable {
    return owner
}

function share() payable {
    return shareAddress
}

function _fallback() payable {
    revert
}

function isOperator() payable {
    return (msg.sender == operatorAddress)
}

function latestSnapshotIndex() payable {
    if 1 > rewardPerShare.length:
        revert with 0, 'SafeMath: subtraction overflow'
    return (rewardPerShare.length - 1)
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

function transferOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x736f70657261746f723a207a65726f206164647265737320676976656e20666f72206e6577206f70657261746f,
                    mem[209 len 19]
    emit OperatorTransferred(0, arg1);
    operatorAddress = arg1
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    if 1 > rewardPerShare.length:
        revert with 0, 'SafeMath: subtraction overflow'
    require rewardPerShare.length - 1 < rewardPerShare.length
    require lastSnapshotIndexOf[address(arg1)].field_0 < rewardPerShare.length
    if rewardPerShare[stor7[address(arg1)].field_0].field_512 > rewardPerShare[rewardPerShare.length].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[address(arg1)].field_0:
        if lastSnapshotIndexOf[address(arg1)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return lastSnapshotIndexOf[address(arg1)].field_256
    require balanceOf[address(arg1)].field_0
    if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(arg1)].field_0) - (rewardPerShare[stor7[address(arg1)].field_0].field_512 * balanceOf[address(arg1)].field_0) / balanceOf[address(arg1)].field_0 != rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(arg1)].field_0].field_512:
        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
    if ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(arg1)].field_0) - (rewardPerShare[stor7[address(arg1)].field_0].field_512 * balanceOf[address(arg1)].field_0) / 10^18) + lastSnapshotIndexOf[address(arg1)].field_256 < (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(arg1)].field_0) - (rewardPerShare[stor7[address(arg1)].field_0].field_512 * balanceOf[address(arg1)].field_0) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(arg1)].field_0) - (rewardPerShare[stor7[address(arg1)].field_0].field_512 * balanceOf[address(arg1)].field_0) / 10^18) + lastSnapshotIndexOf[address(arg1)].field_256)
}

function allocateSeigniorage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor3[block.number][tx.origin]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if stor3[block.number][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x776f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 <= 0:
        revert with 0, 'Boardroom: Cannot allocate 0'
    if totalSupply <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x72426f617264726f6f6d3a2043616e6e6f7420616c6c6f63617465207768656e20746f74616c537570706c7920697320,
                    mem[212 len 16]
    if 1 > rewardPerShare.length:
        revert with 0, 'SafeMath: subtraction overflow'
    require rewardPerShare.length - 1 < rewardPerShare.length
    if not arg1:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if rewardPerShare[rewardPerShare.length].field_0 + (0 / totalSupply) < rewardPerShare[rewardPerShare.length].field_0:
            revert with 0, 'SafeMath: addition overflow'
        rewardPerShare.length++
        rewardPerShare[rewardPerShare.length].field_0 = block.number
        rewardPerShare[rewardPerShare.length].field_256 = arg1
        rewardPerShare[rewardPerShare.length].field_512 = rewardPerShare[rewardPerShare.length].field_0 + (0 / totalSupply)
    else:
        require arg1
        if 10^18 * arg1 / arg1 != 10^18:
            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if rewardPerShare[rewardPerShare.length].field_0 + (10^18 * arg1 / totalSupply) < rewardPerShare[rewardPerShare.length].field_0:
            revert with 0, 'SafeMath: addition overflow'
        rewardPerShare.length++
        rewardPerShare[rewardPerShare.length].field_0 = block.number
        rewardPerShare[rewardPerShare.length].field_256 = arg1
        rewardPerShare[rewardPerShare.length].field_512 = rewardPerShare[rewardPerShare.length].field_0 + (10^18 * arg1 / totalSupply)
    if ext_code.size(stor6) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[804 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[928 len 4] = 0
    call stor6 with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[900 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
    else:
        mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[836]:
                revert with 0, 
                            32,
                            42,
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 915 len 22]
    emit RewardAdded(arg1, msg.sender);
    stor3[block.number][tx.origin] = 1
    stor3[block.number][address(msg.sender)] = 1
}

function claimReward() payable {
    if not msg.sender:
        if lastSnapshotIndexOf[address(msg.sender)].field_256 > 0:
            lastSnapshotIndexOf[address(msg.sender)].field_256 = 0
            if ext_code.size(stor6) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, lastSnapshotIndexOf[address(msg.sender)].field_288
            call stor6 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args lastSnapshotIndexOf[address(msg.sender)].field_256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), msg.sender, lastSnapshotIndexOf[address(msg.sender)].field_256
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            emit RewardPaid(lastSnapshotIndexOf[address(msg.sender)].field_256, msg.sender);
    else:
        if 1 > rewardPerShare.length:
            revert with 0, 'SafeMath: subtraction overflow'
        require rewardPerShare.length - 1 < rewardPerShare.length
        require lastSnapshotIndexOf[address(msg.sender)].field_0 < rewardPerShare.length
        if rewardPerShare[stor7[address(msg.sender)].field_0].field_512 > rewardPerShare[rewardPerShare.length].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(msg.sender)].field_0:
            if lastSnapshotIndexOf[address(msg.sender)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > rewardPerShare.length:
                revert with 0, 'SafeMath: subtraction overflow'
            lastSnapshotIndexOf[address(msg.sender)].field_0 = rewardPerShare.length - 1
        else:
            require balanceOf[address(msg.sender)].field_0
            if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
            if ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18) + lastSnapshotIndexOf[address(msg.sender)].field_256 < (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > rewardPerShare.length:
                revert with 0, 'SafeMath: subtraction overflow'
            lastSnapshotIndexOf[address(msg.sender)].field_0 = rewardPerShare.length - 1
            lastSnapshotIndexOf[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18
        if lastSnapshotIndexOf[address(msg.sender)].field_256 > 0:
            lastSnapshotIndexOf[address(msg.sender)].field_256 = 0
            if ext_code.size(stor6) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[1028 len 64] = unknown_0xa9059cbb(?????), msg.sender, lastSnapshotIndexOf[address(msg.sender)].field_288
            call stor6 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args lastSnapshotIndexOf[address(msg.sender)].field_256, mem[1092 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
            else:
                mem[1060 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[1060]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 1139 len 22]
            emit RewardPaid(lastSnapshotIndexOf[address(msg.sender)].field_256, msg.sender);
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor3[block.number][tx.origin]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if stor3[block.number][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if not msg.sender:
        if arg1 <= 0:
            revert with 0, 'Boardroom: Cannot stake 0'
        if totalSupply + arg1 < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg1
        if balanceOf[address(msg.sender)].field_0 + arg1 < balanceOf[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)].field_0 += arg1
        if ext_code.size(shareAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[416 len 4] = 0
        call shareAddress with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
    else:
        if 1 > rewardPerShare.length:
            revert with 0, 'SafeMath: subtraction overflow'
        require rewardPerShare.length - 1 < rewardPerShare.length
        require lastSnapshotIndexOf[address(msg.sender)].field_0 < rewardPerShare.length
        if rewardPerShare[stor7[address(msg.sender)].field_0].field_512 > rewardPerShare[rewardPerShare.length].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(msg.sender)].field_0:
            if lastSnapshotIndexOf[address(msg.sender)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > rewardPerShare.length:
                revert with 0, 'SafeMath: subtraction overflow'
            lastSnapshotIndexOf[address(msg.sender)].field_0 = rewardPerShare.length - 1
        else:
            require balanceOf[address(msg.sender)].field_0
            if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
            if ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18) + lastSnapshotIndexOf[address(msg.sender)].field_256 < (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > rewardPerShare.length:
                revert with 0, 'SafeMath: subtraction overflow'
            lastSnapshotIndexOf[address(msg.sender)].field_0 = rewardPerShare.length - 1
            lastSnapshotIndexOf[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18
        if arg1 <= 0:
            revert with 0, 'Boardroom: Cannot stake 0'
        if totalSupply + arg1 < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg1
        if balanceOf[address(msg.sender)].field_0 + arg1 < balanceOf[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)].field_0 += arg1
        if ext_code.size(shareAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[1060 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[1184 len 4] = 0
        call shareAddress with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[1156 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
        else:
            mem[1092 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[1092]:
                    revert with 0, 
                                32,
                                42,
                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 1171 len 22]
    emit Staked(arg1, msg.sender);
    stor3[block.number][tx.origin] = 1
    stor3[block.number][address(msg.sender)] = 1
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor3[block.number][tx.origin]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if stor3[block.number][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if balanceOf[address(msg.sender)].field_0 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x72426f617264726f6f6d3a20546865206469726563746f7220646f6573206e6f742065786973,
                    mem[202 len 26]
    if not msg.sender:
        if arg1 <= 0:
            revert with 0, 'Boardroom: Cannot withdraw 0'
        if balanceOf[address(msg.sender)].field_0 < arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                        mem[218 len 10]
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        if arg1 > balanceOf[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(msg.sender)].field_0 -= arg1
        if ext_code.size(shareAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
        call shareAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[452 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[420]:
                revert with 0, 
                            32,
                            42,
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 499 len 22]
    else:
        if 1 > rewardPerShare.length:
            revert with 0, 'SafeMath: subtraction overflow'
        require rewardPerShare.length - 1 < rewardPerShare.length
        require lastSnapshotIndexOf[address(msg.sender)].field_0 < rewardPerShare.length
        if rewardPerShare[stor7[address(msg.sender)].field_0].field_512 > rewardPerShare[rewardPerShare.length].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(msg.sender)].field_0:
            if lastSnapshotIndexOf[address(msg.sender)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > rewardPerShare.length:
                revert with 0, 'SafeMath: subtraction overflow'
            lastSnapshotIndexOf[address(msg.sender)].field_0 = rewardPerShare.length - 1
        else:
            require balanceOf[address(msg.sender)].field_0
            if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
            if ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18) + lastSnapshotIndexOf[address(msg.sender)].field_256 < (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > rewardPerShare.length:
                revert with 0, 'SafeMath: subtraction overflow'
            lastSnapshotIndexOf[address(msg.sender)].field_0 = rewardPerShare.length - 1
            lastSnapshotIndexOf[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18
        if arg1 <= 0:
            revert with 0, 'Boardroom: Cannot withdraw 0'
        if balanceOf[address(msg.sender)].field_0 < arg1:
            revert with 0, 
                        32,
                        54,
                        0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                        mem[986 len 10]
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        if arg1 > balanceOf[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(msg.sender)].field_0 -= arg1
        if ext_code.size(shareAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[1156 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
        call shareAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[1220 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
        else:
            mem[1188 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[1188]:
                    revert with 0, 
                                32,
                                42,
                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 1267 len 22]
    emit Withdrawn(arg1, msg.sender);
    stor3[block.number][tx.origin] = 1
    stor3[block.number][address(msg.sender)] = 1
}

function exit() payable {
    if stor3[block.number][tx.origin]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if stor3[block.number][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if balanceOf[address(msg.sender)].field_0 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x72426f617264726f6f6d3a20546865206469726563746f7220646f6573206e6f742065786973,
                    mem[202 len 26]
    if not msg.sender:
        if balanceOf[address(msg.sender)].field_0 <= 0:
            revert with 0, 'Boardroom: Cannot withdraw 0'
        if balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                        mem[218 len 10]
        if balanceOf[address(msg.sender)].field_0 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= balanceOf[address(msg.sender)].field_0
        if balanceOf[address(msg.sender)].field_0 > balanceOf[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(msg.sender)].field_0 = 0
        if ext_code.size(shareAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
        call shareAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args balanceOf[address(msg.sender)].field_0, mem[452 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[420]:
                revert with 0, 
                            32,
                            42,
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 499 len 22]
        emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
        stor3[block.number][tx.origin] = 1
        stor3[block.number][address(msg.sender)] = 1
        if not msg.sender:
            if lastSnapshotIndexOf[address(msg.sender)].field_256 > 0:
                lastSnapshotIndexOf[address(msg.sender)].field_256 = 0
                if ext_code.size(stor6) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 553 len 64] = unknown_0xa9059cbb(?????), msg.sender, lastSnapshotIndexOf[address(msg.sender)].field_288
                mem[ceil32(return_data.size) + 645 len 4] = 0
                call stor6 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args lastSnapshotIndexOf[address(msg.sender)].field_256, mem[ceil32(return_data.size) + 617 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 585]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                emit RewardPaid(address rg1, uint256 rg2):
                                lastSnapshotIndexOf[address(msg.sender)].field_256,
                                mem[(2 * ceil32(return_data.size)) + 586 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                msg.sender,
        else:
            if 1 > rewardPerShare.length:
                revert with 0, 'SafeMath: subtraction overflow'
            require rewardPerShare.length - 1 < rewardPerShare.length
            require lastSnapshotIndexOf[address(msg.sender)].field_0 < rewardPerShare.length
            if rewardPerShare[stor7[address(msg.sender)].field_0].field_512 > rewardPerShare[rewardPerShare.length].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not balanceOf[address(msg.sender)].field_0:
                if lastSnapshotIndexOf[address(msg.sender)].field_256 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 1 > rewardPerShare.length:
                    revert with 0, 'SafeMath: subtraction overflow'
                lastSnapshotIndexOf[address(msg.sender)].field_0 = rewardPerShare.length - 1
            else:
                require balanceOf[address(msg.sender)].field_0
                if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
                    revert with 0, 
                                32,
                                33,
                                0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 1130 len 31]
                if ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18) + lastSnapshotIndexOf[address(msg.sender)].field_256 < (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 1 > rewardPerShare.length:
                    revert with 0, 'SafeMath: subtraction overflow'
                lastSnapshotIndexOf[address(msg.sender)].field_0 = rewardPerShare.length - 1
                lastSnapshotIndexOf[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18
            if lastSnapshotIndexOf[address(msg.sender)].field_256 > 0:
                lastSnapshotIndexOf[address(msg.sender)].field_256 = 0
                if ext_code.size(stor6) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 1321 len 64] = unknown_0xa9059cbb(?????), msg.sender, lastSnapshotIndexOf[address(msg.sender)].field_288
                mem[ceil32(return_data.size) + 1413 len 4] = 0
                call stor6 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args lastSnapshotIndexOf[address(msg.sender)].field_256, mem[ceil32(return_data.size) + 1385 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[ceil32(return_data.size) + 1353 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 1353]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 1432 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                emit RewardPaid(address rg1, uint256 rg2):
                                lastSnapshotIndexOf[address(msg.sender)].field_256,
                                mem[(2 * ceil32(return_data.size)) + 1354 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                msg.sender,
    else:
        if 1 > rewardPerShare.length:
            revert with 0, 'SafeMath: subtraction overflow'
        require rewardPerShare.length - 1 < rewardPerShare.length
        require lastSnapshotIndexOf[address(msg.sender)].field_0 < rewardPerShare.length
        if rewardPerShare[stor7[address(msg.sender)].field_0].field_512 > rewardPerShare[rewardPerShare.length].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(msg.sender)].field_0:
            if lastSnapshotIndexOf[address(msg.sender)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > rewardPerShare.length:
                revert with 0, 'SafeMath: subtraction overflow'
            lastSnapshotIndexOf[address(msg.sender)].field_0 = rewardPerShare.length - 1
        else:
            require balanceOf[address(msg.sender)].field_0
            if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
            if ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18) + lastSnapshotIndexOf[address(msg.sender)].field_256 < (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > rewardPerShare.length:
                revert with 0, 'SafeMath: subtraction overflow'
            lastSnapshotIndexOf[address(msg.sender)].field_0 = rewardPerShare.length - 1
            lastSnapshotIndexOf[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18
        if balanceOf[address(msg.sender)].field_0 <= 0:
            revert with 0, 'Boardroom: Cannot withdraw 0'
        if balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
            revert with 0, 
                        32,
                        54,
                        0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                        mem[986 len 10]
        if balanceOf[address(msg.sender)].field_0 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= balanceOf[address(msg.sender)].field_0
        if balanceOf[address(msg.sender)].field_0 > balanceOf[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(msg.sender)].field_0 = 0
        if ext_code.size(shareAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[1156 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
        call shareAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args balanceOf[address(msg.sender)].field_0, mem[1220 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][address(msg.sender)] = 1
            if not msg.sender:
                if lastSnapshotIndexOf[address(msg.sender)].field_256 > 0:
                    lastSnapshotIndexOf[address(msg.sender)].field_256 = 0
                    if ext_code.size(stor6) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[1320 len 64] = unknown_0xa9059cbb(?????), msg.sender, lastSnapshotIndexOf[address(msg.sender)].field_288
                    call stor6 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args lastSnapshotIndexOf[address(msg.sender)].field_256, mem[1384 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                    else:
                        mem[1352 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[1352]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 1431 len 22]
                    emit RewardPaid(lastSnapshotIndexOf[address(msg.sender)].field_256, msg.sender);
            else:
                if 1 > rewardPerShare.length:
                    revert with 0, 'SafeMath: subtraction overflow'
                require rewardPerShare.length - 1 < rewardPerShare.length
                require lastSnapshotIndexOf[address(msg.sender)].field_0 < rewardPerShare.length
                if rewardPerShare[stor7[address(msg.sender)].field_0].field_512 > rewardPerShare[rewardPerShare.length].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not balanceOf[address(msg.sender)].field_0:
                    if lastSnapshotIndexOf[address(msg.sender)].field_256 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 1 > rewardPerShare.length:
                        revert with 0, 'SafeMath: subtraction overflow'
                    lastSnapshotIndexOf[address(msg.sender)].field_0 = rewardPerShare.length - 1
                else:
                    require balanceOf[address(msg.sender)].field_0
                    if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1897 len 31]
                    if ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18) + lastSnapshotIndexOf[address(msg.sender)].field_256 < (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 1 > rewardPerShare.length:
                        revert with 0, 'SafeMath: subtraction overflow'
                    lastSnapshotIndexOf[address(msg.sender)].field_0 = rewardPerShare.length - 1
                    lastSnapshotIndexOf[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18
                if lastSnapshotIndexOf[address(msg.sender)].field_256 > 0:
                    lastSnapshotIndexOf[address(msg.sender)].field_256 = 0
                    if ext_code.size(stor6) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[2088 len 64] = unknown_0xa9059cbb(?????), msg.sender, lastSnapshotIndexOf[address(msg.sender)].field_288
                    call stor6 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args lastSnapshotIndexOf[address(msg.sender)].field_256, mem[2152 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                    else:
                        mem[2120 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[2120]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 2199 len 22]
                    emit RewardPaid(lastSnapshotIndexOf[address(msg.sender)].field_256, msg.sender);
        else:
            mem[1188 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[1188]:
                    revert with 0, 
                                32,
                                42,
                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 1267 len 22]
            emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][address(msg.sender)] = 1
            if not msg.sender:
                if lastSnapshotIndexOf[address(msg.sender)].field_256 > 0:
                    lastSnapshotIndexOf[address(msg.sender)].field_256 = 0
                    if ext_code.size(stor6) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 1321 len 64] = unknown_0xa9059cbb(?????), msg.sender, lastSnapshotIndexOf[address(msg.sender)].field_288
                    mem[ceil32(return_data.size) + 1413 len 4] = 0
                    call stor6 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args lastSnapshotIndexOf[address(msg.sender)].field_256, mem[ceil32(return_data.size) + 1385 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        emit RewardPaid(lastSnapshotIndexOf[address(msg.sender)].field_256, msg.sender);
                    else:
                        mem[ceil32(return_data.size) + 1353 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 1353]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 1432 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        emit RewardPaid(address rg1, uint256 rg2):
                                        lastSnapshotIndexOf[address(msg.sender)].field_256,
                                        mem[(2 * ceil32(return_data.size)) + 1354 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                        msg.sender,
            else:
                if 1 > rewardPerShare.length:
                    revert with 0, 'SafeMath: subtraction overflow'
                require rewardPerShare.length - 1 < rewardPerShare.length
                require lastSnapshotIndexOf[address(msg.sender)].field_0 < rewardPerShare.length
                if rewardPerShare[stor7[address(msg.sender)].field_0].field_512 > rewardPerShare[rewardPerShare.length].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not balanceOf[address(msg.sender)].field_0:
                    if lastSnapshotIndexOf[address(msg.sender)].field_256 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 1 > rewardPerShare.length:
                        revert with 0, 'SafeMath: subtraction overflow'
                    lastSnapshotIndexOf[address(msg.sender)].field_0 = rewardPerShare.length - 1
                else:
                    require balanceOf[address(msg.sender)].field_0
                    if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
                        revert with 0, 
                                    32,
                                    33,
                                    0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 1898 len 31]
                    if ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18) + lastSnapshotIndexOf[address(msg.sender)].field_256 < (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 1 > rewardPerShare.length:
                        revert with 0, 'SafeMath: subtraction overflow'
                    lastSnapshotIndexOf[address(msg.sender)].field_0 = rewardPerShare.length - 1
                    lastSnapshotIndexOf[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18
                if lastSnapshotIndexOf[address(msg.sender)].field_256 > 0:
                    lastSnapshotIndexOf[address(msg.sender)].field_256 = 0
                    if ext_code.size(stor6) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 2089 len 64] = unknown_0xa9059cbb(?????), msg.sender, lastSnapshotIndexOf[address(msg.sender)].field_288
                    mem[ceil32(return_data.size) + 2181 len 4] = 0
                    call stor6 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args lastSnapshotIndexOf[address(msg.sender)].field_256, mem[ceil32(return_data.size) + 2153 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        emit RewardPaid(lastSnapshotIndexOf[address(msg.sender)].field_256, msg.sender);
                    else:
                        mem[ceil32(return_data.size) + 2121 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 2121]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 2200 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        emit RewardPaid(address rg1, uint256 rg2):
                                        lastSnapshotIndexOf[address(msg.sender)].field_256,
                                        mem[(2 * ceil32(return_data.size)) + 2122 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                        msg.sender,
}



}
