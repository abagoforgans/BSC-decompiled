contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#
address shareAddress;
uint256 totalSupply;
mapping of struct balanceOf;
mapping of uint8 stor3;
uint8 stor4; offset 160
address operatorAddress;
uint256 stor4;
address dollarAddress;
address treasuryAddress;
mapping of struct lastSnapshotIndexOf;
array of struct rewardPerShare;
uint256 withdrawLockupEpochs;
uint256 rewardLockupEpochs;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020068;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020069;

function rewardLockupEpochs() payable {
    return rewardLockupEpochs
}

function initialized() payable {
    return bool(uint8(stor4.field_160))
}

function totalSupply() payable {
    return totalSupply
}

function withdrawLockupEpochs() payable {
    return withdrawLockupEpochs
}

function rewardPerShare() payable {
    if 1 > rewardPerShare.length:
        revert with 0, 'SafeMath: subtraction overflow'
    require rewardPerShare.length - 1 < rewardPerShare.length
    return rewardPerShare[rewardPerShare.length].field_0
}

function dollar() payable {
    return dollarAddress
}

function operator() payable {
    return operatorAddress
}

function treasury() payable {
    return treasuryAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)].field_0
}

function getLastSnapshotIndexOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastSnapshotIndexOf[address(arg1)].field_0
}

function share() payable {
    return shareAddress
}

function directors(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastSnapshotIndexOf[arg1].field_0, lastSnapshotIndexOf[arg1].field_256, lastSnapshotIndexOf[arg1].field_512
}

function boardHistory(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rewardPerShare.length
    return rewardPerShare[arg1].field_0, rewardPerShare[arg1].field_256, rewardPerShare[arg1].field_512
}

function _fallback() payable {
    revert
}

function latestSnapshotIndex() payable {
    if 1 > rewardPerShare.length:
        revert with 0, 'SafeMath: subtraction overflow'
    return (rewardPerShare.length - 1)
}

function epoch() payable {
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x900cf0cf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function nextEpochPoint() payable {
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0xc5967c26 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getDollarPrice() payable {
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0xe1f095aa with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e426f696c65723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[198 len 30]
    operatorAddress = arg1
}

function canClaimReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x900cf0cf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if rewardLockupEpochs + lastSnapshotIndexOf[address(arg1)].field_512 < lastSnapshotIndexOf[address(arg1)].field_512:
        revert with 0, 'SafeMath: addition overflow'
    return rewardLockupEpochs + lastSnapshotIndexOf[address(arg1)].field_512 <= ext_call.return_data[0]
}

function canWithdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x900cf0cf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if withdrawLockupEpochs + lastSnapshotIndexOf[address(arg1)].field_512 < lastSnapshotIndexOf[address(arg1)].field_512:
        revert with 0, 'SafeMath: addition overflow'
    return withdrawLockupEpochs + lastSnapshotIndexOf[address(arg1)].field_512 <= ext_call.return_data[0]
}

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor4.field_160):
        revert with 0, 'Boiler: already initialized'
    dollarAddress = arg1
    shareAddress = arg2
    treasuryAddress = arg3
    rewardPerShare.length++
    rewardPerShare[rewardPerShare.length].field_0 = block.number
    storF3F7[stor8.length] = 0
    storF3F7[stor8.length] = 0
    withdrawLockupEpochs = 6
    rewardLockupEpochs = 3
    uint256(stor4.field_0) = msg.sender or 0x10000000000000000000000000000000000000000 or Mask(88, 168, uint256(stor4.field_0)) or Mask(96, 160, operatorAddress)
    emit Initialized(block.number, msg.sender);
}

function setLockUp(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e426f696c65723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[198 len 30]
    if arg1 < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x775f77697468647261774c6f636b757045706f6368733a206f7574206f662072616e67,
                    mem[199 len 29]
    if arg1 > 56:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x775f77697468647261774c6f636b757045706f6368733a206f7574206f662072616e67,
                    mem[199 len 29]
    withdrawLockupEpochs = arg1
    rewardLockupEpochs = arg2
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
    if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(arg1)].field_0) - (rewardPerShare[stor7[address(arg1)].field_0].field_512 * balanceOf[address(arg1)].field_0) / balanceOf[address(arg1)].field_0 != rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(arg1)].field_0].field_512:
        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
    if lastSnapshotIndexOf[address(arg1)].field_256 + ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(arg1)].field_0) - (rewardPerShare[stor7[address(arg1)].field_0].field_512 * balanceOf[address(arg1)].field_0) / 10^18) < (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(arg1)].field_0) - (rewardPerShare[stor7[address(arg1)].field_0].field_512 * balanceOf[address(arg1)].field_0) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (lastSnapshotIndexOf[address(arg1)].field_256 + ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(arg1)].field_0) - (rewardPerShare[stor7[address(arg1)].field_0].field_512 * balanceOf[address(arg1)].field_0) / 10^18))
}

function allocateSeigniorage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor3[block.number][tx.origin]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if stor3[block.number][msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e426f696c65723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[198 len 30]
    if arg1 <= 0:
        revert with 0, 'Boiler: Cannot allocate 0'
    if totalSupply <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0xfe426f696c65723a2043616e6e6f7420616c6c6f63617465207768656e20746f74616c537570706c7920697320,
                    mem[209 len 19]
    if 1 > rewardPerShare.length:
        revert with 0, 'SafeMath: subtraction overflow'
    require rewardPerShare.length - 1 < rewardPerShare.length
    if not arg1:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if (0 / totalSupply) + rewardPerShare[rewardPerShare.length].field_0 < rewardPerShare[rewardPerShare.length].field_0:
            revert with 0, 'SafeMath: addition overflow'
        rewardPerShare.length++
        rewardPerShare[rewardPerShare.length].field_0 = block.number
        storF3F7[stor8.length] = arg1
        storF3F7[stor8.length] = (0 / totalSupply) + rewardPerShare[rewardPerShare.length].field_0
    else:
        if 10^18 * arg1 / arg1 != 10^18:
            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * arg1 / totalSupply) + rewardPerShare[rewardPerShare.length].field_0 < rewardPerShare[rewardPerShare.length].field_0:
            revert with 0, 'SafeMath: addition overflow'
        rewardPerShare.length++
        rewardPerShare[rewardPerShare.length].field_0 = block.number
        storF3F7[stor8.length] = arg1
        storF3F7[stor8.length] = (10^18 * arg1 / totalSupply) + rewardPerShare[rewardPerShare.length].field_0
    if not ext_code.size(dollarAddress):
        revert with 0, 'Address: call to non-contract'
    mem[804 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[928 len 4] = 0
    call dollarAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[900 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
    else:
        mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[836]:
                revert with 0, 
                            32,
                            42,
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 915 len 22]
    emit RewardAdded(arg1, msg.sender);
    stor3[block.number][tx.origin] = 1
    stor3[block.number][msg.sender] = 1
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor3[block.number][tx.origin]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if stor3[block.number][msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if not msg.sender:
        if arg1 <= 0:
            revert with 0, 'Boiler: Cannot stake 0'
        if arg1 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg1
        if arg1 + balanceOf[msg.sender].field_0 < balanceOf[msg.sender].field_0:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[msg.sender].field_0 += arg1
        if not ext_code.size(shareAddress):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[416 len 4] = 0
        mem[388 len 0] = 0
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
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
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
            if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
            if lastSnapshotIndexOf[address(msg.sender)].field_256 + ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18) < (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > rewardPerShare.length:
                revert with 0, 'SafeMath: subtraction overflow'
            lastSnapshotIndexOf[address(msg.sender)].field_0 = rewardPerShare.length - 1
            lastSnapshotIndexOf[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18
        if arg1 <= 0:
            revert with 0, 'Boiler: Cannot stake 0'
        if arg1 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg1
        if arg1 + balanceOf[msg.sender].field_0 < balanceOf[msg.sender].field_0:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[msg.sender].field_0 += arg1
        if not ext_code.size(shareAddress):
            revert with 0, 'Address: call to non-contract'
        mem[1124 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[1248 len 4] = 0
        call shareAddress with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[1220 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
        else:
            mem[1156 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[1156]:
                    revert with 0, 
                                32,
                                42,
                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 1235 len 22]
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x900cf0cf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    lastSnapshotIndexOf[msg.sender].field_512 = ext_call.return_data[0]
    emit Staked(arg1, msg.sender);
    stor3[block.number][tx.origin] = 1
    stor3[block.number][msg.sender] = 1
}

function claimReward() payable {
    if not msg.sender:
        if lastSnapshotIndexOf[msg.sender].field_256:
            require ext_code.size(treasuryAddress)
            staticcall treasuryAddress.0x900cf0cf with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if rewardLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 < lastSnapshotIndexOf[msg.sender].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if rewardLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 > ext_call.return_data[0]:
                revert with 0, 'Boiler: still in reward lockup'
            require ext_code.size(treasuryAddress)
            staticcall treasuryAddress.0x900cf0cf with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            lastSnapshotIndexOf[msg.sender].field_512 = ext_call.return_data[0]
            lastSnapshotIndexOf[msg.sender].field_256 = 0
            if not ext_code.size(dollarAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, lastSnapshotIndexOf[msg.sender].field_288
            mem[324 len 0] = 0
            call dollarAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args lastSnapshotIndexOf[msg.sender].field_256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), msg.sender, lastSnapshotIndexOf[msg.sender].field_256
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            emit RewardPaid(lastSnapshotIndexOf[msg.sender].field_256, msg.sender);
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
            if lastSnapshotIndexOf[msg.sender].field_256:
                require ext_code.size(treasuryAddress)
                staticcall treasuryAddress.0x900cf0cf with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if rewardLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 < lastSnapshotIndexOf[msg.sender].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                if rewardLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 > ext_call.return_data[0]:
                    revert with 0, 'Boiler: still in reward lockup'
                require ext_code.size(treasuryAddress)
                staticcall treasuryAddress.0x900cf0cf with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                lastSnapshotIndexOf[msg.sender].field_512 = ext_call.return_data[0]
                lastSnapshotIndexOf[msg.sender].field_256 = 0
                if not ext_code.size(dollarAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[1092 len 64] = unknown_0xa9059cbb(?????), msg.sender, lastSnapshotIndexOf[msg.sender].field_288
                mem[1156 len 0] = 0
                call dollarAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args lastSnapshotIndexOf[msg.sender].field_256, mem[1156 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                else:
                    mem[1124 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[1124]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 1203 len 22]
                emit RewardPaid(lastSnapshotIndexOf[msg.sender].field_256, msg.sender);
        else:
            if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
            if lastSnapshotIndexOf[address(msg.sender)].field_256 + ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18) < (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > rewardPerShare.length:
                revert with 0, 'SafeMath: subtraction overflow'
            lastSnapshotIndexOf[address(msg.sender)].field_0 = rewardPerShare.length - 1
            lastSnapshotIndexOf[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18
            if lastSnapshotIndexOf[msg.sender].field_256:
                require ext_code.size(treasuryAddress)
                staticcall treasuryAddress.0x900cf0cf with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if rewardLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 < lastSnapshotIndexOf[msg.sender].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                if rewardLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 > ext_call.return_data[0]:
                    revert with 0, 'Boiler: still in reward lockup'
                require ext_code.size(treasuryAddress)
                staticcall treasuryAddress.0x900cf0cf with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                lastSnapshotIndexOf[msg.sender].field_512 = ext_call.return_data[0]
                lastSnapshotIndexOf[msg.sender].field_256 = 0
                if not ext_code.size(dollarAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[1092 len 64] = unknown_0xa9059cbb(?????), msg.sender, lastSnapshotIndexOf[msg.sender].field_288
                call dollarAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args lastSnapshotIndexOf[msg.sender].field_256, mem[1156 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                else:
                    mem[1124 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[1124]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 1203 len 22]
                emit RewardPaid(lastSnapshotIndexOf[msg.sender].field_256, msg.sender);
}

function exit() payable {
    if stor3[block.number][tx.origin]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if stor3[block.number][msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if balanceOf[address(msg.sender)].field_0 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x65426f696c65723a20546865206469726563746f7220646f6573206e6f742065786973,
                    mem[199 len 29]
    if not msg.sender:
        if balanceOf[address(msg.sender)].field_0 <= 0:
            revert with 0, 'Boiler: Cannot withdraw 0'
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.0x900cf0cf with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if withdrawLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 < lastSnapshotIndexOf[msg.sender].field_512:
            revert with 0, 'SafeMath: addition overflow'
        if withdrawLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 > ext_call.return_data[0]:
            revert with 0, 'Boiler: still in withdraw lockup'
        if not msg.sender:
            if not lastSnapshotIndexOf[msg.sender].field_256:
                if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                51,
                                0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                mem[215 len 13]
                if balanceOf[address(msg.sender)].field_0 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= balanceOf[address(msg.sender)].field_0
                if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                if not ext_code.size(shareAddress):
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
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[420]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 499 len 22]
            else:
                require ext_code.size(treasuryAddress)
                staticcall treasuryAddress.0x900cf0cf with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if rewardLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 < lastSnapshotIndexOf[msg.sender].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                if rewardLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 > ext_call.return_data[0]:
                    revert with 0, 'Boiler: still in reward lockup'
                require ext_code.size(treasuryAddress)
                staticcall treasuryAddress.0x900cf0cf with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                lastSnapshotIndexOf[msg.sender].field_512 = ext_call.return_data[0]
                lastSnapshotIndexOf[msg.sender].field_256 = 0
                if not ext_code.size(dollarAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, lastSnapshotIndexOf[msg.sender].field_288
                mem[324 len 0] = 0
                call dollarAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args lastSnapshotIndexOf[msg.sender].field_256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, lastSnapshotIndexOf[msg.sender].field_256
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    emit RewardPaid(lastSnapshotIndexOf[msg.sender].field_256, msg.sender);
                    if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                        revert with 0, 
                                    32,
                                    51,
                                    0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                    mem[379 len 13]
                    if balanceOf[address(msg.sender)].field_0 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balanceOf[address(msg.sender)].field_0
                    if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                    if not ext_code.size(shareAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[552 len 64] = 0, msg.sender, balanceOf[address(msg.sender)].field_32
                    call shareAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args balanceOf[address(msg.sender)].field_0, mem[488 len 28], mem[616 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, lastSnapshotIndexOf[msg.sender].field_256
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[662 len 22]
                    else:
                        mem[584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[584]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 663 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                    emit RewardPaid(lastSnapshotIndexOf[msg.sender].field_256, msg.sender);
                    if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                        revert with 0, 
                                    32,
                                    51,
                                    0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                    mem[ceil32(return_data.size) + 380 len 13]
                    if balanceOf[address(msg.sender)].field_0 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balanceOf[address(msg.sender)].field_0
                    if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                    if not ext_code.size(shareAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 553 len 64] = 0, msg.sender, balanceOf[address(msg.sender)].field_32
                    call shareAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args balanceOf[address(msg.sender)].field_0, mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, lastSnapshotIndexOf[msg.sender].field_256
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 663 len 22]
                    else:
                        mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 585]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 664 len 22]
            emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
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
                if not lastSnapshotIndexOf[msg.sender].field_256:
                    if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                        revert with 0, 
                                    32,
                                    51,
                                    0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                    mem[1047 len 13]
                    if balanceOf[address(msg.sender)].field_0 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balanceOf[address(msg.sender)].field_0
                    if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                    if not ext_code.size(shareAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[1220 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
                    call shareAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args balanceOf[address(msg.sender)].field_0, mem[1284 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                    else:
                        mem[1252 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[1252]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 1331 len 22]
                    emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
                else:
                    require ext_code.size(treasuryAddress)
                    staticcall treasuryAddress.0x900cf0cf with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if rewardLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 < lastSnapshotIndexOf[msg.sender].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if rewardLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 > ext_call.return_data[0]:
                        revert with 0, 'Boiler: still in reward lockup'
                    require ext_code.size(treasuryAddress)
                    staticcall treasuryAddress.0x900cf0cf with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    lastSnapshotIndexOf[msg.sender].field_512 = ext_call.return_data[0]
                    lastSnapshotIndexOf[msg.sender].field_256 = 0
                    if not ext_code.size(dollarAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[1092 len 64] = unknown_0xa9059cbb(?????), msg.sender, lastSnapshotIndexOf[msg.sender].field_288
                    call dollarAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args lastSnapshotIndexOf[msg.sender].field_256, mem[1156 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        emit RewardPaid(lastSnapshotIndexOf[msg.sender].field_256, msg.sender);
                        if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                            revert with 0, 
                                        32,
                                        51,
                                        0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                        mem[1211 len 13]
                        if balanceOf[address(msg.sender)].field_0 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= balanceOf[address(msg.sender)].field_0
                        if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                        if not ext_code.size(shareAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[1384 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
                        mem[1448 len 0] = 0
                        call shareAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args balanceOf[address(msg.sender)].field_0, mem[1448 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                        else:
                            mem[1416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[1416]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 1495 len 22]
                        emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
                    else:
                        mem[1124 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            emit RewardPaid(lastSnapshotIndexOf[msg.sender].field_256, msg.sender);
                            if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                                revert with 0, 
                                            32,
                                            51,
                                            0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                            mem[ceil32(return_data.size) + 1212 len 13]
                            if balanceOf[address(msg.sender)].field_0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= balanceOf[address(msg.sender)].field_0
                            if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                            if not ext_code.size(shareAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 1385 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
                            mem[ceil32(return_data.size) + 1477 len 4] = 0
                            call shareAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args balanceOf[address(msg.sender)].field_0, mem[ceil32(return_data.size) + 1449 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
                            else:
                                mem[ceil32(return_data.size) + 1417 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 1486 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 1417]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 1496 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                emit Withdrawn(address rg1, uint256 rg2):
                                               balanceOf[address(msg.sender)].field_0,
                                               mem[(2 * ceil32(return_data.size)) + 1418 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                               msg.sender,
                        else:
                            require return_data.size >= 32
                            if not mem[1124]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 1203 len 22]
                            emit RewardPaid(lastSnapshotIndexOf[msg.sender].field_256, msg.sender);
                            if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                                revert with 0, 
                                            32,
                                            51,
                                            0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                            mem[ceil32(return_data.size) + 1212 len 13]
                            if balanceOf[address(msg.sender)].field_0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= balanceOf[address(msg.sender)].field_0
                            if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                            if not ext_code.size(shareAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 1385 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
                            mem[ceil32(return_data.size) + 1449 len 0] = 0
                            call shareAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args balanceOf[address(msg.sender)].field_0, mem[ceil32(return_data.size) + 1449 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                            else:
                                mem[ceil32(return_data.size) + 1417 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 1417]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 1496 len 22]
                            emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
            else:
                if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
                    revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                if lastSnapshotIndexOf[address(msg.sender)].field_256 + ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18) < (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 1 > rewardPerShare.length:
                    revert with 0, 'SafeMath: subtraction overflow'
                lastSnapshotIndexOf[address(msg.sender)].field_0 = rewardPerShare.length - 1
                lastSnapshotIndexOf[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18
                if not lastSnapshotIndexOf[msg.sender].field_256:
                    if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                        revert with 0, 
                                    32,
                                    51,
                                    0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                    mem[1047 len 13]
                    if balanceOf[address(msg.sender)].field_0 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balanceOf[address(msg.sender)].field_0
                    if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                    if not ext_code.size(shareAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[1220 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
                    mem[1284 len 0] = 0
                    call shareAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args balanceOf[address(msg.sender)].field_0, mem[1284 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                    else:
                        mem[1252 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[1252]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 1331 len 22]
                    emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
                else:
                    require ext_code.size(treasuryAddress)
                    staticcall treasuryAddress.0x900cf0cf with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if rewardLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 < lastSnapshotIndexOf[msg.sender].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if rewardLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 > ext_call.return_data[0]:
                        revert with 0, 'Boiler: still in reward lockup'
                    require ext_code.size(treasuryAddress)
                    staticcall treasuryAddress.0x900cf0cf with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    lastSnapshotIndexOf[msg.sender].field_512 = ext_call.return_data[0]
                    lastSnapshotIndexOf[msg.sender].field_256 = 0
                    if not ext_code.size(dollarAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[1092 len 64] = unknown_0xa9059cbb(?????), msg.sender, lastSnapshotIndexOf[msg.sender].field_288
                    call dollarAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args lastSnapshotIndexOf[msg.sender].field_256, mem[1156 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        emit RewardPaid(lastSnapshotIndexOf[msg.sender].field_256, msg.sender);
                        if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                            revert with 0, 
                                        32,
                                        51,
                                        0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                        mem[1211 len 13]
                        if balanceOf[address(msg.sender)].field_0 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= balanceOf[address(msg.sender)].field_0
                        if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                        if not ext_code.size(shareAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[1384 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
                        call shareAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args balanceOf[address(msg.sender)].field_0, mem[1448 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                        else:
                            mem[1416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[1416]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 1495 len 22]
                        emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
                    else:
                        mem[1124 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            emit RewardPaid(lastSnapshotIndexOf[msg.sender].field_256, msg.sender);
                            if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                                revert with 0, 
                                            32,
                                            51,
                                            0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                            mem[ceil32(return_data.size) + 1212 len 13]
                            if balanceOf[address(msg.sender)].field_0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= balanceOf[address(msg.sender)].field_0
                            if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                            if not ext_code.size(shareAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 1385 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
                            mem[ceil32(return_data.size) + 1449 len 0] = 0
                            call shareAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args balanceOf[address(msg.sender)].field_0, mem[ceil32(return_data.size) + 1449 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                            else:
                                mem[ceil32(return_data.size) + 1417 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 1417]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 1496 len 22]
                            emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
                        else:
                            require return_data.size >= 32
                            if not mem[1124]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 1203 len 22]
                            emit RewardPaid(lastSnapshotIndexOf[msg.sender].field_256, msg.sender);
                            if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                                revert with 0, 
                                            32,
                                            51,
                                            0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                            mem[ceil32(return_data.size) + 1212 len 13]
                            if balanceOf[address(msg.sender)].field_0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= balanceOf[address(msg.sender)].field_0
                            if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                            if not ext_code.size(shareAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 1385 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
                            mem[ceil32(return_data.size) + 1477 len 4] = 0
                            call shareAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args balanceOf[address(msg.sender)].field_0, mem[ceil32(return_data.size) + 1449 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
                            else:
                                mem[ceil32(return_data.size) + 1417 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 1486 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 1417]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 1496 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                emit Withdrawn(address rg1, uint256 rg2):
                                               balanceOf[address(msg.sender)].field_0,
                                               mem[(2 * ceil32(return_data.size)) + 1418 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
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
            if balanceOf[address(msg.sender)].field_0 <= 0:
                revert with 0, 'Boiler: Cannot withdraw 0'
            require ext_code.size(treasuryAddress)
            staticcall treasuryAddress.0x900cf0cf with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if withdrawLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 < lastSnapshotIndexOf[msg.sender].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if withdrawLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 > ext_call.return_data[0]:
                revert with 0, 'Boiler: still in withdraw lockup'
            if not msg.sender:
                if not lastSnapshotIndexOf[msg.sender].field_256:
                    if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                        revert with 0, 
                                    32,
                                    51,
                                    0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                    mem[1047 len 13]
                    if balanceOf[address(msg.sender)].field_0 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balanceOf[address(msg.sender)].field_0
                    if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                    if not ext_code.size(shareAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[1220 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
                    call shareAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args balanceOf[address(msg.sender)].field_0, mem[1284 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                    else:
                        mem[1252 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[1252]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 1331 len 22]
                else:
                    require ext_code.size(treasuryAddress)
                    staticcall treasuryAddress.0x900cf0cf with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if rewardLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 < lastSnapshotIndexOf[msg.sender].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if rewardLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 > ext_call.return_data[0]:
                        revert with 0, 'Boiler: still in reward lockup'
                    require ext_code.size(treasuryAddress)
                    staticcall treasuryAddress.0x900cf0cf with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    lastSnapshotIndexOf[msg.sender].field_512 = ext_call.return_data[0]
                    lastSnapshotIndexOf[msg.sender].field_256 = 0
                    if not ext_code.size(dollarAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[1092 len 64] = unknown_0xa9059cbb(?????), msg.sender, lastSnapshotIndexOf[msg.sender].field_288
                    mem[1156 len 0] = 0
                    call dollarAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args lastSnapshotIndexOf[msg.sender].field_256, mem[1156 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        emit RewardPaid(lastSnapshotIndexOf[msg.sender].field_256, msg.sender);
                        if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                            revert with 0, 
                                        32,
                                        51,
                                        0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                        mem[1211 len 13]
                        if balanceOf[address(msg.sender)].field_0 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= balanceOf[address(msg.sender)].field_0
                        if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                        if not ext_code.size(shareAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[1384 len 64] = 0, msg.sender, balanceOf[address(msg.sender)].field_32
                        call shareAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args balanceOf[address(msg.sender)].field_0, mem[1320 len 28], mem[1448 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                        else:
                            mem[1416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[1416]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 1495 len 22]
                    else:
                        mem[1124 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            emit RewardPaid(lastSnapshotIndexOf[msg.sender].field_256, msg.sender);
                            if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                                revert with 0, 
                                            32,
                                            51,
                                            0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                            mem[ceil32(return_data.size) + 1212 len 13]
                            if balanceOf[address(msg.sender)].field_0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= balanceOf[address(msg.sender)].field_0
                            if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                            if not ext_code.size(shareAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 1385 len 64] = 0, msg.sender, balanceOf[address(msg.sender)].field_32
                            call shareAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args balanceOf[address(msg.sender)].field_0, mem[ceil32(return_data.size) + 1321 len 28], mem[ceil32(return_data.size) + 1449 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                            else:
                                mem[ceil32(return_data.size) + 1417 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 1486 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 1417]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 1496 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        else:
                            require return_data.size >= 32
                            if not mem[1124]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 1203 len 22]
                            emit RewardPaid(lastSnapshotIndexOf[msg.sender].field_256, msg.sender);
                            if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                                revert with 0, 
                                            32,
                                            51,
                                            0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                            mem[ceil32(return_data.size) + 1212 len 13]
                            if balanceOf[address(msg.sender)].field_0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= balanceOf[address(msg.sender)].field_0
                            if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                            if not ext_code.size(shareAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 1385 len 64] = 0, msg.sender, balanceOf[address(msg.sender)].field_32
                            call shareAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args balanceOf[address(msg.sender)].field_0, mem[ceil32(return_data.size) + 1321 len 28], mem[ceil32(return_data.size) + 1449 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                            else:
                                mem[ceil32(return_data.size) + 1417 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 1417]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 1496 len 22]
                emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
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
                    if not lastSnapshotIndexOf[msg.sender].field_256:
                        if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                            revert with 0, 
                                        32,
                                        51,
                                        0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                        mem[1879 len 13]
                        if balanceOf[address(msg.sender)].field_0 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= balanceOf[address(msg.sender)].field_0
                        if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                        if not ext_code.size(shareAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[2052 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
                        call shareAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args balanceOf[address(msg.sender)].field_0, mem[2116 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                        else:
                            mem[2084 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[2084]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 2163 len 22]
                        emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
                    else:
                        require ext_code.size(treasuryAddress)
                        staticcall treasuryAddress.0x900cf0cf with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if rewardLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 < lastSnapshotIndexOf[msg.sender].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        if rewardLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 > ext_call.return_data[0]:
                            revert with 0, 'Boiler: still in reward lockup'
                        require ext_code.size(treasuryAddress)
                        staticcall treasuryAddress.0x900cf0cf with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        lastSnapshotIndexOf[msg.sender].field_512 = ext_call.return_data[0]
                        lastSnapshotIndexOf[msg.sender].field_256 = 0
                        if not ext_code.size(dollarAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[1924 len 64] = unknown_0xa9059cbb(?????), msg.sender, lastSnapshotIndexOf[msg.sender].field_288
                        call dollarAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args lastSnapshotIndexOf[msg.sender].field_256, mem[1988 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            emit RewardPaid(lastSnapshotIndexOf[msg.sender].field_256, msg.sender);
                            if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                                revert with 0, 
                                            32,
                                            51,
                                            0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                            mem[2043 len 13]
                            if balanceOf[address(msg.sender)].field_0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= balanceOf[address(msg.sender)].field_0
                            if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                            if not ext_code.size(shareAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[2216 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
                            call shareAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args balanceOf[address(msg.sender)].field_0, mem[2280 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                            else:
                                mem[2248 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[2248]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 2327 len 22]
                            emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
                        else:
                            mem[1956 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[1956]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 2035 len 22]
                            emit RewardPaid(lastSnapshotIndexOf[msg.sender].field_256, msg.sender);
                            if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                                revert with 0, 
                                            32,
                                            51,
                                            0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                            mem[ceil32(return_data.size) + 2044 len 13]
                            if balanceOf[address(msg.sender)].field_0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= balanceOf[address(msg.sender)].field_0
                            if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                            if not ext_code.size(shareAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 2217 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
                            mem[ceil32(return_data.size) + 2309 len 4] = 0
                            call shareAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args balanceOf[address(msg.sender)].field_0, mem[ceil32(return_data.size) + 2281 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
                            else:
                                mem[ceil32(return_data.size) + 2249 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 2318 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 2249]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 2328 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                emit Withdrawn(address rg1, uint256 rg2):
                                               balanceOf[address(msg.sender)].field_0,
                                               mem[(2 * ceil32(return_data.size)) + 2250 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                               msg.sender,
                else:
                    if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
                        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1733 len 31]
                    if lastSnapshotIndexOf[address(msg.sender)].field_256 + ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18) < (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 1 > rewardPerShare.length:
                        revert with 0, 'SafeMath: subtraction overflow'
                    lastSnapshotIndexOf[address(msg.sender)].field_0 = rewardPerShare.length - 1
                    lastSnapshotIndexOf[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18
                    if not lastSnapshotIndexOf[msg.sender].field_256:
                        if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                            revert with 0, 
                                        32,
                                        51,
                                        0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                        mem[1879 len 13]
                        if balanceOf[address(msg.sender)].field_0 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= balanceOf[address(msg.sender)].field_0
                        if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                        if not ext_code.size(shareAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[2052 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
                        call shareAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args balanceOf[address(msg.sender)].field_0, mem[2116 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                        else:
                            mem[2084 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[2084]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 2163 len 22]
                    else:
                        require ext_code.size(treasuryAddress)
                        staticcall treasuryAddress.0x900cf0cf with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if rewardLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 < lastSnapshotIndexOf[msg.sender].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        if rewardLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 > ext_call.return_data[0]:
                            revert with 0, 'Boiler: still in reward lockup'
                        require ext_code.size(treasuryAddress)
                        staticcall treasuryAddress.0x900cf0cf with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        lastSnapshotIndexOf[msg.sender].field_512 = ext_call.return_data[0]
                        lastSnapshotIndexOf[msg.sender].field_256 = 0
                        if not ext_code.size(dollarAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[1924 len 64] = unknown_0xa9059cbb(?????), msg.sender, lastSnapshotIndexOf[msg.sender].field_288
                        mem[1988 len 0] = 0
                        call dollarAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args lastSnapshotIndexOf[msg.sender].field_256, mem[1988 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            emit RewardPaid(lastSnapshotIndexOf[msg.sender].field_256, msg.sender);
                            if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                                revert with 0, 
                                            32,
                                            51,
                                            0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                            mem[2043 len 13]
                            if balanceOf[address(msg.sender)].field_0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= balanceOf[address(msg.sender)].field_0
                            if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                            if not ext_code.size(shareAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[2216 len 64] = 0, msg.sender, balanceOf[address(msg.sender)].field_32
                            call shareAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args balanceOf[address(msg.sender)].field_0, mem[2152 len 28], mem[2280 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                            else:
                                mem[2248 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[2248]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 2327 len 22]
                        else:
                            mem[1956 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[1956]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 2035 len 22]
                            emit RewardPaid(lastSnapshotIndexOf[msg.sender].field_256, msg.sender);
                            if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                                revert with 0, 
                                            32,
                                            51,
                                            0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                            mem[ceil32(return_data.size) + 2044 len 13]
                            if balanceOf[address(msg.sender)].field_0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= balanceOf[address(msg.sender)].field_0
                            if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                            if not ext_code.size(shareAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 2217 len 64] = 0, msg.sender, balanceOf[address(msg.sender)].field_32
                            call shareAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args balanceOf[address(msg.sender)].field_0, mem[ceil32(return_data.size) + 2153 len 28], mem[ceil32(return_data.size) + 2281 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                            else:
                                mem[ceil32(return_data.size) + 2249 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 2249]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 2328 len 22]
                    emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
        else:
            if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
            if lastSnapshotIndexOf[address(msg.sender)].field_256 + ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18) < (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > rewardPerShare.length:
                revert with 0, 'SafeMath: subtraction overflow'
            lastSnapshotIndexOf[address(msg.sender)].field_0 = rewardPerShare.length - 1
            lastSnapshotIndexOf[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18
            if balanceOf[address(msg.sender)].field_0 <= 0:
                revert with 0, 'Boiler: Cannot withdraw 0'
            require ext_code.size(treasuryAddress)
            staticcall treasuryAddress.0x900cf0cf with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if withdrawLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 < lastSnapshotIndexOf[msg.sender].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if withdrawLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 > ext_call.return_data[0]:
                revert with 0, 'Boiler: still in withdraw lockup'
            if not msg.sender:
                if not lastSnapshotIndexOf[msg.sender].field_256:
                    if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                        revert with 0, 
                                    32,
                                    51,
                                    0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                    mem[1047 len 13]
                    if balanceOf[address(msg.sender)].field_0 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balanceOf[address(msg.sender)].field_0
                    if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                    if not ext_code.size(shareAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[1220 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
                    call shareAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args balanceOf[address(msg.sender)].field_0, mem[1284 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                    else:
                        mem[1252 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[1252]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 1331 len 22]
                    emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
                else:
                    require ext_code.size(treasuryAddress)
                    staticcall treasuryAddress.0x900cf0cf with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if rewardLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 < lastSnapshotIndexOf[msg.sender].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if rewardLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 > ext_call.return_data[0]:
                        revert with 0, 'Boiler: still in reward lockup'
                    require ext_code.size(treasuryAddress)
                    staticcall treasuryAddress.0x900cf0cf with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    lastSnapshotIndexOf[msg.sender].field_512 = ext_call.return_data[0]
                    lastSnapshotIndexOf[msg.sender].field_256 = 0
                    if not ext_code.size(dollarAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[1092 len 64] = unknown_0xa9059cbb(?????), msg.sender, lastSnapshotIndexOf[msg.sender].field_288
                    call dollarAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args lastSnapshotIndexOf[msg.sender].field_256, mem[1156 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        emit RewardPaid(lastSnapshotIndexOf[msg.sender].field_256, msg.sender);
                        if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                            revert with 0, 
                                        32,
                                        51,
                                        0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                        mem[1211 len 13]
                        if balanceOf[address(msg.sender)].field_0 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= balanceOf[address(msg.sender)].field_0
                        if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                        if not ext_code.size(shareAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[1384 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
                        mem[1448 len 0] = 0
                        call shareAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args balanceOf[address(msg.sender)].field_0, mem[1448 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                        else:
                            mem[1416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[1416]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 1495 len 22]
                        emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
                    else:
                        mem[1124 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            emit RewardPaid(lastSnapshotIndexOf[msg.sender].field_256, msg.sender);
                            if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                                revert with 0, 
                                            32,
                                            51,
                                            0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                            mem[ceil32(return_data.size) + 1212 len 13]
                            if balanceOf[address(msg.sender)].field_0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= balanceOf[address(msg.sender)].field_0
                            if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                            if not ext_code.size(shareAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 1385 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
                            mem[ceil32(return_data.size) + 1477 len 4] = 0
                            call shareAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args balanceOf[address(msg.sender)].field_0, mem[ceil32(return_data.size) + 1449 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
                            else:
                                mem[ceil32(return_data.size) + 1417 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 1486 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 1417]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 1496 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                emit Withdrawn(address rg1, uint256 rg2):
                                               balanceOf[address(msg.sender)].field_0,
                                               mem[(2 * ceil32(return_data.size)) + 1418 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                               msg.sender,
                        else:
                            require return_data.size >= 32
                            if not mem[1124]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 1203 len 22]
                            emit RewardPaid(lastSnapshotIndexOf[msg.sender].field_256, msg.sender);
                            if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                                revert with 0, 
                                            32,
                                            51,
                                            0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                            mem[ceil32(return_data.size) + 1212 len 13]
                            if balanceOf[address(msg.sender)].field_0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= balanceOf[address(msg.sender)].field_0
                            if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                            if not ext_code.size(shareAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 1385 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
                            mem[ceil32(return_data.size) + 1449 len 0] = 0
                            call shareAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args balanceOf[address(msg.sender)].field_0, mem[ceil32(return_data.size) + 1449 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                            else:
                                mem[ceil32(return_data.size) + 1417 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 1417]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 1496 len 22]
                            emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
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
                    if not lastSnapshotIndexOf[msg.sender].field_256:
                        if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                            revert with 0, 
                                        32,
                                        51,
                                        0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                        mem[1879 len 13]
                        if balanceOf[address(msg.sender)].field_0 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= balanceOf[address(msg.sender)].field_0
                        if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                        if not ext_code.size(shareAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[2052 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
                        call shareAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args balanceOf[address(msg.sender)].field_0, mem[2116 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                        else:
                            mem[2084 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[2084]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 2163 len 22]
                        emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
                    else:
                        require ext_code.size(treasuryAddress)
                        staticcall treasuryAddress.0x900cf0cf with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if rewardLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 < lastSnapshotIndexOf[msg.sender].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        if rewardLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 > ext_call.return_data[0]:
                            revert with 0, 'Boiler: still in reward lockup'
                        require ext_code.size(treasuryAddress)
                        staticcall treasuryAddress.0x900cf0cf with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        lastSnapshotIndexOf[msg.sender].field_512 = ext_call.return_data[0]
                        lastSnapshotIndexOf[msg.sender].field_256 = 0
                        if not ext_code.size(dollarAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[1924 len 64] = unknown_0xa9059cbb(?????), msg.sender, lastSnapshotIndexOf[msg.sender].field_288
                        call dollarAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args lastSnapshotIndexOf[msg.sender].field_256, mem[1988 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            emit RewardPaid(lastSnapshotIndexOf[msg.sender].field_256, msg.sender);
                            if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                                revert with 0, 
                                            32,
                                            51,
                                            0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                            mem[2043 len 13]
                            if balanceOf[address(msg.sender)].field_0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= balanceOf[address(msg.sender)].field_0
                            if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                            if not ext_code.size(shareAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[2216 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
                            mem[2280 len 0] = 0
                            call shareAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args balanceOf[address(msg.sender)].field_0, mem[2280 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                            else:
                                mem[2248 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[2248]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 2327 len 22]
                            emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
                        else:
                            mem[1956 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[1956]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 2035 len 22]
                            emit RewardPaid(lastSnapshotIndexOf[msg.sender].field_256, msg.sender);
                            if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                                revert with 0, 
                                            32,
                                            51,
                                            0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                            mem[ceil32(return_data.size) + 2044 len 13]
                            if balanceOf[address(msg.sender)].field_0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= balanceOf[address(msg.sender)].field_0
                            if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                            if not ext_code.size(shareAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 2217 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
                            mem[ceil32(return_data.size) + 2309 len 4] = 0
                            call shareAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args balanceOf[address(msg.sender)].field_0, mem[ceil32(return_data.size) + 2281 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
                            else:
                                mem[ceil32(return_data.size) + 2249 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 2318 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 2249]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 2328 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                emit Withdrawn(address rg1, uint256 rg2):
                                               balanceOf[address(msg.sender)].field_0,
                                               mem[(2 * ceil32(return_data.size)) + 2250 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                               msg.sender,
                else:
                    if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
                        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1733 len 31]
                    if lastSnapshotIndexOf[address(msg.sender)].field_256 + ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18) < (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 1 > rewardPerShare.length:
                        revert with 0, 'SafeMath: subtraction overflow'
                    lastSnapshotIndexOf[address(msg.sender)].field_0 = rewardPerShare.length - 1
                    lastSnapshotIndexOf[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)].field_0) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)].field_0) / 10^18
                    if not lastSnapshotIndexOf[msg.sender].field_256:
                        if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                            revert with 0, 
                                        32,
                                        51,
                                        0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                        mem[1879 len 13]
                        if balanceOf[address(msg.sender)].field_0 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= balanceOf[address(msg.sender)].field_0
                        if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                        if not ext_code.size(shareAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[2052 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
                        mem[2116 len 0] = 0
                        call shareAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args balanceOf[address(msg.sender)].field_0, mem[2116 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                        else:
                            mem[2084 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[2084]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 2163 len 22]
                        emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
                    else:
                        require ext_code.size(treasuryAddress)
                        staticcall treasuryAddress.0x900cf0cf with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if rewardLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 < lastSnapshotIndexOf[msg.sender].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        if rewardLockupEpochs + lastSnapshotIndexOf[msg.sender].field_512 > ext_call.return_data[0]:
                            revert with 0, 'Boiler: still in reward lockup'
                        require ext_code.size(treasuryAddress)
                        staticcall treasuryAddress.0x900cf0cf with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        lastSnapshotIndexOf[msg.sender].field_512 = ext_call.return_data[0]
                        lastSnapshotIndexOf[msg.sender].field_256 = 0
                        if not ext_code.size(dollarAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[1924 len 64] = unknown_0xa9059cbb(?????), msg.sender, lastSnapshotIndexOf[msg.sender].field_288
                        call dollarAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args lastSnapshotIndexOf[msg.sender].field_256, mem[1988 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            emit RewardPaid(lastSnapshotIndexOf[msg.sender].field_256, msg.sender);
                            if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                                revert with 0, 
                                            32,
                                            51,
                                            0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                            mem[2043 len 13]
                            if balanceOf[address(msg.sender)].field_0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= balanceOf[address(msg.sender)].field_0
                            if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                            if not ext_code.size(shareAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[2216 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
                            mem[2280 len 0] = 0
                            call shareAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args balanceOf[address(msg.sender)].field_0, mem[2280 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                            else:
                                mem[2248 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[2248]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 2327 len 22]
                            emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
                        else:
                            mem[1956 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not return_data.size:
                                emit RewardPaid(lastSnapshotIndexOf[msg.sender].field_256, msg.sender);
                                if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                                mem[ceil32(return_data.size) + 2044 len 13]
                                if balanceOf[address(msg.sender)].field_0 > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply -= balanceOf[address(msg.sender)].field_0
                                if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                                if not ext_code.size(shareAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 2217 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
                                mem[ceil32(return_data.size) + 2281 len 0] = 0
                                call shareAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args balanceOf[address(msg.sender)].field_0, mem[ceil32(return_data.size) + 2281 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                else:
                                    mem[ceil32(return_data.size) + 2249 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 2249]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 2328 len 22]
                                emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
                            else:
                                require return_data.size >= 32
                                if not mem[1956]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 2035 len 22]
                                emit RewardPaid(lastSnapshotIndexOf[msg.sender].field_256, msg.sender);
                                if balanceOf[msg.sender].field_0 < balanceOf[address(msg.sender)].field_0:
                                    revert with 0, 
                                                32,
                                                51,
                                                0x30426f696c65723a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                                mem[ceil32(return_data.size) + 2044 len 13]
                                if balanceOf[address(msg.sender)].field_0 > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply -= balanceOf[address(msg.sender)].field_0
                                if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
                                if not ext_code.size(shareAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 2217 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
                                mem[ceil32(return_data.size) + 2309 len 4] = 0
                                call shareAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args balanceOf[address(msg.sender)].field_0, mem[ceil32(return_data.size) + 2281 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    emit Withdrawn(balanceOf[address(msg.sender)].field_0, msg.sender);
                                else:
                                    mem[ceil32(return_data.size) + 2249 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 2318 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 2249]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 2328 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    emit Withdrawn(address rg1, uint256 rg2):
                                                   balanceOf[address(msg.sender)].field_0,
                                                   mem[(2 * ceil32(return_data.size)) + 2250 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                   msg.sender,
    stor3[block.number][tx.origin] = 1
    stor3[block.number][msg.sender] = 1
}



}
