contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
mapping of struct user;
array of uint256 sub_12fcdb52;
uint256 stor5;
array of uint256 total;
uint256 stor7;
uint256 reward;

function sub_12fcdb52(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 3
    return sub_12fcdb52[arg1]
}

function reward() payable {
    return reward
}

function user(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return user[arg1].field_0, user[arg1].field_256, user[arg1].field_512, user[arg1].field_768
}

function owner() payable {
    return owner
}

function total(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 2
    return total[arg1]
}

function token() payable {
    return tokenAddress
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

function setReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    reward = arg1
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = arg1
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

function sub_18640377(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(arg1) < 0:
        revert with 0, 'index should <= 2'
    if uint8(arg1) > 2:
        revert with 0, 'index should <= 2'
    if uint8(arg1) >= 3:
        revert with 'NH{q', 50
    sub_12fcdb52[uint8(arg1)] = arg2
}

function getReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not user[address(arg1)].field_0:
        return 0
    if block.timestamp <= user[address(arg1)].field_256:
        if block.timestamp < user[address(arg1)].field_512:
            revert with 'NH{q', 17
        if not stor5:
            revert with 'NH{q', 18
        if reward and block.timestamp - user[address(arg1)].field_512 / stor5 > -1 / reward:
            revert with 'NH{q', 17
        if user[address(arg1)].field_0 and reward * block.timestamp - user[address(arg1)].field_512 / stor5 > -1 / user[address(arg1)].field_0:
            revert with 'NH{q', 17
        if stor5 and block.timestamp - user[address(arg1)].field_512 / stor5 > -1 / stor5:
            revert with 'NH{q', 17
        return user[address(arg1)].field_0 * reward * block.timestamp - user[address(arg1)].field_512 / stor5 / 100 * 10^18, 
               stor5 * block.timestamp - user[address(arg1)].field_512 / stor5
    if user[address(arg1)].field_256 < user[address(arg1)].field_512:
        revert with 'NH{q', 17
    if not stor5:
        revert with 'NH{q', 18
    if reward and user[address(arg1)].field_256 - user[address(arg1)].field_512 / stor5 > -1 / reward:
        revert with 'NH{q', 17
    if user[address(arg1)].field_0 and reward * user[address(arg1)].field_256 - user[address(arg1)].field_512 / stor5 > -1 / user[address(arg1)].field_0:
        revert with 'NH{q', 17
    if stor5 and user[address(arg1)].field_256 - user[address(arg1)].field_512 / stor5 > -1 / stor5:
        revert with 'NH{q', 17
    return user[address(arg1)].field_0 * reward * user[address(arg1)].field_256 - user[address(arg1)].field_512 / stor5 / 100 * 10^18, 
           stor5 * user[address(arg1)].field_256 - user[address(arg1)].field_512 / stor5
}

function stake(uint256 arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2:
        if arg2 != 1:
            revert with 0, 'lockup should be zero or one'
    if user[address(msg.sender)].field_0:
        revert with 0, 'user.amount == 0'
    if arg1 <= 0:
        revert with 0, 'amount > 0'
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'insufficient balance'
    staticcall tokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'insufficient allowance'
    if arg2 >= 3:
        revert with 'NH{q', 50
    if block.timestamp > -sub_12fcdb52[arg2] - 1:
        revert with 'NH{q', 17
    user[address(msg.sender)].field_0 = arg1
    user[address(msg.sender)].field_256 = block.timestamp + sub_12fcdb52[arg2]
    user[address(msg.sender)].field_512 = block.timestamp
    user[address(msg.sender)].field_768 = 0
    if total.length > -arg1 - 1:
        revert with 'NH{q', 17
    total.length += arg1
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Stake(arg1, arg2, msg.sender);
}

function emergencyWithdrawal(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if eth.balance(this.address) < arg2:
            revert with 0, 'ICO : insufficient balance'
        call owner with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with 0, 'ICO : transfer failed'
    else:
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < arg2:
            revert with 0, 'ICO : insufficient balance'
        if arg1 == tokenAddress:
            if total.length > stor7:
                if total.length < stor7:
                    revert with 'NH{q', 17
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= total.length - stor7:
                    revert with 0, 'no available tokens to claim'
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < total.length - stor7:
                    revert with 'NH{q', 17
                if arg2 > ext_call.return_data[0] - total.length + stor7:
                    revert with 0, 'no available tokens to claim'
            if arg2 <= 0:
                revert with 0, 'no available tokens to claim'
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'ICO : transfer failed'
}

function claim() payable {
    if not user[address(msg.sender)].field_0:
        return 0
    if block.timestamp <= user[address(msg.sender)].field_256:
        if block.timestamp < user[address(msg.sender)].field_512:
            revert with 'NH{q', 17
        if not stor5:
            revert with 'NH{q', 18
        if reward and block.timestamp - user[address(msg.sender)].field_512 / stor5 > -1 / reward:
            revert with 'NH{q', 17
        if user[address(msg.sender)].field_0 and reward * block.timestamp - user[address(msg.sender)].field_512 / stor5 > -1 / user[address(msg.sender)].field_0:
            revert with 'NH{q', 17
        if stor5 and block.timestamp - user[address(msg.sender)].field_512 / stor5 > -1 / stor5:
            revert with 'NH{q', 17
        if not user[address(msg.sender)].field_0 * reward * block.timestamp - user[address(msg.sender)].field_512 / stor5 / 100 * 10^18:
            return 0
        if user[address(msg.sender)].field_512 > (-1 * stor5 * block.timestamp - user[address(msg.sender)].field_512 / stor5) - 1:
            revert with 'NH{q', 17
        user[address(msg.sender)].field_512 += stor5 * block.timestamp - user[address(msg.sender)].field_512 / stor5
        if user[address(msg.sender)].field_768 > -(user[address(msg.sender)].field_0 * reward * block.timestamp - user[address(msg.sender)].field_512 / stor5 / 100 * 10^18) - 1:
            revert with 'NH{q', 17
        user[address(msg.sender)].field_768 += user[address(msg.sender)].field_0 * reward * block.timestamp - user[address(msg.sender)].field_512 / stor5 / 100 * 10^18
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, user[address(msg.sender)].field_0 * reward * block.timestamp - user[address(msg.sender)].field_512 / stor5 / 100 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit Claim((user[address(msg.sender)].field_0 * reward * block.timestamp - user[address(msg.sender)].field_512 / stor5 / 100 * 10^18), msg.sender);
    else:
        if user[address(msg.sender)].field_256 < user[address(msg.sender)].field_512:
            revert with 'NH{q', 17
        if not stor5:
            revert with 'NH{q', 18
        if reward and user[address(msg.sender)].field_256 - user[address(msg.sender)].field_512 / stor5 > -1 / reward:
            revert with 'NH{q', 17
        if user[address(msg.sender)].field_0 and reward * user[address(msg.sender)].field_256 - user[address(msg.sender)].field_512 / stor5 > -1 / user[address(msg.sender)].field_0:
            revert with 'NH{q', 17
        if stor5 and user[address(msg.sender)].field_256 - user[address(msg.sender)].field_512 / stor5 > -1 / stor5:
            revert with 'NH{q', 17
        if not user[address(msg.sender)].field_0 * reward * user[address(msg.sender)].field_256 - user[address(msg.sender)].field_512 / stor5 / 100 * 10^18:
            return 0
        if user[address(msg.sender)].field_512 > (-1 * stor5 * user[address(msg.sender)].field_256 - user[address(msg.sender)].field_512 / stor5) - 1:
            revert with 'NH{q', 17
        user[address(msg.sender)].field_512 += stor5 * user[address(msg.sender)].field_256 - user[address(msg.sender)].field_512 / stor5
        if user[address(msg.sender)].field_768 > -(user[address(msg.sender)].field_0 * reward * user[address(msg.sender)].field_256 - user[address(msg.sender)].field_512 / stor5 / 100 * 10^18) - 1:
            revert with 'NH{q', 17
        user[address(msg.sender)].field_768 += user[address(msg.sender)].field_0 * reward * user[address(msg.sender)].field_256 - user[address(msg.sender)].field_512 / stor5 / 100 * 10^18
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, user[address(msg.sender)].field_0 * reward * user[address(msg.sender)].field_256 - user[address(msg.sender)].field_512 / stor5 / 100 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit Claim((user[address(msg.sender)].field_0 * reward * user[address(msg.sender)].field_256 - user[address(msg.sender)].field_512 / stor5 / 100 * 10^18), msg.sender);
    return 1
}

function unstake() payable {
    if user[address(msg.sender)].field_0 <= 0:
        revert with 0, 'user.amount > 0'
    if user[address(msg.sender)].field_256 >= block.timestamp:
        revert with 0, 'wait till lockup period end'
    if user[address(msg.sender)].field_0:
        if block.timestamp <= user[address(msg.sender)].field_256:
            if block.timestamp < user[address(msg.sender)].field_512:
                revert with 'NH{q', 17
            if not stor5:
                revert with 'NH{q', 18
            if reward and block.timestamp - user[address(msg.sender)].field_512 / stor5 > -1 / reward:
                revert with 'NH{q', 17
            if user[address(msg.sender)].field_0 and reward * block.timestamp - user[address(msg.sender)].field_512 / stor5 > -1 / user[address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if stor5 and block.timestamp - user[address(msg.sender)].field_512 / stor5 > -1 / stor5:
                revert with 'NH{q', 17
            if user[address(msg.sender)].field_0 * reward * block.timestamp - user[address(msg.sender)].field_512 / stor5 / 100 * 10^18:
                if user[address(msg.sender)].field_512 > (-1 * stor5 * block.timestamp - user[address(msg.sender)].field_512 / stor5) - 1:
                    revert with 'NH{q', 17
                user[address(msg.sender)].field_512 += stor5 * block.timestamp - user[address(msg.sender)].field_512 / stor5
                if user[address(msg.sender)].field_768 > -(user[address(msg.sender)].field_0 * reward * block.timestamp - user[address(msg.sender)].field_512 / stor5 / 100 * 10^18) - 1:
                    revert with 'NH{q', 17
                user[address(msg.sender)].field_768 += user[address(msg.sender)].field_0 * reward * block.timestamp - user[address(msg.sender)].field_512 / stor5 / 100 * 10^18
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, user[address(msg.sender)].field_0 * reward * block.timestamp - user[address(msg.sender)].field_512 / stor5 / 100 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Claim((user[address(msg.sender)].field_0 * reward * block.timestamp - user[address(msg.sender)].field_512 / stor5 / 100 * 10^18), msg.sender);
        else:
            if user[address(msg.sender)].field_256 < user[address(msg.sender)].field_512:
                revert with 'NH{q', 17
            if not stor5:
                revert with 'NH{q', 18
            if reward and user[address(msg.sender)].field_256 - user[address(msg.sender)].field_512 / stor5 > -1 / reward:
                revert with 'NH{q', 17
            if user[address(msg.sender)].field_0 and reward * user[address(msg.sender)].field_256 - user[address(msg.sender)].field_512 / stor5 > -1 / user[address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if stor5 and user[address(msg.sender)].field_256 - user[address(msg.sender)].field_512 / stor5 > -1 / stor5:
                revert with 'NH{q', 17
            if user[address(msg.sender)].field_0 * reward * user[address(msg.sender)].field_256 - user[address(msg.sender)].field_512 / stor5 / 100 * 10^18:
                if user[address(msg.sender)].field_512 > (-1 * stor5 * user[address(msg.sender)].field_256 - user[address(msg.sender)].field_512 / stor5) - 1:
                    revert with 'NH{q', 17
                user[address(msg.sender)].field_512 += stor5 * user[address(msg.sender)].field_256 - user[address(msg.sender)].field_512 / stor5
                if user[address(msg.sender)].field_768 > -(user[address(msg.sender)].field_0 * reward * user[address(msg.sender)].field_256 - user[address(msg.sender)].field_512 / stor5 / 100 * 10^18) - 1:
                    revert with 'NH{q', 17
                user[address(msg.sender)].field_768 += user[address(msg.sender)].field_0 * reward * user[address(msg.sender)].field_256 - user[address(msg.sender)].field_512 / stor5 / 100 * 10^18
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, user[address(msg.sender)].field_0 * reward * user[address(msg.sender)].field_256 - user[address(msg.sender)].field_512 / stor5 / 100 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Claim((user[address(msg.sender)].field_0 * reward * user[address(msg.sender)].field_256 - user[address(msg.sender)].field_512 / stor5 / 100 * 10^18), msg.sender);
    user[address(msg.sender)].field_0 = 0
    user[address(msg.sender)].field_256 = 0
    user[address(msg.sender)].field_512 = 0
    user[address(msg.sender)].field_768 = 0
    if stor7 > -user[address(msg.sender)].field_0 - 1:
        revert with 'NH{q', 17
    stor7 += user[address(msg.sender)].field_0
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, user[address(msg.sender)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit UnStake(user[address(msg.sender)].field_0, msg.sender);
}



}
