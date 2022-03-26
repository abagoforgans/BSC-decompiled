contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#  - withdrawAll()
#  - setFlipToken(address arg1)
#  - setMinter(address arg1)
#
address owner;
address keeperAddress;
uint256 poolId;
address tokenAddress;
uint256 totalShares;
mapping of uint256 sharesOf;
mapping of uint256 principalOf;
mapping of uint256 depositedAt;
address minterAddress;
address helperAddress;

function minter() payable {
    return minterAddress
}

function depositedAt(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return depositedAt[arg1]
}

function totalShares() payable {
    return totalShares
}

function poolId() payable {
    return poolId
}

function principalOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return principalOf[address(arg1)]
}

function helper() payable {
    return helperAddress
}

function owner() payable {
    return owner
}

function keeper() payable {
    return keeperAddress
}

function sharesOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sharesOf[address(arg1)]
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function getReward() payable {
    revert with 0, 'Use withdrawAll'
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    revert with 0, 'Use withdrawAll'
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'auth'
    if not arg1:
        revert with 0, 'zero address'
    keeperAddress = arg1
}

function setHelper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'auth'
    if not arg1:
        revert with 0, 'zero address'
    helperAddress = arg1
}

function apy() payable {
    require ext_code.size(helperAddress)
    staticcall helperAddress.0x64d69efe with:
            gas gas_remaining wei
           args minterAddress, poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balance() payable {
    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
    staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function tvl() payable {
    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
    staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(helperAddress)
    staticcall helperAddress.0xbff3d718 with:
            gas gas_remaining wei
           args tokenAddress, 2 * ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function priceShare() payable {
    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
    staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        if not totalShares:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalShares)
    if 2 * 10^18 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalShares:
        revert with 0, 'SafeMath: division by zero', 0
    return (2 * 10^18 * ext_call.return_data[0] / totalShares)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 == totalShares:
        return 0
    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
    staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        if not totalShares:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalShares)
    if (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / 2 * ext_call.return_data[0] != sharesOf[address(arg1)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalShares:
        revert with 0, 'SafeMath: division by zero', 0
    return ((ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares)
}

function withdrawableBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 == totalShares:
        return 0
    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
    staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        if not totalShares:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalShares)
    if (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / 2 * ext_call.return_data[0] != sharesOf[address(arg1)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalShares:
        revert with 0, 'SafeMath: division by zero', 0
    return ((ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares)
}

function profitOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 == totalShares:
        if principalOf[address(arg1)] >= 0:
            return 0
        if principalOf[address(arg1)] > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(helperAddress)
        staticcall helperAddress.0x9bf2492d with:
                gas gas_remaining wei
               args minterAddress, tokenAddress, -principalOf[address(arg1)]
    else:
        require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
        staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
                gas gas_remaining wei
               args poolId, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0]:
            if not totalShares:
                revert with 0, 'SafeMath: division by zero', 0
            if principalOf[address(arg1)] >= 0 / totalShares:
                return 0
            if principalOf[address(arg1)] > 0 / totalShares:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(helperAddress)
            staticcall helperAddress.0x9bf2492d with:
                    gas gas_remaining wei
                   args minterAddress, tokenAddress, (0 / totalShares) - principalOf[address(arg1)]
        else:
            if (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / 2 * ext_call.return_data[0] != sharesOf[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not totalShares:
                revert with 0, 'SafeMath: division by zero', 0
            if principalOf[address(arg1)] >= (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares:
                return 0
            if principalOf[address(arg1)] > (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(helperAddress)
            staticcall helperAddress.0x9bf2492d with:
                    gas gas_remaining wei
                   args minterAddress, tokenAddress, ((ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[132] = this.address
    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
    staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
            gas gas_remaining wei
           args poolId, this.address
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 164] = this.address
    mem[(4 * ceil32(return_data.size)) + 196] = arg1
    mem[(4 * ceil32(return_data.size)) + 96] = 100
    mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(4 * ceil32(return_data.size)) + 228] = 32
    mem[(4 * ceil32(return_data.size)) + 260] = 'SafeBEP20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
    mem[(4 * ceil32(return_data.size)) + 392] = 0
    call tokenAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeBEP20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    else:
        mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
            if not mem[(4 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if 0 == totalShares:
        if totalShares < totalShares:
            revert with 0, 'SafeMath: addition overflow'
        if sharesOf[address(msg.sender)] < sharesOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
    else:
        if not 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / 2 * ext_call.return_data[0]) + totalShares < totalShares:
            revert with 0, 'SafeMath: addition overflow'
        totalShares += 0 / 2 * ext_call.return_data[0]
        if (0 / 2 * ext_call.return_data[0]) + sharesOf[address(msg.sender)] < sharesOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        sharesOf[address(msg.sender)] += 0 / 2 * ext_call.return_data[0]
    if principalOf[address(msg.sender)] < principalOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    depositedAt[address(msg.sender)] = block.timestamp
    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
    call 0x73feaa1ee314f8c655e354234017be2193c9e24e.0xe2bbb158 with:
         gas gas_remaining wei
        args poolId, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function depositAll() payable {
    mem[100] = msg.sender
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = this.address
    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
    staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
            gas gas_remaining wei
           args poolId, this.address
    mem[ceil32(return_data.size) + 96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(6 * ceil32(return_data.size)) + 164] = this.address
    mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 96] = 100
    mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(6 * ceil32(return_data.size)) + 228] = 32
    mem[(6 * ceil32(return_data.size)) + 260] = 'SafeBEP20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(6 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0
    mem[(6 * ceil32(return_data.size)) + 392] = 0
    call tokenAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeBEP20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    else:
        mem[(6 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(6 * ceil32(return_data.size)) + 324] == bool(mem[(6 * ceil32(return_data.size)) + 324])
            if not mem[(6 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if 0 == totalShares:
        if totalShares < totalShares:
            revert with 0, 'SafeMath: addition overflow'
        if sharesOf[address(msg.sender)] < sharesOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
    else:
        if not 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / 2 * ext_call.return_data[0]) + totalShares < totalShares:
            revert with 0, 'SafeMath: addition overflow'
        totalShares += 0 / 2 * ext_call.return_data[0]
        if (0 / 2 * ext_call.return_data[0]) + sharesOf[address(msg.sender)] < sharesOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        sharesOf[address(msg.sender)] += 0 / 2 * ext_call.return_data[0]
    if principalOf[address(msg.sender)] < principalOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    depositedAt[address(msg.sender)] = block.timestamp
    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
    call 0x73feaa1ee314f8c655e354234017be2193c9e24e.0xe2bbb158 with:
         gas gas_remaining wei
        args poolId, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function info(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 == totalShares:
        if principalOf[address(arg1)] >= 0:
            require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
            staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
                    gas gas_remaining wei
                   args poolId, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(helperAddress)
            staticcall helperAddress.0xbff3d718 with:
                    gas gas_remaining wei
                   args tokenAddress, 2 * ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(helperAddress)
            staticcall helperAddress.0x64d69efe with:
                    gas gas_remaining wei
                   args minterAddress, poolId
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            return 0, 
                   principalOf[address(arg1)],
                   0,
                   0,
                   0,
                   0,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[32],
                   ext_call.return_data[64]
        if principalOf[address(arg1)] > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(helperAddress)
        staticcall helperAddress.0x9bf2492d with:
                gas gas_remaining wei
               args minterAddress, tokenAddress, -principalOf[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
        staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
                gas gas_remaining wei
               args poolId, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(helperAddress)
        staticcall helperAddress.0xbff3d718 with:
                gas gas_remaining wei
               args tokenAddress, 2 * ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(helperAddress)
        staticcall helperAddress.0x64d69efe with:
                gas gas_remaining wei
               args minterAddress, poolId
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        return 0, 
               principalOf[address(arg1)],
               0,
               ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[64]
    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
    staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        if not totalShares:
            revert with 0, 'SafeMath: division by zero', 0
        if 0 == totalShares:
            if principalOf[address(arg1)] >= 0:
                require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
                staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
                        gas gas_remaining wei
                       args poolId, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(helperAddress)
                staticcall helperAddress.0xbff3d718 with:
                        gas gas_remaining wei
                       args tokenAddress, 2 * ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(helperAddress)
                staticcall helperAddress.0x64d69efe with:
                        gas gas_remaining wei
                       args minterAddress, poolId
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                return 0 / totalShares, 
                       principalOf[address(arg1)],
                       0,
                       0,
                       0,
                       0,
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[32],
                       ext_call.return_data[64]
            if principalOf[address(arg1)] > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(helperAddress)
            staticcall helperAddress.0x9bf2492d with:
                    gas gas_remaining wei
                   args minterAddress, tokenAddress, -principalOf[address(arg1)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
            staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
                    gas gas_remaining wei
                   args poolId, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(helperAddress)
            staticcall helperAddress.0xbff3d718 with:
                    gas gas_remaining wei
                   args tokenAddress, 2 * ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(helperAddress)
            staticcall helperAddress.0x64d69efe with:
                    gas gas_remaining wei
                   args minterAddress, poolId
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            return 0 / totalShares, 
                   principalOf[address(arg1)],
                   0,
                   ext_call.return_data[0],
                   ext_call.return_data[32],
                   ext_call.return_data[64],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[32],
                   ext_call.return_data[64]
        require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
        staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
                gas gas_remaining wei
               args poolId, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0]:
            if not totalShares:
                revert with 0, 'SafeMath: division by zero', 0
            if 0 == totalShares:
                if principalOf[address(arg1)] >= 0:
                    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
                    staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
                            gas gas_remaining wei
                           args poolId, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(helperAddress)
                    staticcall helperAddress.0xbff3d718 with:
                            gas gas_remaining wei
                           args tokenAddress, 2 * ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(helperAddress)
                    staticcall helperAddress.0x64d69efe with:
                            gas gas_remaining wei
                           args minterAddress, poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    return 0 / totalShares, 
                           principalOf[address(arg1)],
                           0 / totalShares,
                           0,
                           0,
                           0,
                           ext_call.return_data[0],
                           ext_call.return_data[0],
                           ext_call.return_data[32],
                           ext_call.return_data[64]
                if principalOf[address(arg1)] > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(helperAddress)
                staticcall helperAddress.0x9bf2492d with:
                        gas gas_remaining wei
                       args minterAddress, tokenAddress, -principalOf[address(arg1)]
            else:
                require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
                staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
                        gas gas_remaining wei
                       args poolId, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not 2 * ext_call.return_data[0]:
                    if not totalShares:
                        revert with 0, 'SafeMath: division by zero', 0
                    if principalOf[address(arg1)] >= 0 / totalShares:
                        require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
                        staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
                                gas gas_remaining wei
                               args poolId, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(helperAddress)
                        staticcall helperAddress.0xbff3d718 with:
                                gas gas_remaining wei
                               args tokenAddress, 2 * ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(helperAddress)
                        staticcall helperAddress.0x64d69efe with:
                                gas gas_remaining wei
                               args minterAddress, poolId
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        return 0 / totalShares, 
                               principalOf[address(arg1)],
                               0 / totalShares,
                               0,
                               0,
                               0,
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[32],
                               ext_call.return_data[64]
                    if principalOf[address(arg1)] > 0 / totalShares:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(helperAddress)
                    staticcall helperAddress.0x9bf2492d with:
                            gas gas_remaining wei
                           args minterAddress, tokenAddress, (0 / totalShares) - principalOf[address(arg1)]
                else:
                    if (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / 2 * ext_call.return_data[0] != sharesOf[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not totalShares:
                        revert with 0, 'SafeMath: division by zero', 0
                    if principalOf[address(arg1)] >= (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares:
                        require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
                        staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
                                gas gas_remaining wei
                               args poolId, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(helperAddress)
                        staticcall helperAddress.0xbff3d718 with:
                                gas gas_remaining wei
                               args tokenAddress, 2 * ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(helperAddress)
                        staticcall helperAddress.0x64d69efe with:
                                gas gas_remaining wei
                               args minterAddress, poolId
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        return 0 / totalShares, 
                               principalOf[address(arg1)],
                               0 / totalShares,
                               0,
                               0,
                               0,
                               ext_call.return_data[0],
                               ext_call.return_data[0],
                               ext_call.return_data[32],
                               ext_call.return_data[64]
                    if principalOf[address(arg1)] > (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(helperAddress)
                    staticcall helperAddress.0x9bf2492d with:
                            gas gas_remaining wei
                           args minterAddress, tokenAddress, ((ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
            staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
                    gas gas_remaining wei
                   args poolId, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(helperAddress)
            staticcall helperAddress.0xbff3d718 with:
                    gas gas_remaining wei
                   args tokenAddress, 2 * ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(helperAddress)
            staticcall helperAddress.0x64d69efe with:
                    gas gas_remaining wei
                   args minterAddress, poolId
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            return 0 / totalShares, 
                   principalOf[address(arg1)],
                   0 / totalShares,
                   ext_call.return_data[0],
                   ext_call.return_data[32],
                   ext_call.return_data[64],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[32],
                   ext_call.return_data[64]
        if (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / 2 * ext_call.return_data[0] != sharesOf[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not totalShares:
            revert with 0, 'SafeMath: division by zero', 0
        if 0 == totalShares:
            if principalOf[address(arg1)] >= 0:
                require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
                staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
                        gas gas_remaining wei
                       args poolId, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(helperAddress)
                staticcall helperAddress.0xbff3d718 with:
                        gas gas_remaining wei
                       args tokenAddress, 2 * ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(helperAddress)
                staticcall helperAddress.0x64d69efe with:
                        gas gas_remaining wei
                       args minterAddress, poolId
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                return 0 / totalShares, 
                       principalOf[address(arg1)],
                       (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares,
                       0,
                       0,
                       0,
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[32],
                       ext_call.return_data[64]
            if principalOf[address(arg1)] > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(helperAddress)
            staticcall helperAddress.0x9bf2492d with:
                    gas gas_remaining wei
                   args minterAddress, tokenAddress, -principalOf[address(arg1)]
        else:
            require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
            staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
                    gas gas_remaining wei
                   args poolId, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 2 * ext_call.return_data[0]:
                if not totalShares:
                    revert with 0, 'SafeMath: division by zero', 0
                if principalOf[address(arg1)] >= 0 / totalShares:
                    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
                    staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
                            gas gas_remaining wei
                           args poolId, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(helperAddress)
                    staticcall helperAddress.0xbff3d718 with:
                            gas gas_remaining wei
                           args tokenAddress, 2 * ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(helperAddress)
                    staticcall helperAddress.0x64d69efe with:
                            gas gas_remaining wei
                           args minterAddress, poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    return 0 / totalShares, 
                           principalOf[address(arg1)],
                           (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares,
                           0,
                           0,
                           0,
                           ext_call.return_data[0],
                           ext_call.return_data[0],
                           ext_call.return_data[32],
                           ext_call.return_data[64]
                if principalOf[address(arg1)] > 0 / totalShares:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(helperAddress)
                staticcall helperAddress.0x9bf2492d with:
                        gas gas_remaining wei
                       args minterAddress, tokenAddress, (0 / totalShares) - principalOf[address(arg1)]
            else:
                if (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / 2 * ext_call.return_data[0] != sharesOf[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not totalShares:
                    revert with 0, 'SafeMath: division by zero', 0
                if principalOf[address(arg1)] >= (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares:
                    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
                    staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
                            gas gas_remaining wei
                           args poolId, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(helperAddress)
                    staticcall helperAddress.0xbff3d718 with:
                            gas gas_remaining wei
                           args tokenAddress, 2 * ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(helperAddress)
                    staticcall helperAddress.0x64d69efe with:
                            gas gas_remaining wei
                           args minterAddress, poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    return 0 / totalShares, 
                           principalOf[address(arg1)],
                           (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares,
                           0,
                           0,
                           0,
                           ext_call.return_data[0],
                           ext_call.return_data[0],
                           ext_call.return_data[32],
                           ext_call.return_data[64]
                if principalOf[address(arg1)] > (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(helperAddress)
                staticcall helperAddress.0x9bf2492d with:
                        gas gas_remaining wei
                       args minterAddress, tokenAddress, ((ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
        staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
                gas gas_remaining wei
               args poolId, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(helperAddress)
        staticcall helperAddress.0xbff3d718 with:
                gas gas_remaining wei
               args tokenAddress, 2 * ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(helperAddress)
        staticcall helperAddress.0x64d69efe with:
                gas gas_remaining wei
               args minterAddress, poolId
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        return 0 / totalShares, 
               principalOf[address(arg1)],
               (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares,
               ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[64]
    if (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / 2 * ext_call.return_data[0] != sharesOf[address(arg1)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalShares:
        revert with 0, 'SafeMath: division by zero', 0
    if 0 == totalShares:
        if principalOf[address(arg1)] >= 0:
            require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
            staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
                    gas gas_remaining wei
                   args poolId, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(helperAddress)
            staticcall helperAddress.0xbff3d718 with:
                    gas gas_remaining wei
                   args tokenAddress, 2 * ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(helperAddress)
            staticcall helperAddress.0x64d69efe with:
                    gas gas_remaining wei
                   args minterAddress, poolId
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            return (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares, 
                   principalOf[address(arg1)],
                   0,
                   0,
                   0,
                   0,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[32],
                   ext_call.return_data[64]
        if principalOf[address(arg1)] > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(helperAddress)
        staticcall helperAddress.0x9bf2492d with:
                gas gas_remaining wei
               args minterAddress, tokenAddress, -principalOf[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
        staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
                gas gas_remaining wei
               args poolId, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(helperAddress)
        staticcall helperAddress.0xbff3d718 with:
                gas gas_remaining wei
               args tokenAddress, 2 * ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(helperAddress)
        staticcall helperAddress.0x64d69efe with:
                gas gas_remaining wei
               args minterAddress, poolId
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        return (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares, 
               principalOf[address(arg1)],
               0,
               ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[64]
    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
    staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        if not totalShares:
            revert with 0, 'SafeMath: division by zero', 0
        if 0 == totalShares:
            if principalOf[address(arg1)] >= 0:
                require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
                staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
                        gas gas_remaining wei
                       args poolId, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(helperAddress)
                staticcall helperAddress.0xbff3d718 with:
                        gas gas_remaining wei
                       args tokenAddress, 2 * ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(helperAddress)
                staticcall helperAddress.0x64d69efe with:
                        gas gas_remaining wei
                       args minterAddress, poolId
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                return (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares, 
                       principalOf[address(arg1)],
                       0 / totalShares,
                       0,
                       0,
                       0,
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[32],
                       ext_call.return_data[64]
            if principalOf[address(arg1)] > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(helperAddress)
            staticcall helperAddress.0x9bf2492d with:
                    gas gas_remaining wei
                   args minterAddress, tokenAddress, -principalOf[address(arg1)]
        else:
            require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
            staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
                    gas gas_remaining wei
                   args poolId, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 2 * ext_call.return_data[0]:
                if not totalShares:
                    revert with 0, 'SafeMath: division by zero', 0
                if principalOf[address(arg1)] >= 0 / totalShares:
                    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
                    staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
                            gas gas_remaining wei
                           args poolId, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(helperAddress)
                    staticcall helperAddress.0xbff3d718 with:
                            gas gas_remaining wei
                           args tokenAddress, 2 * ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(helperAddress)
                    staticcall helperAddress.0x64d69efe with:
                            gas gas_remaining wei
                           args minterAddress, poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    return (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares, 
                           principalOf[address(arg1)],
                           0 / totalShares,
                           0,
                           0,
                           0,
                           ext_call.return_data[0],
                           ext_call.return_data[0],
                           ext_call.return_data[32],
                           ext_call.return_data[64]
                if principalOf[address(arg1)] > 0 / totalShares:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(helperAddress)
                staticcall helperAddress.0x9bf2492d with:
                        gas gas_remaining wei
                       args minterAddress, tokenAddress, (0 / totalShares) - principalOf[address(arg1)]
            else:
                if (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / 2 * ext_call.return_data[0] != sharesOf[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not totalShares:
                    revert with 0, 'SafeMath: division by zero', 0
                if principalOf[address(arg1)] >= (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares:
                    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
                    staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
                            gas gas_remaining wei
                           args poolId, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(helperAddress)
                    staticcall helperAddress.0xbff3d718 with:
                            gas gas_remaining wei
                           args tokenAddress, 2 * ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(helperAddress)
                    staticcall helperAddress.0x64d69efe with:
                            gas gas_remaining wei
                           args minterAddress, poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    return (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares, 
                           principalOf[address(arg1)],
                           0 / totalShares,
                           0,
                           0,
                           0,
                           ext_call.return_data[0],
                           ext_call.return_data[0],
                           ext_call.return_data[32],
                           ext_call.return_data[64]
                if principalOf[address(arg1)] > (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(helperAddress)
                staticcall helperAddress.0x9bf2492d with:
                        gas gas_remaining wei
                       args minterAddress, tokenAddress, ((ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
        staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
                gas gas_remaining wei
               args poolId, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(helperAddress)
        staticcall helperAddress.0xbff3d718 with:
                gas gas_remaining wei
               args tokenAddress, 2 * ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(helperAddress)
        staticcall helperAddress.0x64d69efe with:
                gas gas_remaining wei
               args minterAddress, poolId
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        return (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares, 
               principalOf[address(arg1)],
               0 / totalShares,
               ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[64]
    if (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / 2 * ext_call.return_data[0] != sharesOf[address(arg1)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalShares:
        revert with 0, 'SafeMath: division by zero', 0
    if 0 == totalShares:
        if principalOf[address(arg1)] >= 0:
            require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
            staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
                    gas gas_remaining wei
                   args poolId, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(helperAddress)
            staticcall helperAddress.0xbff3d718 with:
                    gas gas_remaining wei
                   args tokenAddress, 2 * ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(helperAddress)
            staticcall helperAddress.0x64d69efe with:
                    gas gas_remaining wei
                   args minterAddress, poolId
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            return (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares, 
                   principalOf[address(arg1)],
                   (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares,
                   0,
                   0,
                   0,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[32],
                   ext_call.return_data[64]
        if principalOf[address(arg1)] > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(helperAddress)
        staticcall helperAddress.0x9bf2492d with:
                gas gas_remaining wei
               args minterAddress, tokenAddress, -principalOf[address(arg1)]
    else:
        require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
        staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
                gas gas_remaining wei
               args poolId, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0]:
            if not totalShares:
                revert with 0, 'SafeMath: division by zero', 0
            if principalOf[address(arg1)] >= 0 / totalShares:
                require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
                staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
                        gas gas_remaining wei
                       args poolId, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(helperAddress)
                staticcall helperAddress.0xbff3d718 with:
                        gas gas_remaining wei
                       args tokenAddress, 2 * ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(helperAddress)
                staticcall helperAddress.0x64d69efe with:
                        gas gas_remaining wei
                       args minterAddress, poolId
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                return (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares, 
                       principalOf[address(arg1)],
                       (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares,
                       0,
                       0,
                       0,
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[32],
                       ext_call.return_data[64]
            if principalOf[address(arg1)] > 0 / totalShares:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(helperAddress)
            staticcall helperAddress.0x9bf2492d with:
                    gas gas_remaining wei
                   args minterAddress, tokenAddress, (0 / totalShares) - principalOf[address(arg1)]
        else:
            if (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / 2 * ext_call.return_data[0] != sharesOf[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not totalShares:
                revert with 0, 'SafeMath: division by zero', 0
            if principalOf[address(arg1)] >= (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares:
                require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
                staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
                        gas gas_remaining wei
                       args poolId, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(helperAddress)
                staticcall helperAddress.0xbff3d718 with:
                        gas gas_remaining wei
                       args tokenAddress, 2 * ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(helperAddress)
                staticcall helperAddress.0x64d69efe with:
                        gas gas_remaining wei
                       args minterAddress, poolId
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                return (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares, 
                       principalOf[address(arg1)],
                       (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares,
                       0,
                       0,
                       0,
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[32],
                       ext_call.return_data[64]
            if principalOf[address(arg1)] > (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(helperAddress)
            staticcall helperAddress.0x9bf2492d with:
                    gas gas_remaining wei
                   args minterAddress, tokenAddress, ((ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares) - principalOf[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
    staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(helperAddress)
    staticcall helperAddress.0xbff3d718 with:
            gas gas_remaining wei
           args tokenAddress, 2 * ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(helperAddress)
    staticcall helperAddress.0x64d69efe with:
            gas gas_remaining wei
           args minterAddress, poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares, 
           principalOf[address(arg1)],
           (ext_call.return_data[0] * sharesOf[address(arg1)]) + (ext_call.return_data[0] * sharesOf[address(arg1)]) / totalShares,
           ext_call.return_data[0],
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[32],
           ext_call.return_data[64]
}



}
