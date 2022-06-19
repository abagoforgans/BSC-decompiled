contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of address sub_0f4ae446;
mapping of uint256 totalCommission;
address vaultAddress;
address busdAddress;
address nftAddress;
address sub_7b93c212Address;
uint256 stor8;
uint256 presalePrice;
uint256 presaleCount;
uint256 presaleLimit;

function presalePrice() payable {
    return presalePrice
}

function sub_0f4ae446(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_0f4ae446[arg1]
}

function vaultAddress() payable {
    return vaultAddress
}

function presaleLimit() payable {
    return presaleLimit
}

function nftAddress() payable {
    return nftAddress
}

function busdAddress() payable {
    return busdAddress
}

function sub_7b93c212(?) payable {
    return sub_7b93c212Address
}

function owner() payable {
    return owner
}

function presaleCount() payable {
    return presaleCount
}

function sub_ec4007d3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
}

function totalCommission(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalCommission[arg1]
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

function sub_efb6559a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    presaleLimit = arg1
}

function sub_73a6c7ab(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    vaultAddress = address(arg1)
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

function sub_85f91f84(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if sha3(arg1[all]) == sha3('1'):
        return 0
    if sha3(arg1[all]) == sha3('2'):
        return 1
    if sha3(arg1[all]) == sha3('3'):
        return 2
    if sha3(arg1[all]) == sha3('4'):
        return 3
    if sha3(arg1[all]) == sha3('5'):
        return 4
    if sha3(arg1[all]) == sha3('6'):
        return 5
    if sha3(arg1[all]) == sha3('7'):
        return 6
    if sha3(arg1[all]) == sha3('8'):
        return 7
    if sha3(arg1[all]) == sha3('9'):
        return 8
    if sha3(arg1[all]) == sha3('10'):
        return 9
    if sha3(arg1[all]) == sha3('11'):
        return 10
    if sha3(arg1[all]) == sha3('12'):
        return 11
    if sha3(arg1[all]) == sha3('13'):
        return 12
    if sha3(arg1[all]) == sha3('14'):
        return 13
    if sha3(arg1[all]) == sha3('15'):
        return 14
    if sha3(arg1[all]) == sha3('16'):
        return 15
    if sha3(arg1[all]) == sha3('17'):
        return 16
    if sha3(arg1[all]) == sha3('18'):
        return 17
    if sha3(arg1[all]) == sha3('19'):
        return 18
    if sha3(arg1[all]) != sha3('20'):
        return 0
    return 19
}

function sub_bd117ee9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 100
    mem[64] = 256
    mem[128 len 100] = call.data[calldata.size len 100]
    s = 0
    idx = arg1
    while idx:
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if s == -1:
            revert with 'NH{q', 17
        if s >= mem[96]:
            revert with 'NH{q', 50
        mem[s + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    _9 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if s:
        mem[_9 + 32 len s] = call.data[calldata.size len s]
        if s < s:
            revert with 'NH{q', 17
        mem[_9 + ceil32(s) + 32] = 32
        mem[_9 + ceil32(s) + 64] = mem[_9]
        mem[_9 + ceil32(s) + 96 len ceil32(mem[_9])] = mem[_9 + 32 len ceil32(mem[_9])]
        if ceil32(mem[_9]) > mem[_9]:
            mem[_9 + ceil32(s) + mem[_9] + 96] = 0
        return memory
          from mem[64]
           len _9 + ceil32(s) + ceil32(mem[_9]) + -mem[64] + 96
    t = 0
    while t < s:
        if s < t:
            revert with 'NH{q', 17
        if s - t < 1:
            revert with 'NH{q', 17
        if s + -t - 1 >= mem[96]:
            revert with 'NH{q', 50
        if t >= mem[_9]:
            revert with 'NH{q', 50
        mem[t + _9 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if t == -1:
            revert with 'NH{q', 17
        t = t + 1
        continue 
    _27 = mem[64]
    mem[mem[64]] = 32
    _29 = mem[_9]
    mem[mem[64] + 32] = mem[_9]
    mem[mem[64] + 64 len ceil32(_29)] = mem[_9 + 32 len ceil32(_29)]
    if ceil32(_29) <= _29:
        return 32, mem[mem[64] + 32 len ceil32(_29) + 32]
    mem[mem[64] + _29 + 64] = 0
    return memory
      from mem[64]
       len _27 + ceil32(_29) + -mem[64] + 64
}

function buyPresale(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require presaleCount < presaleLimit
    if not stor1[address(msg.sender)]:
        sub_0f4ae446[address(msg.sender)] = arg1
        stor1[address(msg.sender)] = 1
    if stor8 == -1:
        revert with 'NH{q', 17
    stor8++
    require ext_code.size(nftAddress)
    staticcall nftAddress.NFTCounter() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if presalePrice and 10^18 > -1 / presalePrice:
        revert with 'NH{q', 17
    if 10^18 * presalePrice and 90 > -1 / 10^18 * presalePrice:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 216] = msg.sender
    mem[ceil32(return_data.size) + 248] = vaultAddress
    mem[ceil32(return_data.size) + 280] = 25 * 10^15 * 3600 * presalePrice / 100
    require ext_code.size(busdAddress)
    call busdAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, vaultAddress, 25 * 10^15 * 3600 * presalePrice / 100
    mem[ceil32(return_data.size) + 212] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 10^18 * presalePrice and 10 > -1 / 10^18 * presalePrice:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 216] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 248] = sub_0f4ae446[address(msg.sender)]
    mem[(2 * ceil32(return_data.size)) + 280] = 10 * 10^18 * presalePrice / 100
    require ext_code.size(busdAddress)
    call busdAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, sub_0f4ae446[address(msg.sender)], 10 * 10^18 * presalePrice / 100
    mem[(2 * ceil32(return_data.size)) + 212] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 10^18 * presalePrice and 10 > -1 / 10^18 * presalePrice:
        revert with 'NH{q', 17
    if totalCommission[stor2[address(msg.sender)]] > -(10 * 10^18 * presalePrice / 100) - 1:
        revert with 'NH{q', 17
    totalCommission[stor2[address(msg.sender)]] += 10 * 10^18 * presalePrice / 100
    s = 0
    idx = sha3(block.timestamp, address(msg.sender), stor8) % 19
    while idx:
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if s == -1:
            revert with 'NH{q', 17
        if s >= 100:
            revert with 'NH{q', 50
        mem[s + (4 * ceil32(return_data.size)) + 244 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    if not s:
        t = 0
        while t < s:
            if s < t:
                revert with 'NH{q', 17
            if s - t < 1:
                revert with 'NH{q', 17
            if s + -t - 1 >= 100:
                revert with 'NH{q', 50
            if t >= s:
                revert with 'NH{q', 50
            mem[t + (4 * ceil32(return_data.size)) + 404 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if t == -1:
                revert with 'NH{q', 17
            t = t + 1
            continue 
        require ext_code.size(nftAddress)
        call nftAddress.0x4720c924 with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0], Array(len=s, data=mem[(4 * ceil32(return_data.size)) + 404 len ceil32(s)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_7b93c212Address)
        call sub_7b93c212Address.0x34a5aa6e with:
             gas gas_remaining wei
            args ext_call.return_data[0], msg.sender
    else:
        if s < s:
            revert with 'NH{q', 17
        mem[(4 * ceil32(return_data.size)) + ceil32(s) + 404] = 0x4720c92400000000000000000000000000000000000000000000000000000000
        t = 0
        while t < t:
            mem[(4 * ceil32(return_data.size)) + ceil32(t) + t + 536] = mem[(4 * ceil32(return_data.size)) + t + 404 len ceil32(t) + -t + 4], Mask(8 * t + -ceil32(t) + 28, -(8 * t + -ceil32(t) + 28) + 256, msg.sender) >> -(8 * t + -ceil32(t) + 28) + 256
            t = t + 32
            continue 
        if ceil32(t) > t:
            mem[(4 * ceil32(return_data.size)) + ceil32(ceil32(t)) + t + 536] = 0
        require ext_code.size(nftAddress)
        call nftAddress with:
           funct Mask(8 * -ceil32(ceil32(t)) + ceil32(t) + 4, 224, 1193330980) >> 224, Mask(8 * ceil32(ceil32(t)) - ceil32(t), -(8 * ceil32(ceil32(t)) + -ceil32(t) + 4) + 256, 0x4720c92400000000000000000000000000000000000000000000000000000000) >> -(8 * ceil32(ceil32(t)) + -ceil32(t) + 4) + 256
             gas gas_remaining wei
            args Mask(8 * -ceil32(ceil32(t)) + ceil32(t) + 32, 0, msg.sender), ext_call.return_data[0], Array(len=t, data=mem[(4 * ceil32(return_data.size)) + ceil32(t) + 536 len ceil32(ceil32(t))])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_7b93c212Address)
        call sub_7b93c212Address.0x34a5aa6e with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + ceil32(t) + 472 len ceil32(ceil32(t)) - ceil32(t)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_7b93c212Address)
    call sub_7b93c212Address.0x4c9a97 with:
         gas gas_remaining wei
        args ext_call.return_data[0], sha3(block.timestamp, msg.sender, stor8) % 19
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_7b93c212Address)
    call sub_7b93c212Address.0x7ffdf92b with:
         gas gas_remaining wei
        args ext_call.return_data[0], 72
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if presaleCount == -1:
        revert with 'NH{q', 17
    presaleCount++
}



}
