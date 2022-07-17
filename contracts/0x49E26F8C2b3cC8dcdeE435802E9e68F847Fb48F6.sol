contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 minTxAmount;
uint256 maxTxAmount;
uint256 penalty;
uint256 totalRewardsDistributed;
uint8 stor6;
uint8 stor6; offset 8
uint256 totalStaked;
uint8 stor8;
address stor8;
address sub_4230c814Address; offset 8
mapping of struct stor9;
uint256 stor10;
mapping of uint256 sub_4421bd64;

function penalty() payable {
    return penalty
}

function minTxAmount() payable {
    return minTxAmount
}

function sub_4230c814(?) payable {
    return sub_4230c814Address
}

function sub_4421bd64(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_4421bd64[arg1]
}

function totalStaked() payable {
    return totalStaked
}

function maxTxAmount() payable {
    return maxTxAmount
}

function owner() payable {
    return owner
}

function sub_9f50ecc5(?) payable {
    return bool(uint8(stor8.field_0))
}

function isStakingEnabled() payable {
    return bool(uint8(stor6.field_0))
}

function totalRewardsDistributed() payable {
    return totalRewardsDistributed
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function enableStaking() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor6.field_0) = 1
    return 1
}

function disableStaking() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor6.field_0) = 0
    return 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_1194c2e7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor8.field_0) = 1
    sub_4230c814Address = address(arg1)
}

function sub_6fe9f5dd(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4421bd64[arg1] = arg2
    emit 0xc2827984: arg1, arg2
}

function sub_4a22a125(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 50:
        revert with 0, 'penalty should be less than 50'
    penalty = arg1
    emit 0x9c1b9b5f: arg1
}

function sub_8913c147(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Min amount must be greater than 0'
    minTxAmount = arg1
    emit 0x7e2e22bf: minTxAmount
}

function tokenDecimals() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[31 len 1]
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

function changeMaxTxAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= minTxAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Max amount must be greater than min amount'
    maxTxAmount = arg1
    emit 0x546de062: maxTxAmount
}

function tokenBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getTier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xeb96e2e262e8ffade9372f94973f4be76e4708c2)
    delegate 0xeb96e2e262e8ffade9372f94973f4be76e4708c2.0x34fa07e0 with:
         gas gas_remaining wei
        args 10, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[0]
    return delegate.return_data[0]
}

function changeTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor6.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot change token address while staking is enabled'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = arg1
    if not arg1:
        revert with 0, 'Token address cannot be 0'
    if arg1 == tokenAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Token address cannot be the same as the current one'
    emit 0xfb9b24f1: tokenAddress, arg1
}

function sub_fa04e302(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Token address cannot be null'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Not enough token in contract'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_7cb5b66f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xeb96e2e262e8ffade9372f94973f4be76e4708c2)
    delegate 0xeb96e2e262e8ffade9372f94973f4be76e4708c2.0x34fa07e0 with:
         gas gas_remaining wei
        args 10, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[0]
    if not delegate.return_data[0]:
        revert with 0, 'Invalid level'
    if arg2 < 100:
        revert with 0, 'Invalid percentage'
    require ext_code.size(0xeb96e2e262e8ffade9372f94973f4be76e4708c2)
    delegate 0xeb96e2e262e8ffade9372f94973f4be76e4708c2.0x7041e7b1 with:
         gas gas_remaining wei
        args 10, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xa8126510: arg1, arg2
    return 1
}

function sub_d4cc85ea(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor6.field_0):
        revert with 0, 'Staking should be disabled'
    if not uint8(stor6.field_8):
        revert with 0, 'Token is not withdrawable'
    if uint8(stor8.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You cannot withdraw token from spender wallet'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getRewards(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor9[address(arg1)][arg2].field_1536:
        return 0
    if block.timestamp < stor9[address(arg1)][arg2].field_512:
        revert with 0, 'Time exceeds'
    require ext_code.size(0xeb96e2e262e8ffade9372f94973f4be76e4708c2)
    delegate 0xeb96e2e262e8ffade9372f94973f4be76e4708c2.0x34fa07e0 with:
         gas gas_remaining wei
        args 10, stor9[address(arg1)][arg2].field_0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[0]
    if stor9[address(arg1)][arg2].field_256 and delegate.return_data[0] > -1 / stor9[address(arg1)][arg2].field_256:
        revert with 'NH{q', 17
    if stor9[address(arg1)][arg2].field_256 * delegate.return_data[0] / 100 and block.timestamp - stor9[address(arg1)][arg2].field_512 > -1 / stor9[address(arg1)][arg2].field_256 * delegate.return_data[0] / 100:
        revert with 'NH{q', 17
    return ((block.timestamp * stor9[address(arg1)][arg2].field_256 * delegate.return_data[0] / 100) - (stor9[address(arg1)][arg2].field_512 * stor9[address(arg1)][arg2].field_256 * delegate.return_data[0] / 100) / 8760 * 24 * 3600)
}

function tokenName() payable {
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307() or ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[ceil32(return_data.size) + _5 + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[mem[64] + _5 + 64] = 0
    return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
}

function tokenSymbol() payable {
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307() or ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[ceil32(return_data.size) + _5 + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[mem[64] + _5 + 64] = 0
    return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
}

function getUserDetails(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor9[address(arg1)][arg2].field_1536:
        return stor9[address(arg1)][arg2].field_0, 
               stor9[address(arg1)][arg2].field_256,
               stor9[address(arg1)][arg2].field_512,
               stor9[address(arg1)][arg2].field_768,
               stor9[address(arg1)][arg2].field_1024,
               stor9[address(arg1)][arg2].field_1280,
               bool(stor9[address(arg1)][arg2].field_1536),
               0
    if block.timestamp < stor9[address(arg1)][arg2].field_512:
        revert with 0, 'Time exceeds'
    require ext_code.size(0xeb96e2e262e8ffade9372f94973f4be76e4708c2)
    delegate 0xeb96e2e262e8ffade9372f94973f4be76e4708c2.0x34fa07e0 with:
         gas gas_remaining wei
        args 10, stor9[address(arg1)][arg2].field_0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[0]
    if stor9[address(arg1)][arg2].field_256 and delegate.return_data[0] > -1 / stor9[address(arg1)][arg2].field_256:
        revert with 'NH{q', 17
    if stor9[address(arg1)][arg2].field_256 * delegate.return_data[0] / 100 and block.timestamp - stor9[address(arg1)][arg2].field_512 > -1 / stor9[address(arg1)][arg2].field_256 * delegate.return_data[0] / 100:
        revert with 'NH{q', 17
    return stor9[address(arg1)][arg2].field_0, 
           stor9[address(arg1)][arg2].field_256,
           stor9[address(arg1)][arg2].field_512,
           stor9[address(arg1)][arg2].field_768,
           stor9[address(arg1)][arg2].field_1024,
           stor9[address(arg1)][arg2].field_1280,
           bool(stor9[address(arg1)][arg2].field_1536),
           (block.timestamp * stor9[address(arg1)][arg2].field_256 * delegate.return_data[0] / 100) - (stor9[address(arg1)][arg2].field_512 * stor9[address(arg1)][arg2].field_256 * delegate.return_data[0] / 100) / 8760 * 24 * 3600
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor9[address(msg.sender)][arg1].field_1536:
        revert with 0, 'user not exist'
    if not uint8(stor6.field_0):
        if stor9[address(msg.sender)][arg1].field_256 and 0 > -1 / stor9[address(msg.sender)][arg1].field_256:
            revert with 'NH{q', 17
        if stor9[address(msg.sender)][arg1].field_256 < 0:
            revert with 'NH{q', 17
        require ext_code.size(tokenAddress)
        if not uint8(stor8.field_0):
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, stor9[address(msg.sender)][arg1].field_256
        else:
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(stor8.field_0), msg.sender, stor9[address(msg.sender)][arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if totalStaked < stor9[address(msg.sender)][arg1].field_256:
            revert with 'NH{q', 17
        totalStaked -= stor9[address(msg.sender)][arg1].field_256
        stor9[address(msg.sender)][arg1].field_256 = 0
        stor9[address(msg.sender)][arg1].field_1536 = 0
        return stor9[address(msg.sender)][arg1].field_256
    if stor9[address(msg.sender)][arg1].field_256 and penalty > -1 / stor9[address(msg.sender)][arg1].field_256:
        revert with 'NH{q', 17
    if stor9[address(msg.sender)][arg1].field_256 < stor9[address(msg.sender)][arg1].field_256 * penalty / 100:
        revert with 'NH{q', 17
    require ext_code.size(tokenAddress)
    if not uint8(stor8.field_0):
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stor9[address(msg.sender)][arg1].field_256 - (stor9[address(msg.sender)][arg1].field_256 * penalty / 100)
    else:
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(stor8.field_0), msg.sender, stor9[address(msg.sender)][arg1].field_256 - (stor9[address(msg.sender)][arg1].field_256 * penalty / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if totalStaked < stor9[address(msg.sender)][arg1].field_256:
        revert with 'NH{q', 17
    totalStaked -= stor9[address(msg.sender)][arg1].field_256
    stor9[address(msg.sender)][arg1].field_256 = 0
    stor9[address(msg.sender)][arg1].field_1536 = 0
    return (stor9[address(msg.sender)][arg1].field_256 - (stor9[address(msg.sender)][arg1].field_256 * penalty / 100))
}

function getTiers() payable {
    if stor10 > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor10
    mem[64] = (32 * stor10) + 128
    if not stor10:
        idx = 0
        while idx < stor10:
            mem[mem[64] + 4] = 10
            mem[mem[64] + 36] = idx
            require ext_code.size(0xeb96e2e262e8ffade9372f94973f4be76e4708c2)
            delegate 0xeb96e2e262e8ffade9372f94973f4be76e4708c2.0xd1aa9e7e with:
                 gas gas_remaining wei
                args 10, idx
            mem[mem[64]] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _36 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _41 = mem[_36]
            require mem[_36] == mem[_36]
            mem[mem[64] + 4] = 10
            mem[mem[64] + 36] = _41
            require ext_code.size(0xeb96e2e262e8ffade9372f94973f4be76e4708c2)
            delegate 0xeb96e2e262e8ffade9372f94973f4be76e4708c2.0x34fa07e0 with:
                 gas gas_remaining wei
                args 10, _41
            mem[mem[64]] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _48 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_48] == mem[_48]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = mem[_48]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * stor10] = call.data[calldata.size len 32 * stor10]
        idx = 0
        while idx < stor10:
            mem[mem[64] + 4] = 10
            mem[mem[64] + 36] = idx
            require ext_code.size(0xeb96e2e262e8ffade9372f94973f4be76e4708c2)
            delegate 0xeb96e2e262e8ffade9372f94973f4be76e4708c2.0xd1aa9e7e with:
                 gas gas_remaining wei
                args 10, idx
            mem[mem[64]] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _37 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _43 = mem[_37]
            require mem[_37] == mem[_37]
            mem[mem[64] + 4] = 10
            mem[mem[64] + 36] = _43
            require ext_code.size(0xeb96e2e262e8ffade9372f94973f4be76e4708c2)
            delegate 0xeb96e2e262e8ffade9372f94973f4be76e4708c2.0x34fa07e0 with:
                 gas gas_remaining wei
                args 10, _43
            mem[mem[64]] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _49 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_49] == mem[_49]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = mem[_49]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function stake(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor6.field_0):
        revert with 0, 'Staking is disabled'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if minTxAmount and 1 > -1 / minTxAmount:
            revert with 'NH{q', 17
        if arg1 < minTxAmount:
            revert with 0, 'amount is less than minTxAmount'
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if minTxAmount and 10^ext_call.return_data[31 len 1] > -1 / minTxAmount:
                revert with 'NH{q', 17
            if arg1 < minTxAmount * 10^ext_call.return_data[31 len 1]:
                revert with 0, 'amount is less than minTxAmount'
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if minTxAmount and t * s > -1 / minTxAmount:
                revert with 'NH{q', 17
            if arg1 < minTxAmount * t * s:
                revert with 0, 'amount is less than minTxAmount'
    if maxTxAmount >= 0:
        if not ext_call.return_data[31 len 1]:
            if maxTxAmount and 1 > -1 / maxTxAmount:
                revert with 'NH{q', 17
            if arg1 > maxTxAmount:
                revert with 0, 'amount is greater than maxTxAmount'
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 'NH{q', 17
                if maxTxAmount and 10^ext_call.return_data[31 len 1] > -1 / maxTxAmount:
                    revert with 'NH{q', 17
                if arg1 > maxTxAmount * 10^ext_call.return_data[31 len 1]:
                    revert with 0, 'amount is greater than maxTxAmount'
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = t * s
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 'NH{q', 17
                if maxTxAmount and t * s > -1 / maxTxAmount:
                    revert with 'NH{q', 17
                if arg1 > maxTxAmount * t * s:
                    revert with 0, 'amount is greater than maxTxAmount'
    if stor9[address(msg.sender)][arg2].field_1536:
        revert with 0, 'user already exist'
    require ext_code.size(tokenAddress)
    if not uint8(stor8.field_0):
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
    else:
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(stor8.field_0), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0xeb96e2e262e8ffade9372f94973f4be76e4708c2)
    delegate 0xeb96e2e262e8ffade9372f94973f4be76e4708c2.0x34fa07e0 with:
         gas gas_remaining wei
        args 10, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[0]
    if not delegate.return_data[0]:
        revert with 0, 'Invalid level'
    if arg2 == 1:
        stor9[address(msg.sender)][arg2].field_768 = 0
    else:
        if sub_4421bd64[arg2] and 24 * 3600 > -1 / sub_4421bd64[arg2]:
            revert with 'NH{q', 17
        if block.timestamp > (-86400 * sub_4421bd64[arg2]) - 1:
            revert with 'NH{q', 17
        stor9[address(msg.sender)][arg2].field_768 = block.timestamp + (24 * 3600 * sub_4421bd64[arg2])
    stor9[address(msg.sender)][arg2].field_256 = arg1
    stor9[address(msg.sender)][arg2].field_0 = arg2
    stor9[address(msg.sender)][arg2].field_512 = block.timestamp
    stor9[address(msg.sender)][arg2].field_1536 = 1
    if totalStaked > -arg1 - 1:
        revert with 'NH{q', 17
    totalStaked += arg1
    return 1
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor9[address(msg.sender)][arg1].field_1536:
        revert with 0, 'user not exist'
    if stor9[address(msg.sender)][arg1].field_768 > block.timestamp:
        revert with 0, 'staking end time is not reached'
    if not stor9[address(msg.sender)][arg1].field_1536:
        if 0 > -stor9[address(msg.sender)][arg1].field_256 - 1:
            revert with 'NH{q', 17
        require ext_code.size(tokenAddress)
        if not uint8(stor8.field_0):
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, stor9[address(msg.sender)][arg1].field_256
        else:
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(stor8.field_0), msg.sender, stor9[address(msg.sender)][arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if totalStaked < stor9[address(msg.sender)][arg1].field_256:
            revert with 'NH{q', 17
        totalStaked -= stor9[address(msg.sender)][arg1].field_256
        stor9[address(msg.sender)][arg1].field_256 = 0
        if stor9[address(msg.sender)][arg1].field_1024 > -1:
            revert with 'NH{q', 17
        if stor9[address(msg.sender)][arg1].field_1280 > -stor9[address(msg.sender)][arg1].field_256 - 1:
            revert with 'NH{q', 17
        stor9[address(msg.sender)][arg1].field_1280 += stor9[address(msg.sender)][arg1].field_256
        stor9[address(msg.sender)][arg1].field_1536 = 0
        if totalRewardsDistributed > -1:
            revert with 'NH{q', 17
    else:
        if block.timestamp < stor9[address(msg.sender)][arg1].field_512:
            revert with 0, 'Time exceeds'
        require ext_code.size(0xeb96e2e262e8ffade9372f94973f4be76e4708c2)
        delegate 0xeb96e2e262e8ffade9372f94973f4be76e4708c2.0x34fa07e0 with:
             gas gas_remaining wei
            args 10, stor9[address(msg.sender)][arg1].field_0
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[0] == delegate.return_data[0]
        if stor9[address(msg.sender)][arg1].field_256 and delegate.return_data[0] > -1 / stor9[address(msg.sender)][arg1].field_256:
            revert with 'NH{q', 17
        if stor9[address(msg.sender)][arg1].field_256 * delegate.return_data[0] / 100 and block.timestamp - stor9[address(msg.sender)][arg1].field_512 > -1 / stor9[address(msg.sender)][arg1].field_256 * delegate.return_data[0] / 100:
            revert with 'NH{q', 17
        if (block.timestamp * stor9[address(msg.sender)][arg1].field_256 * delegate.return_data[0] / 100) - (stor9[address(msg.sender)][arg1].field_512 * stor9[address(msg.sender)][arg1].field_256 * delegate.return_data[0] / 100) / 8760 * 24 * 3600 > -stor9[address(msg.sender)][arg1].field_256 - 1:
            revert with 'NH{q', 17
        require ext_code.size(tokenAddress)
        if not uint8(stor8.field_0):
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ((block.timestamp * stor9[address(msg.sender)][arg1].field_256 * delegate.return_data[0] / 100) - (stor9[address(msg.sender)][arg1].field_512 * stor9[address(msg.sender)][arg1].field_256 * delegate.return_data[0] / 100) / 8760 * 24 * 3600) + stor9[address(msg.sender)][arg1].field_256
        else:
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(stor8.field_0), msg.sender, ((block.timestamp * stor9[address(msg.sender)][arg1].field_256 * delegate.return_data[0] / 100) - (stor9[address(msg.sender)][arg1].field_512 * stor9[address(msg.sender)][arg1].field_256 * delegate.return_data[0] / 100) / 8760 * 24 * 3600) + stor9[address(msg.sender)][arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if totalStaked < stor9[address(msg.sender)][arg1].field_256:
            revert with 'NH{q', 17
        totalStaked -= stor9[address(msg.sender)][arg1].field_256
        stor9[address(msg.sender)][arg1].field_256 = 0
        if stor9[address(msg.sender)][arg1].field_1024 > -((block.timestamp * stor9[address(msg.sender)][arg1].field_256 * delegate.return_data[0] / 100) - (stor9[address(msg.sender)][arg1].field_512 * stor9[address(msg.sender)][arg1].field_256 * delegate.return_data[0] / 100) / 8760 * 24 * 3600) - 1:
            revert with 'NH{q', 17
        stor9[address(msg.sender)][arg1].field_1024 += (block.timestamp * stor9[address(msg.sender)][arg1].field_256 * delegate.return_data[0] / 100) - (stor9[address(msg.sender)][arg1].field_512 * stor9[address(msg.sender)][arg1].field_256 * delegate.return_data[0] / 100) / 8760 * 24 * 3600
        if stor9[address(msg.sender)][arg1].field_1280 > -((block.timestamp * stor9[address(msg.sender)][arg1].field_256 * delegate.return_data[0] / 100) - (stor9[address(msg.sender)][arg1].field_512 * stor9[address(msg.sender)][arg1].field_256 * delegate.return_data[0] / 100) / 8760 * 24 * 3600) + -stor9[address(msg.sender)][arg1].field_256 - 1:
            revert with 'NH{q', 17
        stor9[address(msg.sender)][arg1].field_1280 = stor9[address(msg.sender)][arg1].field_1280 + ((block.timestamp * stor9[address(msg.sender)][arg1].field_256 * delegate.return_data[0] / 100) - (stor9[address(msg.sender)][arg1].field_512 * stor9[address(msg.sender)][arg1].field_256 * delegate.return_data[0] / 100) / 8760 * 24 * 3600) + stor9[address(msg.sender)][arg1].field_256
        stor9[address(msg.sender)][arg1].field_1536 = 0
        if totalRewardsDistributed > -((block.timestamp * stor9[address(msg.sender)][arg1].field_256 * delegate.return_data[0] / 100) - (stor9[address(msg.sender)][arg1].field_512 * stor9[address(msg.sender)][arg1].field_256 * delegate.return_data[0] / 100) / 8760 * 24 * 3600) - 1:
            revert with 'NH{q', 17
        totalRewardsDistributed += (block.timestamp * stor9[address(msg.sender)][arg1].field_256 * delegate.return_data[0] / 100) - (stor9[address(msg.sender)][arg1].field_512 * stor9[address(msg.sender)][arg1].field_256 * delegate.return_data[0] / 100) / 8760 * 24 * 3600
    return 1
}



}
