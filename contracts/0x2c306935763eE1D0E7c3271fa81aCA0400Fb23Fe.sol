contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
array of uint256 stor1;
uint8 stor2; offset 160
uint128 stor2; offset 160
address stor2;
address stor3;
address sub_2a7a32a9Address;
mapping of uint8 stor5;
mapping of address sub_8dffd1bb;
uint256 stor7;
uint8 stor8;
array of struct stor9;
mapping of uint256 stor10;
uint256 productsCount;
array of uint256 sub_a6c497d6;
mapping of address stor13;
mapping of uint256 ownerCount;

function whitelistDisabled() {
    return bool(stor8)
}

function sub_2a7a32a9(?) {
    return sub_2a7a32a9Address
}

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[address(arg1)])
}

function getProductsCount() {
    return productsCount
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function sub_641e0f0f(?) {
    return address(stor1.length)
}

function getOwner() {
    return owner
}

function sub_8dffd1bb(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_8dffd1bb[arg1]
}

function getOwnerCount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return ownerCount[address(arg1)]
}

function sub_a6c497d6(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= sub_a6c497d6.length:
        revert with 'NH{q', 50
    return sub_a6c497d6[arg1]
}

function whitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function _fallback() payable {
    revert
}

function enableWhitelist() {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor8 = 0
}

function disableWhitelist() {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor8 = 1
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if uint8(stor0.field_160):
        revert with 0, 'El contrato esta pausado.'
    Mask(96, 0, stor0.field_160) = 1
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if not uint8(stor0.field_160):
        revert with 0, 'El contrato no esta pausado'
    Mask(96, 0, stor0.field_160) = 0
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(owner, arg1);
    owner = arg1
}

function sub_64d2a5b1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_2a7a32a9Address = address(arg1)
    stor3 = sub_2a7a32a9Address
}

function sub_ccf98712(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if uint8(stor2.field_160):
        revert with 0, 'Ya se importo'
    address(stor1.length) = address(arg1)
}

function sub_94215612(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require arg1 < productsCount
    if arg1 >= stor9.length:
        revert with 'NH{q', 50
    stor9[arg1].field_256 = arg2
}

function clearWhitelist() {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    idx = var14001
    while idx < stor7:
        stor5[stor6[idx]] = 0
        mem[0] = idx
        mem[32] = 6
        sub_8dffd1bb[idx] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor7 = 0
}

function withdrawBalance() {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if eth.balance(this.address) <= 0:
        revert with 0, 'No hay fondos'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0d166c1e(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if arg2 <= 0:
        revert with 0, ' debe ser una cantidad mayor a 0'
    if arg1 >= productsCount:
        revert with 0, 'no existe este producto'
    if stor10[arg1] > -arg2 - 1:
        revert with 'NH{q', 17
    stor10[arg1] += arg2
}

function sub_6f655207(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if eth.balance(this.address) <= 0:
        revert with 0, 'No hay fondos'
    call address(arg1) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getLatestPrice() {
    require ext_code.size(stor3)
    staticcall stor3.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    return ext_call.return_data[32]
}

function getPacks() {
    mem[64] = (32 * sub_a6c497d6.length) + 128
    mem[96] = sub_a6c497d6.length
    s = 128
    idx = 0
    while idx < sub_a6c497d6.length:
        mem[0] = 12
        _10 = mem[64]
        mem[64] = mem[64] + 32
        mem[_10] = sub_a6c497d6[idx]
        mem[s] = _10
        s = s + 32
        idx = idx + 1
        continue 
    _11 = mem[64]
    mem[mem[64]] = 32
    _12 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _12:
        mem[t] = mem[mem[s]]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _11 + (32 * _12) + -mem[64] + 64
}

function sub_24bb2675(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if stor10[arg1] <= 0:
        revert with 0, 'No packs left'
    sub_a6c497d6.length++
    sub_a6c497d6[sub_a6c497d6.length] = arg1
    if sub_a6c497d6.length < 1:
        revert with 'NH{q', 17
    stor13[stor12.length - 1] = address(arg2)
    if ownerCount[address(arg2)] == -1:
        revert with 'NH{q', 17
    ownerCount[address(arg2)]++
    if sub_a6c497d6.length - 1 >= sub_a6c497d6.length:
        revert with 'NH{q', 50
    if not stor10[stor12[stor12.length]]:
        revert with 'NH{q', 17
    stor10[stor12[stor12.length]]--
    emit 0x455964da: address(arg2), sub_a6c497d6.length - 1
}

function sub_e12d0fdb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if productsCount > test266151307():
        revert with 'NH{q', 65
    if productsCount:
        mem[128 len 32 * productsCount] = call.data[calldata.size len 32 * productsCount]
    idx = 0
    while idx < sub_a6c497d6.length:
        mem[0] = idx
        mem[32] = 13
        if stor13[idx] == address(arg1):
            if idx >= sub_a6c497d6.length:
                revert with 'NH{q', 50
            mem[0] = 12
            if sub_a6c497d6[idx] >= productsCount:
                revert with 'NH{q', 50
            if mem[(32 * sub_a6c497d6[idx]) + 128] == -1:
                revert with 'NH{q', 17
            mem[(32 * sub_a6c497d6[idx]) + 128] = mem[(32 * sub_a6c497d6[idx]) + 128] + 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=productsCount, data=mem[128 len 32 * productsCount])
}

function sub_0e282166(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if ownerCount[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    if ownerCount[address(arg1)]:
        mem[128 len 32 * ownerCount[address(arg1)]] = call.data[calldata.size len 32 * ownerCount[address(arg1)]]
    idx = 0
    s = 0
    while idx < sub_a6c497d6.length:
        mem[0] = idx
        mem[32] = 13
        if stor13[idx] != address(arg1):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s >= ownerCount[address(arg1)]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = idx
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    return Array(len=ownerCount[address(arg1)], data=mem[128 len 32 * ownerCount[address(arg1)]])
}

function addWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        stor5[mem[(32 * idx) + 140 len 20]] = 1
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = stor7
        mem[32] = 6
        sub_8dffd1bb[stor7] = mem[(32 * idx) + 140 len 20]
        if stor7 == -1:
            revert with 'NH{q', 17
        stor7++
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_47b891df(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    require arg1 < productsCount
    if arg1 >= stor9.length:
        revert with 'NH{q', 50
    if stor9[arg1].field_0:
        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor9[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor9[arg1].field_0 = 0
            idx = 0
            while stor9[arg1].field_1 + 31 / 32 > idx:
                stor9[(3 * arg1) + idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor9[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor9[arg1].field_0 = 0
            idx = 0
            while stor9[arg1].field_1 + 31 / 32 > idx:
                stor9[(3 * arg1) + idx].field_0 = 0
                idx = idx + 1
                continue 
}

function getWhitelistedAddresses() {
    if stor7 > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor7
    mem[64] = (32 * stor7) + 128
    if not stor7:
        idx = var18001
        while idx < stor7:
            mem[0] = idx
            mem[32] = 6
            if idx >= stor7:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = sub_8dffd1bb[idx]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[(32 * stor7) + 128] = 32
        mem[(32 * stor7) + 160] = stor7
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[128 len 32 * stor7] = call.data[calldata.size len 32 * stor7]
        idx = var19001
        while idx < stor7:
            mem[0] = idx
            mem[32] = 6
            if idx >= stor7:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = sub_8dffd1bb[idx]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[(32 * stor7) + 128] = 32
        mem[(32 * stor7) + 160] = stor7
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < stor7:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    return memory
      from mem[64]
       len (64 * stor7) + -mem[64] + 192
}

function sub_f90432e7(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor3)
    staticcall stor3.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if bool(arg1 > 0) and arg1 > 0x9392ee8e921d5d073aff322e62439fcf32d7f344649470f90:
        revert with 'NH{q', 17
    if bool(arg1 < 0) and arg1 < 0xfffffffffffffff6c6d11716de2a2f8c500cdd19dbc6030cd280cbb9b6b8f070:
        revert with 'NH{q', 17
    if not ext_call.return_data[32]:
        revert with 'NH{q', 18
    if 10^18 * arg1 == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
        revert with 'NH{q', 17
    if bool(10^18 * arg1 / ext_call.return_data[32] > 0) and 10^18 * arg1 / ext_call.return_data[32] > 0x15798ee2308c39df9fb841a566d74f87a7a9a7aeb02c2d2f8e0d1e768d:
        revert with 'NH{q', 17
    if bool(10^18 * arg1 / ext_call.return_data[32] < 0) and 10^18 * arg1 / ext_call.return_data[32] < 0xffffffea86711dcf73c6206047be5a9928b078585658514fd3d2d071f2e18973:
        revert with 'NH{q', 17
    return (100 * 10^6 * 10^18 * arg1 / ext_call.return_data[32])
}

function sub_c6190bc5(?) {
    mem[96] = 0x3e8ebe8a00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(stor2.field_0))
    staticcall address(stor2.field_0).0x3e8ebe8a with:
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
    if ceil32(return_data.size) + floor32(mem[mem[96] + 96]) + 97 > test266151307() or floor32(mem[mem[96] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (96 * _5) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        require return_data.size + -s + 96 >= 96
        _19 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 96
        require mem[s] == mem[s]
        mem[_19] = mem[s]
        require mem[s + 32] == mem[s + 44 len 20]
        mem[_19 + 32] = mem[s + 32]
        require mem[s + 64] == mem[s + 64]
        mem[_19 + 64] = mem[s + 64]
        mem[t] = _19
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    mem[mem[64]] = 32
    _20 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    s = 0
    s = ceil32(return_data.size) + 128
    s = mem[64] + 64
    while _5 < _20:
        _29 = mem[_4 + (96 * _5) + 128]
        mem[s] = mem[mem[_4 + (96 * _5) + 128]]
        mem[s + 32] = mem[_29 + 44 len 20]
        mem[s + 64] = mem[_29 + 64]
        s = _5 + 1
        s = _4 + (96 * _5) + 160
        s = s + 96
        continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function sub_6a2f79d4(?) {
    if productsCount > test266151307():
        revert with 'NH{q', 65
    mem[96] = productsCount
    mem[64] = (32 * productsCount) + 128
    if not productsCount:
        idx = var19001
        while idx < productsCount:
            if idx >= stor9.length:
                revert with 'NH{q', 50
            mem[0] = stor9[idx].field_512
            mem[32] = 10
            _48 = mem[64]
            mem[64] = mem[64] + 64
            mem[_48] = stor9[idx].field_512
            mem[_48 + 32] = stor10[stor9[idx].field_512]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _48
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _45 = mem[64]
        mem[mem[64]] = 32
        _50 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _50:
            _65 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_65 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _45 + (64 * _50) + -mem[64] + 64
    mem[64] = (32 * productsCount) + 192
    mem[(32 * productsCount) + 128] = 0
    mem[(32 * productsCount) + 160] = 0
    mem[var11001] = (32 * productsCount) + 128
    s = var11001
    idx = var11002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * productsCount) + 128] = 0
        mem[(32 * productsCount) + 160] = 0
        mem[s + 32] = (32 * productsCount) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = var26001
    while idx < productsCount:
        if idx >= stor9.length:
            revert with 'NH{q', 50
        mem[0] = stor9[idx].field_512
        mem[32] = 10
        _82 = mem[64]
        mem[64] = mem[64] + 64
        mem[_82] = stor9[idx].field_512
        mem[_82 + 32] = stor10[stor9[idx].field_512]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = _82
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _79 = mem[64]
    mem[mem[64]] = 32
    _84 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _84:
        _89 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_89 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _79 + (64 * _84) + -mem[64] + 64
}

function sub_3e8ebe8a(?) {
    if sub_a6c497d6.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = sub_a6c497d6.length
    mem[64] = (32 * sub_a6c497d6.length) + 128
    if not sub_a6c497d6.length:
        idx = 0
        while idx < sub_a6c497d6.length:
            mem[32] = 13
            mem[0] = 12
            _29 = mem[64]
            mem[64] = mem[64] + 96
            mem[_29] = idx
            mem[_29 + 32] = stor13[idx]
            mem[_29 + 64] = sub_a6c497d6[idx]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _29
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _27 = mem[64]
        mem[mem[64]] = 32
        _31 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _31:
            _49 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_49 + 44 len 20]
            mem[t + 64] = mem[_49 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _27 + (96 * _31) + -mem[64] + 64
    mem[64] = (32 * sub_a6c497d6.length) + 224
    mem[(32 * sub_a6c497d6.length) + 128] = 0
    mem[(32 * sub_a6c497d6.length) + 160] = 0
    mem[(32 * sub_a6c497d6.length) + 192] = 0
    mem[var9001] = (32 * sub_a6c497d6.length) + 128
    s = var9001
    idx = var9002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(32 * sub_a6c497d6.length) + 128] = 0
        mem[(32 * sub_a6c497d6.length) + 160] = 0
        mem[(32 * sub_a6c497d6.length) + 192] = 0
        mem[s + 32] = (32 * sub_a6c497d6.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < sub_a6c497d6.length:
        mem[32] = 13
        mem[0] = 12
        _68 = mem[64]
        mem[64] = mem[64] + 96
        mem[_68] = idx
        mem[_68 + 32] = stor13[idx]
        mem[_68 + 64] = sub_a6c497d6[idx]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = _68
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _66 = mem[64]
    mem[mem[64]] = 32
    _70 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _70:
        _76 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_76 + 44 len 20]
        mem[t + 64] = mem[_76 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _66 + (96 * _70) + -mem[64] + 64
}

function sub_0a5bd44b(?) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if stor9.length != productsCount:
        if productsCount >= stor9.length:
            revert with 'NH{q', 50
        if stor9[stor11].field_0:
            if stor9[stor11].field_0 == stor9[stor11].field_1 < 32:
                revert with 'NH{q', 34
            if arg1.length:
                stor9[stor11][].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor9[stor11].field_0 = 0
                idx = 0
                while stor9[stor11].field_1 + 31 / 32 > idx:
                    stor9[(3 * stor11) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor9[stor11].field_0 == stor9[stor11].field_1 < 32:
                revert with 'NH{q', 34
            if arg1.length:
                stor9[stor11][].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor9[stor11].field_0 = 0
                idx = 0
                while stor9[stor11].field_1 + 31 / 32 > idx:
                    stor9[(3 * stor11) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
        stor9[stor11].field_256 = arg2
        stor9[stor11].field_512 = productsCount
    else:
        stor9.length++
        if stor9[stor9.length].field_0:
            if stor9[stor9.length].field_0 == stor9[stor9.length].field_1 < 32:
                revert with 'NH{q', 34
            if arg1.length:
                stor9[stor9.length][].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor9[stor9.length].field_0 = 0
                idx = 0
                while stor9[stor9.length].field_1 + 31 / 32 > idx:
                    stor9[(3 * stor9.length) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor9[stor9.length].field_0 == stor9[stor9.length].field_1 < 32:
                revert with 'NH{q', 34
            if arg1.length:
                stor9[stor9.length][].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor9[stor9.length].field_0 = 0
                idx = 0
                while stor9[stor9.length].field_1 + 31 / 32 > idx:
                    stor9[(3 * stor9.length) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
        stor9[stor9.length].field_256 = arg2
        stor9[stor9.length].field_512 = productsCount
    if productsCount == -1:
        revert with 'NH{q', 17
    productsCount++
    stor10[stor11] = arg3
}

function getProduct(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= productsCount:
        revert with 0, 'no existe este producto'
    if arg1 >= stor9.length:
        revert with 'NH{q', 50
    if stor9[arg1].field_0:
        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor9[arg1].field_0:
            if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor9[arg1].field_1:
                if 31 >= stor9[arg1].field_1:
                    mem[320] = 256 * stor9[arg1].field_8
                else:
                    mem[320] = stor9[arg1].field_0
                    idx = 320
                    s = 0
                    while stor9[arg1].field_1 + 288 > idx:
                        mem[idx + 32] = stor9[(3 * arg1) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor9[arg1].field_1:
                if 31 >= stor9[arg1].field_1:
                    mem[320] = 256 * stor9[arg1].field_8
                else:
                    mem[320] = stor9[arg1].field_0
                    idx = 320
                    s = 0
                    while stor9[arg1].field_1 + 288 > idx:
                        mem[idx + 32] = stor9[(3 * arg1) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, 96, 
               stor9[arg1].field_256,
               stor9[arg1].field_512,
               2 * Mask(256, -1, stor9[arg1].field_1),
               mem[320 len ceil32(stor9[arg1].field_1)]
    if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor9[arg1].field_0:
        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor9[arg1].field_1:
            if 31 >= stor9[arg1].field_1:
                mem[320] = 256 * stor9[arg1].field_8
            else:
                mem[320] = stor9[arg1].field_0
                idx = 320
                s = 0
                while stor9[arg1].field_1 + 288 > idx:
                    mem[idx + 32] = stor9[(3 * arg1) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor9[arg1].field_1:
            if 31 >= stor9[arg1].field_1:
                mem[320] = 256 * stor9[arg1].field_8
            else:
                mem[320] = stor9[arg1].field_0
                idx = 320
                s = 0
                while stor9[arg1].field_1 + 288 > idx:
                    mem[idx + 32] = stor9[(3 * arg1) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, 96, stor9[arg1].field_256, stor9[arg1].field_512, stor9[arg1].field_0, mem[320 len ceil32(stor9[arg1].field_1)]
}

function sub_c819d395(?) {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if uint8(stor2.field_160):
        revert with 0, 'Ya se importo'
    mem[96] = 0x3e8ebe8a00000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(stor2.field_0))
    staticcall address(stor2.field_0).0x3e8ebe8a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _7 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96] + 96]) + 97 > test266151307() or floor32(mem[mem[96] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _7
    require _6 + (96 * _7) + 32 <= return_data.size
    idx = 0
    s = _6 + 128
    t = ceil32(return_data.size) + 128
    while idx < _7:
        require return_data.size + -s + 96 >= 96
        _32 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 96
        require mem[s] == mem[s]
        mem[_32] = mem[s]
        require mem[s + 32] == mem[s + 44 len 20]
        mem[_32 + 32] = mem[s + 32]
        require mem[s + 64] == mem[s + 64]
        mem[_32 + 64] = mem[s + 64]
        mem[t] = _32
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    _51 = mem[ceil32(return_data.size) + 96]
    idx = 0
    while idx < _51:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        _54 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        _57 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
        _58 = mem[64]
        mem[64] = mem[64] + 32
        mem[_58] = _54
        sub_a6c497d6.length++
        sub_a6c497d6[sub_a6c497d6.length] = _54
        if sub_a6c497d6.length < 1:
            revert with 'NH{q', 17
        stor13[stor12.length - 1] = address(_57)
        if ownerCount[address(_57)] == -1:
            revert with 'NH{q', 17
        ownerCount[address(_57)]++
        if sub_a6c497d6.length - 1 >= sub_a6c497d6.length:
            revert with 'NH{q', 50
        mem[0] = sub_a6c497d6[sub_a6c497d6.length]
        mem[32] = 10
        if not stor10[stor12[stor12.length]]:
            revert with 'NH{q', 17
        stor10[stor12[stor12.length]]--
        mem[mem[64]] = address(_57)
        mem[mem[64] + 32] = sub_a6c497d6.length - 1
        emit 0x455964da: address(_57), sub_a6c497d6.length - 1
        if idx == -1:
            revert with 'NH{q', 17
        _51 = mem[ceil32(return_data.size) + 96]
        idx = idx + 1
        continue 
    Mask(96, 0, stor2.field_160) = 1
}

function buyPack(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_160):
        revert with 0, 'El contrato esta pausado.'
    if not stor5[address(msg.sender)]:
        if owner != msg.sender:
            if not stor8:
                revert with 0, 'no estas en la whitelist'
    if stor10[arg1] <= 0:
        revert with 0, 'No packs left'
    if arg1 >= stor9.length:
        revert with 'NH{q', 50
    require ext_code.size(stor3)
    staticcall stor3.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if bool(stor9[arg1].field_256 > 0) and stor9[arg1].field_256 > 0x9392ee8e921d5d073aff322e62439fcf32d7f344649470f90:
        revert with 'NH{q', 17
    if bool(stor9[arg1].field_256 < 0) and stor9[arg1].field_256 < 0xfffffffffffffff6c6d11716de2a2f8c500cdd19dbc6030cd280cbb9b6b8f070:
        revert with 'NH{q', 17
    if not ext_call.return_data[32]:
        revert with 'NH{q', 18
    if 10^18 * stor9[arg1].field_256 == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
        revert with 'NH{q', 17
    if bool(10^18 * stor9[arg1].field_256 / ext_call.return_data[32] > 0) and 10^18 * stor9[arg1].field_256 / ext_call.return_data[32] > 0x15798ee2308c39df9fb841a566d74f87a7a9a7aeb02c2d2f8e0d1e768d:
        revert with 'NH{q', 17
    if bool(10^18 * stor9[arg1].field_256 / ext_call.return_data[32] < 0) and 10^18 * stor9[arg1].field_256 / ext_call.return_data[32] < 0xffffffea86711dcf73c6206047be5a9928b078585658514fd3d2d071f2e18973:
        revert with 'NH{q', 17
    if bool(100 * 10^6 * 10^18 * stor9[arg1].field_256 / ext_call.return_data[32] > 0) and 100 * 10^6 * 10^18 * stor9[arg1].field_256 / ext_call.return_data[32] > 0x21445a71d5e57d87ed498d1ff7aee9638a86a09e04ad9cb8021445a71d5e57:
        revert with 'NH{q', 17
    if bool(100 * 10^6 * 10^18 * stor9[arg1].field_256 / ext_call.return_data[32] < 0) and 100 * 10^6 * 10^18 * stor9[arg1].field_256 / ext_call.return_data[32] < 0xffdebba58e2a1a827812b672e00851169c75795f61fb526347fdebba58e2a1a9:
        revert with 'NH{q', 17
    if msg.value < 98500 * 10^6 * 10^18 * stor9[arg1].field_256 / ext_call.return_data[32] / 1000:
        revert with 0, 'precio alterado'
    sub_a6c497d6.length++
    sub_a6c497d6[sub_a6c497d6.length] = arg1
    if sub_a6c497d6.length < 1:
        revert with 'NH{q', 17
    stor13[stor12.length - 1] = msg.sender
    if ownerCount[address(msg.sender)] == -1:
        revert with 'NH{q', 17
    ownerCount[address(msg.sender)]++
    if sub_a6c497d6.length - 1 >= sub_a6c497d6.length:
        revert with 'NH{q', 50
    if not stor10[stor12[stor12.length]]:
        revert with 'NH{q', 17
    stor10[stor12[stor12.length]]--
    emit 0x455964da: msg.sender, sub_a6c497d6.length - 1
}

function getProductInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= productsCount:
        revert with 0, 'no existe este producto'
    if arg1 >= stor9.length:
        revert with 'NH{q', 50
    require ext_code.size(stor3)
    staticcall stor3.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if bool(stor9[arg1].field_256 > 0) and stor9[arg1].field_256 > 0x9392ee8e921d5d073aff322e62439fcf32d7f344649470f90:
        revert with 'NH{q', 17
    if bool(stor9[arg1].field_256 < 0) and stor9[arg1].field_256 < 0xfffffffffffffff6c6d11716de2a2f8c500cdd19dbc6030cd280cbb9b6b8f070:
        revert with 'NH{q', 17
    if not ext_call.return_data[32]:
        revert with 'NH{q', 18
    if 10^18 * stor9[arg1].field_256 == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
        revert with 'NH{q', 17
    if bool(10^18 * stor9[arg1].field_256 / ext_call.return_data[32] > 0) and 10^18 * stor9[arg1].field_256 / ext_call.return_data[32] > 0x15798ee2308c39df9fb841a566d74f87a7a9a7aeb02c2d2f8e0d1e768d:
        revert with 'NH{q', 17
    if bool(10^18 * stor9[arg1].field_256 / ext_call.return_data[32] < 0) and 10^18 * stor9[arg1].field_256 / ext_call.return_data[32] < 0xffffffea86711dcf73c6206047be5a9928b078585658514fd3d2d071f2e18973:
        revert with 'NH{q', 17
    if arg1 >= stor9.length:
        revert with 'NH{q', 50
    if stor9[arg1].field_0:
        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor9[arg1].field_0:
            if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor9[arg1].field_1:
                if 31 >= stor9[arg1].field_1:
                    mem[ceil32(return_data.size) + 384] = 256 * stor9[arg1].field_8
                else:
                    mem[ceil32(return_data.size) + 384] = stor9[arg1].field_0
                    idx = ceil32(return_data.size) + 384
                    s = 0
                    while ceil32(return_data.size) + stor9[arg1].field_1 + 352 > idx:
                        mem[idx + 32] = stor9[(3 * arg1) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor9[arg1].field_1:
                if 31 >= stor9[arg1].field_1:
                    mem[ceil32(return_data.size) + 384] = 256 * stor9[arg1].field_8
                else:
                    mem[ceil32(return_data.size) + 384] = stor9[arg1].field_0
                    idx = ceil32(return_data.size) + 384
                    s = 0
                    while ceil32(return_data.size) + stor9[arg1].field_1 + 352 > idx:
                        mem[idx + 32] = stor9[(3 * arg1) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if arg1 >= stor9.length:
            revert with 'NH{q', 50
        return 32, 128, 
               stor9[arg1].field_256,
               100 * 10^6 * 10^18 * stor9[arg1].field_256 / ext_call.return_data[32],
               stor9[arg1].field_512,
               2 * Mask(256, -1, stor9[arg1].field_1),
               mem[ceil32(return_data.size) + 384 len ceil32(stor9[arg1].field_1)]
    if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor9[arg1].field_0:
        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor9[arg1].field_1:
            if 31 >= stor9[arg1].field_1:
                mem[ceil32(return_data.size) + 384] = 256 * stor9[arg1].field_8
            else:
                mem[ceil32(return_data.size) + 384] = stor9[arg1].field_0
                idx = ceil32(return_data.size) + 384
                s = 0
                while ceil32(return_data.size) + stor9[arg1].field_1 + 352 > idx:
                    mem[idx + 32] = stor9[(3 * arg1) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor9[arg1].field_1:
            if 31 >= stor9[arg1].field_1:
                mem[ceil32(return_data.size) + 384] = 256 * stor9[arg1].field_8
            else:
                mem[ceil32(return_data.size) + 384] = stor9[arg1].field_0
                idx = ceil32(return_data.size) + 384
                s = 0
                while ceil32(return_data.size) + stor9[arg1].field_1 + 352 > idx:
                    mem[idx + 32] = stor9[(3 * arg1) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if arg1 >= stor9.length:
        revert with 'NH{q', 50
    return 32, 128, 
           stor9[arg1].field_256,
           100 * 10^6 * 10^18 * stor9[arg1].field_256 / ext_call.return_data[32],
           stor9[arg1].field_512,
           stor9[arg1].field_0,
           mem[ceil32(return_data.size) + 384 len ceil32(stor9[arg1].field_1)]
}

function deleteProduct(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if arg1 >= productsCount:
        revert with 0, 'no existe este index'
    if productsCount < 1:
        revert with 'NH{q', 17
    if productsCount < 1:
        revert with 'NH{q', 17
    if productsCount - 1 >= stor9.length:
        revert with 'NH{q', 50
    if arg1 < productsCount - 1:
        if arg1 >= stor9.length:
            revert with 'NH{q', 50
        if stor9[stor11].field_0:
            if stor9[stor11].field_0 == stor9[stor11].field_0 < 32:
                revert with 'NH{q', 34
            if stor9[arg1].field_0:
                if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if not stor9[stor11].field_0:
                    stor9[arg1].field_0 = 0
                    idx = 0
                    while stor9[arg1].field_1 + 31 / 32 > idx:
                        stor9[(3 * arg1) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    stor9[arg1].field_0 = (2 * stor9[stor11].field_0) + 1
                    s = 0
                    idx = 0
                    while stor9[stor11].field_0 + 31 / 32 > idx:
                        stor9[(3 * arg1) + s].field_0 = stor[idx + sha3((3 * stor11) + ('name', 'stor9', 9) - 3)].field_0
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor9[stor11].field_0 + 31 / 32
                    while stor9[arg1].field_1 + 31 / 32 > idx:
                        stor9[(3 * arg1) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if not stor9[stor11].field_0:
                    stor9[arg1].field_0 = 0
                    idx = 0
                    while stor9[arg1].field_1 + 31 / 32 > idx:
                        stor9[(3 * arg1) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    stor9[arg1].field_0 = (2 * stor9[stor11].field_0) + 1
                    s = 0
                    idx = 0
                    while stor9[stor11].field_0 + 31 / 32 > idx:
                        stor9[(3 * arg1) + s].field_0 = stor[idx + sha3((3 * stor11) + ('name', 'stor9', 9) - 3)].field_0
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor9[stor11].field_0 + 31 / 32
                    while stor9[arg1].field_1 + 31 / 32 > idx:
                        stor9[(3 * arg1) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if stor9[stor11].field_0 == stor9[stor11].field_0 < 32:
                revert with 'NH{q', 34
            if stor9[arg1].field_0:
                if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if not stor9[stor11].field_0:
                    stor9[arg1].field_0 = 0
                    idx = 0
                    while stor9[arg1].field_1 + 31 / 32 > idx:
                        stor9[(3 * arg1) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    stor9[arg1].field_0 = (2 * stor9[stor11].field_0) + 1
                    s = 0
                    idx = 0
                    while stor9[stor11].field_0 + 31 / 32 > idx:
                        stor9[(3 * arg1) + s].field_0 = stor[idx + sha3((3 * stor11) + ('name', 'stor9', 9) - 3)].field_0
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor9[stor11].field_0 + 31 / 32
                    while stor9[arg1].field_1 + 31 / 32 > idx:
                        stor9[(3 * arg1) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                    revert with 'NH{q', 34
                if not stor9[stor11].field_0:
                    stor9[arg1].field_0 = 0
                    idx = 0
                    while stor9[arg1].field_1 + 31 / 32 > idx:
                        stor9[(3 * arg1) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    stor9[arg1].field_0 = (2 * stor9[stor11].field_0) + 1
                    s = 0
                    idx = 0
                    while stor9[stor11].field_0 + 31 / 32 > idx:
                        stor9[(3 * arg1) + s].field_0 = stor[idx + sha3((3 * stor11) + ('name', 'stor9', 9) - 3)].field_0
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor9[stor11].field_0 + 31 / 32
                    while stor9[arg1].field_1 + 31 / 32 > idx:
                        stor9[(3 * arg1) + idx].field_0 = 0
                        idx = idx + 1
                        continue 
        stor9[arg1].field_256 = stor9[stor11].field_0
        stor9[arg1].field_512 = stor9[stor11].field_0
    if stor9[stor11].field_0:
        if stor9[stor11].field_0 == stor9[stor11].field_0 < 32:
            revert with 'NH{q', 34
        stor9[stor11].field_0 = 0
        if 31 < stor9[stor11].field_0:
            idx = 0
            while stor9[stor11].field_0 + 31 / 32 > idx:
                stor[idx + sha3((3 * stor11) + ('name', 'stor9', 9) - 3)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor9[stor11].field_0 == stor9[stor11].field_0 < 32:
            revert with 'NH{q', 34
        stor9[stor11].field_0 = 0
        if 31 < stor9[stor11].field_0:
            idx = 0
            while stor9[stor11].field_0 + 31 / 32 > idx:
                stor[idx + sha3((3 * stor11) + ('name', 'stor9', 9) - 3)].field_0 = 0
                idx = idx + 1
                continue 
    stor9[stor11].field_0 = 0
    stor9[stor11].field_0 = 0
    if not productsCount:
        revert with 'NH{q', 17
    productsCount--
}

function getListProducts() {
    if productsCount > test266151307():
        revert with 'NH{q', 65
    mem[96] = productsCount
    mem[64] = (32 * productsCount) + 128
    if not productsCount:
        idx = var32001
        while idx < productsCount:
            if idx >= stor9.length:
                revert with 'NH{q', 50
            mem[0] = 9
            _131 = mem[64]
            mem[64] = mem[64] + 96
            if stor9[idx].field_0:
                if stor9[idx].field_0 == stor9[idx].field_1 < 32:
                    revert with 'NH{q', 34
                _133 = mem[64]
                mem[64] = mem[64] + ceil32(stor9[idx].field_1) + 32
                mem[_133] = stor9[idx].field_1
                if stor9[idx].field_0:
                    if stor9[idx].field_0 == stor9[idx].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor9[idx].field_1:
                        if 31 >= stor9[idx].field_1:
                            mem[_133 + 32] = 256 * stor9[idx].field_8
                        else:
                            mem[0] = (3 * idx) + sha3(9)
                            mem[_133 + 32] = stor9[idx].field_0
                            s = _133 + 32
                            t = sha3(mem[0])
                            while _133 + stor9[idx].field_1 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor9[idx].field_0 == stor9[idx].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor9[idx].field_1:
                        if 31 >= stor9[idx].field_1:
                            mem[_133 + 32] = 256 * stor9[idx].field_8
                        else:
                            mem[0] = (3 * idx) + sha3(9)
                            mem[_133 + 32] = stor9[idx].field_0
                            s = _133 + 32
                            t = sha3(mem[0])
                            while _133 + stor9[idx].field_1 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_131] = _133
            else:
                if stor9[idx].field_0 == stor9[idx].field_1 < 32:
                    revert with 'NH{q', 34
                _134 = mem[64]
                mem[64] = mem[64] + ceil32(stor9[idx].field_1) + 32
                mem[_134] = stor9[idx].field_1
                if stor9[idx].field_0:
                    if stor9[idx].field_0 == stor9[idx].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor9[idx].field_1:
                        if 31 >= stor9[idx].field_1:
                            mem[_134 + 32] = 256 * stor9[idx].field_8
                        else:
                            mem[0] = (3 * idx) + sha3(9)
                            mem[_134 + 32] = stor9[idx].field_0
                            s = _134 + 32
                            t = sha3(mem[0])
                            while _134 + stor9[idx].field_1 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor9[idx].field_0 == stor9[idx].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor9[idx].field_1:
                        if 31 >= stor9[idx].field_1:
                            mem[_134 + 32] = 256 * stor9[idx].field_8
                        else:
                            mem[0] = (3 * idx) + sha3(9)
                            mem[_134 + 32] = stor9[idx].field_0
                            s = _134 + 32
                            t = sha3(mem[0])
                            while _134 + stor9[idx].field_1 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_131] = _134
            mem[_131 + 32] = stor9[idx].field_256
            mem[_131 + 64] = stor9[idx].field_512
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _131
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _129 = mem[64]
        mem[mem[64]] = 32
        _132 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _132:
            mem[u] = t + -_129 - 64
            _191 = mem[s]
            _197 = mem[mem[s]]
            mem[t] = 96
            _201 = mem[_197]
            mem[t + 96] = mem[_197]
            v = 0
            while v < _201:
                mem[t + v + 128] = mem[_197 + v + 32]
                v = v + 32
                continue 
            if ceil32(_201) > _201:
                mem[t + _201 + 128] = 0
            mem[t + 32] = mem[_191 + 32]
            mem[t + 64] = mem[_191 + 64]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_201) + 128
            u = u + 32
            continue 
    else:
        mem[64] = (32 * productsCount) + 224
        mem[(32 * productsCount) + 128] = 96
        mem[(32 * productsCount) + 160] = 0
        mem[(32 * productsCount) + 192] = 0
        mem[var11001] = (32 * productsCount) + 128
        s = var11001
        idx = var11002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * productsCount) + 128] = 96
            mem[(32 * productsCount) + 160] = 0
            mem[(32 * productsCount) + 192] = 0
            mem[s + 32] = (32 * productsCount) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = var39001
        while idx < productsCount:
            if idx >= stor9.length:
                revert with 'NH{q', 50
            mem[0] = 9
            _238 = mem[64]
            mem[64] = mem[64] + 96
            if stor9[idx].field_0:
                if stor9[idx].field_0 == stor9[idx].field_1 < 32:
                    revert with 'NH{q', 34
                _242 = mem[64]
                mem[64] = mem[64] + ceil32(stor9[idx].field_1) + 32
                mem[_242] = stor9[idx].field_1
                if stor9[idx].field_0:
                    if stor9[idx].field_0 == stor9[idx].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor9[idx].field_1:
                        if 31 >= stor9[idx].field_1:
                            mem[_242 + 32] = 256 * stor9[idx].field_8
                        else:
                            mem[0] = (3 * idx) + sha3(9)
                            mem[_242 + 32] = stor9[idx].field_0
                            s = _242 + 32
                            t = sha3(mem[0])
                            while _242 + stor9[idx].field_1 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor9[idx].field_0 == stor9[idx].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor9[idx].field_1:
                        if 31 >= stor9[idx].field_1:
                            mem[_242 + 32] = 256 * stor9[idx].field_8
                        else:
                            mem[0] = (3 * idx) + sha3(9)
                            mem[_242 + 32] = stor9[idx].field_0
                            s = _242 + 32
                            t = sha3(mem[0])
                            while _242 + stor9[idx].field_1 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_238] = _242
            else:
                if stor9[idx].field_0 == stor9[idx].field_1 < 32:
                    revert with 'NH{q', 34
                _243 = mem[64]
                mem[64] = mem[64] + ceil32(stor9[idx].field_1) + 32
                mem[_243] = stor9[idx].field_1
                if stor9[idx].field_0:
                    if stor9[idx].field_0 == stor9[idx].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor9[idx].field_1:
                        if 31 >= stor9[idx].field_1:
                            mem[_243 + 32] = 256 * stor9[idx].field_8
                        else:
                            mem[0] = (3 * idx) + sha3(9)
                            mem[_243 + 32] = stor9[idx].field_0
                            s = _243 + 32
                            t = sha3(mem[0])
                            while _243 + stor9[idx].field_1 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if stor9[idx].field_0 == stor9[idx].field_1 < 32:
                        revert with 'NH{q', 34
                    if stor9[idx].field_1:
                        if 31 >= stor9[idx].field_1:
                            mem[_243 + 32] = 256 * stor9[idx].field_8
                        else:
                            mem[0] = (3 * idx) + sha3(9)
                            mem[_243 + 32] = stor9[idx].field_0
                            s = _243 + 32
                            t = sha3(mem[0])
                            while _243 + stor9[idx].field_1 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_238] = _243
            mem[_238 + 32] = stor9[idx].field_256
            mem[_238 + 64] = stor9[idx].field_512
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _238
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _236 = mem[64]
        mem[mem[64]] = 32
        _240 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _240:
            mem[u] = t + -_236 - 64
            _271 = mem[s]
            _277 = mem[mem[s]]
            mem[t] = 96
            _278 = mem[_277]
            mem[t + 96] = mem[_277]
            v = 0
            while v < _278:
                mem[t + v + 128] = mem[_277 + v + 32]
                v = v + 32
                continue 
            if ceil32(_278) > _278:
                mem[t + _278 + 128] = 0
            mem[t + 32] = mem[_271 + 32]
            mem[t + 64] = mem[_271 + 64]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_278) + 128
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
