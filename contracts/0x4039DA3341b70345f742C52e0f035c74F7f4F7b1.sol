contract main {




// =====================  Runtime code  =====================


address tokenAddress;
uint256 totalSupply;
mapping of struct balanceOf;
address owner;
address cardAddress;
mapping of uint256 locks;
uint256 lockPeriod;
uint256 stor7; offset 32
uint256 lockAmount;
big736 stor7;
uint256 minted;
uint256 startTime;

function totalSupply() payable {
    return totalSupply
}

function lockPeriod() payable {
    return lockPeriod
}

function isLocked(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(locks[address(arg1)])
}

function minted() payable {
    return minted
}

function locks(address arg1) payable {
    require calldata.size - 4 >= 32
    return locks[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)].field_0
}

function unlockTime(address arg1) payable {
    require calldata.size - 4 >= 32
    return locks[address(arg1)]
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function card() payable {
    return cardAddress
}

function lockAmount() payable {
    return lockAmount
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
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function canRedeem(address arg1) payable {
    require calldata.size - 4 >= 32
    if not locks[address(arg1)]:
        return bool(locks[address(arg1)])
    return (block.timestamp > locks[address(arg1)])
}

function sub_b649d125(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Cannot set 0'
    lockAmount = arg1
    lockPeriod = arg2
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

function redeem() payable {
    if not locks[address(msg.sender)]:
        revert with 0, 'Locking'
    if block.timestamp <= locks[address(msg.sender)]:
        revert with 0, 'Locking'
    if balanceOf[address(msg.sender)].field_0 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= balanceOf[address(msg.sender)].field_0
    if balanceOf[address(msg.sender)].field_0 > balanceOf[msg.sender].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[msg.sender].field_0 -= balanceOf[address(msg.sender)].field_0
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)].field_32
    call tokenAddress with:
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
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 499 len 22]
    emit Redeemed(balanceOf[address(msg.sender)].field_0, msg.sender);
    locks[msg.sender] = 0
}

function lock() payable {
    if minted <= 0:
        if block.timestamp < startTime:
            revert with 0, 'Not start'
        if locks[msg.sender]:
            revert with 0, 'Locked'
        require ext_code.size(cardAddress)
        staticcall cardAddress.0xd5abeb01 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(cardAddress)
        staticcall cardAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'Exceeds max supply'
        if lockAmount + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += lockAmount
        if lockAmount + balanceOf[msg.sender].field_0 < balanceOf[msg.sender].field_0:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[msg.sender].field_0 += lockAmount
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 0, stor7.field_32)
        mem[416 len 4] = 0
        call tokenAddress with:
             gas gas_remaining wei
            args Mask(736, 0, stor7.field_0), mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), lockAmount
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
    else:
        if minted % 50:
            if block.timestamp < startTime:
                revert with 0, 'Not start'
            if locks[msg.sender]:
                revert with 0, 'Locked'
            require ext_code.size(cardAddress)
            staticcall cardAddress.0xd5abeb01 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(cardAddress)
            staticcall cardAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'Exceeds max supply'
            if lockAmount + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += lockAmount
            if lockAmount + balanceOf[msg.sender].field_0 < balanceOf[msg.sender].field_0:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[msg.sender].field_0 += lockAmount
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 0, stor7.field_32)
            mem[480 len 4] = 0
            call tokenAddress with:
                 gas gas_remaining wei
                args Mask(736, 0, stor7.field_0), mem[452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: modulo by zero'
            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[388]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 467 len 22]
        else:
            if lockPeriod + (24 * 3600) < lockPeriod:
                revert with 0, 'SafeMath: addition overflow'
            lockPeriod += 24 * 3600
            if not lockAmount:
                if lockAmount < lockAmount:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if 5 * lockAmount / lockAmount != 5:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if (5 * lockAmount / 100) + lockAmount < lockAmount:
                    revert with 0, 'SafeMath: addition overflow'
                lockAmount += 5 * lockAmount / 100
            if block.timestamp < startTime:
                revert with 0, 'Not start'
            if locks[msg.sender]:
                revert with 0, 'Locked'
            require ext_code.size(cardAddress)
            staticcall cardAddress.0xd5abeb01 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(cardAddress)
            staticcall cardAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'Exceeds max supply'
            if lockAmount + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += lockAmount
            if lockAmount + balanceOf[msg.sender].field_0 < balanceOf[msg.sender].field_0:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[msg.sender].field_0 += lockAmount
            if not ext_code.size(tokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 0, stor7.field_32)
            mem[544 len 4] = 0
            call tokenAddress with:
                 gas gas_remaining wei
                args Mask(736, 0, stor7.field_0), mem[516 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: modulo by zero'
            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[452]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 531 len 22]
    emit Locked(lockAmount, msg.sender);
    locks[msg.sender] = lockPeriod + block.timestamp
    require ext_code.size(cardAddress)
    call cardAddress.0x6a627842 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    minted++
}



}
