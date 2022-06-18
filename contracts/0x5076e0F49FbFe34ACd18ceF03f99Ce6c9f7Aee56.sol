contract main {




// =====================  Runtime code  =====================


#
#  - protect(address arg1, address arg2, uint256 arg3)
#
address owner;
address _token0Address;
address _token1Address;
address _factoryAddress;
address _routerAddress;
address sub_df1a60c2Address;
uint256 stor6;
address sub_200e9798Address;
address sub_c2dee94eAddress;
uint256 _maxBuyAmount;
uint256 _maxSellAmount;
uint256 _buyCooldown;
uint256 _sellCooldown;
uint256 sub_ab4710e3;
uint256 sub_34a9ec21;
uint256 _buyCooldownFastestBuyers;
uint256 sub_8e8cb79a;
uint256 _fastestBuyersTimeframe;
uint256 _blacklistTimeframe;
uint256 sub_1840769a;
uint256 sub_f6037cce;
array of struct sub_cbb58924;
mapping of uint8 stor22;
mapping of uint8 stor23;
array of struct sub_6b4d096c;
mapping of uint256 sub_e0aa7b1d;
mapping of uint256 sub_de3fbf34;
mapping of uint256 sub_9f20d2a4;
mapping of uint8 stor28;
uint256 listingTimestamp;
uint256 sub_b12c6cbb;
uint256 sub_9e34db0d;
address sub_e83d301aAddress;
mapping of struct sub_06a743d9;
uint256 tierLength;
uint256 sub_be6918b3;
mapping of uint8 stor36;
uint8 sub_89a9470a;
uint8 sub_31fe6234; offset 8
uint256 stor37; offset 8
uint256 sub_71699a3a;
mapping of uint256 sub_6f49e345;
mapping of uint8 stor40;
array of struct stor41;
array of address stor80167465652159884487584418398737133515478493586045375474096367959472086682926;

function tiers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return sub_06a743d9[arg1].field_0, 
           sub_06a743d9[arg1].field_256,
           sub_06a743d9[arg1].field_512,
           sub_06a743d9[arg1].field_768,
           sub_06a743d9[arg1].field_1024,
           sub_06a743d9[arg1].field_1280,
           sub_06a743d9[arg1].field_1536
}

function _maxBuyAmount() payable {
    return _maxBuyAmount
}

function sub_06a743d9(?) payable {
    require calldata.size - 4 >= 32
    return sub_06a743d9[arg1].field_0, 
           sub_06a743d9[arg1].field_512,
           sub_06a743d9[arg1].field_256,
           sub_06a743d9[arg1].field_768,
           sub_06a743d9[arg1].field_1536,
           sub_06a743d9[arg1].field_1280,
           sub_06a743d9[arg1].field_1024
}

function sub_1840769a(?) payable {
    return sub_1840769a
}

function sub_200e9798(?) payable {
    return sub_200e9798Address
}

function isAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor36[address(arg1)])
}

function sub_31fe6234(?) payable {
    return bool(sub_31fe6234)
}

function sub_34a9ec21(?) payable {
    return sub_34a9ec21
}

function admins(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor36[arg1])
}

function _buyCooldownFastestBuyers() payable {
    return _buyCooldownFastestBuyers
}

function _token1() payable {
    return _token1Address
}

function _sellCooldown() payable {
    return _sellCooldown
}

function _token0() payable {
    return _token0Address
}

function sub_6a7d44e7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor22[arg1])
}

function sub_6b4d096c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_6b4d096c.length
    return sub_6b4d096c[arg1].field_0
}

function sub_6f49e345(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_6f49e345[arg1]
}

function sub_71699a3a(?) payable {
    return sub_71699a3a
}

function sub_7a218bd6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor40[arg1])
}

function _maxSellAmount() payable {
    return _maxSellAmount
}

function _blacklistTimeframe() payable {
    return _blacklistTimeframe
}

function sub_89a9470a(?) payable {
    return bool(sub_89a9470a)
}

function tierLength() payable {
    return tierLength
}

function owner() payable {
    return owner
}

function sub_8e8cb79a(?) payable {
    return sub_8e8cb79a
}

function _buyCooldown() payable {
    return _buyCooldown
}

function sub_9e34db0d(?) payable {
    return sub_9e34db0d
}

function sub_9f20d2a4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9f20d2a4[arg1]
}

function _blacklist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor23[arg1])
}

function sub_ab4710e3(?) payable {
    return sub_ab4710e3
}

function sub_abdccd49(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor28[arg1])
}

function sub_b12c6cbb(?) payable {
    return sub_b12c6cbb
}

function _fastestBuyersTimeframe() payable {
    return _fastestBuyersTimeframe
}

function listingTimestamp() payable {
    return listingTimestamp
}

function sub_be6918b3(?) payable {
    return sub_be6918b3
}

function getPair() payable {
    return sub_df1a60c2Address
}

function sub_c2dee94e(?) payable {
    return sub_c2dee94eAddress
}

function _factory() payable {
    return _factoryAddress
}

function sub_cbb58924(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_cbb58924.length
    return sub_cbb58924[arg1].field_0
}

function sub_de3fbf34(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_de3fbf34[arg1]
}

function sub_df1a60c2(?) payable {
    return sub_df1a60c2Address
}

function sub_e0aa7b1d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_e0aa7b1d[arg1]
}

function sub_e83d301a(?) payable {
    return sub_e83d301aAddress
}

function _router() payable {
    return _routerAddress
}

function sub_f6037cce(?) payable {
    return sub_f6037cce
}

function _fallback() payable {
    revert
}

function getBlackListValidUntil() payable {
    if listingTimestamp > !_blacklistTimeframe:
        revert with 0, 17
    return (listingTimestamp + _blacklistTimeframe)
}

function getFastestValidUntil() payable {
    if listingTimestamp > !_fastestBuyersTimeframe:
        revert with 0, 17
    return (listingTimestamp + _fastestBuyersTimeframe)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_dff16978(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_be6918b3 = arg1
}

function setWLLockedPercentage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_71699a3a = arg1
}

function setSellCoolDownFastestBuyers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8e8cb79a = arg1
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor36[address(arg1)] = 1
}

function setBuyCoolDownFastestBuyers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _buyCooldownFastestBuyers = arg1
}

function sub_72d5dfc2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor22[address(arg1)] = 0
}

function setLpPair(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_df1a60c2Address = arg1
}

function removeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor36[address(arg1)] = 0
}

function sub_1ebe1e0f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_200e9798Address = address(arg1)
}

function setWLProtectionEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor37 = Mask(248, 0, arg1)
}

function setFrontRunningEnabledStatus(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_89a9470a = uint8(arg1)
}

function excludeFromTransferLimitations(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor28[address(arg1)] = 1
}

function getDataAboutInvestor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_de3fbf34[address(arg1)], sub_9f20d2a4[address(arg1)], bool(stor23[address(arg1)]), bool(stor22[address(arg1)])
}

function includedAddressesFromTransferLimitations(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor28[address(arg1)] = 0
}

function removeFromBlackList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor23[address(arg1)]:
        stor23[address(arg1)] = 0
}

function setAutoBlacklistCount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 200:
        revert with 0, 'count must be less than 200'
    sub_1840769a = arg1
}

function setMaxBuyAmountFastestBuyers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Max buy amount can't be zero'
    sub_ab4710e3 = arg1
}

function setMaxSellAmountFastestBuyers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Max sell amount can't be zero'
    sub_34a9ec21 = arg1
}

function isBlacklisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_df1a60c2Address == arg1:
        return 0
    if _routerAddress == arg1:
        return 0
    if _token0Address == arg1:
        return 0
    return bool(stor23[address(arg1)])
}

function sub_576e2f2e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_31fe6234:
        return 0
    if sub_6f49e345[address(arg1)] and sub_71699a3a > -1 / sub_6f49e345[address(arg1)]:
        revert with 0, 17
    return (sub_6f49e345[address(arg1)] * sub_71699a3a / 100)
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

function getTierByAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < tierLength:
        mem[0] = arg1
        mem[32] = sha3(idx, 33) + 7
        if not sub_06a743d9[idx][7][address(arg1)].field_0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if 1 > !idx:
            revert with 0, 17
        return (idx + 1)
    return 0
}

function setMaxBuyAmount(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _maxBuyAmount = arg1
    if arg2:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        idx = 0
        while idx < tierLength:
            mem[0] = idx
            mem[32] = 33
            if arg1:
                sub_06a743d9[idx].field_0 = arg1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function setMaxSellAmount(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _maxSellAmount = arg1
    if arg2:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        idx = 0
        while idx < tierLength:
            mem[0] = idx
            mem[32] = 33
            if arg1:
                sub_06a743d9[idx].field_256 = arg1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function setBuyCoolDown(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'buy cooldown must be less than 10 minutes'
    _buyCooldown = arg1
    if arg2:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        idx = 0
        while idx < tierLength:
            mem[0] = idx
            mem[32] = 33
            if arg1:
                sub_06a743d9[idx].field_512 = arg1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function setSellCoolDown(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sell cooldown must be less than 10 minutes'
    _sellCooldown = arg1
    if arg2:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        idx = 0
        while idx < tierLength:
            mem[0] = idx
            mem[32] = 33
            if arg1:
                sub_06a743d9[idx].field_768 = arg1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function manualBlackList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp < listingTimestamp:
        revert with 0, 17
    if block.timestamp - listingTimestamp >= _blacklistTimeframe:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Manual blacklist timeframe is off'
    if sub_df1a60c2Address == arg1:
        revert with 0, 'Can't blacklist pair address'
    if _token0Address == arg1:
        revert with 0, 'Can't blacklist contract address'
    if _routerAddress == arg1:
        revert with 0, 'Can't blacklist router address'
    stor23[address(arg1)] = 1
    sub_e0aa7b1d[address(arg1)] = sub_6b4d096c.length
    sub_6b4d096c.length++
    storB13D[stor24.length] = arg1
}

function sub_a8fe8a5b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < tierLength:
        mem[0] = address(arg1)
        mem[32] = sha3(idx, 33) + 7
        if not sub_06a743d9[idx][7][address(arg1)].field_0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if 1 > !idx:
            revert with 0, 17
        if block.timestamp > sub_9e34db0d:
            if sub_9e34db0d:
                return 0
        if not idx + 1:
            return _buyCooldown
        if not sub_31fe6234:
            return _buyCooldown
        if idx + 1 < 1:
            revert with 0, 17
        return sub_06a743d9[idx].field_512
    if block.timestamp <= sub_9e34db0d:
        return _buyCooldown
    if not sub_9e34db0d:
        return _buyCooldown
    return 0
}

function sub_79d6daa8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < tierLength:
        mem[0] = address(arg1)
        mem[32] = sha3(idx, 33) + 7
        if not sub_06a743d9[idx][7][address(arg1)].field_0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if 1 > !idx:
            revert with 0, 17
        if block.timestamp > sub_9e34db0d:
            if sub_9e34db0d:
                return 0
        if not idx + 1:
            return _sellCooldown
        if not sub_31fe6234:
            return _sellCooldown
        if idx + 1 < 1:
            revert with 0, 17
        return sub_06a743d9[idx].field_768
    if block.timestamp <= sub_9e34db0d:
        return _sellCooldown
    if not sub_9e34db0d:
        return _sellCooldown
    return 0
}

function sub_62766f97(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < tierLength:
        mem[0] = address(arg1)
        mem[32] = sha3(idx, 33) + 7
        if not sub_06a743d9[idx][7][address(arg1)].field_0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if 1 > !idx:
            revert with 0, 17
        if block.timestamp > sub_9e34db0d:
            if sub_9e34db0d:
                return stor6
        if not idx + 1:
            return _maxBuyAmount
        if not sub_31fe6234:
            return _maxBuyAmount
        if idx + 1 < 1:
            revert with 0, 17
        return sub_06a743d9[idx].field_0
    if block.timestamp <= sub_9e34db0d:
        return _maxBuyAmount
    if not sub_9e34db0d:
        return _maxBuyAmount
    return stor6
}

function getBlacklistArray() payable {
    if sub_6b4d096c.length:
        mem[128] = address(sub_6b4d096c.field_0)
        if (32 * sub_6b4d096c.length) + 32 > 64:
            mem[160] = address(sub_6b4d096c.field_256)
            idx = 160
            s = 1
            while (32 * sub_6b4d096c.length) + 96 > idx:
                mem[idx + 32] = sub_6b4d096c[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_6b4d096c.length) + 128] = 32
    mem[(32 * sub_6b4d096c.length) + 160] = sub_6b4d096c.length
    idx = 0
    s = (32 * sub_6b4d096c.length) + 192
    t = 128
    while idx < sub_6b4d096c.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * sub_6b4d096c.length) + 128
       len (96 * sub_6b4d096c.length) + 64
}

function sub_5687b324(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < tierLength:
        mem[0] = address(arg1)
        mem[32] = sha3(idx, 33) + 7
        if not sub_06a743d9[idx][7][address(arg1)].field_0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if 1 > !idx:
            revert with 0, 17
        if block.timestamp > sub_9e34db0d:
            if sub_9e34db0d:
                return stor6
        if not idx + 1:
            return _maxSellAmount
        if not sub_31fe6234:
            return _maxSellAmount
        if idx + 1 < 1:
            revert with 0, 17
        return sub_06a743d9[idx].field_256
    if block.timestamp <= sub_9e34db0d:
        return _maxSellAmount
    if not sub_9e34db0d:
        return _maxSellAmount
    return stor6
}

function sub_c7f3eefd(?) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 1000 == arg1:
        idx = 0
        while idx < tierLength:
            mem[0] = idx
            mem[32] = 33
            if arg2:
                sub_06a743d9[idx].field_768 = arg2
            if arg3:
                sub_06a743d9[idx].field_256 = arg3
            if arg4:
                sub_06a743d9[idx].field_512 = arg4
            if arg5:
                sub_06a743d9[idx].field_0 = arg5
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if arg2:
            sub_06a743d9[arg1].field_768 = arg2
        if arg3:
            sub_06a743d9[arg1].field_256 = arg3
        if arg4:
            sub_06a743d9[arg1].field_512 = arg4
        if arg5:
            sub_06a743d9[arg1].field_0 = arg5
}

function getFastestBuyers() payable {
    mem[64] = (32 * sub_cbb58924.length) + 128
    mem[96] = sub_cbb58924.length
    if not sub_cbb58924.length:
        mem[(32 * sub_cbb58924.length) + 128] = 32
        mem[(32 * sub_cbb58924.length) + 160] = sub_cbb58924.length
        idx = 0
        s = (32 * sub_cbb58924.length) + 192
        t = 128
        while idx < sub_cbb58924.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_cbb58924.length) + 128
           len (96 * sub_cbb58924.length) + 64
    mem[128] = address(sub_cbb58924.field_0)
    idx = 128
    s = 0
    while (32 * sub_cbb58924.length) + 96 > idx:
        mem[idx + 32] = sub_cbb58924[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_cbb58924.length) + 128] = 32
    mem[(32 * sub_cbb58924.length) + 160] = sub_cbb58924.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < sub_cbb58924.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_cbb58924.length) + -mem[64] + 192
}

function getPair(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg3)
    staticcall arg3.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg3)
    if not ext_call.return_data[12 len 20]:
        call arg3.createPair(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall arg3.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function addWLAddressesToTier(uint256 arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 > test266151307() or ceil32(32 * arg2.length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    s = arg2 + 36
    idx = 0
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_06a743d9[arg1].field_1024:
        revert with 0, 'tier must be configured before'
    idx = 0
    s = 0
    while idx < arg2.length:
        if idx >= arg2.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(arg1, 33) + 7
        if 1 == bool(sub_06a743d9[arg1][7][mem[(32 * idx) + 140 len 20]].field_0):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 0, 17
        if idx >= arg2.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(arg1, 33) + 7
        sub_06a743d9[arg1][7][mem[(32 * idx) + 140 len 20]].field_0 = 1
        if sub_06a743d9[arg1].field_1536 > -2:
            revert with 0, 17
        sub_06a743d9[arg1].field_1536++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
}

function configTier(uint256 arg1, uint256 arg2, uint256 arg3, address[] arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg4.length) + 97 > test266151307() or ceil32(32 * arg4.length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= arg4 + (32 * arg4.length) + 36
    s = arg4 + 36
    idx = 0
    t = 128
    while idx < arg4.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_06a743d9[arg1].field_1024:
        if tierLength > -2:
            revert with 0, 17
        tierLength++
    sub_06a743d9[arg1].field_768 = _sellCooldown
    sub_06a743d9[arg1].field_0 = _maxBuyAmount
    sub_06a743d9[arg1].field_512 = _buyCooldown
    sub_06a743d9[arg1].field_256 = _maxSellAmount
    sub_06a743d9[arg1].field_1280 = arg3
    sub_06a743d9[arg1].field_1024 = arg2
    idx = 0
    while idx < arg4.length:
        if idx >= arg4.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(arg1, 33) + 7
        if bool(sub_06a743d9[arg1][7][mem[(32 * idx) + 140 len 20]].field_0) != 1:
            if idx >= arg4.length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(arg1, 33) + 7
            sub_06a743d9[arg1][7][mem[(32 * idx) + 140 len 20]].field_0 = 1
            if sub_06a743d9[arg1].field_1536 > -2:
                revert with 0, 17
            sub_06a743d9[arg1].field_1536++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_477689a5(?) payable {
    if stor41.length > test266151307():
        revert with 0, 65
    mem[96] = stor41.length
    mem[64] = (32 * stor41.length) + 128
    if not stor41.length:
        if var28002 >= stor41.length:
            mem[(32 * stor41.length) + 128] = 32
            mem[(32 * stor41.length) + 160] = stor41.length
            idx = 0
            s = (32 * stor41.length) + 192
            t = 128
            while idx < stor41.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor41.length) + 128
               len (96 * stor41.length) + 64
        if var34001 >= stor41.length:
            revert with 0, 50
        mem[0] = 41
        if var40002 >= stor41.length:
            revert with 0, 50
        mem[(32 * var40002) + 128] = address(var40001)
        s = var40002
        t = var40001
        idx = var40002
        while idx != -1:
            if idx + 1 >= stor41.length:
                mem[(32 * stor41.length) + 128] = 32
                mem[(32 * stor41.length) + 160] = stor41.length
                u = 0
                s = (32 * stor41.length) + 192
                t = 128
                while u < stor41.length:
                    mem[s] = mem[t + 12 len 20]
                    mem[(32 * u + 1) + 128] = address(s + 32)
                    u = u + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (32 * stor41.length) + 128
                   len (96 * stor41.length) + 64
            mem[0] = 41
            if idx + 1 >= stor41.length:
                revert with 0, 50
            mem[(32 * idx + 2) + 128] = stor41[idx].field_512
            s = idx + 1
            t = stor41[idx].field_256
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * stor41.length] = call.data[calldata.size len 32 * stor41.length]
        if var29002 >= stor41.length:
            mem[(32 * stor41.length) + 128] = 32
            mem[(32 * stor41.length) + 160] = stor41.length
            idx = 0
            s = (32 * stor41.length) + 192
            t = 128
            while idx < stor41.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor41.length) + 128
               len (96 * stor41.length) + 64
        if var35001 >= stor41.length:
            revert with 0, 50
        mem[0] = 41
        if var41002 >= stor41.length:
            revert with 0, 50
        mem[(32 * var41002) + 128] = address(var41001)
        s = var41002
        t = var41001
        idx = var41002
        while idx != -1:
            if idx + 1 >= stor41.length:
                mem[(32 * stor41.length) + 128] = 32
                mem[(32 * stor41.length) + 160] = stor41.length
                u = 0
                s = (32 * stor41.length) + 192
                t = 128
                while u < stor41.length:
                    mem[s] = mem[t + 12 len 20]
                    mem[(32 * u + 1) + 128] = address(s + 32)
                    u = u + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (32 * stor41.length) + 128
                   len (96 * stor41.length) + 64
            mem[0] = 41
            if idx + 1 >= stor41.length:
                revert with 0, 50
            mem[(32 * idx + 2) + 128] = stor41[idx].field_512
            s = idx + 1
            t = stor41[idx].field_256
            idx = idx + 1
            continue 
    revert with 0, 17
}



}
