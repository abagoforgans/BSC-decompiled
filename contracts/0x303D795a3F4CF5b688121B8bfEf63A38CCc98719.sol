contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
const decimals = 4

const BURN_ADDRESS = 57005


uint256 totalSupply;
array of struct stor1;
array of struct stor2;
mapping of struct balanceOf;
mapping of uint256 allowance;
uint256 _maxTxAmount;
uint256 _maxWalletToken;
uint8 stor7;
address stor7; offset 8
uint8 stor8; offset 160
uint128 stor8; offset 160
address uniswapV2PairAddress;
mapping of uint8 stor9;
address stor10;
uint256 stor262B;

function tradingEnable() {
    return bool(uint8(stor8.field_160))
}

function totalSupply() {
    return totalSupply
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)].field_0
}

function _maxWalletToken() {
    return _maxWalletToken
}

function _maxTxAmount() {
    return _maxTxAmount
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function setWithdrawAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor10
    stor10 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(stor7.field_8)
    address(stor7.field_8) = arg1
}

function setTradingEnable(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(stor7.field_8)
    Mask(96, 0, stor8.field_160) = Mask(96, 0, arg1)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(stor7.field_8)
    balanceOf[address(arg1)].field_0 = 0
    emit 0xfeddf252: balanceOf[address(arg1)].field_0, arg1, 57005
}

function withdraw() {
    require msg.sender == stor10
    call stor10 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawOwner() {
    require msg.sender == address(stor7.field_8)
    call stor10 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6c90b57f(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] == bool(cd[36])
    require msg.sender == address(stor7.field_8)
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 9
        stor9[mem[(32 * idx) + 140 len 20]] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_255d508e(?) {
    require calldata.size - 4 >= 32
    if arg1 <= balanceOf[address(stor8.field_0)].field_0 / 100:
        return (arg1 / 20)
    if arg1 > balanceOf[address(stor8.field_0)].field_0 / 20:
        return (arg1 / 4)
    if balanceOf[address(stor8.field_0)].field_0 / 20 < balanceOf[address(stor8.field_0)].field_0 / 100:
        revert with 0, 17
    if arg1 < balanceOf[address(stor8.field_0)].field_0 / 100:
        revert with 0, 17
    if arg1 - (balanceOf[address(stor8.field_0)].field_0 / 100) > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
        revert with 0, 17
    if (20 * arg1) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100) and arg1 > -1 / (20 * arg1) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100):
        revert with 0, 17
    if not (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100):
        revert with 0, 18
    if arg1 / 20 > !((20 * arg1 * arg1) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg1) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
        revert with 0, 17
    return ((arg1 / 20) + ((20 * arg1 * arg1) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg1) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100))
}

function sub_b203919e(?) {
    require msg.sender == address(stor7.field_8)
    require not uniswapV2PairAddress
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor262B = 0
    emit 0xfeddf252: 0
    emit 0x0: 0
    emit 0xdead: 0
    if totalSupply > -100000001:
        revert with 0, 17
    totalSupply += 100 * 10^6
    balanceOf[this.address].field_0 = 100 * 10^6
    emit 0xfeddf252: 100 * 10^6, 0, this.address
    allowance[this.address][0x10ed43c718714eb63d5aa57b78b54704e256024e] = -1
    stor9[address(ext_call.return_data[0])] = 1
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args this.address, 100 * 10^6, 0, 0, msg.sender, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    uniswapV2PairAddress = address(ext_call.return_data[0])
}

function name() {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[ceil32(uint255(stor1.length) * 0.5) + (uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function symbol() {
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor2.length):
                if 31 < uint255(stor2.length) * 0.5:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor2.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 0, 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(uint255(stor2.length) * 0.5) + 192 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
        if ceil32(uint255(stor2.length) * 0.5) > uint255(stor2.length) * 0.5:
            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 0, 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2.length):
            if 31 < uint255(stor2.length) * 0.5:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while (uint255(stor2.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function sub_09900f7f(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (64 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require calldata.size - s >= 64
        _19 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 64
        require cd[s] == address(cd[s])
        mem[_19] = cd[s]
        require cd[(s + 32)] == uint32(cd[(s + 32)])
        mem[_19 + 32] = cd[(s + 32)]
        mem[t] = _19
        s = s + 64
        t = t + 32
        idx = idx + 1
        continue 
    require msg.sender == address(stor7.field_8)
    _36 = mem[96]
    idx = 0
    s = totalSupply
    while idx < _36:
        if idx >= mem[96]:
            revert with 0, 50
        _40 = mem[mem[(32 * idx) + 128] + 32]
        if mem[mem[(32 * idx) + 128] + 60 len 4] > 429496:
            revert with 0, 17
        if s > !uint32(10000 * mem[mem[(32 * idx) + 128] + 60 len 4]):
            revert with 0, 17
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
        mem[32] = 3
        balanceOf[mem[0]].field_0 = uint32(10000 * uint32(_40))
        balanceOf[mem[0]].field_32 = 0
        if idx >= mem[96]:
            revert with 0, 50
        _47 = mem[mem[(32 * idx) + 128]]
        mem[mem[64]] = uint32(10000 * uint32(_40))
        emit 0xfeddf252: uint32(10000 * uint32(_40)), 0, address(_47)
        if idx == -1:
            revert with 0, 17
        _36 = mem[96]
        idx = idx + 1
        s = s + uint32(10000 * uint32(_40))
        continue 
    totalSupply = totalSupply + (totalSupply * _36) + (totalSupply * _36 * _36) + (totalSupply * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (totalSupply * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36) + (s * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36 * _36)
    emit 0xb32d42e6 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if arg3 > balanceOf[address(arg1)].field_0:
        revert with 0, 'not enough token for transfer'
    if uniswapV2PairAddress != arg1:
        if uint8(stor7.field_0):
            if arg3 > _maxTxAmount:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
            if balanceOf[this.address].field_0 > !arg3:
                revert with 0, 17
            if balanceOf[this.address].field_0 + arg3 > _maxWalletToken:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
            require balanceOf[address(arg1)].field_0 >= arg3
            balanceOf[address(arg1)].field_0 -= arg3
            if balanceOf[arg2].field_0 > !arg3:
                revert with 0, 17
            balanceOf[arg2].field_0 += arg3
            emit 0xfeddf252: arg3, arg1, arg2
        else:
            if not uniswapV2PairAddress:
                if arg3 > _maxTxAmount:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                if balanceOf[this.address].field_0 > !arg3:
                    revert with 0, 17
                if balanceOf[this.address].field_0 + arg3 > _maxWalletToken:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                require balanceOf[address(arg1)].field_0 >= arg3
                balanceOf[address(arg1)].field_0 -= arg3
                if balanceOf[arg2].field_0 > !arg3:
                    revert with 0, 17
                balanceOf[arg2].field_0 += arg3
                emit 0xfeddf252: arg3, arg1, arg2
            else:
                if uniswapV2PairAddress != arg2:
                    if arg3 > _maxTxAmount:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                    if balanceOf[this.address].field_0 > !arg3:
                        revert with 0, 17
                    if balanceOf[this.address].field_0 + arg3 > _maxWalletToken:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                    require balanceOf[address(arg1)].field_0 >= arg3
                    balanceOf[address(arg1)].field_0 -= arg3
                    if balanceOf[arg2].field_0 > !arg3:
                        revert with 0, 17
                    balanceOf[arg2].field_0 += arg3
                    emit 0xfeddf252: arg3, arg1, arg2
                else:
                    if stor9[address(arg1)]:
                        if arg3 > _maxTxAmount:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                        if balanceOf[this.address].field_0 > !arg3:
                            revert with 0, 17
                        if balanceOf[this.address].field_0 + arg3 > _maxWalletToken:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                        require balanceOf[address(arg1)].field_0 >= arg3
                        balanceOf[address(arg1)].field_0 -= arg3
                        if balanceOf[arg2].field_0 > !arg3:
                            revert with 0, 17
                        balanceOf[arg2].field_0 += arg3
                        emit 0xfeddf252: arg3, arg1, arg2
                    else:
                        if not uint8(stor8.field_160):
                            revert with 0, 'trading disabled'
                        if arg3 <= balanceOf[address(stor8.field_0)].field_0 / 100:
                            if arg3 / 20 > !(arg3 / 20):
                                revert with 0, 17
                            if arg3 < 2 * arg3 / 20:
                                revert with 0, 17
                            if arg3 / 20 > !(arg3 / 20):
                                revert with 0, 17
                            if balanceOf[address(arg1)].field_0 < 2 * arg3 / 20:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 -= 2 * arg3 / 20
                            if balanceOf[this.address].field_0 > !(arg3 / 20):
                                revert with 0, 17
                            balanceOf[this.address].field_0 += arg3 / 20
                            if stor262B > !(arg3 / 20):
                                revert with 0, 17
                            stor262B += arg3 / 20
                            if totalSupply < arg3 / 20:
                                revert with 0, 17
                            totalSupply -= arg3 / 20
                            emit 0xfeddf252: (arg3 / 20), arg1, this.address
                            emit 0xfeddf252: (arg3 / 20), arg1, 57005
                            if not balanceOf[this.address].field_0:
                                if arg3 - (2 * arg3 / 20) > _maxTxAmount:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                                if balanceOf[this.address].field_0 > !(arg3 - (2 * arg3 / 20)):
                                    revert with 0, 17
                                if balanceOf[this.address].field_0 + arg3 - (2 * arg3 / 20) > _maxWalletToken:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                            else:
                                if arg3 - (2 * arg3 / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                uint8(stor7.field_0) = 1
                                mem[128] = this.address
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                        gas gas_remaining wei
                                mem[192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[160] = ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                if balanceOf[this.address].field_0 <= 2 * arg3 - (2 * arg3 / 20):
                                    mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_0
                                    idx = 0
                                    s = ceil32(return_data.size) + 388
                                    t = 128
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address].field_0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                else:
                                    mem[ceil32(return_data.size) + 196] = 2 * arg3 - (2 * arg3 / 20)
                                    idx = 0
                                    s = ceil32(return_data.size) + 388
                                    t = 128
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 2 * arg3 - (2 * arg3 / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor7.field_0) = 0
                                if arg3 - (2 * arg3 / 20) > _maxTxAmount:
                                    revert with 0, 'Transfer amount exceeds the maxTxAmount.'
                                if balanceOf[this.address].field_0 > !(arg3 - (2 * arg3 / 20)):
                                    revert with 0, 17
                                if balanceOf[this.address].field_0 + arg3 - (2 * arg3 / 20) > _maxWalletToken:
                                    revert with 0, 'Exceeds maximum wallet token amount (200)'
                            ('le', ('add', ('field', 0, ('stor', ('map', 'address', ('name', 'balanceOf', 3)))), ('param', 'arg3'), ('mul', -1, ('mask_shl', 255, 0, 1, ('div', ('param', 'arg3'), 20)))), ('stor', ('name', '_maxWalletToken', 6)))
                            require balanceOf[address(arg1)].field_0 >= arg3 - (2 * arg3 / 20)
                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (2 * arg3 / 20)
                            if balanceOf[arg2].field_0 > !(arg3 - (2 * arg3 / 20)):
                                revert with 0, 17
                            balanceOf[arg2].field_0 = balanceOf[arg2].field_0 + arg3 - (2 * arg3 / 20)
                            emit 0xfeddf252: (arg3 - (2 * arg3 / 20)), arg1, arg2
                        else:
                            if arg3 > balanceOf[address(stor8.field_0)].field_0 / 20:
                                if arg3 / 20 > !(arg3 / 4):
                                    revert with 0, 17
                                if arg3 < (arg3 / 20) + (arg3 / 4):
                                    revert with 0, 17
                                if arg3 / 20 > !(arg3 / 4):
                                    revert with 0, 17
                                if balanceOf[address(arg1)].field_0 < (arg3 / 20) + (arg3 / 4):
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - (arg3 / 20) - (arg3 / 4)
                                if balanceOf[this.address].field_0 > !(arg3 / 20):
                                    revert with 0, 17
                                balanceOf[this.address].field_0 += arg3 / 20
                                if stor262B > !(arg3 / 4):
                                    revert with 0, 17
                                stor262B += arg3 / 4
                                if totalSupply < arg3 / 4:
                                    revert with 0, 17
                                totalSupply -= arg3 / 4
                                emit 0xfeddf252: (arg3 / 20), arg1, this.address
                                emit 0xfeddf252: (arg3 / 4), arg1, 57005
                                if not balanceOf[this.address].field_0:
                                    if arg3 - (arg3 / 20) - (arg3 / 4) > _maxTxAmount:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                                    if balanceOf[this.address].field_0 > !(arg3 - (arg3 / 20) - (arg3 / 4)):
                                        revert with 0, 17
                                    if balanceOf[this.address].field_0 + arg3 - (arg3 / 20) - (arg3 / 4) > _maxWalletToken:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                                else:
                                    if arg3 - (arg3 / 20) - (arg3 / 4) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    uint8(stor7.field_0) = 1
                                    mem[128] = this.address
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                    if balanceOf[this.address].field_0 <= 2 * arg3 - (arg3 / 20) - (arg3 / 4):
                                        mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_0
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address].field_0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        mem[ceil32(return_data.size) + 196] = 2 * arg3 - (arg3 / 20) - (arg3 / 4)
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 2 * arg3 - (arg3 / 20) - (arg3 / 4), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor7.field_0) = 0
                                    if arg3 - (arg3 / 20) - (arg3 / 4) > _maxTxAmount:
                                        revert with 0, 'Transfer amount exceeds the maxTxAmount.'
                                    if balanceOf[this.address].field_0 > !(arg3 - (arg3 / 20) - (arg3 / 4)):
                                        revert with 0, 17
                                    if balanceOf[this.address].field_0 + arg3 - (arg3 / 20) - (arg3 / 4) > _maxWalletToken:
                                        revert with 0, 'Exceeds maximum wallet token amount (200)'
                                ('le', ('add', ('field', 0, ('stor', ('map', 'address', ('name', 'balanceOf', 3)))), ('param', 'arg3'), ('mul', -1, ('div', ('param', 'arg3'), 20)), ('mul', -1, ('div', ('mask', 256, 0, ('param', 'arg3')), 4))), ('stor', ('name', '_maxWalletToken', 6)))
                                require balanceOf[address(arg1)].field_0 >= arg3 - (arg3 / 20) - (arg3 / 4)
                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 / 20) + (arg3 / 4)
                                if balanceOf[arg2].field_0 > !(arg3 - (arg3 / 20) - (arg3 / 4)):
                                    revert with 0, 17
                                balanceOf[arg2].field_0 = balanceOf[arg2].field_0 + arg3 - (arg3 / 20) - (arg3 / 4)
                                emit 0xfeddf252: (arg3 - (arg3 / 20) - (arg3 / 4)), arg1, arg2
                            else:
                                if balanceOf[address(stor8.field_0)].field_0 / 20 < balanceOf[address(stor8.field_0)].field_0 / 100:
                                    revert with 0, 17
                                if arg3 < balanceOf[address(stor8.field_0)].field_0 / 100:
                                    revert with 0, 17
                                if arg3 - (balanceOf[address(stor8.field_0)].field_0 / 100) > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
                                    revert with 0, 17
                                if (20 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100) and arg3 > -1 / (20 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100):
                                    revert with 0, 17
                                if not (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100):
                                    revert with 0, 18
                                if arg3 / 20 > !((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                    revert with 0, 17
                                if arg3 / 20 > !((arg3 / 20) + ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                    revert with 0, 17
                                if arg3 < (2 * arg3 / 20) + ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                    revert with 0, 17
                                if arg3 / 20 > !((arg3 / 20) + ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                    revert with 0, 17
                                if balanceOf[address(arg1)].field_0 < (2 * arg3 / 20) + ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                if balanceOf[this.address].field_0 > !(arg3 / 20):
                                    revert with 0, 17
                                balanceOf[this.address].field_0 += arg3 / 20
                                if stor262B > !((arg3 / 20) + ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                    revert with 0, 17
                                stor262B = stor262B + (arg3 / 20) + ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                if totalSupply < (arg3 / 20) + ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                    revert with 0, 17
                                totalSupply = totalSupply - (arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                emit 0xfeddf252: (arg3 / 20), arg1, this.address
                                emit 0xfeddf252: ((arg3 / 20) + ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)), arg1, 57005
                                if not balanceOf[this.address].field_0:
                                    if arg3 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > _maxTxAmount:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                                    if balanceOf[this.address].field_0 > !(arg3 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                        revert with 0, 17
                                    if balanceOf[this.address].field_0 + arg3 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > _maxWalletToken:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                                else:
                                    if arg3 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    uint8(stor7.field_0) = 1
                                    mem[128] = this.address
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                    if balanceOf[this.address].field_0 <= 2 * arg3 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                        mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_0
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address].field_0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        mem[ceil32(return_data.size) + 196] = 2 * arg3 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 2 * arg3 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor7.field_0) = 0
                                    if arg3 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > _maxTxAmount:
                                        revert with 0, 'Transfer amount exceeds the maxTxAmount.'
                                    if balanceOf[this.address].field_0 > !(arg3 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                        revert with 0, 17
                                    if balanceOf[this.address].field_0 + arg3 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > _maxWalletToken:
                                        revert with 0, 'Exceeds maximum wallet token amount (200)'
                                ('le', ('add', ('field', 0, ('stor', ('map', 'address', ('name', 'balanceOf', 3)))), ('param', 'arg3'), ('mul', -2, ('div', ('param', 'arg3'), 20)), ('mul', -1, ('div', ('div', ('add', ('mul', 20, ('param', 'arg3'), ('param', 'arg3')), ('mul', -20, ('div', ('field', 0, ('stor', ('map', ('type', 160, ('field', 0, ('stor', ('name', 'stor8', 8)))), ('name', 'balanceOf', 3)))), 100), ('param', 'arg3'))), ('add', ('div', ('field', 0, ('stor', ('map', ('type', 160, ('field', 0, ('stor', ('name', 'stor8', 8)))), ('name', 'balanceOf', 3)))), 20), ('mul', -1, ('div', ('field', 0, ('stor', ('map', ('type', 160, ('field', 0, ('stor', ('name', 'stor8', 8)))), ('name', 'balanceOf', 3)))), 100)))), 100))), ('stor', ('name', '_maxWalletToken', 6)))
                                require balanceOf[address(arg1)].field_0 >= arg3 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (2 * arg3 / 20) + ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                if balanceOf[arg2].field_0 > !(arg3 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                    revert with 0, 17
                                balanceOf[arg2].field_0 = balanceOf[arg2].field_0 + arg3 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                emit 0xfeddf252: (arg3 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)), arg1, arg2
    else:
        if stor9[address(arg2)]:
            if uint8(stor7.field_0):
                if arg3 > _maxTxAmount:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                if balanceOf[this.address].field_0 > !arg3:
                    revert with 0, 17
                if balanceOf[this.address].field_0 + arg3 > _maxWalletToken:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                require balanceOf[address(arg1)].field_0 >= arg3
                balanceOf[address(arg1)].field_0 -= arg3
                if balanceOf[arg2].field_0 > !arg3:
                    revert with 0, 17
                balanceOf[arg2].field_0 += arg3
                emit 0xfeddf252: arg3, arg1, arg2
            else:
                if not uniswapV2PairAddress:
                    if arg3 > _maxTxAmount:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                    if balanceOf[this.address].field_0 > !arg3:
                        revert with 0, 17
                    if balanceOf[this.address].field_0 + arg3 > _maxWalletToken:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                    require balanceOf[address(arg1)].field_0 >= arg3
                    balanceOf[address(arg1)].field_0 -= arg3
                    if balanceOf[arg2].field_0 > !arg3:
                        revert with 0, 17
                    balanceOf[arg2].field_0 += arg3
                    emit 0xfeddf252: arg3, arg1, arg2
                else:
                    if uniswapV2PairAddress != arg2:
                        if arg3 > _maxTxAmount:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                        if balanceOf[this.address].field_0 > !arg3:
                            revert with 0, 17
                        if balanceOf[this.address].field_0 + arg3 > _maxWalletToken:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                        require balanceOf[address(arg1)].field_0 >= arg3
                        balanceOf[address(arg1)].field_0 -= arg3
                        if balanceOf[arg2].field_0 > !arg3:
                            revert with 0, 17
                        balanceOf[arg2].field_0 += arg3
                        emit 0xfeddf252: arg3, arg1, arg2
                    else:
                        if stor9[address(arg1)]:
                            if arg3 > _maxTxAmount:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                            if balanceOf[this.address].field_0 > !arg3:
                                revert with 0, 17
                            if balanceOf[this.address].field_0 + arg3 > _maxWalletToken:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                            require balanceOf[address(arg1)].field_0 >= arg3
                            balanceOf[address(arg1)].field_0 -= arg3
                            if balanceOf[arg2].field_0 > !arg3:
                                revert with 0, 17
                            balanceOf[arg2].field_0 += arg3
                            emit 0xfeddf252: arg3, arg1, arg2
                        else:
                            if not uint8(stor8.field_160):
                                revert with 0, 'trading disabled'
                            if arg3 <= balanceOf[address(stor8.field_0)].field_0 / 100:
                                if arg3 / 20 > !(arg3 / 20):
                                    revert with 0, 17
                                if arg3 < 2 * arg3 / 20:
                                    revert with 0, 17
                                if arg3 / 20 > !(arg3 / 20):
                                    revert with 0, 17
                                if balanceOf[address(arg1)].field_0 < 2 * arg3 / 20:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 -= 2 * arg3 / 20
                                if balanceOf[this.address].field_0 > !(arg3 / 20):
                                    revert with 0, 17
                                balanceOf[this.address].field_0 += arg3 / 20
                                if stor262B > !(arg3 / 20):
                                    revert with 0, 17
                                stor262B += arg3 / 20
                                if totalSupply < arg3 / 20:
                                    revert with 0, 17
                                totalSupply -= arg3 / 20
                                emit 0xfeddf252: (arg3 / 20), arg1, this.address
                                emit 0xfeddf252: (arg3 / 20), arg1, 57005
                                if not balanceOf[this.address].field_0:
                                    if arg3 - (2 * arg3 / 20) > _maxTxAmount:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                                    if balanceOf[this.address].field_0 > !(arg3 - (2 * arg3 / 20)):
                                        revert with 0, 17
                                    if balanceOf[this.address].field_0 + arg3 - (2 * arg3 / 20) > _maxWalletToken:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                                else:
                                    if arg3 - (2 * arg3 / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    uint8(stor7.field_0) = 1
                                    mem[128] = this.address
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                    if balanceOf[this.address].field_0 <= 2 * arg3 - (2 * arg3 / 20):
                                        mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_0
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address].field_0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        mem[ceil32(return_data.size) + 196] = 2 * arg3 - (2 * arg3 / 20)
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 2 * arg3 - (2 * arg3 / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor7.field_0) = 0
                                    if arg3 - (2 * arg3 / 20) > _maxTxAmount:
                                        revert with 0, 'Transfer amount exceeds the maxTxAmount.'
                                    if balanceOf[this.address].field_0 > !(arg3 - (2 * arg3 / 20)):
                                        revert with 0, 17
                                    if balanceOf[this.address].field_0 + arg3 - (2 * arg3 / 20) > _maxWalletToken:
                                        revert with 0, 'Exceeds maximum wallet token amount (200)'
                                ('le', ('add', ('field', 0, ('stor', ('map', 'address', ('name', 'balanceOf', 3)))), ('param', 'arg3'), ('mul', -1, ('mask_shl', 255, 0, 1, ('div', ('param', 'arg3'), 20)))), ('stor', ('name', '_maxWalletToken', 6)))
                                require balanceOf[address(arg1)].field_0 >= arg3 - (2 * arg3 / 20)
                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (2 * arg3 / 20)
                                if balanceOf[arg2].field_0 > !(arg3 - (2 * arg3 / 20)):
                                    revert with 0, 17
                                balanceOf[arg2].field_0 = balanceOf[arg2].field_0 + arg3 - (2 * arg3 / 20)
                                emit 0xfeddf252: (arg3 - (2 * arg3 / 20)), arg1, arg2
                            else:
                                if arg3 > balanceOf[address(stor8.field_0)].field_0 / 20:
                                    if arg3 / 20 > !(arg3 / 4):
                                        revert with 0, 17
                                    if arg3 < (arg3 / 20) + (arg3 / 4):
                                        revert with 0, 17
                                    if arg3 / 20 > !(arg3 / 4):
                                        revert with 0, 17
                                    if balanceOf[address(arg1)].field_0 < (arg3 / 20) + (arg3 / 4):
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - (arg3 / 20) - (arg3 / 4)
                                    if balanceOf[this.address].field_0 > !(arg3 / 20):
                                        revert with 0, 17
                                    balanceOf[this.address].field_0 += arg3 / 20
                                    if stor262B > !(arg3 / 4):
                                        revert with 0, 17
                                    stor262B += arg3 / 4
                                    if totalSupply < arg3 / 4:
                                        revert with 0, 17
                                    totalSupply -= arg3 / 4
                                    emit 0xfeddf252: (arg3 / 20), arg1, this.address
                                    emit 0xfeddf252: (arg3 / 4), arg1, 57005
                                    if not balanceOf[this.address].field_0:
                                        if arg3 - (arg3 / 20) - (arg3 / 4) > _maxTxAmount:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                                        if balanceOf[this.address].field_0 > !(arg3 - (arg3 / 20) - (arg3 / 4)):
                                            revert with 0, 17
                                        if balanceOf[this.address].field_0 + arg3 - (arg3 / 20) - (arg3 / 4) > _maxWalletToken:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                                    else:
                                        if arg3 - (arg3 / 20) - (arg3 / 4) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        uint8(stor7.field_0) = 1
                                        mem[128] = this.address
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        if balanceOf[this.address].field_0 <= 2 * arg3 - (arg3 / 20) - (arg3 / 4):
                                            mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_0
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[this.address].field_0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        else:
                                            mem[ceil32(return_data.size) + 196] = 2 * arg3 - (arg3 / 20) - (arg3 / 4)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * arg3 - (arg3 / 20) - (arg3 / 4), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor7.field_0) = 0
                                        if arg3 - (arg3 / 20) - (arg3 / 4) > _maxTxAmount:
                                            revert with 0, 'Transfer amount exceeds the maxTxAmount.'
                                        if balanceOf[this.address].field_0 > !(arg3 - (arg3 / 20) - (arg3 / 4)):
                                            revert with 0, 17
                                        if balanceOf[this.address].field_0 + arg3 - (arg3 / 20) - (arg3 / 4) > _maxWalletToken:
                                            revert with 0, 'Exceeds maximum wallet token amount (200)'
                                    ('le', ('add', ('field', 0, ('stor', ('map', 'address', ('name', 'balanceOf', 3)))), ('param', 'arg3'), ('mul', -1, ('div', ('param', 'arg3'), 20)), ('mul', -1, ('div', ('mask', 256, 0, ('param', 'arg3')), 4))), ('stor', ('name', '_maxWalletToken', 6)))
                                    require balanceOf[address(arg1)].field_0 >= arg3 - (arg3 / 20) - (arg3 / 4)
                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (arg3 / 20) + (arg3 / 4)
                                    if balanceOf[arg2].field_0 > !(arg3 - (arg3 / 20) - (arg3 / 4)):
                                        revert with 0, 17
                                    balanceOf[arg2].field_0 = balanceOf[arg2].field_0 + arg3 - (arg3 / 20) - (arg3 / 4)
                                    emit 0xfeddf252: (arg3 - (arg3 / 20) - (arg3 / 4)), arg1, arg2
                                else:
                                    if balanceOf[address(stor8.field_0)].field_0 / 20 < balanceOf[address(stor8.field_0)].field_0 / 100:
                                        revert with 0, 17
                                    if arg3 < balanceOf[address(stor8.field_0)].field_0 / 100:
                                        revert with 0, 17
                                    if arg3 - (balanceOf[address(stor8.field_0)].field_0 / 100) > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
                                        revert with 0, 17
                                    if (20 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100) and arg3 > -1 / (20 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100):
                                        revert with 0, 17
                                    if not (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100):
                                        revert with 0, 18
                                    if arg3 / 20 > !((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                        revert with 0, 17
                                    if arg3 / 20 > !((arg3 / 20) + ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                        revert with 0, 17
                                    if arg3 < (2 * arg3 / 20) + ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                        revert with 0, 17
                                    if arg3 / 20 > !((arg3 / 20) + ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                        revert with 0, 17
                                    if balanceOf[address(arg1)].field_0 < (2 * arg3 / 20) + ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                    if balanceOf[this.address].field_0 > !(arg3 / 20):
                                        revert with 0, 17
                                    balanceOf[this.address].field_0 += arg3 / 20
                                    if stor262B > !((arg3 / 20) + ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                        revert with 0, 17
                                    stor262B = stor262B + (arg3 / 20) + ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                    if totalSupply < (arg3 / 20) + ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                        revert with 0, 17
                                    totalSupply = totalSupply - (arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                    emit 0xfeddf252: (arg3 / 20), arg1, this.address
                                    emit 0xfeddf252: ((arg3 / 20) + ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)), arg1, 57005
                                    if not balanceOf[this.address].field_0:
                                        if arg3 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > _maxTxAmount:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                                        if balanceOf[this.address].field_0 > !(arg3 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                            revert with 0, 17
                                        if balanceOf[this.address].field_0 + arg3 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > _maxWalletToken:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                                    else:
                                        if arg3 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        uint8(stor7.field_0) = 1
                                        mem[128] = this.address
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        if balanceOf[this.address].field_0 <= 2 * arg3 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                            mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_0
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[this.address].field_0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        else:
                                            mem[ceil32(return_data.size) + 196] = 2 * arg3 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * arg3 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor7.field_0) = 0
                                        if arg3 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > _maxTxAmount:
                                            revert with 0, 'Transfer amount exceeds the maxTxAmount.'
                                        if balanceOf[this.address].field_0 > !(arg3 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                            revert with 0, 17
                                        if balanceOf[this.address].field_0 + arg3 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > _maxWalletToken:
                                            revert with 0, 'Exceeds maximum wallet token amount (200)'
                                    ('le', ('add', ('field', 0, ('stor', ('map', 'address', ('name', 'balanceOf', 3)))), ('param', 'arg3'), ('mul', -2, ('div', ('param', 'arg3'), 20)), ('mul', -1, ('div', ('div', ('add', ('mul', 20, ('param', 'arg3'), ('param', 'arg3')), ('mul', -20, ('div', ('field', 0, ('stor', ('map', ('type', 160, ('field', 0, ('stor', ('name', 'stor8', 8)))), ('name', 'balanceOf', 3)))), 100), ('param', 'arg3'))), ('add', ('div', ('field', 0, ('stor', ('map', ('type', 160, ('field', 0, ('stor', ('name', 'stor8', 8)))), ('name', 'balanceOf', 3)))), 20), ('mul', -1, ('div', ('field', 0, ('stor', ('map', ('type', 160, ('field', 0, ('stor', ('name', 'stor8', 8)))), ('name', 'balanceOf', 3)))), 100)))), 100))), ('stor', ('name', '_maxWalletToken', 6)))
                                    require balanceOf[address(arg1)].field_0 >= arg3 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (2 * arg3 / 20) + ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                    if balanceOf[arg2].field_0 > !(arg3 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                        revert with 0, 17
                                    balanceOf[arg2].field_0 = balanceOf[arg2].field_0 + arg3 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                    emit 0xfeddf252: (arg3 - (2 * arg3 / 20) - ((20 * arg3 * arg3) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg3) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)), arg1, arg2
        else:
            if not uint8(stor8.field_160):
                revert with 0, 'trading disabled'
            if arg3 / 20 > !(arg3 / 20):
                revert with 0, 17
            if arg3 < 2 * arg3 / 20:
                revert with 0, 17
            if arg3 / 20 > !(arg3 / 20):
                revert with 0, 17
            if balanceOf[address(arg1)].field_0 < 2 * arg3 / 20:
                revert with 0, 17
            balanceOf[address(arg1)].field_0 -= 2 * arg3 / 20
            if balanceOf[this.address].field_0 > !(arg3 / 20):
                revert with 0, 17
            balanceOf[this.address].field_0 += arg3 / 20
            if stor262B > !(arg3 / 20):
                revert with 0, 17
            stor262B += arg3 / 20
            if totalSupply < arg3 / 20:
                revert with 0, 17
            totalSupply -= arg3 / 20
            emit 0xfeddf252: (arg3 / 20), arg1, this.address
            emit 0xfeddf252: (arg3 / 20), arg1, 57005
            if uint8(stor7.field_0):
                if arg3 - (2 * arg3 / 20) > _maxTxAmount:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                if balanceOf[this.address].field_0 > !(arg3 - (2 * arg3 / 20)):
                    revert with 0, 17
                if balanceOf[this.address].field_0 + arg3 - (2 * arg3 / 20) > _maxWalletToken:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                require balanceOf[address(arg1)].field_0 >= arg3 - (2 * arg3 / 20)
                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (2 * arg3 / 20)
                if balanceOf[arg2].field_0 > !(arg3 - (2 * arg3 / 20)):
                    revert with 0, 17
                balanceOf[arg2].field_0 = balanceOf[arg2].field_0 + arg3 - (2 * arg3 / 20)
                emit 0xfeddf252: (arg3 - (2 * arg3 / 20)), arg1, arg2
            else:
                if not uniswapV2PairAddress:
                    if arg3 - (2 * arg3 / 20) > _maxTxAmount:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                    if balanceOf[this.address].field_0 > !(arg3 - (2 * arg3 / 20)):
                        revert with 0, 17
                    if balanceOf[this.address].field_0 + arg3 - (2 * arg3 / 20) > _maxWalletToken:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                    require balanceOf[address(arg1)].field_0 >= arg3 - (2 * arg3 / 20)
                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (2 * arg3 / 20)
                    if balanceOf[arg2].field_0 > !(arg3 - (2 * arg3 / 20)):
                        revert with 0, 17
                    balanceOf[arg2].field_0 = balanceOf[arg2].field_0 + arg3 - (2 * arg3 / 20)
                    emit 0xfeddf252: (arg3 - (2 * arg3 / 20)), arg1, arg2
                else:
                    if uniswapV2PairAddress != arg2:
                        if arg3 - (2 * arg3 / 20) > _maxTxAmount:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                        if balanceOf[this.address].field_0 > !(arg3 - (2 * arg3 / 20)):
                            revert with 0, 17
                        if balanceOf[this.address].field_0 + arg3 - (2 * arg3 / 20) > _maxWalletToken:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                        require balanceOf[address(arg1)].field_0 >= arg3 - (2 * arg3 / 20)
                        balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (2 * arg3 / 20)
                        if balanceOf[arg2].field_0 > !(arg3 - (2 * arg3 / 20)):
                            revert with 0, 17
                        balanceOf[arg2].field_0 = balanceOf[arg2].field_0 + arg3 - (2 * arg3 / 20)
                        emit 0xfeddf252: (arg3 - (2 * arg3 / 20)), arg1, arg2
                    else:
                        if stor9[address(arg1)]:
                            if arg3 - (2 * arg3 / 20) > _maxTxAmount:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                            if balanceOf[this.address].field_0 > !(arg3 - (2 * arg3 / 20)):
                                revert with 0, 17
                            if balanceOf[this.address].field_0 + arg3 - (2 * arg3 / 20) > _maxWalletToken:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                            require balanceOf[address(arg1)].field_0 >= arg3 - (2 * arg3 / 20)
                            balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (2 * arg3 / 20)
                            if balanceOf[arg2].field_0 > !(arg3 - (2 * arg3 / 20)):
                                revert with 0, 17
                            balanceOf[arg2].field_0 = balanceOf[arg2].field_0 + arg3 - (2 * arg3 / 20)
                            emit 0xfeddf252: (arg3 - (2 * arg3 / 20)), arg1, arg2
                        else:
                            if not uint8(stor8.field_160):
                                revert with 0, 'trading disabled'
                            if arg3 - (2 * arg3 / 20) <= balanceOf[address(stor8.field_0)].field_0 / 100:
                                if arg3 - (2 * arg3 / 20) / 20 > !(arg3 - (2 * arg3 / 20) / 20):
                                    revert with 0, 17
                                if arg3 - (2 * arg3 / 20) < 2 * arg3 - (2 * arg3 / 20) / 20:
                                    revert with 0, 17
                                if arg3 - (2 * arg3 / 20) / 20 > !(arg3 - (2 * arg3 / 20) / 20):
                                    revert with 0, 17
                                if balanceOf[address(arg1)].field_0 < 2 * arg3 - (2 * arg3 / 20) / 20:
                                    revert with 0, 17
                                balanceOf[address(arg1)].field_0 -= 2 * arg3 - (2 * arg3 / 20) / 20
                                if balanceOf[this.address].field_0 > !(arg3 - (2 * arg3 / 20) / 20):
                                    revert with 0, 17
                                balanceOf[this.address].field_0 += arg3 - (2 * arg3 / 20) / 20
                                if stor262B > !(arg3 - (2 * arg3 / 20) / 20):
                                    revert with 0, 17
                                stor262B += arg3 - (2 * arg3 / 20) / 20
                                if totalSupply < arg3 - (2 * arg3 / 20) / 20:
                                    revert with 0, 17
                                totalSupply -= arg3 - (2 * arg3 / 20) / 20
                                emit 0xfeddf252: (arg3 - (2 * arg3 / 20) / 20), arg1, this.address
                                emit 0xfeddf252: (arg3 - (2 * arg3 / 20) / 20), arg1, 57005
                                if not balanceOf[this.address].field_0:
                                    if arg3 - (2 * arg3 / 20) - (2 * arg3 - (2 * arg3 / 20) / 20) > _maxTxAmount:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                                    if balanceOf[this.address].field_0 > !(arg3 - (2 * arg3 / 20) - (2 * arg3 - (2 * arg3 / 20) / 20)):
                                        revert with 0, 17
                                    if balanceOf[this.address].field_0 + arg3 - (2 * arg3 / 20) - (2 * arg3 - (2 * arg3 / 20) / 20) > _maxWalletToken:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                                else:
                                    if arg3 - (2 * arg3 / 20) - (2 * arg3 - (2 * arg3 / 20) / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    uint8(stor7.field_0) = 1
                                    mem[128] = this.address
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                    if balanceOf[this.address].field_0 <= 2 * arg3 - (2 * arg3 / 20) - (2 * arg3 - (2 * arg3 / 20) / 20):
                                        mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_0
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address].field_0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        mem[ceil32(return_data.size) + 196] = 2 * arg3 - (2 * arg3 / 20) - (2 * arg3 - (2 * arg3 / 20) / 20)
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 2 * arg3 - (2 * arg3 / 20) - (2 * arg3 - (2 * arg3 / 20) / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor7.field_0) = 0
                                    if arg3 - (2 * arg3 / 20) - (2 * arg3 - (2 * arg3 / 20) / 20) > _maxTxAmount:
                                        revert with 0, 'Transfer amount exceeds the maxTxAmount.'
                                    if balanceOf[this.address].field_0 > !(arg3 - (2 * arg3 / 20) - (2 * arg3 - (2 * arg3 / 20) / 20)):
                                        revert with 0, 17
                                    if balanceOf[this.address].field_0 + arg3 - (2 * arg3 / 20) - (2 * arg3 - (2 * arg3 / 20) / 20) > _maxWalletToken:
                                        revert with 0, 'Exceeds maximum wallet token amount (200)'
                                ('le', ('add', ('field', 0, ('stor', ('map', 'address', ('name', 'balanceOf', 3)))), ('param', 'arg3'), ('mul', -1, ('mask_shl', 255, 0, 1, ('div', ('param', 'arg3'), 20))), ('mul', -1, ('mask_shl', 255, 0, 1, ('div', ('add', ('param', 'arg3'), ('mul', -1, ('mask_shl', 255, 0, 1, ('div', ('param', 'arg3'), 20)))), 20)))), ('stor', ('name', '_maxWalletToken', 6)))
                                require balanceOf[address(arg1)].field_0 >= arg3 - (2 * arg3 / 20) - (2 * arg3 - (2 * arg3 / 20) / 20)
                                balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (2 * arg3 / 20) + (2 * arg3 - (2 * arg3 / 20) / 20)
                                if balanceOf[arg2].field_0 > !(arg3 - (2 * arg3 / 20) - (2 * arg3 - (2 * arg3 / 20) / 20)):
                                    revert with 0, 17
                                balanceOf[arg2].field_0 = balanceOf[arg2].field_0 + arg3 - (2 * arg3 / 20) - (2 * arg3 - (2 * arg3 / 20) / 20)
                                emit 0xfeddf252: (arg3 - (2 * arg3 / 20) - (2 * arg3 - (2 * arg3 / 20) / 20)), arg1, arg2
                            else:
                                if arg3 - (2 * arg3 / 20) > balanceOf[address(stor8.field_0)].field_0 / 20:
                                    if arg3 - (2 * arg3 / 20) / 20 > !(arg3 - (2 * arg3 / 20) / 4):
                                        revert with 0, 17
                                    if arg3 - (2 * arg3 / 20) < (arg3 - (2 * arg3 / 20) / 20) + (arg3 - (2 * arg3 / 20) / 4):
                                        revert with 0, 17
                                    if arg3 - (2 * arg3 / 20) / 20 > !(arg3 - (2 * arg3 / 20) / 4):
                                        revert with 0, 17
                                    if balanceOf[address(arg1)].field_0 < (arg3 - (2 * arg3 / 20) / 20) + (arg3 - (2 * arg3 / 20) / 4):
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - (arg3 - (2 * arg3 / 20) / 20) - (arg3 - (2 * arg3 / 20) / 4)
                                    if balanceOf[this.address].field_0 > !(arg3 - (2 * arg3 / 20) / 20):
                                        revert with 0, 17
                                    balanceOf[this.address].field_0 += arg3 - (2 * arg3 / 20) / 20
                                    if stor262B > !(arg3 - (2 * arg3 / 20) / 4):
                                        revert with 0, 17
                                    stor262B += arg3 - (2 * arg3 / 20) / 4
                                    if totalSupply < arg3 - (2 * arg3 / 20) / 4:
                                        revert with 0, 17
                                    totalSupply -= arg3 - (2 * arg3 / 20) / 4
                                    emit 0xfeddf252: (arg3 - (2 * arg3 / 20) / 20), arg1, this.address
                                    emit 0xfeddf252: (arg3 - (2 * arg3 / 20) / 4), arg1, 57005
                                    if not balanceOf[this.address].field_0:
                                        if arg3 - (2 * arg3 / 20) - (arg3 - (2 * arg3 / 20) / 20) - (arg3 - (2 * arg3 / 20) / 4) > _maxTxAmount:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                                        if balanceOf[this.address].field_0 > !(arg3 - (2 * arg3 / 20) - (arg3 - (2 * arg3 / 20) / 20) - (arg3 - (2 * arg3 / 20) / 4)):
                                            revert with 0, 17
                                        if balanceOf[this.address].field_0 + arg3 - (2 * arg3 / 20) - (arg3 - (2 * arg3 / 20) / 20) - (arg3 - (2 * arg3 / 20) / 4) > _maxWalletToken:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                                    else:
                                        if arg3 - (2 * arg3 / 20) - (arg3 - (2 * arg3 / 20) / 20) - (arg3 - (2 * arg3 / 20) / 4) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        uint8(stor7.field_0) = 1
                                        mem[128] = this.address
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        if balanceOf[this.address].field_0 <= 2 * arg3 - (2 * arg3 / 20) - (arg3 - (2 * arg3 / 20) / 20) - (arg3 - (2 * arg3 / 20) / 4):
                                            mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_0
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[this.address].field_0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        else:
                                            mem[ceil32(return_data.size) + 196] = 2 * arg3 - (2 * arg3 / 20) - (arg3 - (2 * arg3 / 20) / 20) - (arg3 - (2 * arg3 / 20) / 4)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * arg3 - (2 * arg3 / 20) - (arg3 - (2 * arg3 / 20) / 20) - (arg3 - (2 * arg3 / 20) / 4), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor7.field_0) = 0
                                        if arg3 - (2 * arg3 / 20) - (arg3 - (2 * arg3 / 20) / 20) - (arg3 - (2 * arg3 / 20) / 4) > _maxTxAmount:
                                            revert with 0, 'Transfer amount exceeds the maxTxAmount.'
                                        if balanceOf[this.address].field_0 > !(arg3 - (2 * arg3 / 20) - (arg3 - (2 * arg3 / 20) / 20) - (arg3 - (2 * arg3 / 20) / 4)):
                                            revert with 0, 17
                                        if balanceOf[this.address].field_0 + arg3 - (2 * arg3 / 20) - (arg3 - (2 * arg3 / 20) / 20) - (arg3 - (2 * arg3 / 20) / 4) > _maxWalletToken:
                                            revert with 0, 'Exceeds maximum wallet token amount (200)'
                                    ('le', ('add', ('field', 0, ('stor', ('map', 'address', ('name', 'balanceOf', 3)))), ('param', 'arg3'), ('mul', -1, ('mask_shl', 255, 0, 1, ('div', ('param', 'arg3'), 20))), ('mul', -1, ('div', ('add', ('param', 'arg3'), ('mul', -1, ('mask_shl', 255, 0, 1, ('div', ('param', 'arg3'), 20)))), 20)), ('mul', -1, ('div', ('mask', 256, 0, ('add', ('param', 'arg3'), ('mul', -1, ('mask_shl', 255, 0, 1, ('div', ('param', 'arg3'), 20))))), 4))), ('stor', ('name', '_maxWalletToken', 6)))
                                    require balanceOf[address(arg1)].field_0 >= arg3 - (2 * arg3 / 20) - (arg3 - (2 * arg3 / 20) / 20) - (arg3 - (2 * arg3 / 20) / 4)
                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (2 * arg3 / 20) + (arg3 - (2 * arg3 / 20) / 20) + (arg3 - (2 * arg3 / 20) / 4)
                                    if balanceOf[arg2].field_0 > !(arg3 - (2 * arg3 / 20) - (arg3 - (2 * arg3 / 20) / 20) - (arg3 - (2 * arg3 / 20) / 4)):
                                        revert with 0, 17
                                    balanceOf[arg2].field_0 = balanceOf[arg2].field_0 + arg3 - (2 * arg3 / 20) - (arg3 - (2 * arg3 / 20) / 20) - (arg3 - (2 * arg3 / 20) / 4)
                                    emit 0xfeddf252: (arg3 - (2 * arg3 / 20) - (arg3 - (2 * arg3 / 20) / 20) - (arg3 - (2 * arg3 / 20) / 4)), arg1, arg2
                                else:
                                    if balanceOf[address(stor8.field_0)].field_0 / 20 < balanceOf[address(stor8.field_0)].field_0 / 100:
                                        revert with 0, 17
                                    if arg3 - (2 * arg3 / 20) < balanceOf[address(stor8.field_0)].field_0 / 100:
                                        revert with 0, 17
                                    if arg3 - (2 * arg3 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
                                        revert with 0, 17
                                    if (20 * arg3) - (20 * 2 * arg3 / 20) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100) and arg3 - (2 * arg3 / 20) > -1 / (20 * arg3) - (20 * 2 * arg3 / 20) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100):
                                        revert with 0, 17
                                    if not (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100):
                                        revert with 0, 18
                                    if arg3 - (2 * arg3 / 20) / 20 > !((20 * arg3 * arg3) - (20 * 2 * arg3 / 20 * arg3) - (20 * arg3 * 2 * arg3 / 20) + (20 * 2 * arg3 / 20 * 2 * arg3 / 20) - (20 * arg3 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg3 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                        revert with 0, 17
                                    if arg3 - (2 * arg3 / 20) / 20 > !((arg3 - (2 * arg3 / 20) / 20) + ((20 * arg3 * arg3) - (20 * 2 * arg3 / 20 * arg3) - (20 * arg3 * 2 * arg3 / 20) + (20 * 2 * arg3 / 20 * 2 * arg3 / 20) - (20 * arg3 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg3 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                        revert with 0, 17
                                    if arg3 - (2 * arg3 / 20) < (2 * arg3 - (2 * arg3 / 20) / 20) + ((20 * arg3 * arg3) - (20 * 2 * arg3 / 20 * arg3) - (20 * arg3 * 2 * arg3 / 20) + (20 * 2 * arg3 / 20 * 2 * arg3 / 20) - (20 * arg3 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg3 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                        revert with 0, 17
                                    if arg3 - (2 * arg3 / 20) / 20 > !((arg3 - (2 * arg3 / 20) / 20) + ((20 * arg3 * arg3) - (20 * 2 * arg3 / 20 * arg3) - (20 * arg3 * 2 * arg3 / 20) + (20 * 2 * arg3 / 20 * 2 * arg3 / 20) - (20 * arg3 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg3 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                        revert with 0, 17
                                    if balanceOf[address(arg1)].field_0 < (2 * arg3 - (2 * arg3 / 20) / 20) + ((20 * arg3 * arg3) - (20 * 2 * arg3 / 20 * arg3) - (20 * arg3 * 2 * arg3 / 20) + (20 * 2 * arg3 / 20 * 2 * arg3 / 20) - (20 * arg3 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg3 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                        revert with 0, 17
                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - (2 * arg3 - (2 * arg3 / 20) / 20) - ((20 * arg3 * arg3) - (20 * 2 * arg3 / 20 * arg3) - (20 * arg3 * 2 * arg3 / 20) + (20 * 2 * arg3 / 20 * 2 * arg3 / 20) - (20 * arg3 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg3 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                    if balanceOf[this.address].field_0 > !(arg3 - (2 * arg3 / 20) / 20):
                                        revert with 0, 17
                                    balanceOf[this.address].field_0 += arg3 - (2 * arg3 / 20) / 20
                                    if stor262B > !((arg3 - (2 * arg3 / 20) / 20) + ((20 * arg3 * arg3) - (20 * 2 * arg3 / 20 * arg3) - (20 * arg3 * 2 * arg3 / 20) + (20 * 2 * arg3 / 20 * 2 * arg3 / 20) - (20 * arg3 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg3 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                        revert with 0, 17
                                    stor262B = stor262B + (arg3 - (2 * arg3 / 20) / 20) + ((20 * arg3 * arg3) - (20 * 2 * arg3 / 20 * arg3) - (20 * arg3 * 2 * arg3 / 20) + (20 * 2 * arg3 / 20 * 2 * arg3 / 20) - (20 * arg3 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg3 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                    if totalSupply < (arg3 - (2 * arg3 / 20) / 20) + ((20 * arg3 * arg3) - (20 * 2 * arg3 / 20 * arg3) - (20 * arg3 * 2 * arg3 / 20) + (20 * 2 * arg3 / 20 * 2 * arg3 / 20) - (20 * arg3 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg3 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                        revert with 0, 17
                                    totalSupply = totalSupply - (arg3 - (2 * arg3 / 20) / 20) - ((20 * arg3 * arg3) - (20 * 2 * arg3 / 20 * arg3) - (20 * arg3 * 2 * arg3 / 20) + (20 * 2 * arg3 / 20 * 2 * arg3 / 20) - (20 * arg3 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg3 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                    emit 0xfeddf252: (arg3 - (2 * arg3 / 20) / 20), arg1, this.address
                                    emit 0xfeddf252: ((arg3 - (2 * arg3 / 20) / 20) + ((20 * arg3 * arg3) - (20 * 2 * arg3 / 20 * arg3) - (20 * arg3 * 2 * arg3 / 20) + (20 * 2 * arg3 / 20 * 2 * arg3 / 20) - (20 * arg3 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg3 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)), arg1, 57005
                                    if not balanceOf[this.address].field_0:
                                        if arg3 - (2 * arg3 / 20) - (2 * arg3 - (2 * arg3 / 20) / 20) - ((20 * arg3 * arg3) - (20 * 2 * arg3 / 20 * arg3) - (20 * arg3 * 2 * arg3 / 20) + (20 * 2 * arg3 / 20 * 2 * arg3 / 20) - (20 * arg3 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg3 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > _maxTxAmount:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                                        if balanceOf[this.address].field_0 > !(arg3 - (2 * arg3 / 20) - (2 * arg3 - (2 * arg3 / 20) / 20) - ((20 * arg3 * arg3) - (20 * 2 * arg3 / 20 * arg3) - (20 * arg3 * 2 * arg3 / 20) + (20 * 2 * arg3 / 20 * 2 * arg3 / 20) - (20 * arg3 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg3 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                            revert with 0, 17
                                        if balanceOf[this.address].field_0 + arg3 - (2 * arg3 / 20) - (2 * arg3 - (2 * arg3 / 20) / 20) - ((20 * arg3 * arg3) - (20 * 2 * arg3 / 20 * arg3) - (20 * arg3 * 2 * arg3 / 20) + (20 * 2 * arg3 / 20 * 2 * arg3 / 20) - (20 * arg3 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg3 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > _maxWalletToken:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                                    else:
                                        if arg3 - (2 * arg3 / 20) - (2 * arg3 - (2 * arg3 / 20) / 20) - ((20 * arg3 * arg3) - (20 * 2 * arg3 / 20 * arg3) - (20 * arg3 * 2 * arg3 / 20) + (20 * 2 * arg3 / 20 * 2 * arg3 / 20) - (20 * arg3 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg3 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        uint8(stor7.field_0) = 1
                                        mem[128] = this.address
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        if balanceOf[this.address].field_0 <= 2 * arg3 - (2 * arg3 / 20) - (2 * arg3 - (2 * arg3 / 20) / 20) - ((20 * arg3 * arg3) - (20 * 2 * arg3 / 20 * arg3) - (20 * arg3 * 2 * arg3 / 20) + (20 * 2 * arg3 / 20 * 2 * arg3 / 20) - (20 * arg3 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg3 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                            mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_0
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[this.address].field_0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        else:
                                            mem[ceil32(return_data.size) + 196] = 2 * arg3 - (2 * arg3 / 20) - (2 * arg3 - (2 * arg3 / 20) / 20) - ((20 * arg3 * arg3) - (20 * 2 * arg3 / 20 * arg3) - (20 * arg3 * 2 * arg3 / 20) + (20 * 2 * arg3 / 20 * 2 * arg3 / 20) - (20 * arg3 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg3 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * arg3 - (2 * arg3 / 20) - (2 * arg3 - (2 * arg3 / 20) / 20) - ((20 * arg3 * arg3) - (20 * 2 * arg3 / 20 * arg3) - (20 * arg3 * 2 * arg3 / 20) + (20 * 2 * arg3 / 20 * 2 * arg3 / 20) - (20 * arg3 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg3 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor7.field_0) = 0
                                        if arg3 - (2 * arg3 / 20) - (2 * arg3 - (2 * arg3 / 20) / 20) - ((20 * arg3 * arg3) - (20 * 2 * arg3 / 20 * arg3) - (20 * arg3 * 2 * arg3 / 20) + (20 * 2 * arg3 / 20 * 2 * arg3 / 20) - (20 * arg3 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg3 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > _maxTxAmount:
                                            revert with 0, 'Transfer amount exceeds the maxTxAmount.'
                                        if balanceOf[this.address].field_0 > !(arg3 - (2 * arg3 / 20) - (2 * arg3 - (2 * arg3 / 20) / 20) - ((20 * arg3 * arg3) - (20 * 2 * arg3 / 20 * arg3) - (20 * arg3 * 2 * arg3 / 20) + (20 * 2 * arg3 / 20 * 2 * arg3 / 20) - (20 * arg3 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg3 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                            revert with 0, 17
                                        if balanceOf[this.address].field_0 + arg3 - (2 * arg3 / 20) - (2 * arg3 - (2 * arg3 / 20) / 20) - ((20 * arg3 * arg3) - (20 * 2 * arg3 / 20 * arg3) - (20 * arg3 * 2 * arg3 / 20) + (20 * 2 * arg3 / 20 * 2 * arg3 / 20) - (20 * arg3 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg3 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > _maxWalletToken:
                                            revert with 0, 'Exceeds maximum wallet token amount (200)'
                                    ('le', ('add', ('field', 0, ('stor', ('map', 'address', ('name', 'balanceOf', 3)))), ('param', 'arg3'), ('mul', -1, ('mask_shl', 255, 0, 1, ('div', ('param', 'arg3'), 20))), ('mul', -2, ('div', ('add', ('param', 'arg3'), ('mul', -1, ('mask_shl', 255, 0, 1, ('div', ('param', 'arg3'), 20)))), 20)), ('mul', -1, ('div', ('div', ('add', ('mul', 20, ('param', 'arg3'), ('param', 'arg3')), ('mul', -20, ('mask_shl', 255, 0, 1, ('div', ('param', 'arg3'), 20)), ('param', 'arg3')), ('mul', -20, ('param', 'arg3'), ('mask_shl', 255, 0, 1, ('div', ('param', 'arg3'), 20))), ('mul', 20, ('mask_shl', 255, 0, 1, ('div', ('param', 'arg3'), 20)), ('mask_shl', 255, 0, 1, ('div', ('param', 'arg3'), 20))), ('mul', -20, ('param', 'arg3'), ('div', ('field', 0, ('stor', ('map', ('type', 160, ('field', 0, ('stor', ('name', 'stor8', 8)))), ('name', 'balanceOf', 3)))), 100)), ('mul', 20, ('mask_shl', 255, 0, 1, ('div', ('param', 'arg3'), 20)), ('div', ('field', 0, ('stor', ('map', ('type', 160, ('field', 0, ('stor', ('name', 'stor8', 8)))), ('name', 'balanceOf', 3)))), 100))), ('add', ('div', ('field', 0, ('stor', ('map', ('type', 160, ('field', 0, ('stor', ('name', 'stor8', 8)))), ('name', 'balanceOf', 3)))), 20), ('mul', -1, ('div', ('field', 0, ('stor', ('map', ('type', 160, ('field', 0, ('stor', ('name', 'stor8', 8)))), ('name', 'balanceOf', 3)))), 100)))), 100))), ('stor', ('name', '_maxWalletToken', 6)))
                                    require balanceOf[address(arg1)].field_0 >= arg3 - (2 * arg3 / 20) - (2 * arg3 - (2 * arg3 / 20) / 20) - ((20 * arg3 * arg3) - (20 * 2 * arg3 / 20 * arg3) - (20 * arg3 * 2 * arg3 / 20) + (20 * 2 * arg3 / 20 * 2 * arg3 / 20) - (20 * arg3 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg3 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                    balanceOf[address(arg1)].field_0 = balanceOf[address(arg1)].field_0 - arg3 + (2 * arg3 / 20) + (2 * arg3 - (2 * arg3 / 20) / 20) + ((20 * arg3 * arg3) - (20 * 2 * arg3 / 20 * arg3) - (20 * arg3 * 2 * arg3 / 20) + (20 * 2 * arg3 / 20 * 2 * arg3 / 20) - (20 * arg3 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg3 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                    if balanceOf[arg2].field_0 > !(arg3 - (2 * arg3 / 20) - (2 * arg3 - (2 * arg3 / 20) / 20) - ((20 * arg3 * arg3) - (20 * 2 * arg3 / 20 * arg3) - (20 * arg3 * 2 * arg3 / 20) + (20 * 2 * arg3 / 20 * 2 * arg3 / 20) - (20 * arg3 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg3 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                        revert with 0, 17
                                    balanceOf[arg2].field_0 = balanceOf[arg2].field_0 + arg3 - (2 * arg3 / 20) - (2 * arg3 - (2 * arg3 / 20) / 20) - ((20 * arg3 * arg3) - (20 * 2 * arg3 / 20 * arg3) - (20 * arg3 * 2 * arg3 / 20) + (20 * 2 * arg3 / 20 * 2 * arg3 / 20) - (20 * arg3 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg3 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                    emit 0xfeddf252: (arg3 - (2 * arg3 / 20) - (2 * arg3 - (2 * arg3 / 20) / 20) - ((20 * arg3 * arg3) - (20 * 2 * arg3 / 20 * arg3) - (20 * arg3 * 2 * arg3 / 20) + (20 * 2 * arg3 / 20 * 2 * arg3 / 20) - (20 * arg3 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg3 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)), arg1, arg2
    require allowance[address(arg1)][msg.sender] >= arg3
    if allowance[address(arg1)][msg.sender] != -1:
        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
        emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > balanceOf[address(msg.sender)].field_0:
        revert with 0, 'not enough token for transfer'
    if uniswapV2PairAddress != msg.sender:
        if uint8(stor7.field_0):
            if arg2 > _maxTxAmount:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
            if balanceOf[this.address].field_0 > !arg2:
                revert with 0, 17
            if balanceOf[this.address].field_0 + arg2 > _maxWalletToken:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
            require balanceOf[address(msg.sender)].field_0 >= arg2
            balanceOf[address(msg.sender)].field_0 -= arg2
            if balanceOf[arg1].field_0 > !arg2:
                revert with 0, 17
            balanceOf[arg1].field_0 += arg2
            emit 0xfeddf252: arg2, msg.sender, arg1
        else:
            if not uniswapV2PairAddress:
                if arg2 > _maxTxAmount:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                if balanceOf[this.address].field_0 > !arg2:
                    revert with 0, 17
                if balanceOf[this.address].field_0 + arg2 > _maxWalletToken:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                require balanceOf[address(msg.sender)].field_0 >= arg2
                balanceOf[address(msg.sender)].field_0 -= arg2
                if balanceOf[arg1].field_0 > !arg2:
                    revert with 0, 17
                balanceOf[arg1].field_0 += arg2
                emit 0xfeddf252: arg2, msg.sender, arg1
            else:
                if uniswapV2PairAddress != arg1:
                    if arg2 > _maxTxAmount:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                    if balanceOf[this.address].field_0 > !arg2:
                        revert with 0, 17
                    if balanceOf[this.address].field_0 + arg2 > _maxWalletToken:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                    require balanceOf[address(msg.sender)].field_0 >= arg2
                    balanceOf[address(msg.sender)].field_0 -= arg2
                    if balanceOf[arg1].field_0 > !arg2:
                        revert with 0, 17
                    balanceOf[arg1].field_0 += arg2
                    emit 0xfeddf252: arg2, msg.sender, arg1
                else:
                    if stor9[address(msg.sender)]:
                        if arg2 > _maxTxAmount:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                        if balanceOf[this.address].field_0 > !arg2:
                            revert with 0, 17
                        if balanceOf[this.address].field_0 + arg2 > _maxWalletToken:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                        require balanceOf[address(msg.sender)].field_0 >= arg2
                        balanceOf[address(msg.sender)].field_0 -= arg2
                        if balanceOf[arg1].field_0 > !arg2:
                            revert with 0, 17
                        balanceOf[arg1].field_0 += arg2
                        emit 0xfeddf252: arg2, msg.sender, arg1
                    else:
                        if not uint8(stor8.field_160):
                            revert with 0, 'trading disabled'
                        if arg2 <= balanceOf[address(stor8.field_0)].field_0 / 100:
                            if arg2 / 20 > !(arg2 / 20):
                                revert with 0, 17
                            if arg2 < 2 * arg2 / 20:
                                revert with 0, 17
                            if arg2 / 20 > !(arg2 / 20):
                                revert with 0, 17
                            if balanceOf[address(msg.sender)].field_0 < 2 * arg2 / 20:
                                revert with 0, 17
                            balanceOf[address(msg.sender)].field_0 -= 2 * arg2 / 20
                            if balanceOf[this.address].field_0 > !(arg2 / 20):
                                revert with 0, 17
                            balanceOf[this.address].field_0 += arg2 / 20
                            if stor262B > !(arg2 / 20):
                                revert with 0, 17
                            stor262B += arg2 / 20
                            if totalSupply < arg2 / 20:
                                revert with 0, 17
                            totalSupply -= arg2 / 20
                            emit 0xfeddf252: (arg2 / 20), msg.sender, this.address
                            emit 0xfeddf252: (arg2 / 20), msg.sender, 57005
                            if not balanceOf[this.address].field_0:
                                if arg2 - (2 * arg2 / 20) > _maxTxAmount:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                                if balanceOf[this.address].field_0 > !(arg2 - (2 * arg2 / 20)):
                                    revert with 0, 17
                                if balanceOf[this.address].field_0 + arg2 - (2 * arg2 / 20) > _maxWalletToken:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                            else:
                                if arg2 - (2 * arg2 / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                uint8(stor7.field_0) = 1
                                mem[128] = this.address
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                        gas gas_remaining wei
                                mem[192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[160] = ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                if balanceOf[this.address].field_0 <= 2 * arg2 - (2 * arg2 / 20):
                                    mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_0
                                    idx = 0
                                    s = ceil32(return_data.size) + 388
                                    t = 128
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address].field_0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                else:
                                    mem[ceil32(return_data.size) + 196] = 2 * arg2 - (2 * arg2 / 20)
                                    idx = 0
                                    s = ceil32(return_data.size) + 388
                                    t = 128
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 2 * arg2 - (2 * arg2 / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor7.field_0) = 0
                                if arg2 - (2 * arg2 / 20) > _maxTxAmount:
                                    revert with 0, 'Transfer amount exceeds the maxTxAmount.'
                                if balanceOf[this.address].field_0 > !(arg2 - (2 * arg2 / 20)):
                                    revert with 0, 17
                                if balanceOf[this.address].field_0 + arg2 - (2 * arg2 / 20) > _maxWalletToken:
                                    revert with 0, 'Exceeds maximum wallet token amount (200)'
                            ('le', ('add', ('field', 0, ('stor', ('map', 'address', ('name', 'balanceOf', 3)))), ('param', 'arg2'), ('mul', -1, ('mask_shl', 255, 0, 1, ('div', ('param', 'arg2'), 20)))), ('stor', ('name', '_maxWalletToken', 6)))
                            require balanceOf[address(msg.sender)].field_0 >= arg2 - (2 * arg2 / 20)
                            balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (2 * arg2 / 20)
                            if balanceOf[arg1].field_0 > !(arg2 - (2 * arg2 / 20)):
                                revert with 0, 17
                            balanceOf[arg1].field_0 = balanceOf[arg1].field_0 + arg2 - (2 * arg2 / 20)
                            emit 0xfeddf252: (arg2 - (2 * arg2 / 20)), msg.sender, arg1
                        else:
                            if arg2 > balanceOf[address(stor8.field_0)].field_0 / 20:
                                if arg2 / 20 > !(arg2 / 4):
                                    revert with 0, 17
                                if arg2 < (arg2 / 20) + (arg2 / 4):
                                    revert with 0, 17
                                if arg2 / 20 > !(arg2 / 4):
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)].field_0 < (arg2 / 20) + (arg2 / 4):
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - (arg2 / 20) - (arg2 / 4)
                                if balanceOf[this.address].field_0 > !(arg2 / 20):
                                    revert with 0, 17
                                balanceOf[this.address].field_0 += arg2 / 20
                                if stor262B > !(arg2 / 4):
                                    revert with 0, 17
                                stor262B += arg2 / 4
                                if totalSupply < arg2 / 4:
                                    revert with 0, 17
                                totalSupply -= arg2 / 4
                                emit 0xfeddf252: (arg2 / 20), msg.sender, this.address
                                emit 0xfeddf252: (arg2 / 4), msg.sender, 57005
                                if not balanceOf[this.address].field_0:
                                    if arg2 - (arg2 / 20) - (arg2 / 4) > _maxTxAmount:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                                    if balanceOf[this.address].field_0 > !(arg2 - (arg2 / 20) - (arg2 / 4)):
                                        revert with 0, 17
                                    if balanceOf[this.address].field_0 + arg2 - (arg2 / 20) - (arg2 / 4) > _maxWalletToken:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                                else:
                                    if arg2 - (arg2 / 20) - (arg2 / 4) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    uint8(stor7.field_0) = 1
                                    mem[128] = this.address
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                    if balanceOf[this.address].field_0 <= 2 * arg2 - (arg2 / 20) - (arg2 / 4):
                                        mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_0
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address].field_0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 20) - (arg2 / 4)
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 2 * arg2 - (arg2 / 20) - (arg2 / 4), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor7.field_0) = 0
                                    if arg2 - (arg2 / 20) - (arg2 / 4) > _maxTxAmount:
                                        revert with 0, 'Transfer amount exceeds the maxTxAmount.'
                                    if balanceOf[this.address].field_0 > !(arg2 - (arg2 / 20) - (arg2 / 4)):
                                        revert with 0, 17
                                    if balanceOf[this.address].field_0 + arg2 - (arg2 / 20) - (arg2 / 4) > _maxWalletToken:
                                        revert with 0, 'Exceeds maximum wallet token amount (200)'
                                ('le', ('add', ('field', 0, ('stor', ('map', 'address', ('name', 'balanceOf', 3)))), ('param', 'arg2'), ('mul', -1, ('div', ('param', 'arg2'), 20)), ('mul', -1, ('div', ('mask', 256, 0, ('param', 'arg2')), 4))), ('stor', ('name', '_maxWalletToken', 6)))
                                require balanceOf[address(msg.sender)].field_0 >= arg2 - (arg2 / 20) - (arg2 / 4)
                                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 / 20) + (arg2 / 4)
                                if balanceOf[arg1].field_0 > !(arg2 - (arg2 / 20) - (arg2 / 4)):
                                    revert with 0, 17
                                balanceOf[arg1].field_0 = balanceOf[arg1].field_0 + arg2 - (arg2 / 20) - (arg2 / 4)
                                emit 0xfeddf252: (arg2 - (arg2 / 20) - (arg2 / 4)), msg.sender, arg1
                            else:
                                if balanceOf[address(stor8.field_0)].field_0 / 20 < balanceOf[address(stor8.field_0)].field_0 / 100:
                                    revert with 0, 17
                                if arg2 < balanceOf[address(stor8.field_0)].field_0 / 100:
                                    revert with 0, 17
                                if arg2 - (balanceOf[address(stor8.field_0)].field_0 / 100) > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
                                    revert with 0, 17
                                if (20 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100) and arg2 > -1 / (20 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100):
                                    revert with 0, 17
                                if not (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100):
                                    revert with 0, 18
                                if arg2 / 20 > !((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                    revert with 0, 17
                                if arg2 / 20 > !((arg2 / 20) + ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                    revert with 0, 17
                                if arg2 < (2 * arg2 / 20) + ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                    revert with 0, 17
                                if arg2 / 20 > !((arg2 / 20) + ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)].field_0 < (2 * arg2 / 20) + ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                if balanceOf[this.address].field_0 > !(arg2 / 20):
                                    revert with 0, 17
                                balanceOf[this.address].field_0 += arg2 / 20
                                if stor262B > !((arg2 / 20) + ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                    revert with 0, 17
                                stor262B = stor262B + (arg2 / 20) + ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                if totalSupply < (arg2 / 20) + ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                    revert with 0, 17
                                totalSupply = totalSupply - (arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                emit 0xfeddf252: (arg2 / 20), msg.sender, this.address
                                emit 0xfeddf252: ((arg2 / 20) + ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)), msg.sender, 57005
                                if not balanceOf[this.address].field_0:
                                    if arg2 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > _maxTxAmount:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                                    if balanceOf[this.address].field_0 > !(arg2 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                        revert with 0, 17
                                    if balanceOf[this.address].field_0 + arg2 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > _maxWalletToken:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                                else:
                                    if arg2 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    uint8(stor7.field_0) = 1
                                    mem[128] = this.address
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                    if balanceOf[this.address].field_0 <= 2 * arg2 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                        mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_0
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address].field_0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        mem[ceil32(return_data.size) + 196] = 2 * arg2 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 2 * arg2 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor7.field_0) = 0
                                    if arg2 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > _maxTxAmount:
                                        revert with 0, 'Transfer amount exceeds the maxTxAmount.'
                                    if balanceOf[this.address].field_0 > !(arg2 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                        revert with 0, 17
                                    if balanceOf[this.address].field_0 + arg2 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > _maxWalletToken:
                                        revert with 0, 'Exceeds maximum wallet token amount (200)'
                                ('le', ('add', ('field', 0, ('stor', ('map', 'address', ('name', 'balanceOf', 3)))), ('param', 'arg2'), ('mul', -2, ('div', ('param', 'arg2'), 20)), ('mul', -1, ('div', ('div', ('add', ('mul', 20, ('param', 'arg2'), ('param', 'arg2')), ('mul', -20, ('div', ('field', 0, ('stor', ('map', ('type', 160, ('field', 0, ('stor', ('name', 'stor8', 8)))), ('name', 'balanceOf', 3)))), 100), ('param', 'arg2'))), ('add', ('div', ('field', 0, ('stor', ('map', ('type', 160, ('field', 0, ('stor', ('name', 'stor8', 8)))), ('name', 'balanceOf', 3)))), 20), ('mul', -1, ('div', ('field', 0, ('stor', ('map', ('type', 160, ('field', 0, ('stor', ('name', 'stor8', 8)))), ('name', 'balanceOf', 3)))), 100)))), 100))), ('stor', ('name', '_maxWalletToken', 6)))
                                require balanceOf[address(msg.sender)].field_0 >= arg2 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (2 * arg2 / 20) + ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                if balanceOf[arg1].field_0 > !(arg2 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                    revert with 0, 17
                                balanceOf[arg1].field_0 = balanceOf[arg1].field_0 + arg2 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                emit 0xfeddf252: (arg2 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)), msg.sender, arg1
    else:
        if stor9[address(arg1)]:
            if uint8(stor7.field_0):
                if arg2 > _maxTxAmount:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                if balanceOf[this.address].field_0 > !arg2:
                    revert with 0, 17
                if balanceOf[this.address].field_0 + arg2 > _maxWalletToken:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                require balanceOf[address(msg.sender)].field_0 >= arg2
                balanceOf[address(msg.sender)].field_0 -= arg2
                if balanceOf[arg1].field_0 > !arg2:
                    revert with 0, 17
                balanceOf[arg1].field_0 += arg2
                emit 0xfeddf252: arg2, msg.sender, arg1
            else:
                if not uniswapV2PairAddress:
                    if arg2 > _maxTxAmount:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                    if balanceOf[this.address].field_0 > !arg2:
                        revert with 0, 17
                    if balanceOf[this.address].field_0 + arg2 > _maxWalletToken:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                    require balanceOf[address(msg.sender)].field_0 >= arg2
                    balanceOf[address(msg.sender)].field_0 -= arg2
                    if balanceOf[arg1].field_0 > !arg2:
                        revert with 0, 17
                    balanceOf[arg1].field_0 += arg2
                    emit 0xfeddf252: arg2, msg.sender, arg1
                else:
                    if uniswapV2PairAddress != arg1:
                        if arg2 > _maxTxAmount:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                        if balanceOf[this.address].field_0 > !arg2:
                            revert with 0, 17
                        if balanceOf[this.address].field_0 + arg2 > _maxWalletToken:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                        require balanceOf[address(msg.sender)].field_0 >= arg2
                        balanceOf[address(msg.sender)].field_0 -= arg2
                        if balanceOf[arg1].field_0 > !arg2:
                            revert with 0, 17
                        balanceOf[arg1].field_0 += arg2
                        emit 0xfeddf252: arg2, msg.sender, arg1
                    else:
                        if stor9[address(msg.sender)]:
                            if arg2 > _maxTxAmount:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                            if balanceOf[this.address].field_0 > !arg2:
                                revert with 0, 17
                            if balanceOf[this.address].field_0 + arg2 > _maxWalletToken:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                            require balanceOf[address(msg.sender)].field_0 >= arg2
                            balanceOf[address(msg.sender)].field_0 -= arg2
                            if balanceOf[arg1].field_0 > !arg2:
                                revert with 0, 17
                            balanceOf[arg1].field_0 += arg2
                            emit 0xfeddf252: arg2, msg.sender, arg1
                        else:
                            if not uint8(stor8.field_160):
                                revert with 0, 'trading disabled'
                            if arg2 <= balanceOf[address(stor8.field_0)].field_0 / 100:
                                if arg2 / 20 > !(arg2 / 20):
                                    revert with 0, 17
                                if arg2 < 2 * arg2 / 20:
                                    revert with 0, 17
                                if arg2 / 20 > !(arg2 / 20):
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)].field_0 < 2 * arg2 / 20:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 -= 2 * arg2 / 20
                                if balanceOf[this.address].field_0 > !(arg2 / 20):
                                    revert with 0, 17
                                balanceOf[this.address].field_0 += arg2 / 20
                                if stor262B > !(arg2 / 20):
                                    revert with 0, 17
                                stor262B += arg2 / 20
                                if totalSupply < arg2 / 20:
                                    revert with 0, 17
                                totalSupply -= arg2 / 20
                                emit 0xfeddf252: (arg2 / 20), msg.sender, this.address
                                emit 0xfeddf252: (arg2 / 20), msg.sender, 57005
                                if not balanceOf[this.address].field_0:
                                    if arg2 - (2 * arg2 / 20) > _maxTxAmount:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                                    if balanceOf[this.address].field_0 > !(arg2 - (2 * arg2 / 20)):
                                        revert with 0, 17
                                    if balanceOf[this.address].field_0 + arg2 - (2 * arg2 / 20) > _maxWalletToken:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                                else:
                                    if arg2 - (2 * arg2 / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    uint8(stor7.field_0) = 1
                                    mem[128] = this.address
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                    if balanceOf[this.address].field_0 <= 2 * arg2 - (2 * arg2 / 20):
                                        mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_0
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address].field_0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        mem[ceil32(return_data.size) + 196] = 2 * arg2 - (2 * arg2 / 20)
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 2 * arg2 - (2 * arg2 / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor7.field_0) = 0
                                    if arg2 - (2 * arg2 / 20) > _maxTxAmount:
                                        revert with 0, 'Transfer amount exceeds the maxTxAmount.'
                                    if balanceOf[this.address].field_0 > !(arg2 - (2 * arg2 / 20)):
                                        revert with 0, 17
                                    if balanceOf[this.address].field_0 + arg2 - (2 * arg2 / 20) > _maxWalletToken:
                                        revert with 0, 'Exceeds maximum wallet token amount (200)'
                                ('le', ('add', ('field', 0, ('stor', ('map', 'address', ('name', 'balanceOf', 3)))), ('param', 'arg2'), ('mul', -1, ('mask_shl', 255, 0, 1, ('div', ('param', 'arg2'), 20)))), ('stor', ('name', '_maxWalletToken', 6)))
                                require balanceOf[address(msg.sender)].field_0 >= arg2 - (2 * arg2 / 20)
                                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (2 * arg2 / 20)
                                if balanceOf[arg1].field_0 > !(arg2 - (2 * arg2 / 20)):
                                    revert with 0, 17
                                balanceOf[arg1].field_0 = balanceOf[arg1].field_0 + arg2 - (2 * arg2 / 20)
                                emit 0xfeddf252: (arg2 - (2 * arg2 / 20)), msg.sender, arg1
                            else:
                                if arg2 > balanceOf[address(stor8.field_0)].field_0 / 20:
                                    if arg2 / 20 > !(arg2 / 4):
                                        revert with 0, 17
                                    if arg2 < (arg2 / 20) + (arg2 / 4):
                                        revert with 0, 17
                                    if arg2 / 20 > !(arg2 / 4):
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)].field_0 < (arg2 / 20) + (arg2 / 4):
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - (arg2 / 20) - (arg2 / 4)
                                    if balanceOf[this.address].field_0 > !(arg2 / 20):
                                        revert with 0, 17
                                    balanceOf[this.address].field_0 += arg2 / 20
                                    if stor262B > !(arg2 / 4):
                                        revert with 0, 17
                                    stor262B += arg2 / 4
                                    if totalSupply < arg2 / 4:
                                        revert with 0, 17
                                    totalSupply -= arg2 / 4
                                    emit 0xfeddf252: (arg2 / 20), msg.sender, this.address
                                    emit 0xfeddf252: (arg2 / 4), msg.sender, 57005
                                    if not balanceOf[this.address].field_0:
                                        if arg2 - (arg2 / 20) - (arg2 / 4) > _maxTxAmount:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                                        if balanceOf[this.address].field_0 > !(arg2 - (arg2 / 20) - (arg2 / 4)):
                                            revert with 0, 17
                                        if balanceOf[this.address].field_0 + arg2 - (arg2 / 20) - (arg2 / 4) > _maxWalletToken:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                                    else:
                                        if arg2 - (arg2 / 20) - (arg2 / 4) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        uint8(stor7.field_0) = 1
                                        mem[128] = this.address
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        if balanceOf[this.address].field_0 <= 2 * arg2 - (arg2 / 20) - (arg2 / 4):
                                            mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_0
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[this.address].field_0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        else:
                                            mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 20) - (arg2 / 4)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * arg2 - (arg2 / 20) - (arg2 / 4), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor7.field_0) = 0
                                        if arg2 - (arg2 / 20) - (arg2 / 4) > _maxTxAmount:
                                            revert with 0, 'Transfer amount exceeds the maxTxAmount.'
                                        if balanceOf[this.address].field_0 > !(arg2 - (arg2 / 20) - (arg2 / 4)):
                                            revert with 0, 17
                                        if balanceOf[this.address].field_0 + arg2 - (arg2 / 20) - (arg2 / 4) > _maxWalletToken:
                                            revert with 0, 'Exceeds maximum wallet token amount (200)'
                                    ('le', ('add', ('field', 0, ('stor', ('map', 'address', ('name', 'balanceOf', 3)))), ('param', 'arg2'), ('mul', -1, ('div', ('param', 'arg2'), 20)), ('mul', -1, ('div', ('mask', 256, 0, ('param', 'arg2')), 4))), ('stor', ('name', '_maxWalletToken', 6)))
                                    require balanceOf[address(msg.sender)].field_0 >= arg2 - (arg2 / 20) - (arg2 / 4)
                                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (arg2 / 20) + (arg2 / 4)
                                    if balanceOf[arg1].field_0 > !(arg2 - (arg2 / 20) - (arg2 / 4)):
                                        revert with 0, 17
                                    balanceOf[arg1].field_0 = balanceOf[arg1].field_0 + arg2 - (arg2 / 20) - (arg2 / 4)
                                    emit 0xfeddf252: (arg2 - (arg2 / 20) - (arg2 / 4)), msg.sender, arg1
                                else:
                                    if balanceOf[address(stor8.field_0)].field_0 / 20 < balanceOf[address(stor8.field_0)].field_0 / 100:
                                        revert with 0, 17
                                    if arg2 < balanceOf[address(stor8.field_0)].field_0 / 100:
                                        revert with 0, 17
                                    if arg2 - (balanceOf[address(stor8.field_0)].field_0 / 100) > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
                                        revert with 0, 17
                                    if (20 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100) and arg2 > -1 / (20 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100):
                                        revert with 0, 17
                                    if not (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100):
                                        revert with 0, 18
                                    if arg2 / 20 > !((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                        revert with 0, 17
                                    if arg2 / 20 > !((arg2 / 20) + ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                        revert with 0, 17
                                    if arg2 < (2 * arg2 / 20) + ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                        revert with 0, 17
                                    if arg2 / 20 > !((arg2 / 20) + ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)].field_0 < (2 * arg2 / 20) + ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                    if balanceOf[this.address].field_0 > !(arg2 / 20):
                                        revert with 0, 17
                                    balanceOf[this.address].field_0 += arg2 / 20
                                    if stor262B > !((arg2 / 20) + ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                        revert with 0, 17
                                    stor262B = stor262B + (arg2 / 20) + ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                    if totalSupply < (arg2 / 20) + ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                        revert with 0, 17
                                    totalSupply = totalSupply - (arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                    emit 0xfeddf252: (arg2 / 20), msg.sender, this.address
                                    emit 0xfeddf252: ((arg2 / 20) + ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)), msg.sender, 57005
                                    if not balanceOf[this.address].field_0:
                                        if arg2 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > _maxTxAmount:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                                        if balanceOf[this.address].field_0 > !(arg2 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                            revert with 0, 17
                                        if balanceOf[this.address].field_0 + arg2 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > _maxWalletToken:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                                    else:
                                        if arg2 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        uint8(stor7.field_0) = 1
                                        mem[128] = this.address
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        if balanceOf[this.address].field_0 <= 2 * arg2 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                            mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_0
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[this.address].field_0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        else:
                                            mem[ceil32(return_data.size) + 196] = 2 * arg2 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * arg2 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor7.field_0) = 0
                                        if arg2 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > _maxTxAmount:
                                            revert with 0, 'Transfer amount exceeds the maxTxAmount.'
                                        if balanceOf[this.address].field_0 > !(arg2 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                            revert with 0, 17
                                        if balanceOf[this.address].field_0 + arg2 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > _maxWalletToken:
                                            revert with 0, 'Exceeds maximum wallet token amount (200)'
                                    ('le', ('add', ('field', 0, ('stor', ('map', 'address', ('name', 'balanceOf', 3)))), ('param', 'arg2'), ('mul', -2, ('div', ('param', 'arg2'), 20)), ('mul', -1, ('div', ('div', ('add', ('mul', 20, ('param', 'arg2'), ('param', 'arg2')), ('mul', -20, ('div', ('field', 0, ('stor', ('map', ('type', 160, ('field', 0, ('stor', ('name', 'stor8', 8)))), ('name', 'balanceOf', 3)))), 100), ('param', 'arg2'))), ('add', ('div', ('field', 0, ('stor', ('map', ('type', 160, ('field', 0, ('stor', ('name', 'stor8', 8)))), ('name', 'balanceOf', 3)))), 20), ('mul', -1, ('div', ('field', 0, ('stor', ('map', ('type', 160, ('field', 0, ('stor', ('name', 'stor8', 8)))), ('name', 'balanceOf', 3)))), 100)))), 100))), ('stor', ('name', '_maxWalletToken', 6)))
                                    require balanceOf[address(msg.sender)].field_0 >= arg2 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (2 * arg2 / 20) + ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                    if balanceOf[arg1].field_0 > !(arg2 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                        revert with 0, 17
                                    balanceOf[arg1].field_0 = balanceOf[arg1].field_0 + arg2 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                    emit 0xfeddf252: (arg2 - (2 * arg2 / 20) - ((20 * arg2 * arg2) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100 * arg2) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)), msg.sender, arg1
        else:
            if not uint8(stor8.field_160):
                revert with 0, 'trading disabled'
            if arg2 / 20 > !(arg2 / 20):
                revert with 0, 17
            if arg2 < 2 * arg2 / 20:
                revert with 0, 17
            if arg2 / 20 > !(arg2 / 20):
                revert with 0, 17
            if balanceOf[address(msg.sender)].field_0 < 2 * arg2 / 20:
                revert with 0, 17
            balanceOf[address(msg.sender)].field_0 -= 2 * arg2 / 20
            if balanceOf[this.address].field_0 > !(arg2 / 20):
                revert with 0, 17
            balanceOf[this.address].field_0 += arg2 / 20
            if stor262B > !(arg2 / 20):
                revert with 0, 17
            stor262B += arg2 / 20
            if totalSupply < arg2 / 20:
                revert with 0, 17
            totalSupply -= arg2 / 20
            emit 0xfeddf252: (arg2 / 20), msg.sender, this.address
            emit 0xfeddf252: (arg2 / 20), msg.sender, 57005
            if uint8(stor7.field_0):
                if arg2 - (2 * arg2 / 20) > _maxTxAmount:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                if balanceOf[this.address].field_0 > !(arg2 - (2 * arg2 / 20)):
                    revert with 0, 17
                if balanceOf[this.address].field_0 + arg2 - (2 * arg2 / 20) > _maxWalletToken:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                require balanceOf[address(msg.sender)].field_0 >= arg2 - (2 * arg2 / 20)
                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (2 * arg2 / 20)
                if balanceOf[arg1].field_0 > !(arg2 - (2 * arg2 / 20)):
                    revert with 0, 17
                balanceOf[arg1].field_0 = balanceOf[arg1].field_0 + arg2 - (2 * arg2 / 20)
                emit 0xfeddf252: (arg2 - (2 * arg2 / 20)), msg.sender, arg1
            else:
                if not uniswapV2PairAddress:
                    if arg2 - (2 * arg2 / 20) > _maxTxAmount:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                    if balanceOf[this.address].field_0 > !(arg2 - (2 * arg2 / 20)):
                        revert with 0, 17
                    if balanceOf[this.address].field_0 + arg2 - (2 * arg2 / 20) > _maxWalletToken:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                    require balanceOf[address(msg.sender)].field_0 >= arg2 - (2 * arg2 / 20)
                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (2 * arg2 / 20)
                    if balanceOf[arg1].field_0 > !(arg2 - (2 * arg2 / 20)):
                        revert with 0, 17
                    balanceOf[arg1].field_0 = balanceOf[arg1].field_0 + arg2 - (2 * arg2 / 20)
                    emit 0xfeddf252: (arg2 - (2 * arg2 / 20)), msg.sender, arg1
                else:
                    if uniswapV2PairAddress != arg1:
                        if arg2 - (2 * arg2 / 20) > _maxTxAmount:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                        if balanceOf[this.address].field_0 > !(arg2 - (2 * arg2 / 20)):
                            revert with 0, 17
                        if balanceOf[this.address].field_0 + arg2 - (2 * arg2 / 20) > _maxWalletToken:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                        require balanceOf[address(msg.sender)].field_0 >= arg2 - (2 * arg2 / 20)
                        balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (2 * arg2 / 20)
                        if balanceOf[arg1].field_0 > !(arg2 - (2 * arg2 / 20)):
                            revert with 0, 17
                        balanceOf[arg1].field_0 = balanceOf[arg1].field_0 + arg2 - (2 * arg2 / 20)
                        emit 0xfeddf252: (arg2 - (2 * arg2 / 20)), msg.sender, arg1
                    else:
                        if stor9[address(msg.sender)]:
                            if arg2 - (2 * arg2 / 20) > _maxTxAmount:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                            if balanceOf[this.address].field_0 > !(arg2 - (2 * arg2 / 20)):
                                revert with 0, 17
                            if balanceOf[this.address].field_0 + arg2 - (2 * arg2 / 20) > _maxWalletToken:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                            require balanceOf[address(msg.sender)].field_0 >= arg2 - (2 * arg2 / 20)
                            balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (2 * arg2 / 20)
                            if balanceOf[arg1].field_0 > !(arg2 - (2 * arg2 / 20)):
                                revert with 0, 17
                            balanceOf[arg1].field_0 = balanceOf[arg1].field_0 + arg2 - (2 * arg2 / 20)
                            emit 0xfeddf252: (arg2 - (2 * arg2 / 20)), msg.sender, arg1
                        else:
                            if not uint8(stor8.field_160):
                                revert with 0, 'trading disabled'
                            if arg2 - (2 * arg2 / 20) <= balanceOf[address(stor8.field_0)].field_0 / 100:
                                if arg2 - (2 * arg2 / 20) / 20 > !(arg2 - (2 * arg2 / 20) / 20):
                                    revert with 0, 17
                                if arg2 - (2 * arg2 / 20) < 2 * arg2 - (2 * arg2 / 20) / 20:
                                    revert with 0, 17
                                if arg2 - (2 * arg2 / 20) / 20 > !(arg2 - (2 * arg2 / 20) / 20):
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)].field_0 < 2 * arg2 - (2 * arg2 / 20) / 20:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)].field_0 -= 2 * arg2 - (2 * arg2 / 20) / 20
                                if balanceOf[this.address].field_0 > !(arg2 - (2 * arg2 / 20) / 20):
                                    revert with 0, 17
                                balanceOf[this.address].field_0 += arg2 - (2 * arg2 / 20) / 20
                                if stor262B > !(arg2 - (2 * arg2 / 20) / 20):
                                    revert with 0, 17
                                stor262B += arg2 - (2 * arg2 / 20) / 20
                                if totalSupply < arg2 - (2 * arg2 / 20) / 20:
                                    revert with 0, 17
                                totalSupply -= arg2 - (2 * arg2 / 20) / 20
                                emit 0xfeddf252: (arg2 - (2 * arg2 / 20) / 20), msg.sender, this.address
                                emit 0xfeddf252: (arg2 - (2 * arg2 / 20) / 20), msg.sender, 57005
                                if not balanceOf[this.address].field_0:
                                    if arg2 - (2 * arg2 / 20) - (2 * arg2 - (2 * arg2 / 20) / 20) > _maxTxAmount:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                                    if balanceOf[this.address].field_0 > !(arg2 - (2 * arg2 / 20) - (2 * arg2 - (2 * arg2 / 20) / 20)):
                                        revert with 0, 17
                                    if balanceOf[this.address].field_0 + arg2 - (2 * arg2 / 20) - (2 * arg2 - (2 * arg2 / 20) / 20) > _maxWalletToken:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                                else:
                                    if arg2 - (2 * arg2 / 20) - (2 * arg2 - (2 * arg2 / 20) / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    uint8(stor7.field_0) = 1
                                    mem[128] = this.address
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                    if balanceOf[this.address].field_0 <= 2 * arg2 - (2 * arg2 / 20) - (2 * arg2 - (2 * arg2 / 20) / 20):
                                        mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_0
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[this.address].field_0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        mem[ceil32(return_data.size) + 196] = 2 * arg2 - (2 * arg2 / 20) - (2 * arg2 - (2 * arg2 / 20) / 20)
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 2 * arg2 - (2 * arg2 / 20) - (2 * arg2 - (2 * arg2 / 20) / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint8(stor7.field_0) = 0
                                    if arg2 - (2 * arg2 / 20) - (2 * arg2 - (2 * arg2 / 20) / 20) > _maxTxAmount:
                                        revert with 0, 'Transfer amount exceeds the maxTxAmount.'
                                    if balanceOf[this.address].field_0 > !(arg2 - (2 * arg2 / 20) - (2 * arg2 - (2 * arg2 / 20) / 20)):
                                        revert with 0, 17
                                    if balanceOf[this.address].field_0 + arg2 - (2 * arg2 / 20) - (2 * arg2 - (2 * arg2 / 20) / 20) > _maxWalletToken:
                                        revert with 0, 'Exceeds maximum wallet token amount (200)'
                                ('le', ('add', ('field', 0, ('stor', ('map', 'address', ('name', 'balanceOf', 3)))), ('param', 'arg2'), ('mul', -1, ('mask_shl', 255, 0, 1, ('div', ('param', 'arg2'), 20))), ('mul', -1, ('mask_shl', 255, 0, 1, ('div', ('add', ('param', 'arg2'), ('mul', -1, ('mask_shl', 255, 0, 1, ('div', ('param', 'arg2'), 20)))), 20)))), ('stor', ('name', '_maxWalletToken', 6)))
                                require balanceOf[address(msg.sender)].field_0 >= arg2 - (2 * arg2 / 20) - (2 * arg2 - (2 * arg2 / 20) / 20)
                                balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (2 * arg2 / 20) + (2 * arg2 - (2 * arg2 / 20) / 20)
                                if balanceOf[arg1].field_0 > !(arg2 - (2 * arg2 / 20) - (2 * arg2 - (2 * arg2 / 20) / 20)):
                                    revert with 0, 17
                                balanceOf[arg1].field_0 = balanceOf[arg1].field_0 + arg2 - (2 * arg2 / 20) - (2 * arg2 - (2 * arg2 / 20) / 20)
                                emit 0xfeddf252: (arg2 - (2 * arg2 / 20) - (2 * arg2 - (2 * arg2 / 20) / 20)), msg.sender, arg1
                            else:
                                if arg2 - (2 * arg2 / 20) > balanceOf[address(stor8.field_0)].field_0 / 20:
                                    if arg2 - (2 * arg2 / 20) / 20 > !(arg2 - (2 * arg2 / 20) / 4):
                                        revert with 0, 17
                                    if arg2 - (2 * arg2 / 20) < (arg2 - (2 * arg2 / 20) / 20) + (arg2 - (2 * arg2 / 20) / 4):
                                        revert with 0, 17
                                    if arg2 - (2 * arg2 / 20) / 20 > !(arg2 - (2 * arg2 / 20) / 4):
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)].field_0 < (arg2 - (2 * arg2 / 20) / 20) + (arg2 - (2 * arg2 / 20) / 4):
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - (arg2 - (2 * arg2 / 20) / 20) - (arg2 - (2 * arg2 / 20) / 4)
                                    if balanceOf[this.address].field_0 > !(arg2 - (2 * arg2 / 20) / 20):
                                        revert with 0, 17
                                    balanceOf[this.address].field_0 += arg2 - (2 * arg2 / 20) / 20
                                    if stor262B > !(arg2 - (2 * arg2 / 20) / 4):
                                        revert with 0, 17
                                    stor262B += arg2 - (2 * arg2 / 20) / 4
                                    if totalSupply < arg2 - (2 * arg2 / 20) / 4:
                                        revert with 0, 17
                                    totalSupply -= arg2 - (2 * arg2 / 20) / 4
                                    emit 0xfeddf252: (arg2 - (2 * arg2 / 20) / 20), msg.sender, this.address
                                    emit 0xfeddf252: (arg2 - (2 * arg2 / 20) / 4), msg.sender, 57005
                                    if not balanceOf[this.address].field_0:
                                        if arg2 - (2 * arg2 / 20) - (arg2 - (2 * arg2 / 20) / 20) - (arg2 - (2 * arg2 / 20) / 4) > _maxTxAmount:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                                        if balanceOf[this.address].field_0 > !(arg2 - (2 * arg2 / 20) - (arg2 - (2 * arg2 / 20) / 20) - (arg2 - (2 * arg2 / 20) / 4)):
                                            revert with 0, 17
                                        if balanceOf[this.address].field_0 + arg2 - (2 * arg2 / 20) - (arg2 - (2 * arg2 / 20) / 20) - (arg2 - (2 * arg2 / 20) / 4) > _maxWalletToken:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                                    else:
                                        if arg2 - (2 * arg2 / 20) - (arg2 - (2 * arg2 / 20) / 20) - (arg2 - (2 * arg2 / 20) / 4) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        uint8(stor7.field_0) = 1
                                        mem[128] = this.address
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        if balanceOf[this.address].field_0 <= 2 * arg2 - (2 * arg2 / 20) - (arg2 - (2 * arg2 / 20) / 20) - (arg2 - (2 * arg2 / 20) / 4):
                                            mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_0
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[this.address].field_0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        else:
                                            mem[ceil32(return_data.size) + 196] = 2 * arg2 - (2 * arg2 / 20) - (arg2 - (2 * arg2 / 20) / 20) - (arg2 - (2 * arg2 / 20) / 4)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * arg2 - (2 * arg2 / 20) - (arg2 - (2 * arg2 / 20) / 20) - (arg2 - (2 * arg2 / 20) / 4), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor7.field_0) = 0
                                        if arg2 - (2 * arg2 / 20) - (arg2 - (2 * arg2 / 20) / 20) - (arg2 - (2 * arg2 / 20) / 4) > _maxTxAmount:
                                            revert with 0, 'Transfer amount exceeds the maxTxAmount.'
                                        if balanceOf[this.address].field_0 > !(arg2 - (2 * arg2 / 20) - (arg2 - (2 * arg2 / 20) / 20) - (arg2 - (2 * arg2 / 20) / 4)):
                                            revert with 0, 17
                                        if balanceOf[this.address].field_0 + arg2 - (2 * arg2 / 20) - (arg2 - (2 * arg2 / 20) / 20) - (arg2 - (2 * arg2 / 20) / 4) > _maxWalletToken:
                                            revert with 0, 'Exceeds maximum wallet token amount (200)'
                                    ('le', ('add', ('field', 0, ('stor', ('map', 'address', ('name', 'balanceOf', 3)))), ('param', 'arg2'), ('mul', -1, ('mask_shl', 255, 0, 1, ('div', ('param', 'arg2'), 20))), ('mul', -1, ('div', ('add', ('param', 'arg2'), ('mul', -1, ('mask_shl', 255, 0, 1, ('div', ('param', 'arg2'), 20)))), 20)), ('mul', -1, ('div', ('mask', 256, 0, ('add', ('param', 'arg2'), ('mul', -1, ('mask_shl', 255, 0, 1, ('div', ('param', 'arg2'), 20))))), 4))), ('stor', ('name', '_maxWalletToken', 6)))
                                    require balanceOf[address(msg.sender)].field_0 >= arg2 - (2 * arg2 / 20) - (arg2 - (2 * arg2 / 20) / 20) - (arg2 - (2 * arg2 / 20) / 4)
                                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (2 * arg2 / 20) + (arg2 - (2 * arg2 / 20) / 20) + (arg2 - (2 * arg2 / 20) / 4)
                                    if balanceOf[arg1].field_0 > !(arg2 - (2 * arg2 / 20) - (arg2 - (2 * arg2 / 20) / 20) - (arg2 - (2 * arg2 / 20) / 4)):
                                        revert with 0, 17
                                    balanceOf[arg1].field_0 = balanceOf[arg1].field_0 + arg2 - (2 * arg2 / 20) - (arg2 - (2 * arg2 / 20) / 20) - (arg2 - (2 * arg2 / 20) / 4)
                                    emit 0xfeddf252: (arg2 - (2 * arg2 / 20) - (arg2 - (2 * arg2 / 20) / 20) - (arg2 - (2 * arg2 / 20) / 4)), msg.sender, arg1
                                else:
                                    if balanceOf[address(stor8.field_0)].field_0 / 20 < balanceOf[address(stor8.field_0)].field_0 / 100:
                                        revert with 0, 17
                                    if arg2 - (2 * arg2 / 20) < balanceOf[address(stor8.field_0)].field_0 / 100:
                                        revert with 0, 17
                                    if arg2 - (2 * arg2 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) > 0xccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc:
                                        revert with 0, 17
                                    if (20 * arg2) - (20 * 2 * arg2 / 20) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100) and arg2 - (2 * arg2 / 20) > -1 / (20 * arg2) - (20 * 2 * arg2 / 20) - (20 * balanceOf[address(stor8.field_0)].field_0 / 100):
                                        revert with 0, 17
                                    if not (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100):
                                        revert with 0, 18
                                    if arg2 - (2 * arg2 / 20) / 20 > !((20 * arg2 * arg2) - (20 * 2 * arg2 / 20 * arg2) - (20 * arg2 * 2 * arg2 / 20) + (20 * 2 * arg2 / 20 * 2 * arg2 / 20) - (20 * arg2 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg2 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                        revert with 0, 17
                                    if arg2 - (2 * arg2 / 20) / 20 > !((arg2 - (2 * arg2 / 20) / 20) + ((20 * arg2 * arg2) - (20 * 2 * arg2 / 20 * arg2) - (20 * arg2 * 2 * arg2 / 20) + (20 * 2 * arg2 / 20 * 2 * arg2 / 20) - (20 * arg2 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg2 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                        revert with 0, 17
                                    if arg2 - (2 * arg2 / 20) < (2 * arg2 - (2 * arg2 / 20) / 20) + ((20 * arg2 * arg2) - (20 * 2 * arg2 / 20 * arg2) - (20 * arg2 * 2 * arg2 / 20) + (20 * 2 * arg2 / 20 * 2 * arg2 / 20) - (20 * arg2 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg2 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                        revert with 0, 17
                                    if arg2 - (2 * arg2 / 20) / 20 > !((arg2 - (2 * arg2 / 20) / 20) + ((20 * arg2 * arg2) - (20 * 2 * arg2 / 20 * arg2) - (20 * arg2 * 2 * arg2 / 20) + (20 * 2 * arg2 / 20 * 2 * arg2 / 20) - (20 * arg2 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg2 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                        revert with 0, 17
                                    if balanceOf[address(msg.sender)].field_0 < (2 * arg2 - (2 * arg2 / 20) / 20) + ((20 * arg2 * arg2) - (20 * 2 * arg2 / 20 * arg2) - (20 * arg2 * 2 * arg2 / 20) + (20 * 2 * arg2 / 20 * 2 * arg2 / 20) - (20 * arg2 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg2 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - (2 * arg2 - (2 * arg2 / 20) / 20) - ((20 * arg2 * arg2) - (20 * 2 * arg2 / 20 * arg2) - (20 * arg2 * 2 * arg2 / 20) + (20 * 2 * arg2 / 20 * 2 * arg2 / 20) - (20 * arg2 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg2 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                    if balanceOf[this.address].field_0 > !(arg2 - (2 * arg2 / 20) / 20):
                                        revert with 0, 17
                                    balanceOf[this.address].field_0 += arg2 - (2 * arg2 / 20) / 20
                                    if stor262B > !((arg2 - (2 * arg2 / 20) / 20) + ((20 * arg2 * arg2) - (20 * 2 * arg2 / 20 * arg2) - (20 * arg2 * 2 * arg2 / 20) + (20 * 2 * arg2 / 20 * 2 * arg2 / 20) - (20 * arg2 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg2 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                        revert with 0, 17
                                    stor262B = stor262B + (arg2 - (2 * arg2 / 20) / 20) + ((20 * arg2 * arg2) - (20 * 2 * arg2 / 20 * arg2) - (20 * arg2 * 2 * arg2 / 20) + (20 * 2 * arg2 / 20 * 2 * arg2 / 20) - (20 * arg2 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg2 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                    if totalSupply < (arg2 - (2 * arg2 / 20) / 20) + ((20 * arg2 * arg2) - (20 * 2 * arg2 / 20 * arg2) - (20 * arg2 * 2 * arg2 / 20) + (20 * 2 * arg2 / 20 * 2 * arg2 / 20) - (20 * arg2 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg2 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                        revert with 0, 17
                                    totalSupply = totalSupply - (arg2 - (2 * arg2 / 20) / 20) - ((20 * arg2 * arg2) - (20 * 2 * arg2 / 20 * arg2) - (20 * arg2 * 2 * arg2 / 20) + (20 * 2 * arg2 / 20 * 2 * arg2 / 20) - (20 * arg2 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg2 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                    emit 0xfeddf252: (arg2 - (2 * arg2 / 20) / 20), msg.sender, this.address
                                    emit 0xfeddf252: ((arg2 - (2 * arg2 / 20) / 20) + ((20 * arg2 * arg2) - (20 * 2 * arg2 / 20 * arg2) - (20 * arg2 * 2 * arg2 / 20) + (20 * 2 * arg2 / 20 * 2 * arg2 / 20) - (20 * arg2 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg2 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)), msg.sender, 57005
                                    if not balanceOf[this.address].field_0:
                                        if arg2 - (2 * arg2 / 20) - (2 * arg2 - (2 * arg2 / 20) / 20) - ((20 * arg2 * arg2) - (20 * 2 * arg2 / 20 * arg2) - (20 * arg2 * 2 * arg2 / 20) + (20 * 2 * arg2 / 20 * 2 * arg2 / 20) - (20 * arg2 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg2 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > _maxTxAmount:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                                        if balanceOf[this.address].field_0 > !(arg2 - (2 * arg2 / 20) - (2 * arg2 - (2 * arg2 / 20) / 20) - ((20 * arg2 * arg2) - (20 * 2 * arg2 / 20 * arg2) - (20 * arg2 * 2 * arg2 / 20) + (20 * 2 * arg2 / 20 * 2 * arg2 / 20) - (20 * arg2 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg2 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                            revert with 0, 17
                                        if balanceOf[this.address].field_0 + arg2 - (2 * arg2 / 20) - (2 * arg2 - (2 * arg2 / 20) / 20) - ((20 * arg2 * arg2) - (20 * 2 * arg2 / 20 * arg2) - (20 * arg2 * 2 * arg2 / 20) + (20 * 2 * arg2 / 20 * 2 * arg2 / 20) - (20 * arg2 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg2 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > _maxWalletToken:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum wallet token amount (200)'
                                    else:
                                        if arg2 - (2 * arg2 / 20) - (2 * arg2 - (2 * arg2 / 20) / 20) - ((20 * arg2 * arg2) - (20 * 2 * arg2 / 20 * arg2) - (20 * arg2 * 2 * arg2 / 20) + (20 * 2 * arg2 / 20 * 2 * arg2 / 20) - (20 * arg2 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg2 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        uint8(stor7.field_0) = 1
                                        mem[128] = this.address
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        if balanceOf[this.address].field_0 <= 2 * arg2 - (2 * arg2 / 20) - (2 * arg2 - (2 * arg2 / 20) / 20) - ((20 * arg2 * arg2) - (20 * 2 * arg2 / 20 * arg2) - (20 * arg2 * 2 * arg2 / 20) + (20 * 2 * arg2 / 20 * 2 * arg2 / 20) - (20 * arg2 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg2 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100):
                                            mem[ceil32(return_data.size) + 196] = balanceOf[this.address].field_0
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[this.address].field_0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        else:
                                            mem[ceil32(return_data.size) + 196] = 2 * arg2 - (2 * arg2 / 20) - (2 * arg2 - (2 * arg2 / 20) / 20) - ((20 * arg2 * arg2) - (20 * 2 * arg2 / 20 * arg2) - (20 * arg2 * 2 * arg2 / 20) + (20 * 2 * arg2 / 20 * 2 * arg2 / 20) - (20 * arg2 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg2 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * arg2 - (2 * arg2 / 20) - (2 * arg2 - (2 * arg2 / 20) / 20) - ((20 * arg2 * arg2) - (20 * 2 * arg2 / 20 * arg2) - (20 * arg2 * 2 * arg2 / 20) + (20 * 2 * arg2 / 20 * 2 * arg2 / 20) - (20 * arg2 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg2 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint8(stor7.field_0) = 0
                                        if arg2 - (2 * arg2 / 20) - (2 * arg2 - (2 * arg2 / 20) / 20) - ((20 * arg2 * arg2) - (20 * 2 * arg2 / 20 * arg2) - (20 * arg2 * 2 * arg2 / 20) + (20 * 2 * arg2 / 20 * 2 * arg2 / 20) - (20 * arg2 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg2 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > _maxTxAmount:
                                            revert with 0, 'Transfer amount exceeds the maxTxAmount.'
                                        if balanceOf[this.address].field_0 > !(arg2 - (2 * arg2 / 20) - (2 * arg2 - (2 * arg2 / 20) / 20) - ((20 * arg2 * arg2) - (20 * 2 * arg2 / 20 * arg2) - (20 * arg2 * 2 * arg2 / 20) + (20 * 2 * arg2 / 20 * 2 * arg2 / 20) - (20 * arg2 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg2 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                            revert with 0, 17
                                        if balanceOf[this.address].field_0 + arg2 - (2 * arg2 / 20) - (2 * arg2 - (2 * arg2 / 20) / 20) - ((20 * arg2 * arg2) - (20 * 2 * arg2 / 20 * arg2) - (20 * arg2 * 2 * arg2 / 20) + (20 * 2 * arg2 / 20 * 2 * arg2 / 20) - (20 * arg2 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg2 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100) > _maxWalletToken:
                                            revert with 0, 'Exceeds maximum wallet token amount (200)'
                                    ('le', ('add', ('field', 0, ('stor', ('map', 'address', ('name', 'balanceOf', 3)))), ('param', 'arg2'), ('mul', -1, ('mask_shl', 255, 0, 1, ('div', ('param', 'arg2'), 20))), ('mul', -2, ('div', ('add', ('param', 'arg2'), ('mul', -1, ('mask_shl', 255, 0, 1, ('div', ('param', 'arg2'), 20)))), 20)), ('mul', -1, ('div', ('div', ('add', ('mul', 20, ('param', 'arg2'), ('param', 'arg2')), ('mul', -20, ('mask_shl', 255, 0, 1, ('div', ('param', 'arg2'), 20)), ('param', 'arg2')), ('mul', -20, ('param', 'arg2'), ('mask_shl', 255, 0, 1, ('div', ('param', 'arg2'), 20))), ('mul', 20, ('mask_shl', 255, 0, 1, ('div', ('param', 'arg2'), 20)), ('mask_shl', 255, 0, 1, ('div', ('param', 'arg2'), 20))), ('mul', -20, ('param', 'arg2'), ('div', ('field', 0, ('stor', ('map', ('type', 160, ('field', 0, ('stor', ('name', 'stor8', 8)))), ('name', 'balanceOf', 3)))), 100)), ('mul', 20, ('mask_shl', 255, 0, 1, ('div', ('param', 'arg2'), 20)), ('div', ('field', 0, ('stor', ('map', ('type', 160, ('field', 0, ('stor', ('name', 'stor8', 8)))), ('name', 'balanceOf', 3)))), 100))), ('add', ('div', ('field', 0, ('stor', ('map', ('type', 160, ('field', 0, ('stor', ('name', 'stor8', 8)))), ('name', 'balanceOf', 3)))), 20), ('mul', -1, ('div', ('field', 0, ('stor', ('map', ('type', 160, ('field', 0, ('stor', ('name', 'stor8', 8)))), ('name', 'balanceOf', 3)))), 100)))), 100))), ('stor', ('name', '_maxWalletToken', 6)))
                                    require balanceOf[address(msg.sender)].field_0 >= arg2 - (2 * arg2 / 20) - (2 * arg2 - (2 * arg2 / 20) / 20) - ((20 * arg2 * arg2) - (20 * 2 * arg2 / 20 * arg2) - (20 * arg2 * 2 * arg2 / 20) + (20 * 2 * arg2 / 20 * 2 * arg2 / 20) - (20 * arg2 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg2 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                    balanceOf[address(msg.sender)].field_0 = balanceOf[address(msg.sender)].field_0 - arg2 + (2 * arg2 / 20) + (2 * arg2 - (2 * arg2 / 20) / 20) + ((20 * arg2 * arg2) - (20 * 2 * arg2 / 20 * arg2) - (20 * arg2 * 2 * arg2 / 20) + (20 * 2 * arg2 / 20 * 2 * arg2 / 20) - (20 * arg2 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg2 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                    if balanceOf[arg1].field_0 > !(arg2 - (2 * arg2 / 20) - (2 * arg2 - (2 * arg2 / 20) / 20) - ((20 * arg2 * arg2) - (20 * 2 * arg2 / 20 * arg2) - (20 * arg2 * 2 * arg2 / 20) + (20 * 2 * arg2 / 20 * 2 * arg2 / 20) - (20 * arg2 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg2 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)):
                                        revert with 0, 17
                                    balanceOf[arg1].field_0 = balanceOf[arg1].field_0 + arg2 - (2 * arg2 / 20) - (2 * arg2 - (2 * arg2 / 20) / 20) - ((20 * arg2 * arg2) - (20 * 2 * arg2 / 20 * arg2) - (20 * arg2 * 2 * arg2 / 20) + (20 * 2 * arg2 / 20 * 2 * arg2 / 20) - (20 * arg2 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg2 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)
                                    emit 0xfeddf252: (arg2 - (2 * arg2 / 20) - (2 * arg2 - (2 * arg2 / 20) / 20) - ((20 * arg2 * arg2) - (20 * 2 * arg2 / 20 * arg2) - (20 * arg2 * 2 * arg2 / 20) + (20 * 2 * arg2 / 20 * 2 * arg2 / 20) - (20 * arg2 * balanceOf[address(stor8.field_0)].field_0 / 100) + (20 * 2 * arg2 / 20 * balanceOf[address(stor8.field_0)].field_0 / 100) / (balanceOf[address(stor8.field_0)].field_0 / 20) - (balanceOf[address(stor8.field_0)].field_0 / 100) / 100)), msg.sender, arg1
    return 1
}



}
