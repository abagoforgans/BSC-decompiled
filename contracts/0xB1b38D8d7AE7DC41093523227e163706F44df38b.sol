contract main {




// =====================  Runtime code  =====================


address owner;
address MFIAddress;
uint256 totalStakes;
uint256 stor3;
uint256 stor4;
uint256 totalDividends;
uint256 stor6;
uint256 stor7;
uint256 round;
mapping of struct sub_30b94b8f;
mapping of uint256 payouts;

function round() payable {
    return round
}

function payouts(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return payouts[arg1]
}

function sub_30b94b8f(?) payable {
    require calldata.size - 4 >= 32
    return sub_30b94b8f[address(arg1)].field_0
}

function owner() payable {
    return owner
}

function totalDividends() payable {
    return totalDividends
}

function totalStakes() payable {
    return totalStakes
}

function MFI() payable {
    return MFIAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
    emit OwnershipTransferred(msg.sender, arg1);
}

function sub_1f30cd6e(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(MFIAddress)
    staticcall MFIAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function drawToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(MFIAddress)
    call MFIAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x74546f6b656e732063616e6e6f74206265207472616e736665727265642066726f6d2066756e646572206163636f756e,
                    mem[212 len 16]
    if not arg1:
        if stor6 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if totalStakes <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStakes
        if not totalStakes:
            revert with 0, 'SafeMath: modulo by zero'
        require totalStakes
        stor6 = stor6 % totalStakes
        if totalDividends + (stor6 / totalStakes) < totalDividends:
            revert with 0, 'SafeMath: addition overflow'
        totalDividends += stor6 / totalStakes
        if payouts[stor8 - 1] + (stor6 / totalStakes) < payouts[stor8 - 1]:
            revert with 0, 'SafeMath: addition overflow'
        payouts[stor8] = payouts[stor8 - 1] + (stor6 / totalStakes)
    else:
        require arg1
        if arg1 * stor7 / arg1 != stor7:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (arg1 * stor7) + stor6 < arg1 * stor7:
            revert with 0, 'SafeMath: addition overflow'
        if totalStakes <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStakes
        if not totalStakes:
            revert with 0, 'SafeMath: modulo by zero'
        require totalStakes
        stor6 = (arg1 * stor7) + stor6 % totalStakes
        if totalDividends + ((arg1 * stor7) + stor6 / totalStakes) < totalDividends:
            revert with 0, 'SafeMath: addition overflow'
        totalDividends += (arg1 * stor7) + stor6 / totalStakes
        if payouts[stor8 - 1] + ((arg1 * stor7) + stor6 / totalStakes) < payouts[stor8 - 1]:
            revert with 0, 'SafeMath: addition overflow'
        payouts[stor8] = payouts[stor8 - 1] + ((arg1 * stor7) + stor6 / totalStakes)
    emit PAYOUT(round, arg1, msg.sender);
    round++
}

function getPendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    if payouts[stor9[address(arg1)].field_768 - 1] > totalDividends:
        revert with 0, 'SafeMath: subtraction overflow'
    if not totalDividends - payouts[stor9[address(arg1)].field_768 - 1]:
        if stor7 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if stor7:
            if payouts[stor9[address(arg1)].field_768 - 1] > totalDividends:
                revert with 0, 'SafeMath: subtraction overflow'
            if not totalDividends - payouts[stor9[address(arg1)].field_768 - 1]:
                if stor7:
                    return ((0 / stor7) + (0 % stor7) + sub_30b94b8f[address(arg1)].field_1024)
            else:
                if totalDividends - payouts[stor9[address(arg1)].field_768 - 1]:
                    if (totalDividends * sub_30b94b8f[address(arg1)].field_0) - (payouts[stor9[address(arg1)].field_768 - 1] * sub_30b94b8f[address(arg1)].field_0) / totalDividends - payouts[stor9[address(arg1)].field_768 - 1] != sub_30b94b8f[address(arg1)].field_0:
                        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if stor7:
                        return ((0 / stor7) + ((totalDividends * sub_30b94b8f[address(arg1)].field_0) - (payouts[stor9[address(arg1)].field_768 - 1] * sub_30b94b8f[address(arg1)].field_0) % stor7) + sub_30b94b8f[address(arg1)].field_1024)
    else:
        if totalDividends - payouts[stor9[address(arg1)].field_768 - 1]:
            if (totalDividends * sub_30b94b8f[address(arg1)].field_0) - (payouts[stor9[address(arg1)].field_768 - 1] * sub_30b94b8f[address(arg1)].field_0) / totalDividends - payouts[stor9[address(arg1)].field_768 - 1] != sub_30b94b8f[address(arg1)].field_0:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if stor7 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if stor7:
                if payouts[stor9[address(arg1)].field_768 - 1] > totalDividends:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not totalDividends - payouts[stor9[address(arg1)].field_768 - 1]:
                    if stor7:
                        return (((totalDividends * sub_30b94b8f[address(arg1)].field_0) - (payouts[stor9[address(arg1)].field_768 - 1] * sub_30b94b8f[address(arg1)].field_0) / stor7) + (0 % stor7) + sub_30b94b8f[address(arg1)].field_1024)
                else:
                    if totalDividends - payouts[stor9[address(arg1)].field_768 - 1]:
                        if (totalDividends * sub_30b94b8f[address(arg1)].field_0) - (payouts[stor9[address(arg1)].field_768 - 1] * sub_30b94b8f[address(arg1)].field_0) / totalDividends - payouts[stor9[address(arg1)].field_768 - 1] != sub_30b94b8f[address(arg1)].field_0:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if stor7:
                            return (((totalDividends * sub_30b94b8f[address(arg1)].field_0) - (payouts[stor9[address(arg1)].field_768 - 1] * sub_30b94b8f[address(arg1)].field_0) / stor7) + ((totalDividends * sub_30b94b8f[address(arg1)].field_0) - (payouts[stor9[address(arg1)].field_768 - 1] * sub_30b94b8f[address(arg1)].field_0) % stor7) + sub_30b94b8f[address(arg1)].field_1024)
    revert
}

function getReward() payable {
    if totalDividends > sub_30b94b8f[address(msg.sender)].field_512:
        if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
            revert with 0, 'SafeMath: subtraction overflow'
        if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
            if stor7 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor7
            if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                revert with 0, 'SafeMath: subtraction overflow'
            if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                require stor7
                sub_30b94b8f[address(msg.sender)].field_1024 += 0 % stor7
            else:
                require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                    revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                require stor7
                sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) % stor7
            if (0 / stor7) + sub_30b94b8f[address(msg.sender)].field_1024 < 0 / stor7:
                revert with 0, 'SafeMath: addition overflow'
            sub_30b94b8f[address(msg.sender)].field_1024 = 0
            require ext_code.size(MFIAddress)
            call MFIAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, (0 / stor7) + sub_30b94b8f[address(msg.sender)].field_1024
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 32, 44, 0xfe4552524f523a206572726f7220696e2073656e64696e67207265776172642066726f6d20636f6e74726163, mem[400 len 20]
            emit 0x5325b66a: msg.sender, (0 / stor7) + sub_30b94b8f[address(msg.sender)].field_1024
            sub_30b94b8f[address(msg.sender)].field_256 = (0 / stor7) + sub_30b94b8f[address(msg.sender)].field_1024
        else:
            require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
            if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if stor7 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor7
            if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                revert with 0, 'SafeMath: subtraction overflow'
            if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                require stor7
                sub_30b94b8f[address(msg.sender)].field_1024 += 0 % stor7
            else:
                require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                    revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                require stor7
                sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) % stor7
            if ((totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / stor7) + sub_30b94b8f[address(msg.sender)].field_1024 < (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / stor7:
                revert with 0, 'SafeMath: addition overflow'
            sub_30b94b8f[address(msg.sender)].field_1024 = 0
            require ext_code.size(MFIAddress)
            call MFIAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, ((totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / stor7) + sub_30b94b8f[address(msg.sender)].field_1024
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 32, 44, 0xfe4552524f523a206572726f7220696e2073656e64696e67207265776172642066726f6d20636f6e74726163, mem[400 len 20]
            emit 0x5325b66a: msg.sender, ((totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / stor7) + sub_30b94b8f[address(msg.sender)].field_1024
            sub_30b94b8f[address(msg.sender)].field_256 = ((totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / stor7) + sub_30b94b8f[address(msg.sender)].field_1024
        sub_30b94b8f[address(msg.sender)].field_768 = round
        sub_30b94b8f[address(msg.sender)].field_512 = totalDividends
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_30b94b8f[address(msg.sender)].field_0 < arg1:
        revert with 0, 'Invalid token amount to withdraw'
    if arg1 <= 0:
        revert with 0, 'Invalid token amount to withdraw'
    if not 100 * arg1 + 99 / 100:
        if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
            revert with 0, 'SafeMath: subtraction overflow'
        if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
            if stor7 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor7
            if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                revert with 0, 'SafeMath: subtraction overflow'
            if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                require stor7
                sub_30b94b8f[address(msg.sender)].field_1024 += 0 % stor7
            else:
                require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                    revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                require stor7
                sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) % stor7
            sub_30b94b8f[address(msg.sender)].field_1024 += 0 / stor7
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(MFIAddress)
            call MFIAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Error in un-staking tokens'
            if arg1 > sub_30b94b8f[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_30b94b8f[address(msg.sender)].field_0 -= arg1
            sub_30b94b8f[address(msg.sender)].field_256 = 0 / stor7
        else:
            require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
            if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if stor7 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor7
            if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                revert with 0, 'SafeMath: subtraction overflow'
            if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                require stor7
                sub_30b94b8f[address(msg.sender)].field_1024 += 0 % stor7
            else:
                require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                    revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                require stor7
                sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) % stor7
            sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / stor7
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(MFIAddress)
            call MFIAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Error in un-staking tokens'
            if arg1 > sub_30b94b8f[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_30b94b8f[address(msg.sender)].field_0 -= arg1
            sub_30b94b8f[address(msg.sender)].field_256 = (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / stor7
        sub_30b94b8f[address(msg.sender)].field_512 = totalDividends
        sub_30b94b8f[address(msg.sender)].field_768 = round
        if arg1 > totalStakes:
            revert with 0, 'SafeMath: subtraction overflow'
        totalStakes -= arg1
        if totalStakes > 0:
            if stor6 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if totalStakes <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStakes
            if not totalStakes:
                revert with 0, 'SafeMath: modulo by zero'
            require totalStakes
            stor6 = stor6 % totalStakes
            if totalDividends + (stor6 / totalStakes) < totalDividends:
                revert with 0, 'SafeMath: addition overflow'
            totalDividends += stor6 / totalStakes
            if payouts[stor8 - 1] + (stor6 / totalStakes) < payouts[stor8 - 1]:
                revert with 0, 'SafeMath: addition overflow'
            payouts[stor8] = payouts[stor8 - 1] + (stor6 / totalStakes)
            emit PAYOUT(round, 0, msg.sender);
            round++
        if 0 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        emit 0xe5470098: msg.sender, arg1, 0
    else:
        require 100 * arg1 + 99 / 100
        if 10000 * arg1 + 99 / 100 / 100 * arg1 + 99 / 100 != 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not 10000 * arg1 + 99 / 100 / 10000:
            if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                revert with 0, 'SafeMath: subtraction overflow'
            if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                if stor7 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor7
                if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                    require stor7
                    sub_30b94b8f[address(msg.sender)].field_1024 += 0 % stor7
                else:
                    require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                    if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    require stor7
                    sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) % stor7
                sub_30b94b8f[address(msg.sender)].field_1024 += 0 / stor7
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(MFIAddress)
                call MFIAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Error in un-staking tokens'
                if arg1 > sub_30b94b8f[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_30b94b8f[address(msg.sender)].field_0 -= arg1
                sub_30b94b8f[address(msg.sender)].field_256 = 0 / stor7
            else:
                require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                    revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if stor7 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor7
                if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                    require stor7
                    sub_30b94b8f[address(msg.sender)].field_1024 += 0 % stor7
                else:
                    require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                    if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    require stor7
                    sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) % stor7
                sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / stor7
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(MFIAddress)
                call MFIAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Error in un-staking tokens'
                if arg1 > sub_30b94b8f[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_30b94b8f[address(msg.sender)].field_0 -= arg1
                sub_30b94b8f[address(msg.sender)].field_256 = (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / stor7
            sub_30b94b8f[address(msg.sender)].field_512 = totalDividends
            sub_30b94b8f[address(msg.sender)].field_768 = round
            if arg1 > totalStakes:
                revert with 0, 'SafeMath: subtraction overflow'
            totalStakes -= arg1
            if totalStakes > 0:
                if stor6 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if totalStakes <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalStakes
                if not totalStakes:
                    revert with 0, 'SafeMath: modulo by zero'
                require totalStakes
                stor6 = stor6 % totalStakes
                if totalDividends + (stor6 / totalStakes) < totalDividends:
                    revert with 0, 'SafeMath: addition overflow'
                totalDividends += stor6 / totalStakes
                if payouts[stor8 - 1] + (stor6 / totalStakes) < payouts[stor8 - 1]:
                    revert with 0, 'SafeMath: addition overflow'
                payouts[stor8] = payouts[stor8 - 1] + (stor6 / totalStakes)
                emit PAYOUT(round, 0, msg.sender);
                round++
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            emit 0xe5470098: msg.sender, arg1, 0
        else:
            require 10000 * arg1 + 99 / 100 / 10000
            if 10000 * arg1 + 99 / 100 / 10000 * stor4 / 10000 * arg1 + 99 / 100 / 10000 != stor4:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                revert with 0, 'SafeMath: subtraction overflow'
            if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                if stor7 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor7
                if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                    require stor7
                    sub_30b94b8f[address(msg.sender)].field_1024 += 0 % stor7
                else:
                    require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                    if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    require stor7
                    sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) % stor7
                sub_30b94b8f[address(msg.sender)].field_1024 += 0 / stor7
                if 10000 * arg1 + 99 / 100 / 10000 * stor4 / 10 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(MFIAddress)
                call MFIAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg1 - (10000 * arg1 + 99 / 100 / 10000 * stor4 / 10)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Error in un-staking tokens'
                if arg1 > sub_30b94b8f[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_30b94b8f[address(msg.sender)].field_0 -= arg1
                sub_30b94b8f[address(msg.sender)].field_256 = 0 / stor7
            else:
                require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                    revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if stor7 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor7
                if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                    require stor7
                    sub_30b94b8f[address(msg.sender)].field_1024 += 0 % stor7
                else:
                    require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                    if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    require stor7
                    sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) % stor7
                sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / stor7
                if 10000 * arg1 + 99 / 100 / 10000 * stor4 / 10 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(MFIAddress)
                call MFIAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg1 - (10000 * arg1 + 99 / 100 / 10000 * stor4 / 10)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Error in un-staking tokens'
                if arg1 > sub_30b94b8f[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_30b94b8f[address(msg.sender)].field_0 -= arg1
                sub_30b94b8f[address(msg.sender)].field_256 = (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / stor7
            sub_30b94b8f[address(msg.sender)].field_512 = totalDividends
            sub_30b94b8f[address(msg.sender)].field_768 = round
            if arg1 > totalStakes:
                revert with 0, 'SafeMath: subtraction overflow'
            totalStakes -= arg1
            if totalStakes > 0:
                if not 10000 * arg1 + 99 / 100 / 10000 * stor4 / 10:
                    if stor6 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if totalStakes <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalStakes
                    if not totalStakes:
                        revert with 0, 'SafeMath: modulo by zero'
                    require totalStakes
                    stor6 = stor6 % totalStakes
                    if totalDividends + (stor6 / totalStakes) < totalDividends:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDividends += stor6 / totalStakes
                    if payouts[stor8 - 1] + (stor6 / totalStakes) < payouts[stor8 - 1]:
                        revert with 0, 'SafeMath: addition overflow'
                    payouts[stor8] = payouts[stor8 - 1] + (stor6 / totalStakes)
                else:
                    require 10000 * arg1 + 99 / 100 / 10000 * stor4 / 10
                    if 10000 * arg1 + 99 / 100 / 10000 * stor4 / 10 * stor7 / 10000 * arg1 + 99 / 100 / 10000 * stor4 / 10 != stor7:
                        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if (10000 * arg1 + 99 / 100 / 10000 * stor4 / 10 * stor7) + stor6 < 10000 * arg1 + 99 / 100 / 10000 * stor4 / 10 * stor7:
                        revert with 0, 'SafeMath: addition overflow'
                    if totalStakes <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalStakes
                    if not totalStakes:
                        revert with 0, 'SafeMath: modulo by zero'
                    require totalStakes
                    stor6 = (10000 * arg1 + 99 / 100 / 10000 * stor4 / 10 * stor7) + stor6 % totalStakes
                    if totalDividends + ((10000 * arg1 + 99 / 100 / 10000 * stor4 / 10 * stor7) + stor6 / totalStakes) < totalDividends:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDividends += (10000 * arg1 + 99 / 100 / 10000 * stor4 / 10 * stor7) + stor6 / totalStakes
                    if payouts[stor8 - 1] + ((10000 * arg1 + 99 / 100 / 10000 * stor4 / 10 * stor7) + stor6 / totalStakes) < payouts[stor8 - 1]:
                        revert with 0, 'SafeMath: addition overflow'
                    payouts[stor8] = payouts[stor8 - 1] + ((10000 * arg1 + 99 / 100 / 10000 * stor4 / 10 * stor7) + stor6 / totalStakes)
                emit PAYOUT(round, 10000 * arg1 + 99 / 100 / 10000 * stor4 / 10, msg.sender);
                round++
            if 10000 * arg1 + 99 / 100 / 10000 * stor4 / 10 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            emit 0xe5470098: msg.sender, arg1 - (10000 * arg1 + 99 / 100 / 10000 * stor4 / 10), 10000 * arg1 + 99 / 100 / 10000 * stor4 / 10
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(MFIAddress)
    call MFIAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x77546f6b656e732063616e6e6f74206265207472616e736665727265642066726f6d2075736572206163636f756e,
                    mem[210 len 18]
    if totalStakes <= 0:
        if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
            revert with 0, 'SafeMath: subtraction overflow'
        if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
            if stor7 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor7
            if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                revert with 0, 'SafeMath: subtraction overflow'
            if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                require stor7
                sub_30b94b8f[address(msg.sender)].field_1024 += 0 % stor7
            else:
                require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                    revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                require stor7
                sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) % stor7
            sub_30b94b8f[address(msg.sender)].field_1024 += 0 / stor7
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 + sub_30b94b8f[address(msg.sender)].field_0 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            sub_30b94b8f[address(msg.sender)].field_0 += arg1
            sub_30b94b8f[address(msg.sender)].field_256 = 0 / stor7
        else:
            require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
            if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if stor7 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor7
            if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                revert with 0, 'SafeMath: subtraction overflow'
            if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                require stor7
                sub_30b94b8f[address(msg.sender)].field_1024 += 0 % stor7
            else:
                require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                    revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                require stor7
                sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) % stor7
            sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / stor7
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 + sub_30b94b8f[address(msg.sender)].field_0 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            sub_30b94b8f[address(msg.sender)].field_0 += arg1
            sub_30b94b8f[address(msg.sender)].field_256 = (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / stor7
        sub_30b94b8f[address(msg.sender)].field_512 = totalDividends
        sub_30b94b8f[address(msg.sender)].field_768 = round
        if 0 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalStakes + arg1 < totalStakes:
            revert with 0, 'SafeMath: addition overflow'
        totalStakes += arg1
        if 0 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        emit staked(msg.sender, arg1, 0);
    else:
        if not 100 * arg1 + 99 / 100:
            if totalStakes <= 0:
                if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                    if stor7 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor7
                    if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                        require stor7
                        sub_30b94b8f[address(msg.sender)].field_1024 += 0 % stor7
                    else:
                        require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                        if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        require stor7
                        sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) % stor7
                    sub_30b94b8f[address(msg.sender)].field_1024 += 0 / stor7
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 + sub_30b94b8f[address(msg.sender)].field_0 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_30b94b8f[address(msg.sender)].field_0 += arg1
                    sub_30b94b8f[address(msg.sender)].field_256 = 0 / stor7
                else:
                    require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                    if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if stor7 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor7
                    if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                        require stor7
                        sub_30b94b8f[address(msg.sender)].field_1024 += 0 % stor7
                    else:
                        require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                        if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        require stor7
                        sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) % stor7
                    sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / stor7
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 + sub_30b94b8f[address(msg.sender)].field_0 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_30b94b8f[address(msg.sender)].field_0 += arg1
                    sub_30b94b8f[address(msg.sender)].field_256 = (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / stor7
            else:
                if stor6 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if totalStakes <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalStakes
                if not totalStakes:
                    revert with 0, 'SafeMath: modulo by zero'
                require totalStakes
                stor6 = stor6 % totalStakes
                if totalDividends + (stor6 / totalStakes) < totalDividends:
                    revert with 0, 'SafeMath: addition overflow'
                totalDividends += stor6 / totalStakes
                if payouts[stor8 - 1] + (stor6 / totalStakes) < payouts[stor8 - 1]:
                    revert with 0, 'SafeMath: addition overflow'
                payouts[stor8] = payouts[stor8 - 1] + (stor6 / totalStakes)
                emit PAYOUT(round, 0, msg.sender);
                round++
                if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                    if stor7 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor7
                    if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                        require stor7
                        sub_30b94b8f[address(msg.sender)].field_1024 += 0 % stor7
                    else:
                        require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                        if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        require stor7
                        sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) % stor7
                    sub_30b94b8f[address(msg.sender)].field_1024 += 0 / stor7
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 + sub_30b94b8f[address(msg.sender)].field_0 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_30b94b8f[address(msg.sender)].field_0 += arg1
                    sub_30b94b8f[address(msg.sender)].field_256 = 0 / stor7
                else:
                    require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                    if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    if stor7 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor7
                    if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                        require stor7
                        sub_30b94b8f[address(msg.sender)].field_1024 += 0 % stor7
                    else:
                        require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                        if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        require stor7
                        sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) % stor7
                    sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / stor7
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 + sub_30b94b8f[address(msg.sender)].field_0 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_30b94b8f[address(msg.sender)].field_0 += arg1
                    sub_30b94b8f[address(msg.sender)].field_256 = (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / stor7
            sub_30b94b8f[address(msg.sender)].field_512 = totalDividends
            sub_30b94b8f[address(msg.sender)].field_768 = round
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if totalStakes + arg1 < totalStakes:
                revert with 0, 'SafeMath: addition overflow'
            totalStakes += arg1
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            emit staked(msg.sender, arg1, 0);
        else:
            require 100 * arg1 + 99 / 100
            if 10000 * arg1 + 99 / 100 / 100 * arg1 + 99 / 100 != 100:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not 10000 * arg1 + 99 / 100 / 10000:
                if totalStakes <= 0:
                    if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                        if stor7 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor7
                        if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                            require stor7
                            sub_30b94b8f[address(msg.sender)].field_1024 += 0 % stor7
                        else:
                            require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                            if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            require stor7
                            sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) % stor7
                        sub_30b94b8f[address(msg.sender)].field_1024 += 0 / stor7
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 + sub_30b94b8f[address(msg.sender)].field_0 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_30b94b8f[address(msg.sender)].field_0 += arg1
                        sub_30b94b8f[address(msg.sender)].field_256 = 0 / stor7
                    else:
                        require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                        if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if stor7 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor7
                        if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                            require stor7
                            sub_30b94b8f[address(msg.sender)].field_1024 += 0 % stor7
                        else:
                            require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                            if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            require stor7
                            sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) % stor7
                        sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / stor7
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 + sub_30b94b8f[address(msg.sender)].field_0 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_30b94b8f[address(msg.sender)].field_0 += arg1
                        sub_30b94b8f[address(msg.sender)].field_256 = (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / stor7
                else:
                    if stor6 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if totalStakes <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalStakes
                    if not totalStakes:
                        revert with 0, 'SafeMath: modulo by zero'
                    require totalStakes
                    stor6 = stor6 % totalStakes
                    if totalDividends + (stor6 / totalStakes) < totalDividends:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDividends += stor6 / totalStakes
                    if payouts[stor8 - 1] + (stor6 / totalStakes) < payouts[stor8 - 1]:
                        revert with 0, 'SafeMath: addition overflow'
                    payouts[stor8] = payouts[stor8 - 1] + (stor6 / totalStakes)
                    emit PAYOUT(round, 0, msg.sender);
                    round++
                    if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                        if stor7 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor7
                        if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                            require stor7
                            sub_30b94b8f[address(msg.sender)].field_1024 += 0 % stor7
                        else:
                            require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                            if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            require stor7
                            sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) % stor7
                        sub_30b94b8f[address(msg.sender)].field_1024 += 0 / stor7
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 + sub_30b94b8f[address(msg.sender)].field_0 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_30b94b8f[address(msg.sender)].field_0 += arg1
                        sub_30b94b8f[address(msg.sender)].field_256 = 0 / stor7
                    else:
                        require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                        if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if stor7 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor7
                        if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                            require stor7
                            sub_30b94b8f[address(msg.sender)].field_1024 += 0 % stor7
                        else:
                            require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                            if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            require stor7
                            sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) % stor7
                        sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / stor7
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 + sub_30b94b8f[address(msg.sender)].field_0 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_30b94b8f[address(msg.sender)].field_0 += arg1
                        sub_30b94b8f[address(msg.sender)].field_256 = (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / stor7
                sub_30b94b8f[address(msg.sender)].field_512 = totalDividends
                sub_30b94b8f[address(msg.sender)].field_768 = round
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalStakes + arg1 < totalStakes:
                    revert with 0, 'SafeMath: addition overflow'
                totalStakes += arg1
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                emit staked(msg.sender, arg1, 0);
            else:
                require 10000 * arg1 + 99 / 100 / 10000
                if 10000 * arg1 + 99 / 100 / 10000 * stor3 / 10000 * arg1 + 99 / 100 / 10000 != stor3:
                    revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if totalStakes <= 0:
                    if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                        if stor7 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor7
                        if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                            require stor7
                            sub_30b94b8f[address(msg.sender)].field_1024 += 0 % stor7
                        else:
                            require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                            if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            require stor7
                            sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) % stor7
                        sub_30b94b8f[address(msg.sender)].field_1024 += 0 / stor7
                        if 10000 * arg1 + 99 / 100 / 10000 * stor3 / 10 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_30b94b8f[address(msg.sender)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_30b94b8f[address(msg.sender)].field_0 = arg1 - (10000 * arg1 + 99 / 100 / 10000 * stor3 / 10) + sub_30b94b8f[address(msg.sender)].field_0
                        sub_30b94b8f[address(msg.sender)].field_256 = 0 / stor7
                    else:
                        require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                        if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if stor7 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor7
                        if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                            require stor7
                            sub_30b94b8f[address(msg.sender)].field_1024 += 0 % stor7
                        else:
                            require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                            if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            require stor7
                            sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) % stor7
                        sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / stor7
                        if 10000 * arg1 + 99 / 100 / 10000 * stor3 / 10 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_30b94b8f[address(msg.sender)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_30b94b8f[address(msg.sender)].field_0 = arg1 - (10000 * arg1 + 99 / 100 / 10000 * stor3 / 10) + sub_30b94b8f[address(msg.sender)].field_0
                        sub_30b94b8f[address(msg.sender)].field_256 = (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / stor7
                else:
                    if not 10000 * arg1 + 99 / 100 / 10000 * stor3 / 10:
                        if stor6 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalStakes <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStakes
                        if not totalStakes:
                            revert with 0, 'SafeMath: modulo by zero'
                        require totalStakes
                        stor6 = stor6 % totalStakes
                        if totalDividends + (stor6 / totalStakes) < totalDividends:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDividends += stor6 / totalStakes
                        if payouts[stor8 - 1] + (stor6 / totalStakes) < payouts[stor8 - 1]:
                            revert with 0, 'SafeMath: addition overflow'
                        payouts[stor8] = payouts[stor8 - 1] + (stor6 / totalStakes)
                    else:
                        require 10000 * arg1 + 99 / 100 / 10000 * stor3 / 10
                        if 10000 * arg1 + 99 / 100 / 10000 * stor3 / 10 * stor7 / 10000 * arg1 + 99 / 100 / 10000 * stor3 / 10 != stor7:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if (10000 * arg1 + 99 / 100 / 10000 * stor3 / 10 * stor7) + stor6 < 10000 * arg1 + 99 / 100 / 10000 * stor3 / 10 * stor7:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalStakes <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStakes
                        if not totalStakes:
                            revert with 0, 'SafeMath: modulo by zero'
                        require totalStakes
                        stor6 = (10000 * arg1 + 99 / 100 / 10000 * stor3 / 10 * stor7) + stor6 % totalStakes
                        if totalDividends + ((10000 * arg1 + 99 / 100 / 10000 * stor3 / 10 * stor7) + stor6 / totalStakes) < totalDividends:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDividends += (10000 * arg1 + 99 / 100 / 10000 * stor3 / 10 * stor7) + stor6 / totalStakes
                        if payouts[stor8 - 1] + ((10000 * arg1 + 99 / 100 / 10000 * stor3 / 10 * stor7) + stor6 / totalStakes) < payouts[stor8 - 1]:
                            revert with 0, 'SafeMath: addition overflow'
                        payouts[stor8] = payouts[stor8 - 1] + ((10000 * arg1 + 99 / 100 / 10000 * stor3 / 10 * stor7) + stor6 / totalStakes)
                    emit PAYOUT(round, 10000 * arg1 + 99 / 100 / 10000 * stor3 / 10, msg.sender);
                    round++
                    if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                        if stor7 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor7
                        if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                            require stor7
                            sub_30b94b8f[address(msg.sender)].field_1024 += 0 % stor7
                        else:
                            require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                            if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            require stor7
                            sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) % stor7
                        sub_30b94b8f[address(msg.sender)].field_1024 += 0 / stor7
                        if 10000 * arg1 + 99 / 100 / 10000 * stor3 / 10 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_30b94b8f[address(msg.sender)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_30b94b8f[address(msg.sender)].field_0 = arg1 - (10000 * arg1 + 99 / 100 / 10000 * stor3 / 10) + sub_30b94b8f[address(msg.sender)].field_0
                        sub_30b94b8f[address(msg.sender)].field_256 = 0 / stor7
                    else:
                        require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                        if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if stor7 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor7
                        if payouts[stor9[address(msg.sender)].field_768 - 1] > totalDividends:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]:
                            require stor7
                            sub_30b94b8f[address(msg.sender)].field_1024 += 0 % stor7
                        else:
                            require totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1]
                            if (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / totalDividends - payouts[stor9[address(msg.sender)].field_768 - 1] != sub_30b94b8f[address(msg.sender)].field_0:
                                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            require stor7
                            sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) % stor7
                        sub_30b94b8f[address(msg.sender)].field_1024 += (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / stor7
                        if 10000 * arg1 + 99 / 100 / 10000 * stor3 / 10 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_30b94b8f[address(msg.sender)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_30b94b8f[address(msg.sender)].field_0 = arg1 - (10000 * arg1 + 99 / 100 / 10000 * stor3 / 10) + sub_30b94b8f[address(msg.sender)].field_0
                        sub_30b94b8f[address(msg.sender)].field_256 = (totalDividends * sub_30b94b8f[address(msg.sender)].field_0) - (payouts[stor9[address(msg.sender)].field_768 - 1] * sub_30b94b8f[address(msg.sender)].field_0) / stor7
                sub_30b94b8f[address(msg.sender)].field_512 = totalDividends
                sub_30b94b8f[address(msg.sender)].field_768 = round
                if 10000 * arg1 + 99 / 100 / 10000 * stor3 / 10 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalStakes + arg1 - (10000 * arg1 + 99 / 100 / 10000 * stor3 / 10) < totalStakes:
                    revert with 0, 'SafeMath: addition overflow'
                totalStakes = totalStakes + arg1 - (10000 * arg1 + 99 / 100 / 10000 * stor3 / 10)
                if 10000 * arg1 + 99 / 100 / 10000 * stor3 / 10 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                emit staked(msg.sender, arg1 - (10000 * arg1 + 99 / 100 / 10000 * stor3 / 10), 10000 * arg1 + 99 / 100 / 10000 * stor3 / 10);
}



}
