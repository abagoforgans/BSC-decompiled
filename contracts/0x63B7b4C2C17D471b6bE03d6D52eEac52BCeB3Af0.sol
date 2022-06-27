contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
address wittyAddress;
uint256 currentId;
uint256 sub_c5214f8b;
uint8 stor4;
uint256 adminWallet;
uint256 totalStake;
mapping of uint256 sub_ab79205c;
mapping of uint256 sub_79a3dfe8;
mapping of struct sub_c416d075;
mapping of uint256 roiPercentage;
mapping of uint256 maxAmount;
mapping of uint256 sub_2f101ad3;
mapping of uint8 stor14;

function sub_116605e9(?) payable {
    return bool(stor1)
}

function sub_2f101ad3(?) payable {
    require calldata.size - 4 >= 64
    return sub_2f101ad3[arg1][arg2]
}

function adminWallet() payable {
    return adminWallet
}

function lockStatus() payable {
    return bool(stor4)
}

function maxAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return maxAmount[arg1]
}

function sub_79a3dfe8(?) payable {
    require calldata.size - 4 >= 32
    return sub_79a3dfe8[arg1]
}

function totalStake() payable {
    return totalStake
}

function owner() payable {
    return owner
}

function roiPercentage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return roiPercentage[arg1]
}

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(viewReferer[arg1].field_0), 
           viewReferer[arg1].field_256,
           viewReferer[arg1].field_512,
           viewReferer[arg1].field_768,
           viewReferer[arg1].field_1024,
           viewReferer[arg1].field_1536,
           viewReferer[arg1].field_1792,
           viewReferer[arg1].field_2048,
           viewReferer[arg1].field_2304
}

function sub_ab79205c(?) payable {
    require calldata.size - 4 >= 32
    return sub_ab79205c[arg1]
}

function viewReferer(address arg1) payable {
    require calldata.size - 4 >= 32
    require viewReferer[address(arg1)].field_1280
    require 1 < viewReferer[address(arg1)].field_1280
    require 2 < viewReferer[address(arg1)].field_1280
    return viewReferer[address(arg1)][5].field_0, viewReferer[address(arg1)][5].field_256, viewReferer[address(arg1)][5].field_512
}

function sub_c416d075(?) payable {
    require calldata.size - 4 >= 96
    return sub_c416d075[arg1][arg2][arg3].field_0, 
           sub_c416d075[arg1][arg2][arg3].field_256,
           sub_c416d075[arg1][arg2][arg3].field_512,
           bool(sub_c416d075[arg1][arg2][arg3].field_768)
}

function sub_c5214f8b(?) payable {
    return sub_c5214f8b
}

function sub_df6c78b8(?) payable {
    require calldata.size - 4 >= 64
    return bool(stor14[arg1][arg2])
}

function currentId() payable {
    return currentId
}

function witty() payable {
    return wittyAddress
}

function _fallback() payable {
    revert
}

function isContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if not uint32(ext_code.size(arg1)):
        return 0
    return 1
}

function setDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only Owner'
    sub_c5214f8b = arg1
}

function contractLock(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only Owner'
    stor4 = uint8(arg1)
    return 1
}

function sub_21c8be08(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'Invalid params'
    if viewReferer[address(arg1)].field_768 + (720 * 24 * 3600) < viewReferer[address(arg1)].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > viewReferer[address(arg1)].field_768 + (720 * 24 * 3600):
        return 0
    return viewReferer[address(arg1)].field_512
}

function sub_2b6ef7b4(?) payable {
    require calldata.size - 4 >= 320
    mem[96 len 160] = call.data[4 len 160]
    mem[256 len 160] = call.data[164 len 160]
    mem[416] = 0
    if owner != msg.sender:
        revert with 0, 'Only Owner'
    idx = 0
    while idx < 5:
        mem[0] = mem[(32 * idx) + 96]
        mem[32] = 7
        sub_ab79205c[mem[(32 * idx) + 96]] = mem[(32 * idx) + 256]
        idx = idx + 1
        continue 
}

function maxPayoutOf(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        return 0
    if maxAmount[arg2] * arg1 / arg1 != maxAmount[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (maxAmount[arg2] * arg1 / 100 * 10^18)
}

function adminWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only Owner'
    if arg1 > adminWallet:
        revert with 0, 'SafeMath: subtraction overflow'
    adminWallet -= arg1
    require ext_code.size(wittyAddress)
    call wittyAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function incentiveDistribute(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Only Owner'
    if not arg1:
        revert with 0, 'invalid params'
    if arg2 <= 0:
        revert with 0, 'invalid params'
    if viewReferer[address(arg1)].field_2048:
        if not stor14[address(arg1)][stor10[address(arg1)].field_2048]:
            revert with 0, 'Not eligible'
    if arg2 + viewReferer[address(arg1)].field_512 < viewReferer[address(arg1)].field_512:
        revert with 0, 'SafeMath: addition overflow'
    viewReferer[address(arg1)].field_512 += arg2
    viewReferer[address(arg1)].field_768 = block.timestamp
    viewReferer[address(arg1)].field_2048 = uint8(viewReferer[address(arg1)].field_2048 + 1)
}

function setAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only Owner'
    idx = 1
    while idx <= 5:
        if not sub_ab79205c[idx]:
            mem[0] = idx
            mem[32] = 8
            sub_79a3dfe8[idx] = 0
        else:
            if arg1 * sub_ab79205c[idx] / sub_ab79205c[idx] != arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            mem[0] = idx
            mem[32] = 8
            sub_79a3dfe8[idx] = arg1 * sub_ab79205c[idx]
        idx = idx + 1
        continue 
    stor1 = 1
}

function failSafe(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Only Owner'
    if not arg1:
        revert with 0, 'Witty: Invalid Address'
    require ext_code.size(wittyAddress)
    staticcall wittyAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Witty: Insufficient balance'
    require ext_code.size(wittyAddress)
    call wittyAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit FailSafe(arg2, block.timestamp, arg1);
    return 1
}

function payout(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if bool(sub_c416d075[address(arg1)][arg2][arg3].field_768) != 1:
        revert with 0, 'User not activate'
    if not sub_c416d075[address(arg1)][arg2][arg3].field_0:
        revert with 0, 'Not yet deposit'
    require ext_code.size(this.address)
    staticcall this.address.0x54df3266 with:
            gas gas_remaining wei
           args sub_c416d075[address(arg1)][arg2][arg3].field_0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= sub_c416d075[address(arg1)][arg2][arg3].field_512:
        return 0, ext_call.return_data[0]
    if sub_c416d075[address(arg1)][arg2][arg3].field_256 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_c5214f8b:
        revert with 0, 'SafeMath: division by zero'
    if not sub_c416d075[address(arg1)][arg2][arg3].field_0:
        if sub_c416d075[address(arg1)][arg2][arg3].field_512 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 < sub_c416d075[address(arg1)][arg2][arg3].field_512:
            revert with 0, 'SafeMath: addition overflow'
        if 0 <= ext_call.return_data[0]:
            return -sub_c416d075[address(arg1)][arg2][arg3].field_512, ext_call.return_data[0]
    else:
        if roiPercentage[arg2] * sub_c416d075[address(arg1)][arg2][arg3].field_0 / sub_c416d075[address(arg1)][arg2][arg3].field_0 != roiPercentage[arg2]:
            revert with 0, 32, 33, 0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not roiPercentage[arg2] * sub_c416d075[address(arg1)][arg2][arg3].field_0 / 100 * 10^18:
            if sub_c416d075[address(arg1)][arg2][arg3].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < sub_c416d075[address(arg1)][arg2][arg3].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if 0 <= ext_call.return_data[0]:
                return -sub_c416d075[address(arg1)][arg2][arg3].field_512, ext_call.return_data[0]
        else:
            if block.timestamp - sub_c416d075[address(arg1)][arg2][arg3].field_256 / sub_c5214f8b * roiPercentage[arg2] * sub_c416d075[address(arg1)][arg2][arg3].field_0 / 100 * 10^18 / roiPercentage[arg2] * sub_c416d075[address(arg1)][arg2][arg3].field_0 / 100 * 10^18 != block.timestamp - sub_c416d075[address(arg1)][arg2][arg3].field_256 / sub_c5214f8b:
                revert with 0, 32, 33, 0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if sub_c416d075[address(arg1)][arg2][arg3].field_512 > block.timestamp - sub_c416d075[address(arg1)][arg2][arg3].field_256 / sub_c5214f8b * roiPercentage[arg2] * sub_c416d075[address(arg1)][arg2][arg3].field_0 / 100 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.timestamp - sub_c416d075[address(arg1)][arg2][arg3].field_256 / sub_c5214f8b * roiPercentage[arg2] * sub_c416d075[address(arg1)][arg2][arg3].field_0 / 100 * 10^18 < sub_c416d075[address(arg1)][arg2][arg3].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp - sub_c416d075[address(arg1)][arg2][arg3].field_256 / sub_c5214f8b * roiPercentage[arg2] * sub_c416d075[address(arg1)][arg2][arg3].field_0 / 100 * 10^18 <= ext_call.return_data[0]:
                return (block.timestamp - sub_c416d075[address(arg1)][arg2][arg3].field_256 / sub_c5214f8b * roiPercentage[arg2] * sub_c416d075[address(arg1)][arg2][arg3].field_0 / 100 * 10^18) - sub_c416d075[address(arg1)][arg2][arg3].field_512, 
                       ext_call.return_data[0]
    if sub_c416d075[address(arg1)][arg2][arg3].field_512 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return ext_call.return_data[0] - sub_c416d075[address(arg1)][arg2][arg3].field_512, ext_call.return_data[0]
}

function withdraw(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor4:
        revert with 0, 'Witty: Contract Locked'
    if bool(sub_c416d075[msg.sender][arg1][arg3].field_768) != 1:
        revert with 0, 'User not activate'
    require ext_code.size(this.address)
    staticcall this.address.0xadf58c15 with:
            gas gas_remaining wei
           args msg.sender, arg1, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] <= sub_c416d075[msg.sender][arg1][arg3].field_512:
        if owner != msg.sender:
            revert with 0, 'Ewaso: Full payouts'
    if not ext_call.return_data[0]:
        require ext_code.size(wittyAddress)
        call wittyAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg2:
            emit Withdraw(ext_call.return_data[0], ext_call.return_data[32], arg1, arg3, block.timestamp, msg.sender);
        else:
            if arg2 > sub_c416d075[msg.sender][arg1][arg3].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_c416d075[msg.sender][arg1][arg3].field_0 -= arg2
            if sub_c416d075[msg.sender][arg1][arg3].field_256 + (2160 * 24 * 3600) < sub_c416d075[msg.sender][arg1][arg3].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp < sub_c416d075[msg.sender][arg1][arg3].field_256 + (2160 * 24 * 3600):
                if not arg2:
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg2:
                        emit Charges(0, arg1, arg3, block.timestamp, msg.sender);
                    else:
                        if 50 * arg2 / arg2 != 50:
                            revert with 0, 32, 33, 0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        emit Charges(50 * arg2 / 100, arg1, arg3, block.timestamp, msg.sender);
                    sub_c416d075[msg.sender][arg1][arg3].field_768 = 0
                    require ext_code.size(wittyAddress)
                    call wittyAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Withdraw(ext_call.return_data[0], arg2, arg1, arg3, block.timestamp, msg.sender);
                else:
                    if 50 * arg2 / arg2 != 50:
                        revert with 0, 32, 33, 0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if 50 * arg2 / 100 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg2:
                        emit Charges(0, arg1, arg3, block.timestamp, msg.sender);
                    else:
                        if 50 * arg2 / arg2 != 50:
                            revert with 0, 32, 33, 0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        emit Charges(50 * arg2 / 100, arg1, arg3, block.timestamp, msg.sender);
                    sub_c416d075[msg.sender][arg1][arg3].field_768 = 0
                    require ext_code.size(wittyAddress)
                    call wittyAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg2 - (50 * arg2 / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit Withdraw(ext_call.return_data[0], arg2 - (50 * arg2 / 100), arg1, arg3, block.timestamp, msg.sender);
            else:
                if sub_c416d075[msg.sender][arg1][arg3].field_256 + (5760 * 24 * 3600) < sub_c416d075[msg.sender][arg1][arg3].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if block.timestamp < sub_c416d075[msg.sender][arg1][arg3].field_256 + (5760 * 24 * 3600):
                    if not arg2:
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg2:
                            emit Charges(0, arg1, arg3, block.timestamp, msg.sender);
                        else:
                            if 30 * arg2 / arg2 != 30:
                                revert with 0, 32, 33, 0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            emit Charges(30 * arg2 / 100, arg1, arg3, block.timestamp, msg.sender);
                        sub_c416d075[msg.sender][arg1][arg3].field_768 = 0
                        require ext_code.size(wittyAddress)
                        call wittyAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit Withdraw(ext_call.return_data[0], arg2, arg1, arg3, block.timestamp, msg.sender);
                    else:
                        if 30 * arg2 / arg2 != 30:
                            revert with 0, 32, 33, 0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if 30 * arg2 / 100 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg2:
                            emit Charges(0, arg1, arg3, block.timestamp, msg.sender);
                        else:
                            if 30 * arg2 / arg2 != 30:
                                revert with 0, 32, 33, 0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            emit Charges(30 * arg2 / 100, arg1, arg3, block.timestamp, msg.sender);
                        sub_c416d075[msg.sender][arg1][arg3].field_768 = 0
                        require ext_code.size(wittyAddress)
                        call wittyAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg2 - (30 * arg2 / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit Withdraw(ext_call.return_data[0], arg2 - (30 * arg2 / 100), arg1, arg3, block.timestamp, msg.sender);
                else:
                    if sub_c416d075[msg.sender][arg1][arg3].field_256 + (8760 * 24 * 3600) < sub_c416d075[msg.sender][arg1][arg3].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp >= sub_c416d075[msg.sender][arg1][arg3].field_256 + (8760 * 24 * 3600):
                        if sub_c416d075[msg.sender][arg1][arg3].field_256 + (8760 * 24 * 3600) < sub_c416d075[msg.sender][arg1][arg3].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_c416d075[msg.sender][arg1][arg3].field_768 = 0
                        require ext_code.size(wittyAddress)
                        if block.timestamp <= sub_c416d075[msg.sender][arg1][arg3].field_256 + (8760 * 24 * 3600):
                            call wittyAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit Withdraw(ext_call.return_data[0], 0, arg1, arg3, block.timestamp, msg.sender);
                        else:
                            call wittyAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit Withdraw(ext_call.return_data[0], arg2, arg1, arg3, block.timestamp, msg.sender);
                    else:
                        if not arg2:
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not arg2:
                                emit Charges(0, arg1, arg3, block.timestamp, msg.sender);
                            else:
                                if 20 * arg2 / arg2 != 20:
                                    revert with 0, 32, 33, 0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                emit Charges(20 * arg2 / 100, arg1, arg3, block.timestamp, msg.sender);
                            sub_c416d075[msg.sender][arg1][arg3].field_768 = 0
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit Withdraw(ext_call.return_data[0], arg2, arg1, arg3, block.timestamp, msg.sender);
                        else:
                            if 20 * arg2 / arg2 != 20:
                                revert with 0, 32, 33, 0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if 20 * arg2 / 100 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not arg2:
                                emit Charges(0, arg1, arg3, block.timestamp, msg.sender);
                            else:
                                if 20 * arg2 / arg2 != 20:
                                    revert with 0, 32, 33, 0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                emit Charges(20 * arg2 / 100, arg1, arg3, block.timestamp, msg.sender);
                            sub_c416d075[msg.sender][arg1][arg3].field_768 = 0
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, arg2 - (20 * arg2 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit Withdraw(ext_call.return_data[0], arg2 - (20 * arg2 / 100), arg1, arg3, block.timestamp, msg.sender);
    else:
        if ext_call.return_data[0] + sub_c416d075[msg.sender][arg1][arg3].field_512 < sub_c416d075[msg.sender][arg1][arg3].field_512:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] + sub_c416d075[msg.sender][arg1][arg3].field_512 <= ext_call.return_data[32]:
            if ext_call.return_data[0] + sub_c416d075[msg.sender][arg1][arg3].field_512 < sub_c416d075[msg.sender][arg1][arg3].field_512:
                revert with 0, 'SafeMath: addition overflow'
            sub_c416d075[msg.sender][arg1][arg3].field_512 += ext_call.return_data[0]
            require ext_code.size(wittyAddress)
            call wittyAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg2:
                emit Withdraw(ext_call.return_data[0], ext_call.return_data[32], arg1, arg3, block.timestamp, msg.sender);
            else:
                if arg2 > sub_c416d075[msg.sender][arg1][arg3].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_c416d075[msg.sender][arg1][arg3].field_0 -= arg2
                if sub_c416d075[msg.sender][arg1][arg3].field_256 + (2160 * 24 * 3600) < sub_c416d075[msg.sender][arg1][arg3].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if block.timestamp < sub_c416d075[msg.sender][arg1][arg3].field_256 + (2160 * 24 * 3600):
                    if not arg2:
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg2:
                            emit Charges(0, arg1, arg3, block.timestamp, msg.sender);
                        else:
                            if 50 * arg2 / arg2 != 50:
                                revert with 0, 32, 33, 0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            emit Charges(50 * arg2 / 100, arg1, arg3, block.timestamp, msg.sender);
                        sub_c416d075[msg.sender][arg1][arg3].field_768 = 0
                        require ext_code.size(wittyAddress)
                        call wittyAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit Withdraw(ext_call.return_data[0], arg2, arg1, arg3, block.timestamp, msg.sender);
                    else:
                        if 50 * arg2 / arg2 != 50:
                            revert with 0, 32, 33, 0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if 50 * arg2 / 100 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg2:
                            emit Charges(0, arg1, arg3, block.timestamp, msg.sender);
                        else:
                            if 50 * arg2 / arg2 != 50:
                                revert with 0, 32, 33, 0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            emit Charges(50 * arg2 / 100, arg1, arg3, block.timestamp, msg.sender);
                        sub_c416d075[msg.sender][arg1][arg3].field_768 = 0
                        require ext_code.size(wittyAddress)
                        call wittyAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg2 - (50 * arg2 / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit Withdraw(ext_call.return_data[0], arg2 - (50 * arg2 / 100), arg1, arg3, block.timestamp, msg.sender);
                else:
                    if sub_c416d075[msg.sender][arg1][arg3].field_256 + (5760 * 24 * 3600) < sub_c416d075[msg.sender][arg1][arg3].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp < sub_c416d075[msg.sender][arg1][arg3].field_256 + (5760 * 24 * 3600):
                        if not arg2:
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not arg2:
                                emit Charges(0, arg1, arg3, block.timestamp, msg.sender);
                            else:
                                if 30 * arg2 / arg2 != 30:
                                    revert with 0, 32, 33, 0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                emit Charges(30 * arg2 / 100, arg1, arg3, block.timestamp, msg.sender);
                            sub_c416d075[msg.sender][arg1][arg3].field_768 = 0
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit Withdraw(ext_call.return_data[0], arg2, arg1, arg3, block.timestamp, msg.sender);
                        else:
                            if 30 * arg2 / arg2 != 30:
                                revert with 0, 32, 33, 0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if 30 * arg2 / 100 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not arg2:
                                emit Charges(0, arg1, arg3, block.timestamp, msg.sender);
                            else:
                                if 30 * arg2 / arg2 != 30:
                                    revert with 0, 32, 33, 0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                emit Charges(30 * arg2 / 100, arg1, arg3, block.timestamp, msg.sender);
                            sub_c416d075[msg.sender][arg1][arg3].field_768 = 0
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, arg2 - (30 * arg2 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit Withdraw(ext_call.return_data[0], arg2 - (30 * arg2 / 100), arg1, arg3, block.timestamp, msg.sender);
                    else:
                        if sub_c416d075[msg.sender][arg1][arg3].field_256 + (8760 * 24 * 3600) < sub_c416d075[msg.sender][arg1][arg3].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.timestamp >= sub_c416d075[msg.sender][arg1][arg3].field_256 + (8760 * 24 * 3600):
                            if sub_c416d075[msg.sender][arg1][arg3].field_256 + (8760 * 24 * 3600) < sub_c416d075[msg.sender][arg1][arg3].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_c416d075[msg.sender][arg1][arg3].field_768 = 0
                            require ext_code.size(wittyAddress)
                            if block.timestamp <= sub_c416d075[msg.sender][arg1][arg3].field_256 + (8760 * 24 * 3600):
                                call wittyAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw(ext_call.return_data[0], 0, arg1, arg3, block.timestamp, msg.sender);
                            else:
                                call wittyAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw(ext_call.return_data[0], arg2, arg1, arg3, block.timestamp, msg.sender);
                        else:
                            if not arg2:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not arg2:
                                    emit Charges(0, arg1, arg3, block.timestamp, msg.sender);
                                else:
                                    if 20 * arg2 / arg2 != 20:
                                        revert with 0, 32, 33, 0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    emit Charges(20 * arg2 / 100, arg1, arg3, block.timestamp, msg.sender);
                                sub_c416d075[msg.sender][arg1][arg3].field_768 = 0
                                require ext_code.size(wittyAddress)
                                call wittyAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw(ext_call.return_data[0], arg2, arg1, arg3, block.timestamp, msg.sender);
                            else:
                                if 20 * arg2 / arg2 != 20:
                                    revert with 0, 32, 33, 0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if 20 * arg2 / 100 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not arg2:
                                    emit Charges(0, arg1, arg3, block.timestamp, msg.sender);
                                else:
                                    if 20 * arg2 / arg2 != 20:
                                        revert with 0, 32, 33, 0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    emit Charges(20 * arg2 / 100, arg1, arg3, block.timestamp, msg.sender);
                                sub_c416d075[msg.sender][arg1][arg3].field_768 = 0
                                require ext_code.size(wittyAddress)
                                call wittyAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2 - (20 * arg2 / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw(ext_call.return_data[0], arg2 - (20 * arg2 / 100), arg1, arg3, block.timestamp, msg.sender);
        else:
            if sub_c416d075[msg.sender][arg1][arg3].field_512 > ext_call.return_data[32]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[32] < sub_c416d075[msg.sender][arg1][arg3].field_512:
                revert with 0, 'SafeMath: addition overflow'
            sub_c416d075[msg.sender][arg1][arg3].field_512 = ext_call.return_data[32]
            require ext_code.size(wittyAddress)
            call wittyAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[32] - sub_c416d075[msg.sender][arg1][arg3].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg2:
                emit Withdraw(ext_call.return_data[32] - sub_c416d075[msg.sender][arg1][arg3].field_512, 0, arg1, arg3, block.timestamp, msg.sender);
            else:
                if arg2 > sub_c416d075[msg.sender][arg1][arg3].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_c416d075[msg.sender][arg1][arg3].field_0 -= arg2
                if sub_c416d075[msg.sender][arg1][arg3].field_256 + (2160 * 24 * 3600) < sub_c416d075[msg.sender][arg1][arg3].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if block.timestamp < sub_c416d075[msg.sender][arg1][arg3].field_256 + (2160 * 24 * 3600):
                    if not arg2:
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg2:
                            emit Charges(0, arg1, arg3, block.timestamp, msg.sender);
                        else:
                            if 50 * arg2 / arg2 != 50:
                                revert with 0, 32, 33, 0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            emit Charges(50 * arg2 / 100, arg1, arg3, block.timestamp, msg.sender);
                        sub_c416d075[msg.sender][arg1][arg3].field_768 = 0
                        require ext_code.size(wittyAddress)
                        call wittyAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit Withdraw(ext_call.return_data[32] - sub_c416d075[msg.sender][arg1][arg3].field_512, arg2, arg1, arg3, block.timestamp, msg.sender);
                    else:
                        if 50 * arg2 / arg2 != 50:
                            revert with 0, 32, 33, 0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if 50 * arg2 / 100 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg2:
                            emit Charges(0, arg1, arg3, block.timestamp, msg.sender);
                        else:
                            if 50 * arg2 / arg2 != 50:
                                revert with 0, 32, 33, 0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            emit Charges(50 * arg2 / 100, arg1, arg3, block.timestamp, msg.sender);
                        sub_c416d075[msg.sender][arg1][arg3].field_768 = 0
                        require ext_code.size(wittyAddress)
                        call wittyAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg2 - (50 * arg2 / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit Withdraw(ext_call.return_data[32] - sub_c416d075[msg.sender][arg1][arg3].field_512, arg2 - (50 * arg2 / 100), arg1, arg3, block.timestamp, msg.sender);
                else:
                    if sub_c416d075[msg.sender][arg1][arg3].field_256 + (5760 * 24 * 3600) < sub_c416d075[msg.sender][arg1][arg3].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp < sub_c416d075[msg.sender][arg1][arg3].field_256 + (5760 * 24 * 3600):
                        if not arg2:
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not arg2:
                                emit Charges(0, arg1, arg3, block.timestamp, msg.sender);
                            else:
                                if 30 * arg2 / arg2 != 30:
                                    revert with 0, 32, 33, 0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                emit Charges(30 * arg2 / 100, arg1, arg3, block.timestamp, msg.sender);
                            sub_c416d075[msg.sender][arg1][arg3].field_768 = 0
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit Withdraw(ext_call.return_data[32] - sub_c416d075[msg.sender][arg1][arg3].field_512, arg2, arg1, arg3, block.timestamp, msg.sender);
                        else:
                            if 30 * arg2 / arg2 != 30:
                                revert with 0, 32, 33, 0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if 30 * arg2 / 100 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not arg2:
                                emit Charges(0, arg1, arg3, block.timestamp, msg.sender);
                            else:
                                if 30 * arg2 / arg2 != 30:
                                    revert with 0, 32, 33, 0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                emit Charges(30 * arg2 / 100, arg1, arg3, block.timestamp, msg.sender);
                            sub_c416d075[msg.sender][arg1][arg3].field_768 = 0
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, arg2 - (30 * arg2 / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit Withdraw(ext_call.return_data[32] - sub_c416d075[msg.sender][arg1][arg3].field_512, arg2 - (30 * arg2 / 100), arg1, arg3, block.timestamp, msg.sender);
                    else:
                        if sub_c416d075[msg.sender][arg1][arg3].field_256 + (8760 * 24 * 3600) < sub_c416d075[msg.sender][arg1][arg3].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.timestamp >= sub_c416d075[msg.sender][arg1][arg3].field_256 + (8760 * 24 * 3600):
                            if sub_c416d075[msg.sender][arg1][arg3].field_256 + (8760 * 24 * 3600) < sub_c416d075[msg.sender][arg1][arg3].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_c416d075[msg.sender][arg1][arg3].field_768 = 0
                            require ext_code.size(wittyAddress)
                            if block.timestamp <= sub_c416d075[msg.sender][arg1][arg3].field_256 + (8760 * 24 * 3600):
                                call wittyAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw(ext_call.return_data[32] - sub_c416d075[msg.sender][arg1][arg3].field_512, 0, arg1, arg3, block.timestamp, msg.sender);
                            else:
                                call wittyAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw(ext_call.return_data[32] - sub_c416d075[msg.sender][arg1][arg3].field_512, arg2, arg1, arg3, block.timestamp, msg.sender);
                        else:
                            if not arg2:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not arg2:
                                    emit Charges(0, arg1, arg3, block.timestamp, msg.sender);
                                else:
                                    if 20 * arg2 / arg2 != 20:
                                        revert with 0, 32, 33, 0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    emit Charges(20 * arg2 / 100, arg1, arg3, block.timestamp, msg.sender);
                                sub_c416d075[msg.sender][arg1][arg3].field_768 = 0
                                require ext_code.size(wittyAddress)
                                call wittyAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw(ext_call.return_data[32] - sub_c416d075[msg.sender][arg1][arg3].field_512, arg2, arg1, arg3, block.timestamp, msg.sender);
                            else:
                                if 20 * arg2 / arg2 != 20:
                                    revert with 0, 32, 33, 0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if 20 * arg2 / 100 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not arg2:
                                    emit Charges(0, arg1, arg3, block.timestamp, msg.sender);
                                else:
                                    if 20 * arg2 / arg2 != 20:
                                        revert with 0, 32, 33, 0x35536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    emit Charges(20 * arg2 / 100, arg1, arg3, block.timestamp, msg.sender);
                                sub_c416d075[msg.sender][arg1][arg3].field_768 = 0
                                require ext_code.size(wittyAddress)
                                call wittyAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, arg2 - (20 * arg2 / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit Withdraw(ext_call.return_data[32] - sub_c416d075[msg.sender][arg1][arg3].field_512, arg2 - (20 * arg2 / 100), arg1, arg3, block.timestamp, msg.sender);
}

function sub_09bcec92(?) payable {
    require calldata.size - 4 >= 192
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[64] = (32 * arg4.length) + (32 * arg5.length) + 160
    mem[(32 * arg4.length) + 128] = arg5.length
    mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg4.length) + (32 * arg5.length) + 160] = 0
    if stor4:
        revert with 0, 'Witty: Contract Locked'
    if uint32(ext_code.size(msg.sender)):
        revert with 0, 'Witty: Invalid address'
    if arg2 > 0:
        if arg1 <= 0:
            revert with 0, 'Incorrect plan'
        if arg1 > 5:
            revert with 0, 'Incorrect plan'
        if arg4.length != arg5.length:
            revert with 0, 'Referer and commsiion mis match'
        if not arg6:
            if not viewReferer[msg.sender].field_1024:
                sub_2f101ad3[msg.sender][arg1]++
                if arg6 != 1:
                    if arg6:
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4431 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4431
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4431
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5391 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5519 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5519
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5519, block.timestamp, address(_5391));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4434 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4434
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4434
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5393 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5522 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5522
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5522, block.timestamp, address(_5393));
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor1) != 1:
                            revert with 0, 'Incorrect Amount'
                        if arg2 != sub_79a3dfe8[arg1]:
                            revert with 0, 'Incorrect Amount'
                        sub_c416d075[msg.sender][arg1][stor13[msg.sender][arg1] + 1].field_0 = arg2
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4437 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4437
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4437
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5395 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5525 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5525
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5525, block.timestamp, address(_5395));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4440 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4440
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4440
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5397 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5528 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5528
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5528, block.timestamp, address(_5397));
                                idx = idx + 1
                                continue 
                else:
                    if not viewReferer[msg.sender].field_512:
                        revert with 0, 'No incentive amount'
                    if 5 == arg1:
                        revert with 0, 
                                    32,
                                    37,
                                    0x65496e63656e7469766520616d6f756e742063616e27742075736520666f7220706c616e20,
                                    mem[(32 * arg4.length) + (32 * arg5.length) + 265 len 27]
                    if arg2 + viewReferer[msg.sender].field_512 < viewReferer[msg.sender].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg2 + viewReferer[msg.sender].field_512 < sub_79a3dfe8[arg1]:
                        revert with 0, 'insufficeient'
                    if viewReferer[msg.sender].field_768 + (720 * 24 * 3600) < viewReferer[msg.sender].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp >= viewReferer[msg.sender].field_768 + (720 * 24 * 3600):
                        if viewReferer[msg.sender].field_512 + adminWallet < adminWallet:
                            revert with 0, 'SafeMath: addition overflow'
                        adminWallet += viewReferer[msg.sender].field_512
                        viewReferer[msg.sender].field_512 = 0
                        if arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg2 < sub_79a3dfe8[arg1]:
                            revert with 0, 'insufficeient amount in flag 1'
                        sub_c416d075[msg.sender][arg1][stor13[msg.sender][arg1] + 1].field_0 = sub_79a3dfe8[arg1]
                        stor14[msg.sender][stor10[msg.sender].field_2048] = 1
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4443 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4443
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4443
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5399 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5531 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5531
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5531, block.timestamp, address(_5399));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4446 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4446
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4446
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5401 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5534 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5534
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5534, block.timestamp, address(_5401));
                                idx = idx + 1
                                continue 
                    else:
                        if arg2 + viewReferer[msg.sender].field_512 < viewReferer[msg.sender].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = (32 * arg4.length) + (32 * arg5.length) + 224
                        mem[(32 * arg4.length) + (32 * arg5.length) + 160] = 30
                        mem[(32 * arg4.length) + (32 * arg5.length) + 192] = 'SafeMath: subtraction overflow'
                        if sub_79a3dfe8[arg1] > arg2 + viewReferer[msg.sender].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        viewReferer[address(msg.sender)].field_512 = arg2 + viewReferer[msg.sender].field_512 - sub_79a3dfe8[arg1]
                        sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_0 = sub_79a3dfe8[arg1]
                        stor14[msg.sender][stor10[msg.sender].field_2048] = 1
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4449 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4449
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4449
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5403 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5537 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5537
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5537, block.timestamp, address(_5403));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 260] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 292] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4452 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4452
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4452
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5405 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5540 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5540
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5540, block.timestamp, address(_5405));
                                idx = idx + 1
                                continue 
            else:
                if viewReferer[msg.sender].field_1024 != arg3:
                    revert with 0, 
                                32,
                                45,
                                0xfe50726576696f7573207265666572657220616e642063757272656e742072656665726572206e6f742073616d,
                                mem[(32 * arg4.length) + (32 * arg5.length) + 273 len 19]
                sub_2f101ad3[msg.sender][arg1]++
                if arg6 != 1:
                    if arg6:
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4455 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4455
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4455
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5407 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5543 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5543
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5543, block.timestamp, address(_5407));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4458 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4458
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4458
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5409 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5546 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5546
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5546, block.timestamp, address(_5409));
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor1) != 1:
                            revert with 0, 'Incorrect Amount'
                        if arg2 != sub_79a3dfe8[arg1]:
                            revert with 0, 'Incorrect Amount'
                        sub_c416d075[msg.sender][arg1][stor13[msg.sender][arg1] + 1].field_0 = arg2
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4461 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4461
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4461
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5411 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5549 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5549
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5549, block.timestamp, address(_5411));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4464 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4464
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4464
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5413 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5552 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5552
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5552, block.timestamp, address(_5413));
                                idx = idx + 1
                                continue 
                else:
                    if not viewReferer[msg.sender].field_512:
                        revert with 0, 'No incentive amount'
                    if 5 == arg1:
                        revert with 0, 
                                    32,
                                    37,
                                    0x65496e63656e7469766520616d6f756e742063616e27742075736520666f7220706c616e20,
                                    mem[(32 * arg4.length) + (32 * arg5.length) + 265 len 27]
                    if arg2 + viewReferer[msg.sender].field_512 < viewReferer[msg.sender].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg2 + viewReferer[msg.sender].field_512 < sub_79a3dfe8[arg1]:
                        revert with 0, 'insufficeient'
                    if viewReferer[msg.sender].field_768 + (720 * 24 * 3600) < viewReferer[msg.sender].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp >= viewReferer[msg.sender].field_768 + (720 * 24 * 3600):
                        if viewReferer[msg.sender].field_512 + adminWallet < adminWallet:
                            revert with 0, 'SafeMath: addition overflow'
                        adminWallet += viewReferer[msg.sender].field_512
                        viewReferer[msg.sender].field_512 = 0
                        if arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg2 < sub_79a3dfe8[arg1]:
                            revert with 0, 'insufficeient amount in flag 1'
                        sub_c416d075[msg.sender][arg1][stor13[msg.sender][arg1] + 1].field_0 = sub_79a3dfe8[arg1]
                        stor14[msg.sender][stor10[msg.sender].field_2048] = 1
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4467 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4467
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4467
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5415 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5555 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5555
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5555, block.timestamp, address(_5415));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4470 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4470
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4470
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5417 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5558 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5558
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5558, block.timestamp, address(_5417));
                                idx = idx + 1
                                continue 
                    else:
                        if arg2 + viewReferer[msg.sender].field_512 < viewReferer[msg.sender].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = (32 * arg4.length) + (32 * arg5.length) + 224
                        mem[(32 * arg4.length) + (32 * arg5.length) + 160] = 30
                        mem[(32 * arg4.length) + (32 * arg5.length) + 192] = 'SafeMath: subtraction overflow'
                        if sub_79a3dfe8[arg1] > arg2 + viewReferer[msg.sender].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        viewReferer[address(msg.sender)].field_512 = arg2 + viewReferer[msg.sender].field_512 - sub_79a3dfe8[arg1]
                        sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_0 = sub_79a3dfe8[arg1]
                        stor14[msg.sender][stor10[msg.sender].field_2048] = 1
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4473 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4473
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4473
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5419 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5561 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5561
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5561, block.timestamp, address(_5419));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 260] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 292] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4476 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4476
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4476
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5421 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5564 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5564
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5564, block.timestamp, address(_5421));
                                idx = idx + 1
                                continue 
        else:
            if arg6 != 1:
                revert with 0, 'Incorrect'
            if not viewReferer[msg.sender].field_1024:
                sub_2f101ad3[msg.sender][arg1]++
                if arg6 != 1:
                    if arg6:
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4479 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4479
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4479
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5423 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5567 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5567
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5567, block.timestamp, address(_5423));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4482 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4482
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4482
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5425 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5570 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5570
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5570, block.timestamp, address(_5425));
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor1) != 1:
                            revert with 0, 'Incorrect Amount'
                        if arg2 != sub_79a3dfe8[arg1]:
                            revert with 0, 'Incorrect Amount'
                        sub_c416d075[msg.sender][arg1][stor13[msg.sender][arg1] + 1].field_0 = arg2
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4485 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4485
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4485
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5427 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5573 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5573
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5573, block.timestamp, address(_5427));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4488 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4488
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4488
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5429 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5576 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5576
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5576, block.timestamp, address(_5429));
                                idx = idx + 1
                                continue 
                else:
                    if not viewReferer[msg.sender].field_512:
                        revert with 0, 'No incentive amount'
                    if 5 == arg1:
                        revert with 0, 
                                    32,
                                    37,
                                    0x65496e63656e7469766520616d6f756e742063616e27742075736520666f7220706c616e20,
                                    mem[(32 * arg4.length) + (32 * arg5.length) + 265 len 27]
                    if arg2 + viewReferer[msg.sender].field_512 < viewReferer[msg.sender].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg2 + viewReferer[msg.sender].field_512 < sub_79a3dfe8[arg1]:
                        revert with 0, 'insufficeient'
                    if viewReferer[msg.sender].field_768 + (720 * 24 * 3600) < viewReferer[msg.sender].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp >= viewReferer[msg.sender].field_768 + (720 * 24 * 3600):
                        if viewReferer[msg.sender].field_512 + adminWallet < adminWallet:
                            revert with 0, 'SafeMath: addition overflow'
                        adminWallet += viewReferer[msg.sender].field_512
                        viewReferer[msg.sender].field_512 = 0
                        if arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg2 < sub_79a3dfe8[arg1]:
                            revert with 0, 'insufficeient amount in flag 1'
                        sub_c416d075[msg.sender][arg1][stor13[msg.sender][arg1] + 1].field_0 = sub_79a3dfe8[arg1]
                        stor14[msg.sender][stor10[msg.sender].field_2048] = 1
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4491 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4491
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4491
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5431 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5579 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5579
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5579, block.timestamp, address(_5431));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4494 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4494
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4494
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5433 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5582 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5582
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5582, block.timestamp, address(_5433));
                                idx = idx + 1
                                continue 
                    else:
                        if arg2 + viewReferer[msg.sender].field_512 < viewReferer[msg.sender].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = (32 * arg4.length) + (32 * arg5.length) + 224
                        mem[(32 * arg4.length) + (32 * arg5.length) + 160] = 30
                        mem[(32 * arg4.length) + (32 * arg5.length) + 192] = 'SafeMath: subtraction overflow'
                        if sub_79a3dfe8[arg1] > arg2 + viewReferer[msg.sender].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        viewReferer[address(msg.sender)].field_512 = arg2 + viewReferer[msg.sender].field_512 - sub_79a3dfe8[arg1]
                        sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_0 = sub_79a3dfe8[arg1]
                        stor14[msg.sender][stor10[msg.sender].field_2048] = 1
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4497 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4497
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4497
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5435 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5585 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5585
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5585, block.timestamp, address(_5435));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 260] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 292] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4500 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4500
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4500
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5437 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5588 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5588
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5588, block.timestamp, address(_5437));
                                idx = idx + 1
                                continue 
            else:
                if viewReferer[msg.sender].field_1024 != arg3:
                    revert with 0, 
                                32,
                                45,
                                0xfe50726576696f7573207265666572657220616e642063757272656e742072656665726572206e6f742073616d,
                                mem[(32 * arg4.length) + (32 * arg5.length) + 273 len 19]
                sub_2f101ad3[msg.sender][arg1]++
                if arg6 != 1:
                    if arg6:
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4503 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4503
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4503
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5439 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5591 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5591
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5591, block.timestamp, address(_5439));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4506 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4506
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4506
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5441 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5594 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5594
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5594, block.timestamp, address(_5441));
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor1) != 1:
                            revert with 0, 'Incorrect Amount'
                        if arg2 != sub_79a3dfe8[arg1]:
                            revert with 0, 'Incorrect Amount'
                        sub_c416d075[msg.sender][arg1][stor13[msg.sender][arg1] + 1].field_0 = arg2
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4509 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4509
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4509
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5443 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5597 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5597
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5597, block.timestamp, address(_5443));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4512 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4512
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4512
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5445 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5600 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5600
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5600, block.timestamp, address(_5445));
                                idx = idx + 1
                                continue 
                else:
                    if not viewReferer[msg.sender].field_512:
                        revert with 0, 'No incentive amount'
                    if 5 == arg1:
                        revert with 0, 
                                    32,
                                    37,
                                    0x65496e63656e7469766520616d6f756e742063616e27742075736520666f7220706c616e20,
                                    mem[(32 * arg4.length) + (32 * arg5.length) + 265 len 27]
                    if arg2 + viewReferer[msg.sender].field_512 < viewReferer[msg.sender].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg2 + viewReferer[msg.sender].field_512 < sub_79a3dfe8[arg1]:
                        revert with 0, 'insufficeient'
                    if viewReferer[msg.sender].field_768 + (720 * 24 * 3600) < viewReferer[msg.sender].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp >= viewReferer[msg.sender].field_768 + (720 * 24 * 3600):
                        if viewReferer[msg.sender].field_512 + adminWallet < adminWallet:
                            revert with 0, 'SafeMath: addition overflow'
                        adminWallet += viewReferer[msg.sender].field_512
                        viewReferer[msg.sender].field_512 = 0
                        if arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg2 < sub_79a3dfe8[arg1]:
                            revert with 0, 'insufficeient amount in flag 1'
                        sub_c416d075[msg.sender][arg1][stor13[msg.sender][arg1] + 1].field_0 = sub_79a3dfe8[arg1]
                        stor14[msg.sender][stor10[msg.sender].field_2048] = 1
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4515 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4515
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4515
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5447 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5603 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5603
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5603, block.timestamp, address(_5447));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4518 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4518
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4518
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5449 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5606 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5606
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5606, block.timestamp, address(_5449));
                                idx = idx + 1
                                continue 
                    else:
                        if arg2 + viewReferer[msg.sender].field_512 < viewReferer[msg.sender].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = (32 * arg4.length) + (32 * arg5.length) + 224
                        mem[(32 * arg4.length) + (32 * arg5.length) + 160] = 30
                        mem[(32 * arg4.length) + (32 * arg5.length) + 192] = 'SafeMath: subtraction overflow'
                        if sub_79a3dfe8[arg1] > arg2 + viewReferer[msg.sender].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        viewReferer[address(msg.sender)].field_512 = arg2 + viewReferer[msg.sender].field_512 - sub_79a3dfe8[arg1]
                        sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_0 = sub_79a3dfe8[arg1]
                        stor14[msg.sender][stor10[msg.sender].field_2048] = 1
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4521 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4521
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4521
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5451 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5609 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5609
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5609, block.timestamp, address(_5451));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 260] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 292] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4524 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4524
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4524
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5453 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5612 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5612
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5612, block.timestamp, address(_5453));
                                idx = idx + 1
                                continue 
    else:
        if viewReferer[msg.sender].field_512 < sub_79a3dfe8[arg1]:
            revert with 0, 'Incorrect values'
        if arg1 <= 0:
            revert with 0, 'Incorrect plan'
        if arg1 > 5:
            revert with 0, 'Incorrect plan'
        if arg4.length != arg5.length:
            revert with 0, 'Referer and commsiion mis match'
        if not arg6:
            if not viewReferer[msg.sender].field_1024:
                sub_2f101ad3[msg.sender][arg1]++
                if arg6 != 1:
                    if arg6:
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4527 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4527
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4527
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5455 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5615 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5615
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5615, block.timestamp, address(_5455));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4530 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4530
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4530
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5457 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5618 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5618
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5618, block.timestamp, address(_5457));
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor1) != 1:
                            revert with 0, 'Incorrect Amount'
                        if arg2 != sub_79a3dfe8[arg1]:
                            revert with 0, 'Incorrect Amount'
                        sub_c416d075[msg.sender][arg1][stor13[msg.sender][arg1] + 1].field_0 = arg2
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4533 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4533
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4533
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5459 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5621 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5621
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5621, block.timestamp, address(_5459));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4536 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4536
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4536
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5461 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5624 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5624
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5624, block.timestamp, address(_5461));
                                idx = idx + 1
                                continue 
                else:
                    if not viewReferer[msg.sender].field_512:
                        revert with 0, 'No incentive amount'
                    if 5 == arg1:
                        revert with 0, 
                                    32,
                                    37,
                                    0x65496e63656e7469766520616d6f756e742063616e27742075736520666f7220706c616e20,
                                    mem[(32 * arg4.length) + (32 * arg5.length) + 265 len 27]
                    if arg2 + viewReferer[msg.sender].field_512 < viewReferer[msg.sender].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg2 + viewReferer[msg.sender].field_512 < sub_79a3dfe8[arg1]:
                        revert with 0, 'insufficeient'
                    if viewReferer[msg.sender].field_768 + (720 * 24 * 3600) < viewReferer[msg.sender].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp >= viewReferer[msg.sender].field_768 + (720 * 24 * 3600):
                        if viewReferer[msg.sender].field_512 + adminWallet < adminWallet:
                            revert with 0, 'SafeMath: addition overflow'
                        adminWallet += viewReferer[msg.sender].field_512
                        viewReferer[msg.sender].field_512 = 0
                        if arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg2 < sub_79a3dfe8[arg1]:
                            revert with 0, 'insufficeient amount in flag 1'
                        sub_c416d075[msg.sender][arg1][stor13[msg.sender][arg1] + 1].field_0 = sub_79a3dfe8[arg1]
                        stor14[msg.sender][stor10[msg.sender].field_2048] = 1
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4539 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4539
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4539
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5463 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5627 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5627
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5627, block.timestamp, address(_5463));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4542 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4542
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4542
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5465 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5630 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5630
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5630, block.timestamp, address(_5465));
                                idx = idx + 1
                                continue 
                    else:
                        if arg2 + viewReferer[msg.sender].field_512 < viewReferer[msg.sender].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = (32 * arg4.length) + (32 * arg5.length) + 224
                        mem[(32 * arg4.length) + (32 * arg5.length) + 160] = 30
                        mem[(32 * arg4.length) + (32 * arg5.length) + 192] = 'SafeMath: subtraction overflow'
                        if sub_79a3dfe8[arg1] > arg2 + viewReferer[msg.sender].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        viewReferer[address(msg.sender)].field_512 = arg2 + viewReferer[msg.sender].field_512 - sub_79a3dfe8[arg1]
                        sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_0 = sub_79a3dfe8[arg1]
                        stor14[msg.sender][stor10[msg.sender].field_2048] = 1
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4545 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4545
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4545
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5467 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5633 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5633
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5633, block.timestamp, address(_5467));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 260] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 292] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4548 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4548
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4548
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5469 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5636 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5636
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5636, block.timestamp, address(_5469));
                                idx = idx + 1
                                continue 
            else:
                if viewReferer[msg.sender].field_1024 != arg3:
                    revert with 0, 
                                32,
                                45,
                                0xfe50726576696f7573207265666572657220616e642063757272656e742072656665726572206e6f742073616d,
                                mem[(32 * arg4.length) + (32 * arg5.length) + 273 len 19]
                sub_2f101ad3[msg.sender][arg1]++
                if arg6 != 1:
                    if arg6:
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4551 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4551
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4551
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5471 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5639 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5639
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5639, block.timestamp, address(_5471));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4554 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4554
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4554
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5473 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5642 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5642
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5642, block.timestamp, address(_5473));
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor1) != 1:
                            revert with 0, 'Incorrect Amount'
                        if arg2 != sub_79a3dfe8[arg1]:
                            revert with 0, 'Incorrect Amount'
                        sub_c416d075[msg.sender][arg1][stor13[msg.sender][arg1] + 1].field_0 = arg2
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4557 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4557
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4557
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5475 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5645 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5645
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5645, block.timestamp, address(_5475));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4560 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4560
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4560
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5477 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5648 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5648
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5648, block.timestamp, address(_5477));
                                idx = idx + 1
                                continue 
                else:
                    if not viewReferer[msg.sender].field_512:
                        revert with 0, 'No incentive amount'
                    if 5 == arg1:
                        revert with 0, 
                                    32,
                                    37,
                                    0x65496e63656e7469766520616d6f756e742063616e27742075736520666f7220706c616e20,
                                    mem[(32 * arg4.length) + (32 * arg5.length) + 265 len 27]
                    if arg2 + viewReferer[msg.sender].field_512 < viewReferer[msg.sender].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg2 + viewReferer[msg.sender].field_512 < sub_79a3dfe8[arg1]:
                        revert with 0, 'insufficeient'
                    if viewReferer[msg.sender].field_768 + (720 * 24 * 3600) < viewReferer[msg.sender].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp >= viewReferer[msg.sender].field_768 + (720 * 24 * 3600):
                        if viewReferer[msg.sender].field_512 + adminWallet < adminWallet:
                            revert with 0, 'SafeMath: addition overflow'
                        adminWallet += viewReferer[msg.sender].field_512
                        viewReferer[msg.sender].field_512 = 0
                        if arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg2 < sub_79a3dfe8[arg1]:
                            revert with 0, 'insufficeient amount in flag 1'
                        sub_c416d075[msg.sender][arg1][stor13[msg.sender][arg1] + 1].field_0 = sub_79a3dfe8[arg1]
                        stor14[msg.sender][stor10[msg.sender].field_2048] = 1
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4563 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4563
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4563
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5479 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5651 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5651
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5651, block.timestamp, address(_5479));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4566 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4566
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4566
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5481 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5654 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5654
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5654, block.timestamp, address(_5481));
                                idx = idx + 1
                                continue 
                    else:
                        if arg2 + viewReferer[msg.sender].field_512 < viewReferer[msg.sender].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = (32 * arg4.length) + (32 * arg5.length) + 224
                        mem[(32 * arg4.length) + (32 * arg5.length) + 160] = 30
                        mem[(32 * arg4.length) + (32 * arg5.length) + 192] = 'SafeMath: subtraction overflow'
                        if sub_79a3dfe8[arg1] > arg2 + viewReferer[msg.sender].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        viewReferer[address(msg.sender)].field_512 = arg2 + viewReferer[msg.sender].field_512 - sub_79a3dfe8[arg1]
                        sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_0 = sub_79a3dfe8[arg1]
                        stor14[msg.sender][stor10[msg.sender].field_2048] = 1
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4569 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4569
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4569
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5483 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5657 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5657
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5657, block.timestamp, address(_5483));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 260] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 292] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4572 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4572
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4572
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5485 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5660 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5660
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5660, block.timestamp, address(_5485));
                                idx = idx + 1
                                continue 
        else:
            if arg6 != 1:
                revert with 0, 'Incorrect'
            if not viewReferer[msg.sender].field_1024:
                sub_2f101ad3[msg.sender][arg1]++
                if arg6 != 1:
                    if arg6:
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4575 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4575
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4575
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5487 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5663 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5663
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5663, block.timestamp, address(_5487));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4578 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4578
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4578
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5489 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5666 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5666
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5666, block.timestamp, address(_5489));
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor1) != 1:
                            revert with 0, 'Incorrect Amount'
                        if arg2 != sub_79a3dfe8[arg1]:
                            revert with 0, 'Incorrect Amount'
                        sub_c416d075[msg.sender][arg1][stor13[msg.sender][arg1] + 1].field_0 = arg2
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4581 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4581
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4581
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5491 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5669 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5669
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5669, block.timestamp, address(_5491));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4584 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4584
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4584
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5493 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5672 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5672
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5672, block.timestamp, address(_5493));
                                idx = idx + 1
                                continue 
                else:
                    if not viewReferer[msg.sender].field_512:
                        revert with 0, 'No incentive amount'
                    if 5 == arg1:
                        revert with 0, 
                                    32,
                                    37,
                                    0x65496e63656e7469766520616d6f756e742063616e27742075736520666f7220706c616e20,
                                    mem[(32 * arg4.length) + (32 * arg5.length) + 265 len 27]
                    if arg2 + viewReferer[msg.sender].field_512 < viewReferer[msg.sender].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg2 + viewReferer[msg.sender].field_512 < sub_79a3dfe8[arg1]:
                        revert with 0, 'insufficeient'
                    if viewReferer[msg.sender].field_768 + (720 * 24 * 3600) < viewReferer[msg.sender].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp >= viewReferer[msg.sender].field_768 + (720 * 24 * 3600):
                        if viewReferer[msg.sender].field_512 + adminWallet < adminWallet:
                            revert with 0, 'SafeMath: addition overflow'
                        adminWallet += viewReferer[msg.sender].field_512
                        viewReferer[msg.sender].field_512 = 0
                        if arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg2 < sub_79a3dfe8[arg1]:
                            revert with 0, 'insufficeient amount in flag 1'
                        sub_c416d075[msg.sender][arg1][stor13[msg.sender][arg1] + 1].field_0 = sub_79a3dfe8[arg1]
                        stor14[msg.sender][stor10[msg.sender].field_2048] = 1
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4587 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4587
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4587
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5495 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5675 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5675
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5675, block.timestamp, address(_5495));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4590 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4590
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4590
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5497 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5678 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5678
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5678, block.timestamp, address(_5497));
                                idx = idx + 1
                                continue 
                    else:
                        if arg2 + viewReferer[msg.sender].field_512 < viewReferer[msg.sender].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = (32 * arg4.length) + (32 * arg5.length) + 224
                        mem[(32 * arg4.length) + (32 * arg5.length) + 160] = 30
                        mem[(32 * arg4.length) + (32 * arg5.length) + 192] = 'SafeMath: subtraction overflow'
                        if sub_79a3dfe8[arg1] > arg2 + viewReferer[msg.sender].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        viewReferer[address(msg.sender)].field_512 = arg2 + viewReferer[msg.sender].field_512 - sub_79a3dfe8[arg1]
                        sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_0 = sub_79a3dfe8[arg1]
                        stor14[msg.sender][stor10[msg.sender].field_2048] = 1
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4593 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4593
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4593
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5499 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5681 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5681
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5681, block.timestamp, address(_5499));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 260] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 292] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4596 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4596
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4596
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5501 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5684 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5684
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5684, block.timestamp, address(_5501));
                                idx = idx + 1
                                continue 
            else:
                if viewReferer[msg.sender].field_1024 != arg3:
                    revert with 0, 
                                32,
                                45,
                                0xfe50726576696f7573207265666572657220616e642063757272656e742072656665726572206e6f742073616d,
                                mem[(32 * arg4.length) + (32 * arg5.length) + 273 len 19]
                sub_2f101ad3[msg.sender][arg1]++
                if arg6 != 1:
                    if arg6:
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4599 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4599
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4599
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5503 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5687 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5687
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5687, block.timestamp, address(_5503));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4602 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4602
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4602
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5505 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5690 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5690
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5690, block.timestamp, address(_5505));
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor1) != 1:
                            revert with 0, 'Incorrect Amount'
                        if arg2 != sub_79a3dfe8[arg1]:
                            revert with 0, 'Incorrect Amount'
                        sub_c416d075[msg.sender][arg1][stor13[msg.sender][arg1] + 1].field_0 = arg2
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4605 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4605
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4605
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5507 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5693 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5693
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5693, block.timestamp, address(_5507));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4608 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4608
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4608
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5509 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5696 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5696
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5696, block.timestamp, address(_5509));
                                idx = idx + 1
                                continue 
                else:
                    if not viewReferer[msg.sender].field_512:
                        revert with 0, 'No incentive amount'
                    if 5 == arg1:
                        revert with 0, 
                                    32,
                                    37,
                                    0x65496e63656e7469766520616d6f756e742063616e27742075736520666f7220706c616e20,
                                    mem[(32 * arg4.length) + (32 * arg5.length) + 265 len 27]
                    if arg2 + viewReferer[msg.sender].field_512 < viewReferer[msg.sender].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg2 + viewReferer[msg.sender].field_512 < sub_79a3dfe8[arg1]:
                        revert with 0, 'insufficeient'
                    if viewReferer[msg.sender].field_768 + (720 * 24 * 3600) < viewReferer[msg.sender].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp >= viewReferer[msg.sender].field_768 + (720 * 24 * 3600):
                        if viewReferer[msg.sender].field_512 + adminWallet < adminWallet:
                            revert with 0, 'SafeMath: addition overflow'
                        adminWallet += viewReferer[msg.sender].field_512
                        viewReferer[msg.sender].field_512 = 0
                        if arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg2 < sub_79a3dfe8[arg1]:
                            revert with 0, 'insufficeient amount in flag 1'
                        sub_c416d075[msg.sender][arg1][stor13[msg.sender][arg1] + 1].field_0 = sub_79a3dfe8[arg1]
                        stor14[msg.sender][stor10[msg.sender].field_2048] = 1
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4611 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4611
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4611
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5511 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5699 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5699
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5699, block.timestamp, address(_5511));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 164] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 196] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4614 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4614
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4614
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5513 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5702 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5702
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5702, block.timestamp, address(_5513));
                                idx = idx + 1
                                continue 
                    else:
                        if arg2 + viewReferer[msg.sender].field_512 < viewReferer[msg.sender].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[64] = (32 * arg4.length) + (32 * arg5.length) + 224
                        mem[(32 * arg4.length) + (32 * arg5.length) + 160] = 30
                        mem[(32 * arg4.length) + (32 * arg5.length) + 192] = 'SafeMath: subtraction overflow'
                        if sub_79a3dfe8[arg1] > arg2 + viewReferer[msg.sender].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        viewReferer[address(msg.sender)].field_512 = arg2 + viewReferer[msg.sender].field_512 - sub_79a3dfe8[arg1]
                        sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_0 = sub_79a3dfe8[arg1]
                        stor14[msg.sender][stor10[msg.sender].field_2048] = 1
                        if not arg2:
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4617 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4617
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4617
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5515 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5705 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5705
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5705, block.timestamp, address(_5515));
                                idx = idx + 1
                                continue 
                        else:
                            mem[(32 * arg4.length) + (32 * arg5.length) + 228] = msg.sender
                            mem[(32 * arg4.length) + (32 * arg5.length) + 260] = this.address
                            mem[(32 * arg4.length) + (32 * arg5.length) + 292] = arg2
                            require ext_code.size(wittyAddress)
                            call wittyAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, arg2
                            mem[(32 * arg4.length) + (32 * arg5.length) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            viewReferer[address(msg.sender)].field_0 = 1
                            viewReferer[address(msg.sender)].field_256 = currentId
                            currentId++
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_512 = 0
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_256 = block.timestamp
                            sub_c416d075[address(msg.sender)][arg1][stor13[msg.sender][arg1] + 1].field_768 = 1
                            viewReferer[address(msg.sender)].field_1024 = arg3
                            viewReferer[address(arg3)].field_1280++
                            stor[('array', 5, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'viewReferer', 10))) + viewReferer[address(arg3)].field_1280].field_0 = msg.sender
                            viewReferer[address(msg.sender)].field_2304 += sub_79a3dfe8[arg1]
                            viewReferer[address(msg.sender)].field_1792 = arg1
                            idx = 0
                            while idx < 3:
                                require idx < mem[96]
                                if mem[(32 * idx) + 140 len 20]:
                                    require idx < mem[96]
                                    if mem[(32 * idx) + 140 len 20] != msg.sender:
                                        require idx < mem[96]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _4620 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                        mem[mem[64] + 36] = _4620
                                        require ext_code.size(wittyAddress)
                                        call wittyAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], _4620
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[96]
                                        if mem[(32 * idx) + (32 * arg4.length) + 160] + viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 < viewReferer[mem[(32 * idx) + 140 len 20]].field_1536:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require idx < mem[96]
                                        mem[0] = mem[(32 * idx) + 140 len 20]
                                        mem[32] = 10
                                        viewReferer[mem[(32 * idx) + 140 len 20]].field_1536 += mem[(32 * idx) + (32 * arg4.length) + 160]
                                        require idx < mem[96]
                                        _5517 = mem[(32 * idx) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        _5708 = mem[(32 * idx) + (32 * arg4.length) + 160]
                                        mem[mem[64]] = arg1
                                        mem[mem[64] + 32] = _5708
                                        mem[mem[64] + 64] = block.timestamp
                                        emit ReferalCommission(arg1, _5708, block.timestamp, address(_5517));
                                idx = idx + 1
                                continue 
    if sub_79a3dfe8[arg1] + totalStake < totalStake:
        revert with 0, 'SafeMath: addition overflow'
    totalStake += sub_79a3dfe8[arg1]
    emit Stake(address(arg3), sub_c416d075[msg.sender][arg1][stor13[msg.sender][arg1] + 1].field_0, arg1, sub_2f101ad3[msg.sender][arg1] + 1, block.timestamp, msg.sender);
}



}
