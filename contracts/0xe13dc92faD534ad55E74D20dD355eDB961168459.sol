contract main {




// =====================  Runtime code  =====================


#
#  - multiTransfer(address arg1, address[] arg2, uint256[] arg3)
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - multiTransfer_fixed(address arg1, address[] arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
address owner;
address stor3;
address stor4;
address stor5;
mapping of uint256 stor6;
mapping of uint256 stor7;
mapping of uint256 allowance;
mapping of uint8 stor9;
uint256 deadBlocks;
uint256 launchedAt;
mapping of uint8 stor12;
mapping of uint8 stor13;
mapping of uint8 stor14;
mapping of uint8 stor15;
array of address stor16;
uint8 decimals; offset 160
uint256 totalSupply;
uint256 stor19;
uint256 totalFees;
array of struct stor21;
array of struct stor22;
uint256 _maxWalletToken;
uint256 _buyLiquidityFee;
uint256 _buyDevFee;
uint256 _buyMarketingFee;
uint256 sub_401aa5c0;
uint256 _sellLiquidityFee;
uint256 _sellMarketingFee;
uint256 _sellDevFee;
uint256 sub_7598f8bc;
uint256 stor32;
uint256 stor33;
uint256 stor34;
uint256 stor35;
uint256 stor36;
uint256 stor37;
uint256 stor38;
uint256 swapThreshold;
address uniswapV2RouterAddress;
uint8 tradingOpen; offset 168
uint8 sub_2691bc80; offset 176
uint128 stor41; offset 184
uint128 stor41; offset 176
uint128 stor41; offset 168
address uniswapV2PairAddress;

function swapThreshold() {
    return swapThreshold
}

function isSniper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[address(arg1)])
}

function totalFees() {
    return totalFees
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function sub_2691bc80(?) {
    return bool(sub_2691bc80)
}

function decimals() {
    return decimals
}

function sub_401aa5c0(?) {
    return sub_401aa5c0
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function _buyDevFee() {
    return _buyDevFee
}

function sub_7598f8bc(?) {
    return sub_7598f8bc
}

function _maxWalletToken() {
    return _maxWalletToken
}

function _sellLiquidityFee() {
    return _sellLiquidityFee
}

function isExcludedFromReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor14[address(arg1)])
}

function owner() {
    return owner
}

function launchedAt() {
    return launchedAt
}

function _buyMarketingFee() {
    return _buyMarketingFee
}

function _sellMarketingFee() {
    return _sellMarketingFee
}

function _sellDevFee() {
    return _sellDevFee
}

function _buyLiquidityFee() {
    return _buyLiquidityFee
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function deadBlocks() {
    return deadBlocks
}

function tradingOpen() {
    return bool(tradingOpen)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setEcosystem(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = arg1
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12[address(arg1)] = 0
}

function excludeMultiple(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12[address(arg1)] = 1
}

function setMaxWalletExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13[address(arg1)] = 1
}

function setAntiBotmode(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(72, 0, stor41.field_184) = Mask(72, 0, arg1)
}

function setZeroBuyTaxmode(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(80, 0, stor41.field_176) = Mask(80, 0, arg1)
}

function setWallets(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = arg1
    stor5 = arg2
}

function setTaxesSell(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _sellLiquidityFee = arg2
    _sellMarketingFee = arg3
    _sellDevFee = arg4
    sub_7598f8bc = arg1
}

function setSwapSettings(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    swapThreshold = totalSupply * arg1 / arg2
}

function sub_5e64f769(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withDrawLeftoverETH(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_3ccd23e3(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function rescueToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function transferERC20(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function setMaxWalletPercent_base1000(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not totalSupply / 1000:
        _maxWalletToken = 0
    else:
        if totalSupply / 1000 and arg1 > -1 / totalSupply / 1000:
            revert with 0, 17
        if not totalSupply / 1000:
            revert with 0, 18
        if totalSupply / 1000 * arg1 / totalSupply / 1000 != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        _maxWalletToken = totalSupply / 1000 * arg1
}

function excludeFromFee(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 12
        stor12[address(cd[((32 * idx) + arg1 + 36)])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_84530c46(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 15
        stor15[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function setTaxesBuy(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _buyLiquidityFee = arg2
    _buyMarketingFee = arg3
    _buyDevFee = arg4
    sub_401aa5c0 = arg1
    stor36 = arg1
    stor33 = arg2
    stor35 = arg4
    stor34 = arg3
    if arg2 > !arg3:
        revert with 0, 17
    if arg2 + arg3 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 + arg3 > !arg4:
        revert with 0, 17
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 + arg3 + arg4 > !stor32:
        revert with 0, 17
    if stor32 < 0:
        revert with 0, 'SafeMath: addition overflow'
    stor37 = arg2 + arg3 + arg4 + stor32
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function withdrawStuckTokens(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function includeInReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor14[address(arg1)]:
        revert with 0, 'Account is already excluded'
    idx = 0
    while idx < stor16.length:
        mem[0] = 16
        if stor16[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor16.length < 1:
            revert with 0, 17
        if stor16.length - 1 >= stor16.length:
            revert with 0, 50
        if idx >= stor16.length:
            revert with 0, 50
        stor16[idx] = stor16[stor16.length]
        stor7[address(arg1)] = 0
        stor14[address(arg1)] = 0
        if not stor16.length:
            revert with 0, 49
        stor16[stor16.length] = 0
        stor16.length--
}

function manage_Snipers(address[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 15
        if not stor15[address(cd[((32 * idx) + arg1 + 36)])]:
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 9
            stor9[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function setNewRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        require ext_code.size(arg1)
        staticcall arg1.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(arg1)
        staticcall arg1.WETH() with:
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
    uniswapV2PairAddress = ext_call.return_data[12 len 20]
    uniswapV2RouterAddress = arg1
}

function name() {
    if bool(stor21.length):
        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor21.length):
            if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor21.length):
                if 31 < uint255(stor21.length) * 0.5:
                    mem[128] = uint256(stor21.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor21.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor21[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor21.length), data=mem[128 len ceil32(uint255(stor21.length) * 0.5)])
                mem[128] = 256 * stor21.length.field_8
        else:
            if bool(stor21.length) == stor21.length.field_1 < 32:
                revert with 0, 34
            if stor21.length.field_1:
                if 31 < stor21.length.field_1:
                    mem[128] = uint256(stor21.field_0)
                    idx = 128
                    s = 0
                    while stor21.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor21[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor21.length), data=mem[128 len ceil32(uint255(stor21.length) * 0.5)])
                mem[128] = 256 * stor21.length.field_8
        mem[ceil32(uint255(stor21.length) * 0.5) + 192 len ceil32(uint255(stor21.length) * 0.5)] = mem[128 len ceil32(uint255(stor21.length) * 0.5)]
        if ceil32(uint255(stor21.length) * 0.5) > uint255(stor21.length) * 0.5:
            mem[ceil32(uint255(stor21.length) * 0.5) + (uint255(stor21.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor21.length), data=mem[128 len ceil32(uint255(stor21.length) * 0.5)], mem[(2 * ceil32(uint255(stor21.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor21.length) * 0.5)]), 
    if bool(stor21.length) == stor21.length.field_1 < 32:
        revert with 0, 34
    if bool(stor21.length):
        if bool(stor21.length) == uint255(stor21.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor21.length):
            if 31 < uint255(stor21.length) * 0.5:
                mem[128] = uint256(stor21.field_0)
                idx = 128
                s = 0
                while (uint255(stor21.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor21[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor21.length % 128, data=mem[128 len ceil32(stor21.length.field_1)])
            mem[128] = 256 * stor21.length.field_8
    else:
        if bool(stor21.length) == stor21.length.field_1 < 32:
            revert with 0, 34
        if stor21.length.field_1:
            if 31 < stor21.length.field_1:
                mem[128] = uint256(stor21.field_0)
                idx = 128
                s = 0
                while stor21.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor21[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor21.length % 128, data=mem[128 len ceil32(stor21.length.field_1)])
            mem[128] = 256 * stor21.length.field_8
    mem[ceil32(stor21.length.field_1) + 192 len ceil32(stor21.length.field_1)] = mem[128 len ceil32(stor21.length.field_1)]
    if ceil32(stor21.length.field_1) > stor21.length.field_1:
        mem[ceil32(stor21.length.field_1) + stor21.length.field_1 + 192] = 0
    return Array(len=stor21.length % 128, data=mem[128 len ceil32(stor21.length.field_1)], mem[(2 * ceil32(stor21.length.field_1)) + 192 len 2 * ceil32(stor21.length.field_1)]), 
}

function symbol() {
    if bool(stor22.length):
        if bool(stor22.length) == uint255(stor22.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor22.length):
            if bool(stor22.length) == uint255(stor22.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor22.length):
                if 31 < uint255(stor22.length) * 0.5:
                    mem[128] = uint256(stor22.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor22.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor22[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor22.length), data=mem[128 len ceil32(uint255(stor22.length) * 0.5)])
                mem[128] = 256 * stor22.length.field_8
        else:
            if bool(stor22.length) == stor22.length.field_1 < 32:
                revert with 0, 34
            if stor22.length.field_1:
                if 31 < stor22.length.field_1:
                    mem[128] = uint256(stor22.field_0)
                    idx = 128
                    s = 0
                    while stor22.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor22[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor22.length), data=mem[128 len ceil32(uint255(stor22.length) * 0.5)])
                mem[128] = 256 * stor22.length.field_8
        mem[ceil32(uint255(stor22.length) * 0.5) + 192 len ceil32(uint255(stor22.length) * 0.5)] = mem[128 len ceil32(uint255(stor22.length) * 0.5)]
        if ceil32(uint255(stor22.length) * 0.5) > uint255(stor22.length) * 0.5:
            mem[ceil32(uint255(stor22.length) * 0.5) + (uint255(stor22.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor22.length), data=mem[128 len ceil32(uint255(stor22.length) * 0.5)], mem[(2 * ceil32(uint255(stor22.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor22.length) * 0.5)]), 
    if bool(stor22.length) == stor22.length.field_1 < 32:
        revert with 0, 34
    if bool(stor22.length):
        if bool(stor22.length) == uint255(stor22.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor22.length):
            if 31 < uint255(stor22.length) * 0.5:
                mem[128] = uint256(stor22.field_0)
                idx = 128
                s = 0
                while (uint255(stor22.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor22[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor22.length % 128, data=mem[128 len ceil32(stor22.length.field_1)])
            mem[128] = 256 * stor22.length.field_8
    else:
        if bool(stor22.length) == stor22.length.field_1 < 32:
            revert with 0, 34
        if stor22.length.field_1:
            if 31 < stor22.length.field_1:
                mem[128] = uint256(stor22.field_0)
                idx = 128
                s = 0
                while stor22.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor22[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor22.length % 128, data=mem[128 len ceil32(stor22.length.field_1)])
            mem[128] = 256 * stor22.length.field_8
    mem[ceil32(stor22.length.field_1) + 192 len ceil32(stor22.length.field_1)] = mem[128 len ceil32(stor22.length.field_1)]
    if ceil32(stor22.length.field_1) > stor22.length.field_1:
        mem[ceil32(stor22.length.field_1) + stor22.length.field_1 + 192] = 0
    return Array(len=stor22.length % 128, data=mem[128 len ceil32(stor22.length.field_1)], mem[(2 * ceil32(stor22.length.field_1)) + 192 len 2 * ceil32(stor22.length.field_1)]), 
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if arg1 > stor19:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor19
    while idx < stor16.length:
        mem[0] = stor16[idx]
        mem[32] = 6
        if stor6[stor16[idx]] > t:
            _92 = mem[64]
            mem[64] = mem[64] + 64
            mem[_92] = 26
            mem[_92 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _96 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _96 + 68] = mem[idx + _92 + 32]
                    idx = idx + 32
                    continue 
                mem[_96 + 94] = 0
                revert with memory
                  from mem[64]
                   len _96 + -mem[64] + 100
            _117 = mem[64]
            mem[64] = mem[64] + 64
            mem[_117] = 26
            mem[_117 + 32] = 'SafeMath: division by zero'
            if stor19 / totalSupply:
                return (arg1 / stor19 / totalSupply)
            _126 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _126 + 68] = mem[idx + _117 + 32]
                idx = idx + 32
                continue 
            mem[_126 + 94] = 0
            revert with memory
              from mem[64]
               len _126 + -mem[64] + 100
        if idx >= stor16.length:
            revert with 0, 50
        mem[0] = stor16[idx]
        mem[32] = 7
        if stor7[stor16[idx]] > s:
            _98 = mem[64]
            mem[64] = mem[64] + 64
            mem[_98] = 26
            mem[_98 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _103 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _103 + 68] = mem[idx + _98 + 32]
                    idx = idx + 32
                    continue 
                mem[_103 + 94] = 0
                revert with memory
                  from mem[64]
                   len _103 + -mem[64] + 100
            _128 = mem[64]
            mem[64] = mem[64] + 64
            mem[_128] = 26
            mem[_128 + 32] = 'SafeMath: division by zero'
            if stor19 / totalSupply:
                return (arg1 / stor19 / totalSupply)
            _133 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _133 + 68] = mem[idx + _128 + 32]
                idx = idx + 32
                continue 
            mem[_133 + 94] = 0
            revert with memory
              from mem[64]
               len _133 + -mem[64] + 100
        if idx >= stor16.length:
            revert with 0, 50
        mem[0] = stor16[idx]
        mem[32] = 6
        _97 = mem[64]
        mem[64] = mem[64] + 64
        mem[_97] = 30
        mem[_97 + 32] = 'SafeMath: subtraction overflow'
        if stor6[stor16[idx]] > t:
            _102 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _102 + 68] = mem[idx + _97 + 32]
                idx = idx + 32
                continue 
            mem[_102 + 98] = 0
            revert with memory
              from mem[64]
               len _102 + -mem[64] + 100
        if t < stor6[stor16[idx]]:
            revert with 0, 17
        if idx >= stor16.length:
            revert with 0, 50
        mem[0] = stor16[idx]
        mem[32] = 7
        _127 = mem[64]
        mem[64] = mem[64] + 64
        mem[_127] = 30
        mem[_127 + 32] = 'SafeMath: subtraction overflow'
        if stor7[stor16[idx]] <= s:
            if s < stor7[stor16[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor7[stor16[idx]]
            t = t - stor6[stor16[idx]]
            continue 
        _132 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _132 + 68] = mem[idx + _127 + 32]
            idx = idx + 32
            continue 
        mem[_132 + 98] = 0
        revert with memory
          from mem[64]
           len _132 + -mem[64] + 100
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if t >= stor19 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (arg1 / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor19 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 / stor19 / totalSupply)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor14[address(arg1)]:
        return stor7[address(arg1)]
    mem[0] = arg1
    mem[32] = 6
    if stor6[address(arg1)] > stor19:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor19
    while idx < stor16.length:
        mem[0] = stor16[idx]
        mem[32] = 6
        if stor6[stor16[idx]] > t:
            _97 = mem[64]
            mem[64] = mem[64] + 64
            mem[_97] = 26
            mem[_97 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _101 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _101 + 68] = mem[idx + _97 + 32]
                    idx = idx + 32
                    continue 
                mem[_101 + 94] = 0
                revert with memory
                  from mem[64]
                   len _101 + -mem[64] + 100
            _122 = mem[64]
            mem[64] = mem[64] + 64
            mem[_122] = 26
            mem[_122 + 32] = 'SafeMath: division by zero'
            if stor19 / totalSupply:
                return (stor6[address(arg1)] / stor19 / totalSupply)
            _131 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _131 + 68] = mem[idx + _122 + 32]
                idx = idx + 32
                continue 
            mem[_131 + 94] = 0
            revert with memory
              from mem[64]
               len _131 + -mem[64] + 100
        if idx >= stor16.length:
            revert with 0, 50
        mem[0] = stor16[idx]
        mem[32] = 7
        if stor7[stor16[idx]] > s:
            _103 = mem[64]
            mem[64] = mem[64] + 64
            mem[_103] = 26
            mem[_103 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _108 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _108 + 68] = mem[idx + _103 + 32]
                    idx = idx + 32
                    continue 
                mem[_108 + 94] = 0
                revert with memory
                  from mem[64]
                   len _108 + -mem[64] + 100
            _133 = mem[64]
            mem[64] = mem[64] + 64
            mem[_133] = 26
            mem[_133 + 32] = 'SafeMath: division by zero'
            if stor19 / totalSupply:
                return (stor6[address(arg1)] / stor19 / totalSupply)
            _138 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _138 + 68] = mem[idx + _133 + 32]
                idx = idx + 32
                continue 
            mem[_138 + 94] = 0
            revert with memory
              from mem[64]
               len _138 + -mem[64] + 100
        if idx >= stor16.length:
            revert with 0, 50
        mem[0] = stor16[idx]
        mem[32] = 6
        _102 = mem[64]
        mem[64] = mem[64] + 64
        mem[_102] = 30
        mem[_102 + 32] = 'SafeMath: subtraction overflow'
        if stor6[stor16[idx]] > t:
            _107 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _107 + 68] = mem[idx + _102 + 32]
                idx = idx + 32
                continue 
            mem[_107 + 98] = 0
            revert with memory
              from mem[64]
               len _107 + -mem[64] + 100
        if t < stor6[stor16[idx]]:
            revert with 0, 17
        if idx >= stor16.length:
            revert with 0, 50
        mem[0] = stor16[idx]
        mem[32] = 7
        _132 = mem[64]
        mem[64] = mem[64] + 64
        mem[_132] = 30
        mem[_132 + 32] = 'SafeMath: subtraction overflow'
        if stor7[stor16[idx]] <= s:
            if s < stor7[stor16[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor7[stor16[idx]]
            t = t - stor6[stor16[idx]]
            continue 
        _137 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _137 + 68] = mem[idx + _132 + 32]
            idx = idx + 32
            continue 
        mem[_137 + 98] = 0
        revert with memory
          from mem[64]
           len _137 + -mem[64] + 100
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if t >= stor19 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor6[address(arg1)] / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor19 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor6[address(arg1)] / stor19 / totalSupply)
}

function excludeFromReward(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor6[address(arg1)]:
        mem[0] = arg1
        mem[32] = 6
        if stor6[address(arg1)] > stor19:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = totalSupply
        t = stor19
        while idx < stor16.length:
            mem[0] = stor16[idx]
            mem[32] = 6
            if stor6[stor16[idx]] > t:
                _97 = mem[64]
                mem[64] = mem[64] + 64
                mem[_97] = 26
                mem[_97 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _101 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _101 + 68] = mem[idx + _97 + 32]
                        idx = idx + 32
                        continue 
                    mem[_101 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _101 + -mem[64] + 100
                _122 = mem[64]
                mem[64] = mem[64] + 64
                mem[_122] = 26
                mem[_122 + 32] = 'SafeMath: division by zero'
                if stor19 / totalSupply:
                    stor7[address(arg1)] = stor6[address(arg1)] / stor19 / totalSupply
                    stor14[address(arg1)] = 1
                    stor16.length++
                    stor16[stor16.length] = arg1
                _131 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _131 + 68] = mem[idx + _122 + 32]
                    idx = idx + 32
                    continue 
                mem[_131 + 94] = 0
                revert with memory
                  from mem[64]
                   len _131 + -mem[64] + 100
            if idx >= stor16.length:
                revert with 0, 50
            mem[0] = stor16[idx]
            mem[32] = 7
            if stor7[stor16[idx]] > s:
                _103 = mem[64]
                mem[64] = mem[64] + 64
                mem[_103] = 26
                mem[_103 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _108 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _108 + 68] = mem[idx + _103 + 32]
                        idx = idx + 32
                        continue 
                    mem[_108 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _108 + -mem[64] + 100
                _133 = mem[64]
                mem[64] = mem[64] + 64
                mem[_133] = 26
                mem[_133 + 32] = 'SafeMath: division by zero'
                if stor19 / totalSupply:
                    stor7[address(arg1)] = stor6[address(arg1)] / stor19 / totalSupply
                    stor14[address(arg1)] = 1
                    stor16.length++
                    stor16[stor16.length] = arg1
                _138 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _138 + 68] = mem[idx + _133 + 32]
                    idx = idx + 32
                    continue 
                mem[_138 + 94] = 0
                revert with memory
                  from mem[64]
                   len _138 + -mem[64] + 100
            if idx >= stor16.length:
                revert with 0, 50
            mem[0] = stor16[idx]
            mem[32] = 6
            _102 = mem[64]
            mem[64] = mem[64] + 64
            mem[_102] = 30
            mem[_102 + 32] = 'SafeMath: subtraction overflow'
            if stor6[stor16[idx]] > t:
                _107 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _107 + 68] = mem[idx + _102 + 32]
                    idx = idx + 32
                    continue 
                mem[_107 + 98] = 0
                revert with memory
                  from mem[64]
                   len _107 + -mem[64] + 100
            if t < stor6[stor16[idx]]:
                revert with 0, 17
            if idx >= stor16.length:
                revert with 0, 50
            mem[0] = stor16[idx]
            mem[32] = 7
            _132 = mem[64]
            mem[64] = mem[64] + 64
            mem[_132] = 30
            mem[_132 + 32] = 'SafeMath: subtraction overflow'
            if stor7[stor16[idx]] <= s:
                if s < stor7[stor16[idx]]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor7[stor16[idx]]
                t = t - stor6[stor16[idx]]
                continue 
            _137 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _137 + 68] = mem[idx + _132 + 32]
                idx = idx + 32
                continue 
            mem[_137 + 98] = 0
            revert with memory
              from mem[64]
               len _137 + -mem[64] + 100
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor19 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            stor7[address(arg1)] = stor6[address(arg1)] / t / s
        else:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor19 / totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            stor7[address(arg1)] = stor6[address(arg1)] / stor19 / totalSupply
    stor14[address(arg1)] = 1
    stor16.length++
    stor16[stor16.length] = arg1
}

function openTrading(bool arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor41.field_168) = Mask(88, 0, arg1)
    if not stor6[address(this.address)]:
        stor14[address(this.address)] = 1
        stor16.length++
        stor16[stor16.length] = this.address
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if stor6[address(stor41.field_0)]:
            mem[0] = uniswapV2PairAddress
            mem[32] = 6
            if stor6[address(stor41.field_0)] > stor19:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
            idx = 0
            s = totalSupply
            t = stor19
            while idx < stor16.length:
                mem[0] = stor16[idx]
                mem[32] = 6
                if stor6[stor16[idx]] > t:
                    _549 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_549] = 26
                    mem[_549 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _557 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _557 + 68] = mem[idx + _549 + 32]
                            idx = idx + 32
                            continue 
                        mem[_557 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _557 + -mem[64] + 100
                    _597 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_597] = 26
                    mem[_597 + 32] = 'SafeMath: division by zero'
                    if not stor19 / totalSupply:
                        _615 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _615 + 68] = mem[idx + _597 + 32]
                            idx = idx + 32
                            continue 
                        mem[_615 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _615 + -mem[64] + 100
                    stor7[address(stor41.field_0)] = stor6[address(stor41.field_0)] / stor19 / totalSupply
                    stor14[address(stor41.field_0)] = 1
                    stor16.length++
                    stor16[stor16.length] = uniswapV2PairAddress
                    if tradingOpen:
                        if not launchedAt:
                            launchedAt = block.number
                            deadBlocks = arg2
                if idx >= stor16.length:
                    revert with 0, 50
                mem[0] = stor16[idx]
                mem[32] = 7
                if stor7[stor16[idx]] > s:
                    _559 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_559] = 26
                    mem[_559 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _569 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _569 + 68] = mem[idx + _559 + 32]
                            idx = idx + 32
                            continue 
                        mem[_569 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _569 + -mem[64] + 100
                    _617 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_617] = 26
                    mem[_617 + 32] = 'SafeMath: division by zero'
                    if not stor19 / totalSupply:
                        _628 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _628 + 68] = mem[idx + _617 + 32]
                            idx = idx + 32
                            continue 
                        mem[_628 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _628 + -mem[64] + 100
                    stor7[address(stor41.field_0)] = stor6[address(stor41.field_0)] / stor19 / totalSupply
                    stor14[address(stor41.field_0)] = 1
                    stor16.length++
                    stor16[stor16.length] = uniswapV2PairAddress
                    if tradingOpen:
                        if not launchedAt:
                            launchedAt = block.number
                            deadBlocks = arg2
                if idx >= stor16.length:
                    revert with 0, 50
                mem[0] = stor16[idx]
                mem[32] = 6
                _558 = mem[64]
                mem[64] = mem[64] + 64
                mem[_558] = 30
                mem[_558 + 32] = 'SafeMath: subtraction overflow'
                if stor6[stor16[idx]] > t:
                    _568 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _568 + 68] = mem[idx + _558 + 32]
                        idx = idx + 32
                        continue 
                    mem[_568 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _568 + -mem[64] + 100
                if t < stor6[stor16[idx]]:
                    revert with 0, 17
                if idx >= stor16.length:
                    revert with 0, 50
                mem[0] = stor16[idx]
                mem[32] = 7
                _616 = mem[64]
                mem[64] = mem[64] + 64
                mem[_616] = 30
                mem[_616 + 32] = 'SafeMath: subtraction overflow'
                if stor7[stor16[idx]] <= s:
                    if s < stor7[stor16[idx]]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - stor7[stor16[idx]]
                    t = t - stor6[stor16[idx]]
                    continue 
                _627 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _627 + 68] = mem[idx + _616 + 32]
                    idx = idx + 32
                    continue 
                mem[_627 + 98] = 0
                revert with memory
                  from mem[64]
                   len _627 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor19 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not t / s:
                    revert with 0, 'SafeMath: division by zero', 0
                stor7[address(stor41.field_0)] = stor6[address(stor41.field_0)] / t / s
            else:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not stor19 / totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                stor7[address(stor41.field_0)] = stor6[address(stor41.field_0)] / stor19 / totalSupply
    else:
        mem[0] = this.address
        mem[32] = 6
        if stor6[address(this.address)] > stor19:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = totalSupply
        t = stor19
        while idx < stor16.length:
            mem[0] = stor16[idx]
            mem[32] = 6
            if stor6[stor16[idx]] > t:
                _550 = mem[64]
                mem[64] = mem[64] + 64
                mem[_550] = 26
                mem[_550 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _560 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _560 + 68] = mem[idx + _550 + 32]
                        idx = idx + 32
                        continue 
                    mem[_560 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _560 + -mem[64] + 100
                _602 = mem[64]
                mem[64] = mem[64] + 64
                mem[_602] = 26
                mem[_602 + 32] = 'SafeMath: division by zero'
                if not stor19 / totalSupply:
                    _620 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _620 + 68] = mem[idx + _602 + 32]
                        idx = idx + 32
                        continue 
                    mem[_620 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _620 + -mem[64] + 100
                stor7[address(this.address)] = stor6[address(this.address)] / stor19 / totalSupply
                stor14[address(this.address)] = 1
                stor16.length++
                stor16[stor16.length] = this.address
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if stor6[address(stor41.field_0)]:
                    mem[0] = uniswapV2PairAddress
                    mem[32] = 6
                    if stor6[address(stor41.field_0)] > stor19:
                        revert with 0, 'Amount must be less than total reflections'
                    idx = 0
                    s = totalSupply
                    t = stor19
                    while idx < stor16.length:
                        mem[0] = stor16[idx]
                        mem[32] = 6
                        if stor6[stor16[idx]] > t:
                            _1151 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1151] = 26
                            mem[_1151 + 32] = 'SafeMath: division by zero'
                            if not totalSupply:
                                _1171 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1171 + 68] = mem[idx + _1151 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1171 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1171 + -mem[64] + 100
                            _1253 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1253] = 26
                            mem[_1253 + 32] = 'SafeMath: division by zero'
                            if not stor19 / totalSupply:
                                _1289 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1289 + 68] = mem[idx + _1253 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1289 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1289 + -mem[64] + 100
                            stor7[address(stor41.field_0)] = stor6[address(stor41.field_0)] / stor19 / totalSupply
                            stor14[address(stor41.field_0)] = 1
                            stor16.length++
                            stor16[stor16.length] = uniswapV2PairAddress
                            if tradingOpen:
                                if not launchedAt:
                                    launchedAt = block.number
                                    deadBlocks = arg2
                        if idx >= stor16.length:
                            revert with 0, 50
                        mem[0] = stor16[idx]
                        mem[32] = 7
                        if stor7[stor16[idx]] > s:
                            _1173 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1173] = 26
                            mem[_1173 + 32] = 'SafeMath: division by zero'
                            if not totalSupply:
                                _1193 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1193 + 68] = mem[idx + _1173 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1193 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1193 + -mem[64] + 100
                            _1291 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1291] = 26
                            mem[_1291 + 32] = 'SafeMath: division by zero'
                            if not stor19 / totalSupply:
                                _1312 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1312 + 68] = mem[idx + _1291 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1312 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1312 + -mem[64] + 100
                            stor7[address(stor41.field_0)] = stor6[address(stor41.field_0)] / stor19 / totalSupply
                            stor14[address(stor41.field_0)] = 1
                            stor16.length++
                            stor16[stor16.length] = uniswapV2PairAddress
                            if tradingOpen:
                                if not launchedAt:
                                    launchedAt = block.number
                                    deadBlocks = arg2
                        if idx >= stor16.length:
                            revert with 0, 50
                        mem[0] = stor16[idx]
                        mem[32] = 6
                        _1172 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1172] = 30
                        mem[_1172 + 32] = 'SafeMath: subtraction overflow'
                        if stor6[stor16[idx]] > t:
                            _1192 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1192 + 68] = mem[idx + _1172 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1192 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1192 + -mem[64] + 100
                        if t < stor6[stor16[idx]]:
                            revert with 0, 17
                        if idx >= stor16.length:
                            revert with 0, 50
                        mem[0] = stor16[idx]
                        mem[32] = 7
                        _1290 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1290] = 30
                        mem[_1290 + 32] = 'SafeMath: subtraction overflow'
                        if stor7[stor16[idx]] <= s:
                            if s < stor7[stor16[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor7[stor16[idx]]
                            t = t - stor6[stor16[idx]]
                            continue 
                        _1311 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1311 + 68] = mem[idx + _1290 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1311 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1311 + -mem[64] + 100
                    _1083 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1083] = 26
                    mem[_1083 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _1133 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1133 + 68] = mem[idx + _1083 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1133 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1133 + -mem[64] + 100
                    if t >= stor19 / totalSupply:
                        _1213 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1213] = 26
                        mem[_1213 + 32] = 'SafeMath: division by zero'
                        if not s:
                            _1235 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1235 + 68] = mem[idx + _1213 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1235 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1235 + -mem[64] + 100
                        _1341 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1341] = 26
                        mem[_1341 + 32] = 'SafeMath: division by zero'
                        if not t / s:
                            _1365 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            s = 0
                            while s < 26:
                                mem[s + _1365 + 68] = mem[s + _1341 + 32]
                                s = s + 32
                                continue 
                            mem[_1365 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1365 + -mem[64] + 100
                        stor7[address(stor41.field_0)] = stor6[address(stor41.field_0)] / t / s
                    else:
                        _1214 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1214] = 26
                        mem[_1214 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _1236 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1236 + 68] = mem[idx + _1214 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1236 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1236 + -mem[64] + 100
                        _1342 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1342] = 26
                        mem[_1342 + 32] = 'SafeMath: division by zero'
                        if not stor19 / totalSupply:
                            _1366 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            s = 0
                            while s < 26:
                                mem[s + _1366 + 68] = mem[s + _1342 + 32]
                                s = s + 32
                                continue 
                            mem[_1366 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1366 + -mem[64] + 100
                        stor7[address(stor41.field_0)] = stor6[address(stor41.field_0)] / stor19 / totalSupply
            else:
                if idx >= stor16.length:
                    revert with 0, 50
                mem[0] = stor16[idx]
                mem[32] = 7
                if stor7[stor16[idx]] <= s:
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 6
                    _561 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_561] = 30
                    mem[_561 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor16[idx]] > t:
                        _571 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _571 + 68] = mem[idx + _561 + 32]
                            idx = idx + 32
                            continue 
                        mem[_571 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _571 + -mem[64] + 100
                    if t < stor6[stor16[idx]]:
                        revert with 0, 17
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 7
                    _621 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_621] = 30
                    mem[_621 + 32] = 'SafeMath: subtraction overflow'
                    if stor7[stor16[idx]] <= s:
                        if s < stor7[stor16[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor7[stor16[idx]]
                        t = t - stor6[stor16[idx]]
                        continue 
                    _631 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _631 + 68] = mem[idx + _621 + 32]
                        idx = idx + 32
                        continue 
                    mem[_631 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _631 + -mem[64] + 100
                _562 = mem[64]
                mem[64] = mem[64] + 64
                mem[_562] = 26
                mem[_562 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _572 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _572 + 68] = mem[idx + _562 + 32]
                        idx = idx + 32
                        continue 
                    mem[_572 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _572 + -mem[64] + 100
                _622 = mem[64]
                mem[64] = mem[64] + 64
                mem[_622] = 26
                mem[_622 + 32] = 'SafeMath: division by zero'
                if not stor19 / totalSupply:
                    _632 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _632 + 68] = mem[idx + _622 + 32]
                        idx = idx + 32
                        continue 
                    mem[_632 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _632 + -mem[64] + 100
                stor7[address(this.address)] = stor6[address(this.address)] / stor19 / totalSupply
                stor14[address(this.address)] = 1
                stor16.length++
                stor16[stor16.length] = this.address
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if stor6[address(stor41.field_0)]:
                    mem[0] = uniswapV2PairAddress
                    mem[32] = 6
                    if stor6[address(stor41.field_0)] > stor19:
                        revert with 0, 'Amount must be less than total reflections'
                    idx = 0
                    s = totalSupply
                    t = stor19
                    while idx < stor16.length:
                        mem[0] = stor16[idx]
                        mem[32] = 6
                        if stor6[stor16[idx]] > t:
                            _1152 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1152] = 26
                            mem[_1152 + 32] = 'SafeMath: division by zero'
                            if not totalSupply:
                                _1174 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1174 + 68] = mem[idx + _1152 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1174 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1174 + -mem[64] + 100
                            _1258 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1258] = 26
                            mem[_1258 + 32] = 'SafeMath: division by zero'
                            if not stor19 / totalSupply:
                                _1294 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1294 + 68] = mem[idx + _1258 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1294 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1294 + -mem[64] + 100
                            stor7[address(stor41.field_0)] = stor6[address(stor41.field_0)] / stor19 / totalSupply
                            stor14[address(stor41.field_0)] = 1
                            stor16.length++
                            stor16[stor16.length] = uniswapV2PairAddress
                            if tradingOpen:
                                if not launchedAt:
                                    launchedAt = block.number
                                    deadBlocks = arg2
                        if idx >= stor16.length:
                            revert with 0, 50
                        mem[0] = stor16[idx]
                        mem[32] = 7
                        if stor7[stor16[idx]] > s:
                            _1176 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1176] = 26
                            mem[_1176 + 32] = 'SafeMath: division by zero'
                            if not totalSupply:
                                _1196 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1196 + 68] = mem[idx + _1176 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1196 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1196 + -mem[64] + 100
                            _1296 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1296] = 26
                            mem[_1296 + 32] = 'SafeMath: division by zero'
                            if not stor19 / totalSupply:
                                _1316 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1316 + 68] = mem[idx + _1296 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1316 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1316 + -mem[64] + 100
                            stor7[address(stor41.field_0)] = stor6[address(stor41.field_0)] / stor19 / totalSupply
                            stor14[address(stor41.field_0)] = 1
                            stor16.length++
                            stor16[stor16.length] = uniswapV2PairAddress
                            if tradingOpen:
                                if not launchedAt:
                                    launchedAt = block.number
                                    deadBlocks = arg2
                        if idx >= stor16.length:
                            revert with 0, 50
                        mem[0] = stor16[idx]
                        mem[32] = 6
                        _1175 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1175] = 30
                        mem[_1175 + 32] = 'SafeMath: subtraction overflow'
                        if stor6[stor16[idx]] > t:
                            _1195 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1195 + 68] = mem[idx + _1175 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1195 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1195 + -mem[64] + 100
                        if t < stor6[stor16[idx]]:
                            revert with 0, 17
                        if idx >= stor16.length:
                            revert with 0, 50
                        mem[0] = stor16[idx]
                        mem[32] = 7
                        _1295 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1295] = 30
                        mem[_1295 + 32] = 'SafeMath: subtraction overflow'
                        if stor7[stor16[idx]] <= s:
                            if s < stor7[stor16[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor7[stor16[idx]]
                            t = t - stor6[stor16[idx]]
                            continue 
                        _1315 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1315 + 68] = mem[idx + _1295 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1315 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1315 + -mem[64] + 100
                    _1086 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1086] = 26
                    mem[_1086 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _1140 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1140 + 68] = mem[idx + _1086 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1140 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1140 + -mem[64] + 100
                    if t >= stor19 / totalSupply:
                        _1215 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1215] = 26
                        mem[_1215 + 32] = 'SafeMath: division by zero'
                        if not s:
                            _1238 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1238 + 68] = mem[idx + _1215 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1238 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1238 + -mem[64] + 100
                        _1343 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1343] = 26
                        mem[_1343 + 32] = 'SafeMath: division by zero'
                        if not t / s:
                            _1369 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            s = 0
                            while s < 26:
                                mem[s + _1369 + 68] = mem[s + _1343 + 32]
                                s = s + 32
                                continue 
                            mem[_1369 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1369 + -mem[64] + 100
                        stor7[address(stor41.field_0)] = stor6[address(stor41.field_0)] / t / s
                    else:
                        _1216 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1216] = 26
                        mem[_1216 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _1239 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1239 + 68] = mem[idx + _1216 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1239 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1239 + -mem[64] + 100
                        _1344 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1344] = 26
                        mem[_1344 + 32] = 'SafeMath: division by zero'
                        if not stor19 / totalSupply:
                            _1370 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            s = 0
                            while s < 26:
                                mem[s + _1370 + 68] = mem[s + _1344 + 32]
                                s = s + 32
                                continue 
                            mem[_1370 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1370 + -mem[64] + 100
                        stor7[address(stor41.field_0)] = stor6[address(stor41.field_0)] / stor19 / totalSupply
            stor14[address(stor41.field_0)] = 1
            stor16.length++
            stor16[stor16.length] = uniswapV2PairAddress
            if tradingOpen:
                if not launchedAt:
                    launchedAt = block.number
                    deadBlocks = arg2
        _538 = mem[64]
        mem[64] = mem[64] + 64
        mem[_538] = 26
        mem[_538 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor19 / totalSupply:
            _581 = mem[64]
            mem[64] = mem[64] + 64
            mem[_581] = 26
            mem[_581 + 32] = 'SafeMath: division by zero'
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            _645 = mem[64]
            mem[64] = mem[64] + 64
            mem[_645] = 26
            mem[_645 + 32] = 'SafeMath: division by zero'
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            stor7[address(this.address)] = stor6[address(this.address)] / t / s
            stor14[address(this.address)] = 1
            stor16.length++
            stor16[stor16.length] = this.address
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if stor6[address(stor41.field_0)]:
                mem[0] = uniswapV2PairAddress
                mem[32] = 6
                if stor6[address(stor41.field_0)] > stor19:
                    revert with 0, 'Amount must be less than total reflections'
                idx = 0
                s = totalSupply
                t = stor19
                while idx < stor16.length:
                    mem[0] = stor16[idx]
                    mem[32] = 6
                    if stor6[stor16[idx]] > t:
                        _1149 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1149] = 26
                        mem[_1149 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _1165 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1165 + 68] = mem[idx + _1149 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1165 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1165 + -mem[64] + 100
                        _1243 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1243] = 26
                        mem[_1243 + 32] = 'SafeMath: division by zero'
                        if not stor19 / totalSupply:
                            _1279 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1279 + 68] = mem[idx + _1243 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1279 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1279 + -mem[64] + 100
                        stor7[address(stor41.field_0)] = stor6[address(stor41.field_0)] / stor19 / totalSupply
                        stor14[address(stor41.field_0)] = 1
                        stor16.length++
                        stor16[stor16.length] = uniswapV2PairAddress
                        if tradingOpen:
                            if not launchedAt:
                                launchedAt = block.number
                                deadBlocks = arg2
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 7
                    if stor7[stor16[idx]] > s:
                        _1167 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1167] = 26
                        mem[_1167 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _1187 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1187 + 68] = mem[idx + _1167 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1187 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1187 + -mem[64] + 100
                        _1281 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1281] = 26
                        mem[_1281 + 32] = 'SafeMath: division by zero'
                        if not stor19 / totalSupply:
                            _1304 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1304 + 68] = mem[idx + _1281 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1304 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1304 + -mem[64] + 100
                        stor7[address(stor41.field_0)] = stor6[address(stor41.field_0)] / stor19 / totalSupply
                        stor14[address(stor41.field_0)] = 1
                        stor16.length++
                        stor16[stor16.length] = uniswapV2PairAddress
                        if tradingOpen:
                            if not launchedAt:
                                launchedAt = block.number
                                deadBlocks = arg2
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 6
                    _1166 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1166] = 30
                    mem[_1166 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor16[idx]] > t:
                        _1186 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1186 + 68] = mem[idx + _1166 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1186 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1186 + -mem[64] + 100
                    if t < stor6[stor16[idx]]:
                        revert with 0, 17
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 7
                    _1280 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1280] = 30
                    mem[_1280 + 32] = 'SafeMath: subtraction overflow'
                    if stor7[stor16[idx]] <= s:
                        if s < stor7[stor16[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor7[stor16[idx]]
                        t = t - stor6[stor16[idx]]
                        continue 
                    _1303 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1303 + 68] = mem[idx + _1280 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1303 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1303 + -mem[64] + 100
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if t >= stor19 / totalSupply:
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not t / s:
                        revert with 0, 'SafeMath: division by zero', 0
                    stor7[address(stor41.field_0)] = stor6[address(stor41.field_0)] / t / s
                else:
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not stor19 / totalSupply:
                        revert with 0, 'SafeMath: division by zero', 0
                    stor7[address(stor41.field_0)] = stor6[address(stor41.field_0)] / stor19 / totalSupply
        else:
            _582 = mem[64]
            mem[64] = mem[64] + 64
            mem[_582] = 26
            mem[_582 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            _646 = mem[64]
            mem[64] = mem[64] + 64
            mem[_646] = 26
            mem[_646 + 32] = 'SafeMath: division by zero'
            if not stor19 / totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            stor7[address(this.address)] = stor6[address(this.address)] / stor19 / totalSupply
            stor14[address(this.address)] = 1
            stor16.length++
            stor16[stor16.length] = this.address
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if stor6[address(stor41.field_0)]:
                mem[0] = uniswapV2PairAddress
                mem[32] = 6
                if stor6[address(stor41.field_0)] > stor19:
                    revert with 0, 'Amount must be less than total reflections'
                idx = 0
                s = totalSupply
                t = stor19
                while idx < stor16.length:
                    mem[0] = stor16[idx]
                    mem[32] = 6
                    if stor6[stor16[idx]] > t:
                        _1150 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1150] = 26
                        mem[_1150 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _1168 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1168 + 68] = mem[idx + _1150 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1168 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1168 + -mem[64] + 100
                        _1248 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1248] = 26
                        mem[_1248 + 32] = 'SafeMath: division by zero'
                        if not stor19 / totalSupply:
                            _1284 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1284 + 68] = mem[idx + _1248 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1284 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1284 + -mem[64] + 100
                        stor7[address(stor41.field_0)] = stor6[address(stor41.field_0)] / stor19 / totalSupply
                        stor14[address(stor41.field_0)] = 1
                        stor16.length++
                        stor16[stor16.length] = uniswapV2PairAddress
                        if tradingOpen:
                            if not launchedAt:
                                launchedAt = block.number
                                deadBlocks = arg2
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 7
                    if stor7[stor16[idx]] > s:
                        _1170 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1170] = 26
                        mem[_1170 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _1190 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1190 + 68] = mem[idx + _1170 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1190 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1190 + -mem[64] + 100
                        _1286 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1286] = 26
                        mem[_1286 + 32] = 'SafeMath: division by zero'
                        if not stor19 / totalSupply:
                            _1308 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1308 + 68] = mem[idx + _1286 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1308 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1308 + -mem[64] + 100
                        stor7[address(stor41.field_0)] = stor6[address(stor41.field_0)] / stor19 / totalSupply
                        stor14[address(stor41.field_0)] = 1
                        stor16.length++
                        stor16[stor16.length] = uniswapV2PairAddress
                        if tradingOpen:
                            if not launchedAt:
                                launchedAt = block.number
                                deadBlocks = arg2
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 6
                    _1169 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1169] = 30
                    mem[_1169 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor16[idx]] > t:
                        _1189 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1189 + 68] = mem[idx + _1169 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1189 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1189 + -mem[64] + 100
                    if t < stor6[stor16[idx]]:
                        revert with 0, 17
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 7
                    _1285 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1285] = 30
                    mem[_1285 + 32] = 'SafeMath: subtraction overflow'
                    if stor7[stor16[idx]] <= s:
                        if s < stor7[stor16[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor7[stor16[idx]]
                        t = t - stor6[stor16[idx]]
                        continue 
                    _1307 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1307 + 68] = mem[idx + _1285 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1307 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1307 + -mem[64] + 100
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if t >= stor19 / totalSupply:
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not t / s:
                        revert with 0, 'SafeMath: division by zero', 0
                    stor7[address(stor41.field_0)] = stor6[address(stor41.field_0)] / t / s
                else:
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not stor19 / totalSupply:
                        revert with 0, 'SafeMath: division by zero', 0
                    stor7[address(stor41.field_0)] = stor6[address(stor41.field_0)] / stor19 / totalSupply
    stor14[address(stor41.field_0)] = 1
    stor16.length++
    stor16[stor16.length] = uniswapV2PairAddress
    if tradingOpen:
        if not launchedAt:
            launchedAt = block.number
            deadBlocks = arg2
}

function deliver(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 14
    if stor14[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Excluded addresses cannot call this function'
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor19
            while idx < stor16.length:
                mem[0] = stor16[idx]
                mem[32] = 6
                if stor6[stor16[idx]] > t:
                    _2247 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2247] = 26
                    mem[_2247 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2269 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2269 + 68] = mem[idx + _2247 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2269 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2269 + -mem[64] + 100
                    if not arg1:
                        _2437 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2437] = 30
                        mem[_2437 + 32] = 'SafeMath: subtraction overflow'
                        _2518 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2518] = 30
                        mem[_2518 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 6
                        _2775 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2775] = 30
                        mem[_2775 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor6[address(msg.sender)]:
                            _2876 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2876 + 68] = mem[idx + _2775 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2876 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2876 + -mem[64] + 100
                        if stor6[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 6
                        _3169 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3169] = 30
                        mem[_3169 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor19:
                            if stor19 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3275 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3275 + 68] = mem[idx + _3169 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3275 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3275 + -mem[64] + 100
                    if arg1 and stor19 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2491 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2491] = 30
                    mem[_2491 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor19 / totalSupply:
                        _2517 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2517 + 68] = mem[idx + _2491 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2517 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2517 + -mem[64] + 100
                    if arg1 * stor19 / totalSupply < 0:
                        revert with 0, 17
                    _2653 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2653] = 30
                    mem[_2653 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor19 / totalSupply:
                        _2709 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2709 + 68] = mem[idx + _2653 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2709 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2709 + -mem[64] + 100
                    if arg1 * stor19 / totalSupply < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 6
                    _3056 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3056] = 30
                    mem[_3056 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor19 / totalSupply > stor6[address(msg.sender)]:
                        _3168 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3168 + 68] = mem[idx + _3056 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3168 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3168 + -mem[64] + 100
                    if stor6[address(msg.sender)] < arg1 * stor19 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 6
                    stor6[address(msg.sender)] += -1 * arg1 * stor19 / totalSupply
                    _3504 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3504] = 30
                    mem[_3504 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor19 / totalSupply <= stor19:
                        if stor19 < arg1 * stor19 / totalSupply:
                            revert with 0, 17
                        stor19 += -1 * arg1 * stor19 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3613 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3613 + 68] = mem[idx + _3504 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3613 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3613 + -mem[64] + 100
                if idx >= stor16.length:
                    revert with 0, 50
                mem[0] = stor16[idx]
                mem[32] = 7
                if stor7[stor16[idx]] <= s:
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 6
                    _2270 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2270] = 30
                    mem[_2270 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor16[idx]] > t:
                        _2290 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2290 + 68] = mem[idx + _2270 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2290 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2290 + -mem[64] + 100
                    if t < stor6[stor16[idx]]:
                        revert with 0, 17
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 7
                    _2379 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2379] = 30
                    mem[_2379 + 32] = 'SafeMath: subtraction overflow'
                    if stor7[stor16[idx]] <= s:
                        if s < stor7[stor16[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor7[stor16[idx]]
                        t = t - stor6[stor16[idx]]
                        continue 
                    _2391 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2391 + 68] = mem[idx + _2379 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2391 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2391 + -mem[64] + 100
                _2271 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2271] = 26
                mem[_2271 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2291 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2291 + 68] = mem[idx + _2271 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2291 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2291 + -mem[64] + 100
                if not arg1:
                    _2453 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2453] = 30
                    mem[_2453 + 32] = 'SafeMath: subtraction overflow'
                    _2544 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2544] = 30
                    mem[_2544 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 6
                    _2877 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2877] = 30
                    mem[_2877 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor6[address(msg.sender)]:
                        _2959 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2959 + 68] = mem[idx + _2877 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2959 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2959 + -mem[64] + 100
                    if stor6[address(msg.sender)] < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 6
                    _3277 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3277] = 30
                    mem[_3277 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor19:
                        if stor19 < 0:
                            revert with 0, 17
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3376 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3376 + 68] = mem[idx + _3277 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3376 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3376 + -mem[64] + 100
                if arg1 and stor19 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2519 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2519] = 30
                mem[_2519 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor19 / totalSupply:
                    _2543 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2543 + 68] = mem[idx + _2519 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2543 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2543 + -mem[64] + 100
                if arg1 * stor19 / totalSupply < 0:
                    revert with 0, 17
                _2710 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2710] = 30
                mem[_2710 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor19 / totalSupply:
                    _2776 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2776 + 68] = mem[idx + _2710 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2776 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2776 + -mem[64] + 100
                if arg1 * stor19 / totalSupply < 0:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 6
                _3171 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3171] = 30
                mem[_3171 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor19 / totalSupply > stor6[address(msg.sender)]:
                    _3276 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3276 + 68] = mem[idx + _3171 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3276 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3276 + -mem[64] + 100
                if stor6[address(msg.sender)] < arg1 * stor19 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 6
                stor6[address(msg.sender)] += -1 * arg1 * stor19 / totalSupply
                _3615 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3615] = 30
                mem[_3615 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor19 / totalSupply <= stor19:
                    if stor19 < arg1 * stor19 / totalSupply:
                        revert with 0, 17
                    stor19 += -1 * arg1 * stor19 / totalSupply
                    if totalFees > !arg1:
                        revert with 0, 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _3699 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3699 + 68] = mem[idx + _3615 + 32]
                    idx = idx + 32
                    continue 
                mem[_3699 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3699 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor19 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if 0 > stor6[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor19:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor19 < 0:
                        revert with 0, 17
                else:
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if arg1 * t / s > stor6[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6[address(msg.sender)] < arg1 * t / s:
                        revert with 0, 17
                    stor6[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor19:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor19 < arg1 * t / s:
                        revert with 0, 17
                    stor19 += -1 * arg1 * t / s
            else:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if 0 > stor6[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor19:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor19 < 0:
                        revert with 0, 17
                else:
                    if arg1 and stor19 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor19 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor19 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor19 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor19 / totalSupply < 0:
                        revert with 0, 17
                    if arg1 * stor19 / totalSupply > stor6[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6[address(msg.sender)] < arg1 * stor19 / totalSupply:
                        revert with 0, 17
                    stor6[address(msg.sender)] += -1 * arg1 * stor19 / totalSupply
                    if arg1 * stor19 / totalSupply > stor19:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor19 < arg1 * stor19 / totalSupply:
                        revert with 0, 17
                    stor19 += -1 * arg1 * stor19 / totalSupply
        else:
            if arg1 and stor38 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor38 / arg1 != stor38:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * stor38 / 1000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * stor38 / 1000:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor19
            while idx < stor16.length:
                mem[0] = stor16[idx]
                mem[32] = 6
                if stor6[stor16[idx]] > t:
                    _2246 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2246] = 26
                    mem[_2246 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2266 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2266 + 68] = mem[idx + _2246 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2266 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2266 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * stor38 / 1000:
                            _2436 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2436] = 30
                            mem[_2436 + 32] = 'SafeMath: subtraction overflow'
                            _2514 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2514] = 30
                            mem[_2514 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 6
                            _2772 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2772] = 30
                            mem[_2772 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor6[address(msg.sender)]:
                                _2870 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2870 + 68] = mem[idx + _2772 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2870 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2870 + -mem[64] + 100
                            if stor6[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 6
                            _3162 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3162] = 30
                            mem[_3162 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor19:
                                if stor19 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3268 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3268 + 68] = mem[idx + _3162 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3268 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3268 + -mem[64] + 100
                        if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                            revert with 0, 17
                        if not arg1 * stor38 / 1000:
                            revert with 0, 18
                        if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2487 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2487] = 30
                        mem[_2487 + 32] = 'SafeMath: subtraction overflow'
                        _2647 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2647] = 30
                        mem[_2647 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor38 / 1000 * stor19 / totalSupply > 0:
                            _2704 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2704 + 68] = mem[idx + _2647 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2704 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2704 + -mem[64] + 100
                        if 0 < arg1 * stor38 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 6
                        _3050 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3050] = 30
                        mem[_3050 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor6[address(msg.sender)]:
                            _3161 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3161 + 68] = mem[idx + _3050 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3161 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3161 + -mem[64] + 100
                        if stor6[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 6
                        _3495 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3495] = 30
                        mem[_3495 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor19:
                            if stor19 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3604 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3604 + 68] = mem[idx + _3495 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3604 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3604 + -mem[64] + 100
                    if arg1 and stor19 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor38 / 1000:
                        _2486 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2486] = 30
                        mem[_2486 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor19 / totalSupply:
                            _2513 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2513 + 68] = mem[idx + _2486 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2513 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2513 + -mem[64] + 100
                        if arg1 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        _2645 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2645] = 30
                        mem[_2645 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor19 / totalSupply:
                            _2703 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2703 + 68] = mem[idx + _2645 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2703 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2703 + -mem[64] + 100
                        if arg1 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 6
                        _3049 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3049] = 30
                        mem[_3049 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor19 / totalSupply > stor6[address(msg.sender)]:
                            _3160 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3160 + 68] = mem[idx + _3049 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3160 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3160 + -mem[64] + 100
                        if stor6[address(msg.sender)] < arg1 * stor19 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 6
                        stor6[address(msg.sender)] += -1 * arg1 * stor19 / totalSupply
                        _3493 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3493] = 30
                        mem[_3493 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor19 / totalSupply <= stor19:
                            if stor19 < arg1 * stor19 / totalSupply:
                                revert with 0, 17
                            stor19 += -1 * arg1 * stor19 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3603 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3603 + 68] = mem[idx + _3493 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3603 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3603 + -mem[64] + 100
                    if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                        revert with 0, 17
                    if not arg1 * stor38 / 1000:
                        revert with 0, 18
                    if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2588 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2588] = 30
                    mem[_2588 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor19 / totalSupply:
                        _2644 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2644 + 68] = mem[idx + _2588 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2644 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2644 + -mem[64] + 100
                    if arg1 * stor19 / totalSupply < 0:
                        revert with 0, 17
                    _2868 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2868] = 30
                    mem[_2868 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor38 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                        _2950 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2950 + 68] = mem[idx + _2868 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2950 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2950 + -mem[64] + 100
                    if arg1 * stor19 / totalSupply < arg1 * stor38 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 6
                    _3371 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3371] = 30
                    mem[_3371 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor19 / totalSupply > stor6[address(msg.sender)]:
                        _3492 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3492 + 68] = mem[idx + _3371 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3492 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3492 + -mem[64] + 100
                    if stor6[address(msg.sender)] < arg1 * stor19 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 6
                    stor6[address(msg.sender)] += -1 * arg1 * stor19 / totalSupply
                    _3825 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3825] = 30
                    mem[_3825 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor19 / totalSupply <= stor19:
                        if stor19 < arg1 * stor19 / totalSupply:
                            revert with 0, 17
                        stor19 += -1 * arg1 * stor19 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3926 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3926 + 68] = mem[idx + _3825 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3926 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3926 + -mem[64] + 100
                if idx >= stor16.length:
                    revert with 0, 50
                mem[0] = stor16[idx]
                mem[32] = 7
                if stor7[stor16[idx]] <= s:
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 6
                    _2267 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2267] = 30
                    mem[_2267 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor16[idx]] > t:
                        _2287 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2287 + 68] = mem[idx + _2267 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2287 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2287 + -mem[64] + 100
                    if t < stor6[stor16[idx]]:
                        revert with 0, 17
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 7
                    _2376 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2376] = 30
                    mem[_2376 + 32] = 'SafeMath: subtraction overflow'
                    if stor7[stor16[idx]] <= s:
                        if s < stor7[stor16[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor7[stor16[idx]]
                        t = t - stor6[stor16[idx]]
                        continue 
                    _2388 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2388 + 68] = mem[idx + _2376 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2388 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2388 + -mem[64] + 100
                _2268 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2268] = 26
                mem[_2268 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2288 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2288 + 68] = mem[idx + _2268 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2288 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2288 + -mem[64] + 100
                if not arg1:
                    if not arg1 * stor38 / 1000:
                        _2450 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2450] = 30
                        mem[_2450 + 32] = 'SafeMath: subtraction overflow'
                        _2542 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2542] = 30
                        mem[_2542 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 6
                        _2871 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2871] = 30
                        mem[_2871 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor6[address(msg.sender)]:
                            _2955 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2955 + 68] = mem[idx + _2871 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2955 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2955 + -mem[64] + 100
                        if stor6[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 6
                        _3271 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3271] = 30
                        mem[_3271 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor19:
                            if stor19 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3373 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3373 + 68] = mem[idx + _3271 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3373 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3373 + -mem[64] + 100
                    if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                        revert with 0, 17
                    if not arg1 * stor38 / 1000:
                        revert with 0, 18
                    if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2516 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2516] = 30
                    mem[_2516 + 32] = 'SafeMath: subtraction overflow'
                    _2708 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2708] = 30
                    mem[_2708 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor38 / 1000 * stor19 / totalSupply > 0:
                        _2774 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2774 + 68] = mem[idx + _2708 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2774 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2774 + -mem[64] + 100
                    if 0 < arg1 * stor38 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 6
                    _3165 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3165] = 30
                    mem[_3165 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor6[address(msg.sender)]:
                        _3270 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3270 + 68] = mem[idx + _3165 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3270 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3270 + -mem[64] + 100
                    if stor6[address(msg.sender)] < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 6
                    _3609 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3609] = 30
                    mem[_3609 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor19:
                        if stor19 < 0:
                            revert with 0, 17
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3697 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3697 + 68] = mem[idx + _3609 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3697 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3697 + -mem[64] + 100
                if arg1 and stor19 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor38 / 1000:
                    _2515 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2515] = 30
                    mem[_2515 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor19 / totalSupply:
                        _2541 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2541 + 68] = mem[idx + _2515 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2541 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2541 + -mem[64] + 100
                    if arg1 * stor19 / totalSupply < 0:
                        revert with 0, 17
                    _2706 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2706] = 30
                    mem[_2706 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor19 / totalSupply:
                        _2773 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2773 + 68] = mem[idx + _2706 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2773 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2773 + -mem[64] + 100
                    if arg1 * stor19 / totalSupply < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 6
                    _3164 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3164] = 30
                    mem[_3164 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor19 / totalSupply > stor6[address(msg.sender)]:
                        _3269 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3269 + 68] = mem[idx + _3164 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3269 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3269 + -mem[64] + 100
                    if stor6[address(msg.sender)] < arg1 * stor19 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 6
                    stor6[address(msg.sender)] += -1 * arg1 * stor19 / totalSupply
                    _3607 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3607] = 30
                    mem[_3607 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor19 / totalSupply <= stor19:
                        if stor19 < arg1 * stor19 / totalSupply:
                            revert with 0, 17
                        stor19 += -1 * arg1 * stor19 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3696 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3696 + 68] = mem[idx + _3607 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3696 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3696 + -mem[64] + 100
                if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                    revert with 0, 17
                if not arg1 * stor38 / 1000:
                    revert with 0, 18
                if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2648 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2648] = 30
                mem[_2648 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor19 / totalSupply:
                    _2705 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2705 + 68] = mem[idx + _2648 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2705 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2705 + -mem[64] + 100
                if arg1 * stor19 / totalSupply < 0:
                    revert with 0, 17
                _2953 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2953] = 30
                mem[_2953 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor38 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                    _3051 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3051 + 68] = mem[idx + _2953 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3051 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3051 + -mem[64] + 100
                if arg1 * stor19 / totalSupply < arg1 * stor38 / 1000 * stor19 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 6
                _3497 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3497] = 30
                mem[_3497 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor19 / totalSupply > stor6[address(msg.sender)]:
                    _3606 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3606 + 68] = mem[idx + _3497 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3606 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3606 + -mem[64] + 100
                if stor6[address(msg.sender)] < arg1 * stor19 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 6
                stor6[address(msg.sender)] += -1 * arg1 * stor19 / totalSupply
                _3929 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3929] = 30
                mem[_3929 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor19 / totalSupply <= stor19:
                    if stor19 < arg1 * stor19 / totalSupply:
                        revert with 0, 17
                    stor19 += -1 * arg1 * stor19 / totalSupply
                    if totalFees > !arg1:
                        revert with 0, 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _3996 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3996 + 68] = mem[idx + _3929 + 32]
                    idx = idx + 32
                    continue 
                mem[_3996 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3996 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor19 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if arg1 * stor38 / 1000:
                        if arg1 * stor38 / 1000 and t / s > -1 / arg1 * stor38 / 1000:
                            revert with 0, 17
                        if not arg1 * stor38 / 1000:
                            revert with 0, 18
                        if arg1 * stor38 / 1000 * t / s / arg1 * stor38 / 1000 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * stor38 / 1000 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * stor38 / 1000 * t / s:
                            revert with 0, 17
                    if 0 > stor6[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor19:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor19 < 0:
                        revert with 0, 17
                else:
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor38 / 1000:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                    else:
                        if arg1 * stor38 / 1000 and t / s > -1 / arg1 * stor38 / 1000:
                            revert with 0, 17
                        if not arg1 * stor38 / 1000:
                            revert with 0, 18
                        if arg1 * stor38 / 1000 * t / s / arg1 * stor38 / 1000 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if arg1 * stor38 / 1000 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * stor38 / 1000 * t / s:
                            revert with 0, 17
                    if arg1 * t / s > stor6[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6[address(msg.sender)] < arg1 * t / s:
                        revert with 0, 17
                    stor6[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor19:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor19 < arg1 * t / s:
                        revert with 0, 17
                    stor19 += -1 * arg1 * t / s
            else:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if arg1 * stor38 / 1000:
                        if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                            revert with 0, 17
                        if not arg1 * stor38 / 1000:
                            revert with 0, 18
                        if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * stor38 / 1000 * stor19 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * stor38 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                    if 0 > stor6[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor19:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor19 < 0:
                        revert with 0, 17
                else:
                    if arg1 and stor19 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor38 / 1000:
                        if 0 > arg1 * stor19 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        if 0 > arg1 * stor19 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor19 / totalSupply < 0:
                            revert with 0, 17
                    else:
                        if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                            revert with 0, 17
                        if not arg1 * stor38 / 1000:
                            revert with 0, 18
                        if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * stor19 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        if arg1 * stor38 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor19 / totalSupply < arg1 * stor38 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                    if arg1 * stor19 / totalSupply > stor6[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6[address(msg.sender)] < arg1 * stor19 / totalSupply:
                        revert with 0, 17
                    stor6[address(msg.sender)] += -1 * arg1 * stor19 / totalSupply
                    if arg1 * stor19 / totalSupply > stor19:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor19 < arg1 * stor19 / totalSupply:
                        revert with 0, 17
                    stor19 += -1 * arg1 * stor19 / totalSupply
    else:
        if arg1 and stor36 > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * stor36 / arg1 != stor36:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * stor36 / 1000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * stor36 / 1000:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * stor36 / 1000):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * stor36 / 1000) < 0:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor19
            while idx < stor16.length:
                mem[0] = stor16[idx]
                mem[32] = 6
                if stor6[stor16[idx]] > t:
                    _2245 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2245] = 26
                    mem[_2245 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2263 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2263 + 68] = mem[idx + _2245 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2263 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2263 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * stor36 / 1000:
                            _2435 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2435] = 30
                            mem[_2435 + 32] = 'SafeMath: subtraction overflow'
                            _2509 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2509] = 30
                            mem[_2509 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 6
                            _2767 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2767] = 30
                            mem[_2767 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor6[address(msg.sender)]:
                                _2858 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2858 + 68] = mem[idx + _2767 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2858 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2858 + -mem[64] + 100
                            if stor6[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 6
                            _3150 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3150] = 30
                            mem[_3150 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor19:
                                if stor19 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3256 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3256 + 68] = mem[idx + _3150 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3256 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3256 + -mem[64] + 100
                        if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                            revert with 0, 17
                        if not arg1 * stor36 / 1000:
                            revert with 0, 18
                        if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2483 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2483] = 30
                        mem[_2483 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor36 / 1000 * stor19 / totalSupply > 0:
                            _2508 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2508 + 68] = mem[idx + _2483 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2508 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2508 + -mem[64] + 100
                        if 0 < arg1 * stor36 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                        _2637 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2637] = 30
                        mem[_2637 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * stor36 / 1000 * stor19 / totalSupply:
                            _2695 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2695 + 68] = mem[idx + _2637 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2695 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2695 + -mem[64] + 100
                        if -1 * arg1 * stor36 / 1000 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 6
                        _3043 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3043] = 30
                        mem[_3043 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor6[address(msg.sender)]:
                            _3149 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3149 + 68] = mem[idx + _3043 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3149 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3149 + -mem[64] + 100
                        if stor6[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 6
                        _3481 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3481] = 30
                        mem[_3481 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor19:
                            if stor19 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3592 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3592 + 68] = mem[idx + _3481 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3592 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3592 + -mem[64] + 100
                    if arg1 and stor19 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor36 / 1000:
                        _2482 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2482] = 30
                        mem[_2482 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor19 / totalSupply:
                            _2507 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2507 + 68] = mem[idx + _2482 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2507 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2507 + -mem[64] + 100
                        if arg1 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        _2635 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2635] = 30
                        mem[_2635 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor19 / totalSupply:
                            _2694 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2694 + 68] = mem[idx + _2635 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2694 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2694 + -mem[64] + 100
                        if arg1 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 6
                        _3042 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3042] = 30
                        mem[_3042 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor19 / totalSupply > stor6[address(msg.sender)]:
                            _3148 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3148 + 68] = mem[idx + _3042 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3148 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3148 + -mem[64] + 100
                        if stor6[address(msg.sender)] < arg1 * stor19 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 6
                        stor6[address(msg.sender)] += -1 * arg1 * stor19 / totalSupply
                        _3479 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3479] = 30
                        mem[_3479 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor19 / totalSupply <= stor19:
                            if stor19 < arg1 * stor19 / totalSupply:
                                revert with 0, 17
                            stor19 += -1 * arg1 * stor19 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3591 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3591 + 68] = mem[idx + _3479 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3591 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3591 + -mem[64] + 100
                    if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                        revert with 0, 17
                    if not arg1 * stor36 / 1000:
                        revert with 0, 18
                    if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2583 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2583] = 30
                    mem[_2583 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor36 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                        _2634 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2634 + 68] = mem[idx + _2583 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2634 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2634 + -mem[64] + 100
                    if arg1 * stor19 / totalSupply < arg1 * stor36 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    _2856 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2856] = 30
                    mem[_2856 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply):
                        _2940 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2940 + 68] = mem[idx + _2856 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2940 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2940 + -mem[64] + 100
                    if (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 6
                    _3364 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3364] = 30
                    mem[_3364 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor19 / totalSupply > stor6[address(msg.sender)]:
                        _3478 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3478 + 68] = mem[idx + _3364 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3478 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3478 + -mem[64] + 100
                    if stor6[address(msg.sender)] < arg1 * stor19 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 6
                    stor6[address(msg.sender)] += -1 * arg1 * stor19 / totalSupply
                    _3812 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3812] = 30
                    mem[_3812 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor19 / totalSupply <= stor19:
                        if stor19 < arg1 * stor19 / totalSupply:
                            revert with 0, 17
                        stor19 += -1 * arg1 * stor19 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3914 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3914 + 68] = mem[idx + _3812 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3914 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3914 + -mem[64] + 100
                if idx >= stor16.length:
                    revert with 0, 50
                mem[0] = stor16[idx]
                mem[32] = 7
                if stor7[stor16[idx]] <= s:
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 6
                    _2264 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2264] = 30
                    mem[_2264 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor16[idx]] > t:
                        _2284 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2284 + 68] = mem[idx + _2264 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2284 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2284 + -mem[64] + 100
                    if t < stor6[stor16[idx]]:
                        revert with 0, 17
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 7
                    _2373 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2373] = 30
                    mem[_2373 + 32] = 'SafeMath: subtraction overflow'
                    if stor7[stor16[idx]] <= s:
                        if s < stor7[stor16[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor7[stor16[idx]]
                        t = t - stor6[stor16[idx]]
                        continue 
                    _2385 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2385 + 68] = mem[idx + _2373 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2385 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2385 + -mem[64] + 100
                _2265 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2265] = 26
                mem[_2265 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2285 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2285 + 68] = mem[idx + _2265 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2285 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2285 + -mem[64] + 100
                if not arg1:
                    if not arg1 * stor36 / 1000:
                        _2447 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2447] = 30
                        mem[_2447 + 32] = 'SafeMath: subtraction overflow'
                        _2537 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2537] = 30
                        mem[_2537 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 6
                        _2859 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2859] = 30
                        mem[_2859 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor6[address(msg.sender)]:
                            _2945 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2945 + 68] = mem[idx + _2859 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2945 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2945 + -mem[64] + 100
                        if stor6[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 6
                        _3259 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3259] = 30
                        mem[_3259 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor19:
                            if stor19 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3366 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3366 + 68] = mem[idx + _3259 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3366 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3366 + -mem[64] + 100
                    if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                        revert with 0, 17
                    if not arg1 * stor36 / 1000:
                        revert with 0, 18
                    if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2512 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2512] = 30
                    mem[_2512 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor36 / 1000 * stor19 / totalSupply > 0:
                        _2536 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2536 + 68] = mem[idx + _2512 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2536 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2536 + -mem[64] + 100
                    if 0 < arg1 * stor36 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    _2699 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2699] = 30
                    mem[_2699 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * stor36 / 1000 * stor19 / totalSupply:
                        _2769 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2769 + 68] = mem[idx + _2699 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2769 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2769 + -mem[64] + 100
                    if -1 * arg1 * stor36 / 1000 * stor19 / totalSupply < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 6
                    _3153 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3153] = 30
                    mem[_3153 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor6[address(msg.sender)]:
                        _3258 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3258 + 68] = mem[idx + _3153 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3258 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3258 + -mem[64] + 100
                    if stor6[address(msg.sender)] < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 6
                    _3597 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3597] = 30
                    mem[_3597 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor19:
                        if stor19 < 0:
                            revert with 0, 17
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3692 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3692 + 68] = mem[idx + _3597 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3692 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3692 + -mem[64] + 100
                if arg1 and stor19 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor36 / 1000:
                    _2511 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2511] = 30
                    mem[_2511 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor19 / totalSupply:
                        _2535 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2535 + 68] = mem[idx + _2511 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2535 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2535 + -mem[64] + 100
                    if arg1 * stor19 / totalSupply < 0:
                        revert with 0, 17
                    _2697 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2697] = 30
                    mem[_2697 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor19 / totalSupply:
                        _2768 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2768 + 68] = mem[idx + _2697 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2768 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2768 + -mem[64] + 100
                    if arg1 * stor19 / totalSupply < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 6
                    _3152 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3152] = 30
                    mem[_3152 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor19 / totalSupply > stor6[address(msg.sender)]:
                        _3257 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3257 + 68] = mem[idx + _3152 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3257 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3257 + -mem[64] + 100
                    if stor6[address(msg.sender)] < arg1 * stor19 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 6
                    stor6[address(msg.sender)] += -1 * arg1 * stor19 / totalSupply
                    _3595 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3595] = 30
                    mem[_3595 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor19 / totalSupply <= stor19:
                        if stor19 < arg1 * stor19 / totalSupply:
                            revert with 0, 17
                        stor19 += -1 * arg1 * stor19 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3691 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3691 + 68] = mem[idx + _3595 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3691 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3691 + -mem[64] + 100
                if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                    revert with 0, 17
                if not arg1 * stor36 / 1000:
                    revert with 0, 18
                if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2639 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2639] = 30
                mem[_2639 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor36 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                    _2696 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2696 + 68] = mem[idx + _2639 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2696 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2696 + -mem[64] + 100
                if arg1 * stor19 / totalSupply < arg1 * stor36 / 1000 * stor19 / totalSupply:
                    revert with 0, 17
                _2943 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2943] = 30
                mem[_2943 + 32] = 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply):
                    _3044 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3044 + 68] = mem[idx + _2943 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3044 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3044 + -mem[64] + 100
                if (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) < 0:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 6
                _3483 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3483] = 30
                mem[_3483 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor19 / totalSupply > stor6[address(msg.sender)]:
                    _3594 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3594 + 68] = mem[idx + _3483 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3594 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3594 + -mem[64] + 100
                if stor6[address(msg.sender)] < arg1 * stor19 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 6
                stor6[address(msg.sender)] += -1 * arg1 * stor19 / totalSupply
                _3917 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3917] = 30
                mem[_3917 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor19 / totalSupply <= stor19:
                    if stor19 < arg1 * stor19 / totalSupply:
                        revert with 0, 17
                    stor19 += -1 * arg1 * stor19 / totalSupply
                    if totalFees > !arg1:
                        revert with 0, 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _3993 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3993 + 68] = mem[idx + _3917 + 32]
                    idx = idx + 32
                    continue 
                mem[_3993 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3993 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor19 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if arg1 * stor36 / 1000:
                        if arg1 * stor36 / 1000 and t / s > -1 / arg1 * stor36 / 1000:
                            revert with 0, 17
                        if not arg1 * stor36 / 1000:
                            revert with 0, 18
                        if arg1 * stor36 / 1000 * t / s / arg1 * stor36 / 1000 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * stor36 / 1000 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * stor36 / 1000 * t / s:
                            revert with 0, 17
                        if 0 > -1 * arg1 * stor36 / 1000 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * stor36 / 1000 * t / s < 0:
                            revert with 0, 17
                    if 0 > stor6[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor19:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor19 < 0:
                        revert with 0, 17
                else:
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor36 / 1000:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                    else:
                        if arg1 * stor36 / 1000 and t / s > -1 / arg1 * stor36 / 1000:
                            revert with 0, 17
                        if not arg1 * stor36 / 1000:
                            revert with 0, 18
                        if arg1 * stor36 / 1000 * t / s / arg1 * stor36 / 1000 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * stor36 / 1000 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * stor36 / 1000 * t / s:
                            revert with 0, 17
                        if 0 > (arg1 * t / s) - (arg1 * stor36 / 1000 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * stor36 / 1000 * t / s) < 0:
                            revert with 0, 17
                    if arg1 * t / s > stor6[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6[address(msg.sender)] < arg1 * t / s:
                        revert with 0, 17
                    stor6[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor19:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor19 < arg1 * t / s:
                        revert with 0, 17
                    stor19 += -1 * arg1 * t / s
            else:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if arg1 * stor36 / 1000:
                        if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                            revert with 0, 17
                        if not arg1 * stor36 / 1000:
                            revert with 0, 18
                        if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * stor36 / 1000 * stor19 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * stor36 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                        if 0 > -1 * arg1 * stor36 / 1000 * stor19 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * stor36 / 1000 * stor19 / totalSupply < 0:
                            revert with 0, 17
                    if 0 > stor6[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor19:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor19 < 0:
                        revert with 0, 17
                else:
                    if arg1 and stor19 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor36 / 1000:
                        if 0 > arg1 * stor19 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        if 0 > arg1 * stor19 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor19 / totalSupply < 0:
                            revert with 0, 17
                    else:
                        if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                            revert with 0, 17
                        if not arg1 * stor36 / 1000:
                            revert with 0, 18
                        if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * stor36 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor19 / totalSupply < arg1 * stor36 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                        if 0 > (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) < 0:
                            revert with 0, 17
                    if arg1 * stor19 / totalSupply > stor6[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6[address(msg.sender)] < arg1 * stor19 / totalSupply:
                        revert with 0, 17
                    stor6[address(msg.sender)] += -1 * arg1 * stor19 / totalSupply
                    if arg1 * stor19 / totalSupply > stor19:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor19 < arg1 * stor19 / totalSupply:
                        revert with 0, 17
                    stor19 += -1 * arg1 * stor19 / totalSupply
        else:
            if arg1 and stor38 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor38 / arg1 != stor38:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * stor36 / 1000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * stor36 / 1000:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * stor38 / 1000 > arg1 - (arg1 * stor36 / 1000):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * stor36 / 1000) < arg1 * stor38 / 1000:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor19
            while idx < stor16.length:
                mem[0] = stor16[idx]
                mem[32] = 6
                if stor6[stor16[idx]] > t:
                    _2244 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2244] = 26
                    mem[_2244 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2260 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2260 + 68] = mem[idx + _2244 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2260 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2260 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * stor36 / 1000:
                            if not arg1 * stor38 / 1000:
                                _2433 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2433] = 30
                                mem[_2433 + 32] = 'SafeMath: subtraction overflow'
                                _2502 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2502] = 30
                                mem[_2502 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 6
                                _2760 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2760] = 30
                                mem[_2760 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor6[address(msg.sender)]:
                                    _2843 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2843 + 68] = mem[idx + _2760 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2843 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2843 + -mem[64] + 100
                                if stor6[address(msg.sender)] < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 6
                                _3137 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3137] = 30
                                mem[_3137 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor19:
                                    if stor19 < 0:
                                        revert with 0, 17
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _3241 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3241 + 68] = mem[idx + _3137 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3241 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3241 + -mem[64] + 100
                            if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                                revert with 0, 17
                            if not arg1 * stor38 / 1000:
                                revert with 0, 18
                            if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2475 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2475] = 30
                            mem[_2475 + 32] = 'SafeMath: subtraction overflow'
                            _2624 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2624] = 30
                            mem[_2624 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor38 / 1000 * stor19 / totalSupply > 0:
                                _2685 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2685 + 68] = mem[idx + _2624 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2685 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2685 + -mem[64] + 100
                            if 0 < arg1 * stor38 / 1000 * stor19 / totalSupply:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 6
                            _3033 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3033] = 30
                            mem[_3033 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor6[address(msg.sender)]:
                                _3136 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3136 + 68] = mem[idx + _3033 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3136 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3136 + -mem[64] + 100
                            if stor6[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 6
                            _3465 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3465] = 30
                            mem[_3465 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor19:
                                if stor19 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3576 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3576 + 68] = mem[idx + _3465 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3576 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3576 + -mem[64] + 100
                        if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                            revert with 0, 17
                        if not arg1 * stor36 / 1000:
                            revert with 0, 18
                        if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor38 / 1000:
                            _2474 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2474] = 30
                            mem[_2474 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor36 / 1000 * stor19 / totalSupply > 0:
                                _2501 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2501 + 68] = mem[idx + _2474 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2501 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2501 + -mem[64] + 100
                            if 0 < arg1 * stor36 / 1000 * stor19 / totalSupply:
                                revert with 0, 17
                            _2622 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2622] = 30
                            mem[_2622 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * stor36 / 1000 * stor19 / totalSupply:
                                _2684 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2684 + 68] = mem[idx + _2622 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2684 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2684 + -mem[64] + 100
                            if -1 * arg1 * stor36 / 1000 * stor19 / totalSupply < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 6
                            _3032 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3032] = 30
                            mem[_3032 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor6[address(msg.sender)]:
                                _3135 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3135 + 68] = mem[idx + _3032 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3135 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3135 + -mem[64] + 100
                            if stor6[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 6
                            _3463 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3463] = 30
                            mem[_3463 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor19:
                                if stor19 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3575 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3575 + 68] = mem[idx + _3463 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3575 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3575 + -mem[64] + 100
                        if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                            revert with 0, 17
                        if not arg1 * stor38 / 1000:
                            revert with 0, 18
                        if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2574 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2574] = 30
                        mem[_2574 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor36 / 1000 * stor19 / totalSupply > 0:
                            _2621 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2621 + 68] = mem[idx + _2574 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2621 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2621 + -mem[64] + 100
                        if 0 < arg1 * stor36 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                        _2841 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2841] = 30
                        mem[_2841 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor38 / 1000 * stor19 / totalSupply > -1 * arg1 * stor36 / 1000 * stor19 / totalSupply:
                            _2925 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2925 + 68] = mem[idx + _2841 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2925 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2925 + -mem[64] + 100
                        if -1 * arg1 * stor36 / 1000 * stor19 / totalSupply < arg1 * stor38 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 6
                        _3354 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3354] = 30
                        mem[_3354 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor6[address(msg.sender)]:
                            _3462 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3462 + 68] = mem[idx + _3354 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3462 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3462 + -mem[64] + 100
                        if stor6[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 6
                        _3798 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3798] = 30
                        mem[_3798 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor19:
                            if stor19 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3897 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3897 + 68] = mem[idx + _3798 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3897 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3897 + -mem[64] + 100
                    if arg1 and stor19 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor36 / 1000:
                        if not arg1 * stor38 / 1000:
                            _2473 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2473] = 30
                            mem[_2473 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor19 / totalSupply:
                                _2500 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2500 + 68] = mem[idx + _2473 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2500 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2500 + -mem[64] + 100
                            if arg1 * stor19 / totalSupply < 0:
                                revert with 0, 17
                            _2619 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2619] = 30
                            mem[_2619 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor19 / totalSupply:
                                _2683 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2683 + 68] = mem[idx + _2619 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2683 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2683 + -mem[64] + 100
                            if arg1 * stor19 / totalSupply < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 6
                            _3031 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3031] = 30
                            mem[_3031 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor19 / totalSupply > stor6[address(msg.sender)]:
                                _3134 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3134 + 68] = mem[idx + _3031 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3134 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3134 + -mem[64] + 100
                            if stor6[address(msg.sender)] < arg1 * stor19 / totalSupply:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 6
                            stor6[address(msg.sender)] += -1 * arg1 * stor19 / totalSupply
                            _3460 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3460] = 30
                            mem[_3460 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor19 / totalSupply <= stor19:
                                if stor19 < arg1 * stor19 / totalSupply:
                                    revert with 0, 17
                                stor19 += -1 * arg1 * stor19 / totalSupply
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3574 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3574 + 68] = mem[idx + _3460 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3574 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3574 + -mem[64] + 100
                        if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                            revert with 0, 17
                        if not arg1 * stor38 / 1000:
                            revert with 0, 18
                        if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2573 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2573] = 30
                        mem[_2573 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor19 / totalSupply:
                            _2618 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2618 + 68] = mem[idx + _2573 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2618 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2618 + -mem[64] + 100
                        if arg1 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        _2839 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2839] = 30
                        mem[_2839 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor38 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                            _2923 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2923 + 68] = mem[idx + _2839 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2923 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2923 + -mem[64] + 100
                        if arg1 * stor19 / totalSupply < arg1 * stor38 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 6
                        _3353 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3353] = 30
                        mem[_3353 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor19 / totalSupply > stor6[address(msg.sender)]:
                            _3459 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3459 + 68] = mem[idx + _3353 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3459 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3459 + -mem[64] + 100
                        if stor6[address(msg.sender)] < arg1 * stor19 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 6
                        stor6[address(msg.sender)] += -1 * arg1 * stor19 / totalSupply
                        _3796 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3796] = 30
                        mem[_3796 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor19 / totalSupply <= stor19:
                            if stor19 < arg1 * stor19 / totalSupply:
                                revert with 0, 17
                            stor19 += -1 * arg1 * stor19 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3895 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3895 + 68] = mem[idx + _3796 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3895 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3895 + -mem[64] + 100
                    if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                        revert with 0, 17
                    if not arg1 * stor36 / 1000:
                        revert with 0, 18
                    if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor38 / 1000:
                        _2572 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2572] = 30
                        mem[_2572 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor36 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                            _2617 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2617 + 68] = mem[idx + _2572 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2617 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2617 + -mem[64] + 100
                        if arg1 * stor19 / totalSupply < arg1 * stor36 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                        _2837 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2837] = 30
                        mem[_2837 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply):
                            _2922 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2922 + 68] = mem[idx + _2837 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2922 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2922 + -mem[64] + 100
                        if (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 6
                        _3352 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3352] = 30
                        mem[_3352 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor19 / totalSupply > stor6[address(msg.sender)]:
                            _3458 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3458 + 68] = mem[idx + _3352 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3458 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3458 + -mem[64] + 100
                        if stor6[address(msg.sender)] < arg1 * stor19 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 6
                        stor6[address(msg.sender)] += -1 * arg1 * stor19 / totalSupply
                        _3794 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3794] = 30
                        mem[_3794 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor19 / totalSupply <= stor19:
                            if stor19 < arg1 * stor19 / totalSupply:
                                revert with 0, 17
                            stor19 += -1 * arg1 * stor19 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3894 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3894 + 68] = mem[idx + _3794 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3894 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3894 + -mem[64] + 100
                    if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                        revert with 0, 17
                    if not arg1 * stor38 / 1000:
                        revert with 0, 18
                    if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2759 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2759] = 30
                    mem[_2759 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor36 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                        _2836 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2836 + 68] = mem[idx + _2759 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2836 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2836 + -mem[64] + 100
                    if arg1 * stor19 / totalSupply < arg1 * stor36 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    _3132 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3132] = 30
                    mem[_3132 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor38 / 1000 * stor19 / totalSupply > (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply):
                        _3237 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3237 + 68] = mem[idx + _3132 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3237 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3237 + -mem[64] + 100
                    if (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) < arg1 * stor38 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 6
                    _3683 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3683] = 30
                    mem[_3683 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor19 / totalSupply > stor6[address(msg.sender)]:
                        _3793 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3793 + 68] = mem[idx + _3683 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3793 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3793 + -mem[64] + 100
                    if stor6[address(msg.sender)] < arg1 * stor19 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 6
                    stor6[address(msg.sender)] += -1 * arg1 * stor19 / totalSupply
                    _4065 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4065] = 30
                    mem[_4065 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor19 / totalSupply <= stor19:
                        if stor19 < arg1 * stor19 / totalSupply:
                            revert with 0, 17
                        stor19 += -1 * arg1 * stor19 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4147 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4147 + 68] = mem[idx + _4065 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4147 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4147 + -mem[64] + 100
                if idx >= stor16.length:
                    revert with 0, 50
                mem[0] = stor16[idx]
                mem[32] = 7
                if stor7[stor16[idx]] <= s:
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 6
                    _2261 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2261] = 30
                    mem[_2261 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor16[idx]] > t:
                        _2281 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2281 + 68] = mem[idx + _2261 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2281 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2281 + -mem[64] + 100
                    if t < stor6[stor16[idx]]:
                        revert with 0, 17
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 7
                    _2370 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2370] = 30
                    mem[_2370 + 32] = 'SafeMath: subtraction overflow'
                    if stor7[stor16[idx]] <= s:
                        if s < stor7[stor16[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor7[stor16[idx]]
                        t = t - stor6[stor16[idx]]
                        continue 
                    _2382 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2382 + 68] = mem[idx + _2370 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2382 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2382 + -mem[64] + 100
                _2262 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2262] = 26
                mem[_2262 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2282 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2282 + 68] = mem[idx + _2262 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2282 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2282 + -mem[64] + 100
                if not arg1:
                    if not arg1 * stor36 / 1000:
                        if not arg1 * stor38 / 1000:
                            _2443 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2443] = 30
                            mem[_2443 + 32] = 'SafeMath: subtraction overflow'
                            _2534 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2534] = 30
                            mem[_2534 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 6
                            _2845 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2845] = 30
                            mem[_2845 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor6[address(msg.sender)]:
                                _2935 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2935 + 68] = mem[idx + _2845 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2935 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2935 + -mem[64] + 100
                            if stor6[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 6
                            _3247 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3247] = 30
                            mem[_3247 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor19:
                                if stor19 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3359 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3359 + 68] = mem[idx + _3247 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3359 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3359 + -mem[64] + 100
                        if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                            revert with 0, 17
                        if not arg1 * stor38 / 1000:
                            revert with 0, 18
                        if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2506 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2506] = 30
                        mem[_2506 + 32] = 'SafeMath: subtraction overflow'
                        _2693 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2693] = 30
                        mem[_2693 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor38 / 1000 * stor19 / totalSupply > 0:
                            _2764 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2764 + 68] = mem[idx + _2693 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2764 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2764 + -mem[64] + 100
                        if 0 < arg1 * stor38 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 6
                        _3141 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3141] = 30
                        mem[_3141 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor6[address(msg.sender)]:
                            _3246 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3246 + 68] = mem[idx + _3141 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3246 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3246 + -mem[64] + 100
                        if stor6[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 6
                        _3585 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3585] = 30
                        mem[_3585 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor19:
                            if stor19 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3687 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3687 + 68] = mem[idx + _3585 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3687 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3687 + -mem[64] + 100
                    if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                        revert with 0, 17
                    if not arg1 * stor36 / 1000:
                        revert with 0, 18
                    if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor38 / 1000:
                        _2505 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2505] = 30
                        mem[_2505 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor36 / 1000 * stor19 / totalSupply > 0:
                            _2533 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2533 + 68] = mem[idx + _2505 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2533 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2533 + -mem[64] + 100
                        if 0 < arg1 * stor36 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                        _2691 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2691] = 30
                        mem[_2691 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * stor36 / 1000 * stor19 / totalSupply:
                            _2763 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2763 + 68] = mem[idx + _2691 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2763 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2763 + -mem[64] + 100
                        if -1 * arg1 * stor36 / 1000 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 6
                        _3140 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3140] = 30
                        mem[_3140 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor6[address(msg.sender)]:
                            _3245 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3245 + 68] = mem[idx + _3140 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3245 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3245 + -mem[64] + 100
                        if stor6[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 6
                        _3583 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3583] = 30
                        mem[_3583 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor19:
                            if stor19 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3686 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3686 + 68] = mem[idx + _3583 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3686 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3686 + -mem[64] + 100
                    if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                        revert with 0, 17
                    if not arg1 * stor38 / 1000:
                        revert with 0, 18
                    if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2627 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2627] = 30
                    mem[_2627 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor36 / 1000 * stor19 / totalSupply > 0:
                        _2690 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2690 + 68] = mem[idx + _2627 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2690 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2690 + -mem[64] + 100
                    if 0 < arg1 * stor36 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    _2933 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2933] = 30
                    mem[_2933 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor38 / 1000 * stor19 / totalSupply > -1 * arg1 * stor36 / 1000 * stor19 / totalSupply:
                        _3037 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3037 + 68] = mem[idx + _2933 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3037 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3037 + -mem[64] + 100
                    if -1 * arg1 * stor36 / 1000 * stor19 / totalSupply < arg1 * stor38 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 6
                    _3469 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3469] = 30
                    mem[_3469 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor6[address(msg.sender)]:
                        _3582 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3582 + 68] = mem[idx + _3469 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3582 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3582 + -mem[64] + 100
                    if stor6[address(msg.sender)] < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 6
                    _3905 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3905] = 30
                    mem[_3905 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor19:
                        if stor19 < 0:
                            revert with 0, 17
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3990 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3990 + 68] = mem[idx + _3905 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3990 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3990 + -mem[64] + 100
                if arg1 and stor19 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor36 / 1000:
                    if not arg1 * stor38 / 1000:
                        _2504 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2504] = 30
                        mem[_2504 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor19 / totalSupply:
                            _2532 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2532 + 68] = mem[idx + _2504 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2532 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2532 + -mem[64] + 100
                        if arg1 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        _2688 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2688] = 30
                        mem[_2688 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor19 / totalSupply:
                            _2762 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2762 + 68] = mem[idx + _2688 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2762 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2762 + -mem[64] + 100
                        if arg1 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 6
                        _3139 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3139] = 30
                        mem[_3139 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor19 / totalSupply > stor6[address(msg.sender)]:
                            _3244 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3244 + 68] = mem[idx + _3139 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3244 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3244 + -mem[64] + 100
                        if stor6[address(msg.sender)] < arg1 * stor19 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 6
                        stor6[address(msg.sender)] += -1 * arg1 * stor19 / totalSupply
                        _3580 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3580] = 30
                        mem[_3580 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor19 / totalSupply <= stor19:
                            if stor19 < arg1 * stor19 / totalSupply:
                                revert with 0, 17
                            stor19 += -1 * arg1 * stor19 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3685 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3685 + 68] = mem[idx + _3580 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3685 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3685 + -mem[64] + 100
                    if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                        revert with 0, 17
                    if not arg1 * stor38 / 1000:
                        revert with 0, 18
                    if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2626 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2626] = 30
                    mem[_2626 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor19 / totalSupply:
                        _2687 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2687 + 68] = mem[idx + _2626 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2687 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2687 + -mem[64] + 100
                    if arg1 * stor19 / totalSupply < 0:
                        revert with 0, 17
                    _2931 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2931] = 30
                    mem[_2931 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor38 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                        _3035 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3035 + 68] = mem[idx + _2931 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3035 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3035 + -mem[64] + 100
                    if arg1 * stor19 / totalSupply < arg1 * stor38 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 6
                    _3468 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3468] = 30
                    mem[_3468 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor19 / totalSupply > stor6[address(msg.sender)]:
                        _3579 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3579 + 68] = mem[idx + _3468 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3579 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3579 + -mem[64] + 100
                    if stor6[address(msg.sender)] < arg1 * stor19 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 6
                    stor6[address(msg.sender)] += -1 * arg1 * stor19 / totalSupply
                    _3903 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3903] = 30
                    mem[_3903 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor19 / totalSupply <= stor19:
                        if stor19 < arg1 * stor19 / totalSupply:
                            revert with 0, 17
                        stor19 += -1 * arg1 * stor19 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3988 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3988 + 68] = mem[idx + _3903 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3988 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3988 + -mem[64] + 100
                if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                    revert with 0, 17
                if not arg1 * stor36 / 1000:
                    revert with 0, 18
                if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor38 / 1000:
                    _2625 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2625] = 30
                    mem[_2625 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor36 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                        _2686 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2686 + 68] = mem[idx + _2625 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2686 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2686 + -mem[64] + 100
                    if arg1 * stor19 / totalSupply < arg1 * stor36 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    _2929 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2929] = 30
                    mem[_2929 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply):
                        _3034 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3034 + 68] = mem[idx + _2929 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3034 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3034 + -mem[64] + 100
                    if (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 6
                    _3467 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3467] = 30
                    mem[_3467 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor19 / totalSupply > stor6[address(msg.sender)]:
                        _3578 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3578 + 68] = mem[idx + _3467 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3578 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3578 + -mem[64] + 100
                    if stor6[address(msg.sender)] < arg1 * stor19 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 6
                    stor6[address(msg.sender)] += -1 * arg1 * stor19 / totalSupply
                    _3901 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3901] = 30
                    mem[_3901 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor19 / totalSupply <= stor19:
                        if stor19 < arg1 * stor19 / totalSupply:
                            revert with 0, 17
                        stor19 += -1 * arg1 * stor19 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3987 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3987 + 68] = mem[idx + _3901 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3987 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3987 + -mem[64] + 100
                if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                    revert with 0, 17
                if not arg1 * stor38 / 1000:
                    revert with 0, 18
                if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2844 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2844] = 30
                mem[_2844 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor36 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                    _2928 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2928 + 68] = mem[idx + _2844 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2928 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2928 + -mem[64] + 100
                if arg1 * stor19 / totalSupply < arg1 * stor36 / 1000 * stor19 / totalSupply:
                    revert with 0, 17
                _3242 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3242] = 30
                mem[_3242 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor38 / 1000 * stor19 / totalSupply > (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply):
                    _3355 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3355 + 68] = mem[idx + _3242 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3355 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3355 + -mem[64] + 100
                if (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) < arg1 * stor38 / 1000 * stor19 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 6
                _3801 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3801] = 30
                mem[_3801 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor19 / totalSupply > stor6[address(msg.sender)]:
                    _3900 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3900 + 68] = mem[idx + _3801 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3900 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3900 + -mem[64] + 100
                if stor6[address(msg.sender)] < arg1 * stor19 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 6
                stor6[address(msg.sender)] += -1 * arg1 * stor19 / totalSupply
                _4151 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4151] = 30
                mem[_4151 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor19 / totalSupply <= stor19:
                    if stor19 < arg1 * stor19 / totalSupply:
                        revert with 0, 17
                    stor19 += -1 * arg1 * stor19 / totalSupply
                    if totalFees > !arg1:
                        revert with 0, 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _4203 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4203 + 68] = mem[idx + _4151 + 32]
                    idx = idx + 32
                    continue 
                mem[_4203 + 98] = 0
                revert with memory
                  from mem[64]
                   len _4203 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor19 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * stor36 / 1000:
                        if arg1 * stor38 / 1000:
                            if arg1 * stor38 / 1000 and t / s > -1 / arg1 * stor38 / 1000:
                                revert with 0, 17
                            if not arg1 * stor38 / 1000:
                                revert with 0, 18
                            if arg1 * stor38 / 1000 * t / s / arg1 * stor38 / 1000 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * stor38 / 1000 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * stor38 / 1000 * t / s:
                                revert with 0, 17
                    else:
                        if arg1 * stor36 / 1000 and t / s > -1 / arg1 * stor36 / 1000:
                            revert with 0, 17
                        if not arg1 * stor36 / 1000:
                            revert with 0, 18
                        if arg1 * stor36 / 1000 * t / s / arg1 * stor36 / 1000 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor38 / 1000:
                            if arg1 * stor36 / 1000 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * stor36 / 1000 * t / s:
                                revert with 0, 17
                            if 0 > -1 * arg1 * stor36 / 1000 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * stor36 / 1000 * t / s < 0:
                                revert with 0, 17
                        else:
                            if arg1 * stor38 / 1000 and t / s > -1 / arg1 * stor38 / 1000:
                                revert with 0, 17
                            if not arg1 * stor38 / 1000:
                                revert with 0, 18
                            if arg1 * stor38 / 1000 * t / s / arg1 * stor38 / 1000 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * stor36 / 1000 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * stor36 / 1000 * t / s:
                                revert with 0, 17
                            if arg1 * stor38 / 1000 * t / s > -1 * arg1 * stor36 / 1000 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * stor36 / 1000 * t / s < arg1 * stor38 / 1000 * t / s:
                                revert with 0, 17
                    if 0 > stor6[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor19:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor19 < 0:
                        revert with 0, 17
                else:
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor36 / 1000:
                        if not arg1 * stor38 / 1000:
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                        else:
                            if arg1 * stor38 / 1000 and t / s > -1 / arg1 * stor38 / 1000:
                                revert with 0, 17
                            if not arg1 * stor38 / 1000:
                                revert with 0, 18
                            if arg1 * stor38 / 1000 * t / s / arg1 * stor38 / 1000 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            if arg1 * stor38 / 1000 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * stor38 / 1000 * t / s:
                                revert with 0, 17
                    else:
                        if arg1 * stor36 / 1000 and t / s > -1 / arg1 * stor36 / 1000:
                            revert with 0, 17
                        if not arg1 * stor36 / 1000:
                            revert with 0, 18
                        if arg1 * stor36 / 1000 * t / s / arg1 * stor36 / 1000 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor38 / 1000:
                            if arg1 * stor36 / 1000 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * stor36 / 1000 * t / s:
                                revert with 0, 17
                            if 0 > (arg1 * t / s) - (arg1 * stor36 / 1000 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * t / s) - (arg1 * stor36 / 1000 * t / s) < 0:
                                revert with 0, 17
                        else:
                            if arg1 * stor38 / 1000 and t / s > -1 / arg1 * stor38 / 1000:
                                revert with 0, 17
                            if not arg1 * stor38 / 1000:
                                revert with 0, 18
                            if arg1 * stor38 / 1000 * t / s / arg1 * stor38 / 1000 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * stor36 / 1000 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * stor36 / 1000 * t / s:
                                revert with 0, 17
                            if arg1 * stor38 / 1000 * t / s > (arg1 * t / s) - (arg1 * stor36 / 1000 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * t / s) - (arg1 * stor36 / 1000 * t / s) < arg1 * stor38 / 1000 * t / s:
                                revert with 0, 17
                    if arg1 * t / s > stor6[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6[address(msg.sender)] < arg1 * t / s:
                        revert with 0, 17
                    stor6[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor19:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor19 < arg1 * t / s:
                        revert with 0, 17
                    stor19 += -1 * arg1 * t / s
            else:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * stor36 / 1000:
                        if arg1 * stor38 / 1000:
                            if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                                revert with 0, 17
                            if not arg1 * stor38 / 1000:
                                revert with 0, 18
                            if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * stor38 / 1000 * stor19 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * stor38 / 1000 * stor19 / totalSupply:
                                revert with 0, 17
                    else:
                        if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                            revert with 0, 17
                        if not arg1 * stor36 / 1000:
                            revert with 0, 18
                        if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor38 / 1000:
                            if arg1 * stor36 / 1000 * stor19 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * stor36 / 1000 * stor19 / totalSupply:
                                revert with 0, 17
                            if 0 > -1 * arg1 * stor36 / 1000 * stor19 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * stor36 / 1000 * stor19 / totalSupply < 0:
                                revert with 0, 17
                        else:
                            if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                                revert with 0, 17
                            if not arg1 * stor38 / 1000:
                                revert with 0, 18
                            if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * stor36 / 1000 * stor19 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * stor36 / 1000 * stor19 / totalSupply:
                                revert with 0, 17
                            if arg1 * stor38 / 1000 * stor19 / totalSupply > -1 * arg1 * stor36 / 1000 * stor19 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * stor36 / 1000 * stor19 / totalSupply < arg1 * stor38 / 1000 * stor19 / totalSupply:
                                revert with 0, 17
                    if 0 > stor6[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor19:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor19 < 0:
                        revert with 0, 17
                else:
                    if arg1 and stor19 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor36 / 1000:
                        if not arg1 * stor38 / 1000:
                            if 0 > arg1 * stor19 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor19 / totalSupply < 0:
                                revert with 0, 17
                            if 0 > arg1 * stor19 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor19 / totalSupply < 0:
                                revert with 0, 17
                        else:
                            if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                                revert with 0, 17
                            if not arg1 * stor38 / 1000:
                                revert with 0, 18
                            if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg1 * stor19 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor19 / totalSupply < 0:
                                revert with 0, 17
                            if arg1 * stor38 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor19 / totalSupply < arg1 * stor38 / 1000 * stor19 / totalSupply:
                                revert with 0, 17
                    else:
                        if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                            revert with 0, 17
                        if not arg1 * stor36 / 1000:
                            revert with 0, 18
                        if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor38 / 1000:
                            if arg1 * stor36 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor19 / totalSupply < arg1 * stor36 / 1000 * stor19 / totalSupply:
                                revert with 0, 17
                            if 0 > (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) < 0:
                                revert with 0, 17
                        else:
                            if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                                revert with 0, 17
                            if not arg1 * stor38 / 1000:
                                revert with 0, 18
                            if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * stor36 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor19 / totalSupply < arg1 * stor36 / 1000 * stor19 / totalSupply:
                                revert with 0, 17
                            if arg1 * stor38 / 1000 * stor19 / totalSupply > (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) < arg1 * stor38 / 1000 * stor19 / totalSupply:
                                revert with 0, 17
                    if arg1 * stor19 / totalSupply > stor6[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6[address(msg.sender)] < arg1 * stor19 / totalSupply:
                        revert with 0, 17
                    stor6[address(msg.sender)] += -1 * arg1 * stor19 / totalSupply
                    if arg1 * stor19 / totalSupply > stor19:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor19 < arg1 * stor19 / totalSupply:
                        revert with 0, 17
                    stor19 += -1 * arg1 * stor19 / totalSupply
    if totalFees > !arg1:
        revert with 0, 17
    if totalFees + arg1 < totalFees:
        revert with 0, 'SafeMath: addition overflow'
    totalFees += arg1
}

function reflectionFromToken(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 > totalSupply:
        revert with 0, 'Amount must be less than supply'
    if arg2:
        if not arg1:
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            if not arg1:
                mem[160] = 26
                mem[192] = 'SafeMath: division by zero'
                mem[224] = 30
                mem[256] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < 0:
                    revert with 0, 17
                mem[64] = 352
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < 0:
                    revert with 0, 17
                idx = 0
                s = totalSupply
                t = stor19
                while idx < stor16.length:
                    mem[0] = stor16[idx]
                    mem[32] = 6
                    if stor6[stor16[idx]] > t:
                        _2470 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2470] = 26
                        mem[_2470 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _2508 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2508 + 68] = mem[idx + _2470 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2508 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2508 + -mem[64] + 100
                        if not arg1:
                            return 0
                        if arg1 and stor19 / totalSupply > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2938 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2938] = 30
                        mem[_2938 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor19 / totalSupply:
                            _2996 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2996 + 68] = mem[idx + _2938 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2996 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2996 + -mem[64] + 100
                        if arg1 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        _3243 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3243] = 30
                        mem[_3243 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor19 / totalSupply:
                            if arg1 * stor19 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor19 / totalSupply)
                        _3366 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3366 + 68] = mem[idx + _3243 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3366 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3366 + -mem[64] + 100
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 7
                    if stor7[stor16[idx]] <= s:
                        if idx >= stor16.length:
                            revert with 0, 50
                        mem[0] = stor16[idx]
                        mem[32] = 6
                        _2509 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2509] = 30
                        mem[_2509 + 32] = 'SafeMath: subtraction overflow'
                        if stor6[stor16[idx]] > t:
                            _2549 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2549 + 68] = mem[idx + _2509 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2549 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2549 + -mem[64] + 100
                        if t < stor6[stor16[idx]]:
                            revert with 0, 17
                        if idx >= stor16.length:
                            revert with 0, 50
                        mem[0] = stor16[idx]
                        mem[32] = 7
                        _2726 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2726] = 30
                        mem[_2726 + 32] = 'SafeMath: subtraction overflow'
                        if stor7[stor16[idx]] <= s:
                            if s < stor7[stor16[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor7[stor16[idx]]
                            t = t - stor6[stor16[idx]]
                            continue 
                        _2750 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2750 + 68] = mem[idx + _2726 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2750 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2750 + -mem[64] + 100
                    _2510 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2510] = 26
                    mem[_2510 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2550 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2550 + 68] = mem[idx + _2510 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2550 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2550 + -mem[64] + 100
                    if not arg1:
                        return 0
                    if arg1 and stor19 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2998 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2998] = 30
                    mem[_2998 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor19 / totalSupply:
                        _3050 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3050 + 68] = mem[idx + _2998 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3050 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3050 + -mem[64] + 100
                    if arg1 * stor19 / totalSupply < 0:
                        revert with 0, 17
                    _3367 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3367] = 30
                    mem[_3367 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor19 / totalSupply:
                        if arg1 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor19 / totalSupply)
                    _3496 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3496 + 68] = mem[idx + _3367 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3496 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3496 + -mem[64] + 100
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if t >= stor19 / totalSupply:
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg1:
                        return 0
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    return (arg1 * t / s)
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    return 0
                if arg1 and stor19 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor19 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor19 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor19 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor19 / totalSupply < 0:
                    revert with 0, 17
                return (arg1 * stor19 / totalSupply)
            if arg1 and stor38 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor38 / arg1 != stor38:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * stor38 / 1000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * stor38 / 1000:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor19
            while idx < stor16.length:
                mem[0] = stor16[idx]
                mem[32] = 6
                if stor6[stor16[idx]] > t:
                    _2469 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2469] = 26
                    mem[_2469 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2505 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2505 + 68] = mem[idx + _2469 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2505 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2505 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * stor38 / 1000:
                            return 0
                        if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                            revert with 0, 17
                        if not arg1 * stor38 / 1000:
                            revert with 0, 18
                        if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2934 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2934] = 30
                        mem[_2934 + 32] = 'SafeMath: subtraction overflow'
                        _3237 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3237] = 30
                        mem[_3237 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor38 / 1000 * stor19 / totalSupply <= 0:
                            if 0 < arg1 * stor38 / 1000 * stor19 / totalSupply:
                                revert with 0, 17
                            return (-1 * arg1 * stor38 / 1000 * stor19 / totalSupply)
                        _3361 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3361 + 68] = mem[idx + _3237 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3361 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3361 + -mem[64] + 100
                    if arg1 and stor19 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor38 / 1000:
                        _2933 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2933] = 30
                        mem[_2933 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor19 / totalSupply:
                            _2992 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2992 + 68] = mem[idx + _2933 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2992 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2992 + -mem[64] + 100
                        if arg1 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        _3235 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3235] = 30
                        mem[_3235 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor19 / totalSupply:
                            if arg1 * stor19 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor19 / totalSupply)
                        _3360 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3360 + 68] = mem[idx + _3235 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3360 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3360 + -mem[64] + 100
                    if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                        revert with 0, 17
                    if not arg1 * stor38 / 1000:
                        revert with 0, 18
                    if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3131 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3131] = 30
                    mem[_3131 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor19 / totalSupply:
                        _3234 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3234 + 68] = mem[idx + _3131 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3234 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3234 + -mem[64] + 100
                    if arg1 * stor19 / totalSupply < 0:
                        revert with 0, 17
                    _3649 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3649] = 30
                    mem[_3649 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor38 / 1000 * stor19 / totalSupply <= arg1 * stor19 / totalSupply:
                        if arg1 * stor19 / totalSupply < arg1 * stor38 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                        return ((arg1 * stor19 / totalSupply) - (arg1 * stor38 / 1000 * stor19 / totalSupply))
                    _3819 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3819 + 68] = mem[idx + _3649 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3819 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3819 + -mem[64] + 100
                if idx >= stor16.length:
                    revert with 0, 50
                mem[0] = stor16[idx]
                mem[32] = 7
                if stor7[stor16[idx]] <= s:
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 6
                    _2506 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2506] = 30
                    mem[_2506 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor16[idx]] > t:
                        _2546 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2546 + 68] = mem[idx + _2506 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2546 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2546 + -mem[64] + 100
                    if t < stor6[stor16[idx]]:
                        revert with 0, 17
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 7
                    _2723 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2723] = 30
                    mem[_2723 + 32] = 'SafeMath: subtraction overflow'
                    if stor7[stor16[idx]] <= s:
                        if s < stor7[stor16[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor7[stor16[idx]]
                        t = t - stor6[stor16[idx]]
                        continue 
                    _2747 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2747 + 68] = mem[idx + _2723 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2747 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2747 + -mem[64] + 100
                _2507 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2507] = 26
                mem[_2507 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2547 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2547 + 68] = mem[idx + _2507 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2547 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2547 + -mem[64] + 100
                if not arg1:
                    if not arg1 * stor38 / 1000:
                        return 0
                    if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                        revert with 0, 17
                    if not arg1 * stor38 / 1000:
                        revert with 0, 18
                    if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2995 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2995] = 30
                    mem[_2995 + 32] = 'SafeMath: subtraction overflow'
                    _3365 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3365] = 30
                    mem[_3365 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor38 / 1000 * stor19 / totalSupply <= 0:
                        if 0 < arg1 * stor38 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                        return (-1 * arg1 * stor38 / 1000 * stor19 / totalSupply)
                    _3495 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3495 + 68] = mem[idx + _3365 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3495 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3495 + -mem[64] + 100
                if arg1 and stor19 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor38 / 1000:
                    _2994 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2994] = 30
                    mem[_2994 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor19 / totalSupply:
                        _3048 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3048 + 68] = mem[idx + _2994 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3048 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3048 + -mem[64] + 100
                    if arg1 * stor19 / totalSupply < 0:
                        revert with 0, 17
                    _3363 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3363] = 30
                    mem[_3363 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor19 / totalSupply:
                        if arg1 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor19 / totalSupply)
                    _3494 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3494 + 68] = mem[idx + _3363 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3494 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3494 + -mem[64] + 100
                if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                    revert with 0, 17
                if not arg1 * stor38 / 1000:
                    revert with 0, 18
                if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3238 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3238] = 30
                mem[_3238 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor19 / totalSupply:
                    _3362 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3362 + 68] = mem[idx + _3238 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3362 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3362 + -mem[64] + 100
                if arg1 * stor19 / totalSupply < 0:
                    revert with 0, 17
                _3822 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3822] = 30
                mem[_3822 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor38 / 1000 * stor19 / totalSupply <= arg1 * stor19 / totalSupply:
                    if arg1 * stor19 / totalSupply < arg1 * stor38 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    return ((arg1 * stor19 / totalSupply) - (arg1 * stor38 / 1000 * stor19 / totalSupply))
                _3972 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3972 + 68] = mem[idx + _3822 + 32]
                    idx = idx + 32
                    continue 
                mem[_3972 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3972 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor19 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * stor38 / 1000:
                        return 0
                    if arg1 * stor38 / 1000 and t / s > -1 / arg1 * stor38 / 1000:
                        revert with 0, 17
                    if not arg1 * stor38 / 1000:
                        revert with 0, 18
                    if arg1 * stor38 / 1000 * t / s / arg1 * stor38 / 1000 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * stor38 / 1000 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * stor38 / 1000 * t / s:
                        revert with 0, 17
                    return (-1 * arg1 * stor38 / 1000 * t / s)
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor38 / 1000:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    return (arg1 * t / s)
                if arg1 * stor38 / 1000 and t / s > -1 / arg1 * stor38 / 1000:
                    revert with 0, 17
                if not arg1 * stor38 / 1000:
                    revert with 0, 18
                if arg1 * stor38 / 1000 * t / s / arg1 * stor38 / 1000 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                if arg1 * stor38 / 1000 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * stor38 / 1000 * t / s:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * stor38 / 1000 * t / s))
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * stor38 / 1000:
                    return 0
                if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                    revert with 0, 17
                if not arg1 * stor38 / 1000:
                    revert with 0, 18
                if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * stor38 / 1000 * stor19 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * stor38 / 1000 * stor19 / totalSupply:
                    revert with 0, 17
                return (-1 * arg1 * stor38 / 1000 * stor19 / totalSupply)
            if arg1 and stor19 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * stor38 / 1000:
                if 0 > arg1 * stor19 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor19 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor19 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor19 / totalSupply < 0:
                    revert with 0, 17
                return (arg1 * stor19 / totalSupply)
            if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                revert with 0, 17
            if not arg1 * stor38 / 1000:
                revert with 0, 18
            if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor19 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor19 / totalSupply < 0:
                revert with 0, 17
            if arg1 * stor38 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor19 / totalSupply < arg1 * stor38 / 1000 * stor19 / totalSupply:
                revert with 0, 17
            return ((arg1 * stor19 / totalSupply) - (arg1 * stor38 / 1000 * stor19 / totalSupply))
        if arg1 and stor36 > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * stor36 / arg1 != stor36:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * stor36 / 1000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * stor36 / 1000:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * stor36 / 1000):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * stor36 / 1000) < 0:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor19
            while idx < stor16.length:
                mem[0] = stor16[idx]
                mem[32] = 6
                if stor6[stor16[idx]] > t:
                    _2468 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2468] = 26
                    mem[_2468 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2502 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2502 + 68] = mem[idx + _2468 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2502 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2502 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * stor36 / 1000:
                            return 0
                        if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                            revert with 0, 17
                        if not arg1 * stor36 / 1000:
                            revert with 0, 18
                        if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2930 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2930] = 30
                        mem[_2930 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor36 / 1000 * stor19 / totalSupply > 0:
                            _2987 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2987 + 68] = mem[idx + _2930 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2987 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2987 + -mem[64] + 100
                        if 0 < arg1 * stor36 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                        _3227 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3227] = 30
                        mem[_3227 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * stor36 / 1000 * stor19 / totalSupply:
                            if -1 * arg1 * stor36 / 1000 * stor19 / totalSupply < 0:
                                revert with 0, 17
                            return (-1 * arg1 * stor36 / 1000 * stor19 / totalSupply)
                        _3352 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3352 + 68] = mem[idx + _3227 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3352 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3352 + -mem[64] + 100
                    if arg1 and stor19 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor36 / 1000:
                        _2929 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2929] = 30
                        mem[_2929 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor19 / totalSupply:
                            _2986 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2986 + 68] = mem[idx + _2929 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2986 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2986 + -mem[64] + 100
                        if arg1 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        _3225 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3225] = 30
                        mem[_3225 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor19 / totalSupply:
                            if arg1 * stor19 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor19 / totalSupply)
                        _3351 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3351 + 68] = mem[idx + _3225 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3351 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3351 + -mem[64] + 100
                    if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                        revert with 0, 17
                    if not arg1 * stor36 / 1000:
                        revert with 0, 18
                    if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3126 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3126] = 30
                    mem[_3126 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor36 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                        _3224 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3224 + 68] = mem[idx + _3126 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3224 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3224 + -mem[64] + 100
                    if arg1 * stor19 / totalSupply < arg1 * stor36 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    _3638 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3638] = 30
                    mem[_3638 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply):
                        if (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) < 0:
                            revert with 0, 17
                        return ((arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply))
                    _3809 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3809 + 68] = mem[idx + _3638 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3809 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3809 + -mem[64] + 100
                if idx >= stor16.length:
                    revert with 0, 50
                mem[0] = stor16[idx]
                mem[32] = 7
                if stor7[stor16[idx]] <= s:
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 6
                    _2503 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2503] = 30
                    mem[_2503 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor16[idx]] > t:
                        _2543 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2543 + 68] = mem[idx + _2503 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2543 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2543 + -mem[64] + 100
                    if t < stor6[stor16[idx]]:
                        revert with 0, 17
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 7
                    _2720 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2720] = 30
                    mem[_2720 + 32] = 'SafeMath: subtraction overflow'
                    if stor7[stor16[idx]] <= s:
                        if s < stor7[stor16[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor7[stor16[idx]]
                        t = t - stor6[stor16[idx]]
                        continue 
                    _2744 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2744 + 68] = mem[idx + _2720 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2744 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2744 + -mem[64] + 100
                _2504 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2504] = 26
                mem[_2504 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2544 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2544 + 68] = mem[idx + _2504 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2544 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2544 + -mem[64] + 100
                if not arg1:
                    if not arg1 * stor36 / 1000:
                        return 0
                    if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                        revert with 0, 17
                    if not arg1 * stor36 / 1000:
                        revert with 0, 18
                    if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2991 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2991] = 30
                    mem[_2991 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor36 / 1000 * stor19 / totalSupply > 0:
                        _3043 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3043 + 68] = mem[idx + _2991 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3043 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3043 + -mem[64] + 100
                    if 0 < arg1 * stor36 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    _3356 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3356] = 30
                    mem[_3356 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * stor36 / 1000 * stor19 / totalSupply:
                        if -1 * arg1 * stor36 / 1000 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        return (-1 * arg1 * stor36 / 1000 * stor19 / totalSupply)
                    _3491 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3491 + 68] = mem[idx + _3356 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3491 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3491 + -mem[64] + 100
                if arg1 and stor19 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor36 / 1000:
                    _2990 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2990] = 30
                    mem[_2990 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor19 / totalSupply:
                        _3042 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3042 + 68] = mem[idx + _2990 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3042 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3042 + -mem[64] + 100
                    if arg1 * stor19 / totalSupply < 0:
                        revert with 0, 17
                    _3354 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3354] = 30
                    mem[_3354 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor19 / totalSupply:
                        if arg1 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor19 / totalSupply)
                    _3490 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3490 + 68] = mem[idx + _3354 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3490 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3490 + -mem[64] + 100
                if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                    revert with 0, 17
                if not arg1 * stor36 / 1000:
                    revert with 0, 18
                if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3229 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3229] = 30
                mem[_3229 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor36 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                    _3353 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3353 + 68] = mem[idx + _3229 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3353 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3353 + -mem[64] + 100
                if arg1 * stor19 / totalSupply < arg1 * stor36 / 1000 * stor19 / totalSupply:
                    revert with 0, 17
                _3812 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3812] = 30
                mem[_3812 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply):
                    if (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) < 0:
                        revert with 0, 17
                    return ((arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply))
                _3969 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3969 + 68] = mem[idx + _3812 + 32]
                    idx = idx + 32
                    continue 
                mem[_3969 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3969 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor19 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * stor36 / 1000:
                        return 0
                    if arg1 * stor36 / 1000 and t / s > -1 / arg1 * stor36 / 1000:
                        revert with 0, 17
                    if not arg1 * stor36 / 1000:
                        revert with 0, 18
                    if arg1 * stor36 / 1000 * t / s / arg1 * stor36 / 1000 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * stor36 / 1000 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * stor36 / 1000 * t / s:
                        revert with 0, 17
                    if 0 > -1 * arg1 * stor36 / 1000 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * stor36 / 1000 * t / s < 0:
                        revert with 0, 17
                    return (-1 * arg1 * stor36 / 1000 * t / s)
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor36 / 1000:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    return (arg1 * t / s)
                if arg1 * stor36 / 1000 and t / s > -1 / arg1 * stor36 / 1000:
                    revert with 0, 17
                if not arg1 * stor36 / 1000:
                    revert with 0, 18
                if arg1 * stor36 / 1000 * t / s / arg1 * stor36 / 1000 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * stor36 / 1000 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * stor36 / 1000 * t / s:
                    revert with 0, 17
                if 0 > (arg1 * t / s) - (arg1 * stor36 / 1000 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * stor36 / 1000 * t / s) < 0:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * stor36 / 1000 * t / s))
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * stor36 / 1000:
                    return 0
                if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                    revert with 0, 17
                if not arg1 * stor36 / 1000:
                    revert with 0, 18
                if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * stor36 / 1000 * stor19 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * stor36 / 1000 * stor19 / totalSupply:
                    revert with 0, 17
                if 0 > -1 * arg1 * stor36 / 1000 * stor19 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * stor36 / 1000 * stor19 / totalSupply < 0:
                    revert with 0, 17
                return (-1 * arg1 * stor36 / 1000 * stor19 / totalSupply)
            if arg1 and stor19 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * stor36 / 1000:
                if 0 > arg1 * stor19 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor19 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor19 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor19 / totalSupply < 0:
                    revert with 0, 17
                return (arg1 * stor19 / totalSupply)
            if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                revert with 0, 17
            if not arg1 * stor36 / 1000:
                revert with 0, 18
            if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * stor36 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor19 / totalSupply < arg1 * stor36 / 1000 * stor19 / totalSupply:
                revert with 0, 17
            if 0 > (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) < 0:
                revert with 0, 17
            return ((arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply))
        if arg1 and stor38 > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * stor38 / arg1 != stor38:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        mem[224] = 30
        mem[256] = 'SafeMath: subtraction overflow'
        if arg1 * stor36 / 1000 > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 < arg1 * stor36 / 1000:
            revert with 0, 17
        mem[64] = 352
        mem[288] = 30
        mem[320] = 'SafeMath: subtraction overflow'
        if arg1 * stor38 / 1000 > arg1 - (arg1 * stor36 / 1000):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 - (arg1 * stor36 / 1000) < arg1 * stor38 / 1000:
            revert with 0, 17
        idx = 0
        s = totalSupply
        t = stor19
        while idx < stor16.length:
            mem[0] = stor16[idx]
            mem[32] = 6
            if stor6[stor16[idx]] > t:
                _2467 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2467] = 26
                mem[_2467 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2499 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2499 + 68] = mem[idx + _2467 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2499 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2499 + -mem[64] + 100
                if not arg1:
                    if not arg1 * stor36 / 1000:
                        if not arg1 * stor38 / 1000:
                            return 0
                        if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                            revert with 0, 17
                        if not arg1 * stor38 / 1000:
                            revert with 0, 18
                        if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2922 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2922] = 30
                        mem[_2922 + 32] = 'SafeMath: subtraction overflow'
                        _3214 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3214] = 30
                        mem[_3214 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor38 / 1000 * stor19 / totalSupply <= 0:
                            if 0 < arg1 * stor38 / 1000 * stor19 / totalSupply:
                                revert with 0, 17
                            return (-1 * arg1 * stor38 / 1000 * stor19 / totalSupply)
                        _3342 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3342 + 68] = mem[idx + _3214 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3342 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3342 + -mem[64] + 100
                    if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                        revert with 0, 17
                    if not arg1 * stor36 / 1000:
                        revert with 0, 18
                    if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor38 / 1000:
                        _2921 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2921] = 30
                        mem[_2921 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor36 / 1000 * stor19 / totalSupply > 0:
                            _2980 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2980 + 68] = mem[idx + _2921 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2980 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2980 + -mem[64] + 100
                        if 0 < arg1 * stor36 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                        _3212 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3212] = 30
                        mem[_3212 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * stor36 / 1000 * stor19 / totalSupply:
                            if -1 * arg1 * stor36 / 1000 * stor19 / totalSupply < 0:
                                revert with 0, 17
                            return (-1 * arg1 * stor36 / 1000 * stor19 / totalSupply)
                        _3341 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3341 + 68] = mem[idx + _3212 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3341 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3341 + -mem[64] + 100
                    if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                        revert with 0, 17
                    if not arg1 * stor38 / 1000:
                        revert with 0, 18
                    if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3117 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3117] = 30
                    mem[_3117 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor36 / 1000 * stor19 / totalSupply > 0:
                        _3211 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3211 + 68] = mem[idx + _3117 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3211 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3211 + -mem[64] + 100
                    if 0 < arg1 * stor36 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    _3624 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3624] = 30
                    mem[_3624 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor38 / 1000 * stor19 / totalSupply <= -1 * arg1 * stor36 / 1000 * stor19 / totalSupply:
                        if -1 * arg1 * stor36 / 1000 * stor19 / totalSupply < arg1 * stor38 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                        return ((-1 * arg1 * stor36 / 1000 * stor19 / totalSupply) - (arg1 * stor38 / 1000 * stor19 / totalSupply))
                    _3794 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3794 + 68] = mem[idx + _3624 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3794 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3794 + -mem[64] + 100
                if arg1 and stor19 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor36 / 1000:
                    if not arg1 * stor38 / 1000:
                        _2920 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2920] = 30
                        mem[_2920 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor19 / totalSupply:
                            _2979 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2979 + 68] = mem[idx + _2920 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2979 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2979 + -mem[64] + 100
                        if arg1 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        _3209 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3209] = 30
                        mem[_3209 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor19 / totalSupply:
                            if arg1 * stor19 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor19 / totalSupply)
                        _3340 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3340 + 68] = mem[idx + _3209 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3340 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3340 + -mem[64] + 100
                    if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                        revert with 0, 17
                    if not arg1 * stor38 / 1000:
                        revert with 0, 18
                    if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3116 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3116] = 30
                    mem[_3116 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor19 / totalSupply:
                        _3208 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3208 + 68] = mem[idx + _3116 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3208 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3208 + -mem[64] + 100
                    if arg1 * stor19 / totalSupply < 0:
                        revert with 0, 17
                    _3622 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3622] = 30
                    mem[_3622 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor38 / 1000 * stor19 / totalSupply <= arg1 * stor19 / totalSupply:
                        if arg1 * stor19 / totalSupply < arg1 * stor38 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                        return ((arg1 * stor19 / totalSupply) - (arg1 * stor38 / 1000 * stor19 / totalSupply))
                    _3792 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3792 + 68] = mem[idx + _3622 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3792 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3792 + -mem[64] + 100
                if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                    revert with 0, 17
                if not arg1 * stor36 / 1000:
                    revert with 0, 18
                if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor38 / 1000:
                    _3115 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3115] = 30
                    mem[_3115 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor36 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                        _3207 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3207 + 68] = mem[idx + _3115 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3207 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3207 + -mem[64] + 100
                    if arg1 * stor19 / totalSupply < arg1 * stor36 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    _3620 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3620] = 30
                    mem[_3620 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply):
                        if (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) < 0:
                            revert with 0, 17
                        return ((arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply))
                    _3791 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3791 + 68] = mem[idx + _3620 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3791 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3791 + -mem[64] + 100
                if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                    revert with 0, 17
                if not arg1 * stor38 / 1000:
                    revert with 0, 18
                if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3483 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3483] = 30
                mem[_3483 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor36 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                    _3619 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3619 + 68] = mem[idx + _3483 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3619 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3619 + -mem[64] + 100
                if arg1 * stor19 / totalSupply < arg1 * stor36 / 1000 * stor19 / totalSupply:
                    revert with 0, 17
                _4115 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4115] = 30
                mem[_4115 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor38 / 1000 * stor19 / totalSupply <= (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply):
                    if (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) < arg1 * stor38 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    return ((arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) - (arg1 * stor38 / 1000 * stor19 / totalSupply))
                _4265 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4265 + 68] = mem[idx + _4115 + 32]
                    idx = idx + 32
                    continue 
                mem[_4265 + 98] = 0
                revert with memory
                  from mem[64]
                   len _4265 + -mem[64] + 100
            if idx >= stor16.length:
                revert with 0, 50
            mem[0] = stor16[idx]
            mem[32] = 7
            if stor7[stor16[idx]] <= s:
                if idx >= stor16.length:
                    revert with 0, 50
                mem[0] = stor16[idx]
                mem[32] = 6
                _2500 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2500] = 30
                mem[_2500 + 32] = 'SafeMath: subtraction overflow'
                if stor6[stor16[idx]] > t:
                    _2540 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2540 + 68] = mem[idx + _2500 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2540 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2540 + -mem[64] + 100
                if t < stor6[stor16[idx]]:
                    revert with 0, 17
                if idx >= stor16.length:
                    revert with 0, 50
                mem[0] = stor16[idx]
                mem[32] = 7
                _2717 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2717] = 30
                mem[_2717 + 32] = 'SafeMath: subtraction overflow'
                if stor7[stor16[idx]] <= s:
                    if s < stor7[stor16[idx]]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - stor7[stor16[idx]]
                    t = t - stor6[stor16[idx]]
                    continue 
                _2741 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2741 + 68] = mem[idx + _2717 + 32]
                    idx = idx + 32
                    continue 
                mem[_2741 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2741 + -mem[64] + 100
            _2501 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2501] = 26
            mem[_2501 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _2541 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2541 + 68] = mem[idx + _2501 + 32]
                    idx = idx + 32
                    continue 
                mem[_2541 + 94] = 0
                revert with memory
                  from mem[64]
                   len _2541 + -mem[64] + 100
            if not arg1:
                if not arg1 * stor36 / 1000:
                    if not arg1 * stor38 / 1000:
                        return 0
                    if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                        revert with 0, 17
                    if not arg1 * stor38 / 1000:
                        revert with 0, 18
                    if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2985 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2985] = 30
                    mem[_2985 + 32] = 'SafeMath: subtraction overflow'
                    _3350 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3350] = 30
                    mem[_3350 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor38 / 1000 * stor19 / totalSupply <= 0:
                        if 0 < arg1 * stor38 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                        return (-1 * arg1 * stor38 / 1000 * stor19 / totalSupply)
                    _3487 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3487 + 68] = mem[idx + _3350 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3487 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3487 + -mem[64] + 100
                if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                    revert with 0, 17
                if not arg1 * stor36 / 1000:
                    revert with 0, 18
                if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor38 / 1000:
                    _2984 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2984] = 30
                    mem[_2984 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor36 / 1000 * stor19 / totalSupply > 0:
                        _3040 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3040 + 68] = mem[idx + _2984 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3040 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3040 + -mem[64] + 100
                    if 0 < arg1 * stor36 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    _3348 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3348] = 30
                    mem[_3348 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * stor36 / 1000 * stor19 / totalSupply:
                        if -1 * arg1 * stor36 / 1000 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        return (-1 * arg1 * stor36 / 1000 * stor19 / totalSupply)
                    _3486 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3486 + 68] = mem[idx + _3348 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3486 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3486 + -mem[64] + 100
                if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                    revert with 0, 17
                if not arg1 * stor38 / 1000:
                    revert with 0, 18
                if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3217 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3217] = 30
                mem[_3217 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor36 / 1000 * stor19 / totalSupply > 0:
                    _3347 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3347 + 68] = mem[idx + _3217 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3347 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3347 + -mem[64] + 100
                if 0 < arg1 * stor36 / 1000 * stor19 / totalSupply:
                    revert with 0, 17
                _3802 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3802] = 30
                mem[_3802 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor38 / 1000 * stor19 / totalSupply <= -1 * arg1 * stor36 / 1000 * stor19 / totalSupply:
                    if -1 * arg1 * stor36 / 1000 * stor19 / totalSupply < arg1 * stor38 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    return ((-1 * arg1 * stor36 / 1000 * stor19 / totalSupply) - (arg1 * stor38 / 1000 * stor19 / totalSupply))
                _3966 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3966 + 68] = mem[idx + _3802 + 32]
                    idx = idx + 32
                    continue 
                mem[_3966 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3966 + -mem[64] + 100
            if arg1 and stor19 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * stor36 / 1000:
                if not arg1 * stor38 / 1000:
                    _2983 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2983] = 30
                    mem[_2983 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor19 / totalSupply:
                        _3039 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3039 + 68] = mem[idx + _2983 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3039 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3039 + -mem[64] + 100
                    if arg1 * stor19 / totalSupply < 0:
                        revert with 0, 17
                    _3345 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3345] = 30
                    mem[_3345 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor19 / totalSupply:
                        if arg1 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor19 / totalSupply)
                    _3485 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3485 + 68] = mem[idx + _3345 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3485 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3485 + -mem[64] + 100
                if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                    revert with 0, 17
                if not arg1 * stor38 / 1000:
                    revert with 0, 18
                if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3216 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3216] = 30
                mem[_3216 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor19 / totalSupply:
                    _3344 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3344 + 68] = mem[idx + _3216 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3344 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3344 + -mem[64] + 100
                if arg1 * stor19 / totalSupply < 0:
                    revert with 0, 17
                _3800 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3800] = 30
                mem[_3800 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor38 / 1000 * stor19 / totalSupply <= arg1 * stor19 / totalSupply:
                    if arg1 * stor19 / totalSupply < arg1 * stor38 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    return ((arg1 * stor19 / totalSupply) - (arg1 * stor38 / 1000 * stor19 / totalSupply))
                _3964 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3964 + 68] = mem[idx + _3800 + 32]
                    idx = idx + 32
                    continue 
                mem[_3964 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3964 + -mem[64] + 100
            if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                revert with 0, 17
            if not arg1 * stor36 / 1000:
                revert with 0, 18
            if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * stor38 / 1000:
                _3215 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3215] = 30
                mem[_3215 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor36 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                    _3343 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3343 + 68] = mem[idx + _3215 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3343 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3343 + -mem[64] + 100
                if arg1 * stor19 / totalSupply < arg1 * stor36 / 1000 * stor19 / totalSupply:
                    revert with 0, 17
                _3798 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3798] = 30
                mem[_3798 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply):
                    if (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) < 0:
                        revert with 0, 17
                    return ((arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply))
                _3963 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3963 + 68] = mem[idx + _3798 + 32]
                    idx = idx + 32
                    continue 
                mem[_3963 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3963 + -mem[64] + 100
            if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                revert with 0, 17
            if not arg1 * stor38 / 1000:
                revert with 0, 18
            if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            _3627 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3627] = 30
            mem[_3627 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * stor36 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                _3797 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3797 + 68] = mem[idx + _3627 + 32]
                    idx = idx + 32
                    continue 
                mem[_3797 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3797 + -mem[64] + 100
            if arg1 * stor19 / totalSupply < arg1 * stor36 / 1000 * stor19 / totalSupply:
                revert with 0, 17
            _4269 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4269] = 30
            mem[_4269 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * stor38 / 1000 * stor19 / totalSupply <= (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply):
                if (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) < arg1 * stor38 / 1000 * stor19 / totalSupply:
                    revert with 0, 17
                return ((arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) - (arg1 * stor38 / 1000 * stor19 / totalSupply))
            _4373 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _4373 + 68] = mem[idx + _4269 + 32]
                idx = idx + 32
                continue 
            mem[_4373 + 98] = 0
            revert with memory
              from mem[64]
               len _4373 + -mem[64] + 100
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor19 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * stor36 / 1000:
                    if not arg1 * stor38 / 1000:
                        return 0
                    if arg1 * stor38 / 1000 and t / s > -1 / arg1 * stor38 / 1000:
                        revert with 0, 17
                    if not arg1 * stor38 / 1000:
                        revert with 0, 18
                    if arg1 * stor38 / 1000 * t / s / arg1 * stor38 / 1000 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * stor38 / 1000 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * stor38 / 1000 * t / s:
                        revert with 0, 17
                    return (-1 * arg1 * stor38 / 1000 * t / s)
                if arg1 * stor36 / 1000 and t / s > -1 / arg1 * stor36 / 1000:
                    revert with 0, 17
                if not arg1 * stor36 / 1000:
                    revert with 0, 18
                if arg1 * stor36 / 1000 * t / s / arg1 * stor36 / 1000 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor38 / 1000:
                    if arg1 * stor36 / 1000 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * stor36 / 1000 * t / s:
                        revert with 0, 17
                    if 0 > -1 * arg1 * stor36 / 1000 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * stor36 / 1000 * t / s < 0:
                        revert with 0, 17
                    return (-1 * arg1 * stor36 / 1000 * t / s)
                if arg1 * stor38 / 1000 and t / s > -1 / arg1 * stor38 / 1000:
                    revert with 0, 17
                if not arg1 * stor38 / 1000:
                    revert with 0, 18
                if arg1 * stor38 / 1000 * t / s / arg1 * stor38 / 1000 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * stor36 / 1000 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * stor36 / 1000 * t / s:
                    revert with 0, 17
                if arg1 * stor38 / 1000 * t / s > -1 * arg1 * stor36 / 1000 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * stor36 / 1000 * t / s < arg1 * stor38 / 1000 * t / s:
                    revert with 0, 17
                return ((-1 * arg1 * stor36 / 1000 * t / s) - (arg1 * stor38 / 1000 * t / s))
            if arg1 and t / s > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * stor36 / 1000:
                if not arg1 * stor38 / 1000:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    return (arg1 * t / s)
                if arg1 * stor38 / 1000 and t / s > -1 / arg1 * stor38 / 1000:
                    revert with 0, 17
                if not arg1 * stor38 / 1000:
                    revert with 0, 18
                if arg1 * stor38 / 1000 * t / s / arg1 * stor38 / 1000 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                if arg1 * stor38 / 1000 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * stor38 / 1000 * t / s:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * stor38 / 1000 * t / s))
            if arg1 * stor36 / 1000 and t / s > -1 / arg1 * stor36 / 1000:
                revert with 0, 17
            if not arg1 * stor36 / 1000:
                revert with 0, 18
            if arg1 * stor36 / 1000 * t / s / arg1 * stor36 / 1000 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * stor38 / 1000:
                if arg1 * stor36 / 1000 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * stor36 / 1000 * t / s:
                    revert with 0, 17
                if 0 > (arg1 * t / s) - (arg1 * stor36 / 1000 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * stor36 / 1000 * t / s) < 0:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * stor36 / 1000 * t / s))
            if arg1 * stor38 / 1000 and t / s > -1 / arg1 * stor38 / 1000:
                revert with 0, 17
            if not arg1 * stor38 / 1000:
                revert with 0, 18
            if arg1 * stor38 / 1000 * t / s / arg1 * stor38 / 1000 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * stor36 / 1000 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < arg1 * stor36 / 1000 * t / s:
                revert with 0, 17
            if arg1 * stor38 / 1000 * t / s > (arg1 * t / s) - (arg1 * stor36 / 1000 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * t / s) - (arg1 * stor36 / 1000 * t / s) < arg1 * stor38 / 1000 * t / s:
                revert with 0, 17
            return ((arg1 * t / s) - (arg1 * stor36 / 1000 * t / s) - (arg1 * stor38 / 1000 * t / s))
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if not arg1:
            if not arg1 * stor36 / 1000:
                if not arg1 * stor38 / 1000:
                    return 0
                if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                    revert with 0, 17
                if not arg1 * stor38 / 1000:
                    revert with 0, 18
                if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * stor38 / 1000 * stor19 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * stor38 / 1000 * stor19 / totalSupply:
                    revert with 0, 17
                return (-1 * arg1 * stor38 / 1000 * stor19 / totalSupply)
            if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                revert with 0, 17
            if not arg1 * stor36 / 1000:
                revert with 0, 18
            if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * stor38 / 1000:
                if arg1 * stor36 / 1000 * stor19 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * stor36 / 1000 * stor19 / totalSupply:
                    revert with 0, 17
                if 0 > -1 * arg1 * stor36 / 1000 * stor19 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * stor36 / 1000 * stor19 / totalSupply < 0:
                    revert with 0, 17
                return (-1 * arg1 * stor36 / 1000 * stor19 / totalSupply)
            if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                revert with 0, 17
            if not arg1 * stor38 / 1000:
                revert with 0, 18
            if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * stor36 / 1000 * stor19 / totalSupply > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < arg1 * stor36 / 1000 * stor19 / totalSupply:
                revert with 0, 17
            if arg1 * stor38 / 1000 * stor19 / totalSupply > -1 * arg1 * stor36 / 1000 * stor19 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -1 * arg1 * stor36 / 1000 * stor19 / totalSupply < arg1 * stor38 / 1000 * stor19 / totalSupply:
                revert with 0, 17
            return ((-1 * arg1 * stor36 / 1000 * stor19 / totalSupply) - (arg1 * stor38 / 1000 * stor19 / totalSupply))
        if arg1 and stor19 / totalSupply > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * stor36 / 1000:
            if not arg1 * stor38 / 1000:
                if 0 > arg1 * stor19 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor19 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor19 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor19 / totalSupply < 0:
                    revert with 0, 17
                return (arg1 * stor19 / totalSupply)
            if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                revert with 0, 17
            if not arg1 * stor38 / 1000:
                revert with 0, 18
            if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor19 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor19 / totalSupply < 0:
                revert with 0, 17
            if arg1 * stor38 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor19 / totalSupply < arg1 * stor38 / 1000 * stor19 / totalSupply:
                revert with 0, 17
            return ((arg1 * stor19 / totalSupply) - (arg1 * stor38 / 1000 * stor19 / totalSupply))
        if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
            revert with 0, 17
        if not arg1 * stor36 / 1000:
            revert with 0, 18
        if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * stor38 / 1000:
            if arg1 * stor36 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor19 / totalSupply < arg1 * stor36 / 1000 * stor19 / totalSupply:
                revert with 0, 17
            if 0 > (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) < 0:
                revert with 0, 17
            return ((arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply))
        if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
            revert with 0, 17
        if not arg1 * stor38 / 1000:
            revert with 0, 18
        if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 * stor36 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 * stor19 / totalSupply < arg1 * stor36 / 1000 * stor19 / totalSupply:
            revert with 0, 17
        if arg1 * stor38 / 1000 * stor19 / totalSupply > (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) < arg1 * stor38 / 1000 * stor19 / totalSupply:
            revert with 0, 17
        return ((arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) - (arg1 * stor38 / 1000 * stor19 / totalSupply))
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor19
            while idx < stor16.length:
                mem[0] = stor16[idx]
                mem[32] = 6
                if stor6[stor16[idx]] > t:
                    _2474 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2474] = 26
                    mem[_2474 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2520 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2520 + 68] = mem[idx + _2474 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2520 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2520 + -mem[64] + 100
                    if not arg1:
                        return 0
                    if arg1 and stor19 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2962 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2962] = 30
                    mem[_2962 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor19 / totalSupply:
                        _3016 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3016 + 68] = mem[idx + _2962 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3016 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3016 + -mem[64] + 100
                    if arg1 * stor19 / totalSupply < 0:
                        revert with 0, 17
                    _3287 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3287] = 30
                    mem[_3287 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor19 / totalSupply:
                        if arg1 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor19 / totalSupply)
                    _3400 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3400 + 68] = mem[idx + _3287 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3400 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3400 + -mem[64] + 100
                if idx >= stor16.length:
                    revert with 0, 50
                mem[0] = stor16[idx]
                mem[32] = 7
                if stor7[stor16[idx]] <= s:
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 6
                    _2521 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2521] = 30
                    mem[_2521 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor16[idx]] > t:
                        _2561 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2561 + 68] = mem[idx + _2521 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2561 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2561 + -mem[64] + 100
                    if t < stor6[stor16[idx]]:
                        revert with 0, 17
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 7
                    _2738 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2738] = 30
                    mem[_2738 + 32] = 'SafeMath: subtraction overflow'
                    if stor7[stor16[idx]] <= s:
                        if s < stor7[stor16[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor7[stor16[idx]]
                        t = t - stor6[stor16[idx]]
                        continue 
                    _2762 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2762 + 68] = mem[idx + _2738 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2762 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2762 + -mem[64] + 100
                _2522 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2522] = 26
                mem[_2522 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2562 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2562 + 68] = mem[idx + _2522 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2562 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2562 + -mem[64] + 100
                if not arg1:
                    return 0
                if arg1 and stor19 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3018 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3018] = 30
                mem[_3018 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor19 / totalSupply:
                    _3067 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3067 + 68] = mem[idx + _3018 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3067 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3067 + -mem[64] + 100
                if arg1 * stor19 / totalSupply < 0:
                    revert with 0, 17
                _3401 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3401] = 30
                mem[_3401 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= arg1 * stor19 / totalSupply:
                    if arg1 * stor19 / totalSupply < 0:
                        revert with 0, 17
                    return (arg1 * stor19 / totalSupply)
                _3516 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3516 + 68] = mem[idx + _3401 + 32]
                    idx = idx + 32
                    continue 
                mem[_3516 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3516 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor19 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                return (arg1 * t / s)
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                return 0
            if arg1 and stor19 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor19 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor19 / totalSupply < 0:
                revert with 0, 17
            if 0 > arg1 * stor19 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor19 / totalSupply < 0:
                revert with 0, 17
        else:
            if arg1 and stor38 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor38 / arg1 != stor38:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * stor38 / 1000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * stor38 / 1000:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor19
            while idx < stor16.length:
                mem[0] = stor16[idx]
                mem[32] = 6
                if stor6[stor16[idx]] > t:
                    _2473 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2473] = 26
                    mem[_2473 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2517 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2517 + 68] = mem[idx + _2473 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2517 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2517 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * stor38 / 1000:
                            return 0
                        if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                            revert with 0, 17
                        if not arg1 * stor38 / 1000:
                            revert with 0, 18
                        if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2958 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2958] = 30
                        mem[_2958 + 32] = 'SafeMath: subtraction overflow'
                        _3281 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3281] = 30
                        mem[_3281 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor38 / 1000 * stor19 / totalSupply <= 0:
                            if 0 < arg1 * stor38 / 1000 * stor19 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _3395 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3395 + 68] = mem[idx + _3281 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3395 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3395 + -mem[64] + 100
                    if arg1 and stor19 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor38 / 1000:
                        _2957 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2957] = 30
                        mem[_2957 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor19 / totalSupply:
                            _3012 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3012 + 68] = mem[idx + _2957 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3012 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3012 + -mem[64] + 100
                        if arg1 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        _3279 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3279] = 30
                        mem[_3279 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor19 / totalSupply:
                            if arg1 * stor19 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor19 / totalSupply)
                        _3394 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3394 + 68] = mem[idx + _3279 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3394 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3394 + -mem[64] + 100
                    if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                        revert with 0, 17
                    if not arg1 * stor38 / 1000:
                        revert with 0, 18
                    if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3159 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3159] = 30
                    mem[_3159 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor19 / totalSupply:
                        _3278 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3278 + 68] = mem[idx + _3159 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3278 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3278 + -mem[64] + 100
                    if arg1 * stor19 / totalSupply < 0:
                        revert with 0, 17
                    _3703 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3703] = 30
                    mem[_3703 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor38 / 1000 * stor19 / totalSupply <= arg1 * stor19 / totalSupply:
                        if arg1 * stor19 / totalSupply < arg1 * stor38 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor19 / totalSupply)
                    _3865 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3865 + 68] = mem[idx + _3703 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3865 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3865 + -mem[64] + 100
                if idx >= stor16.length:
                    revert with 0, 50
                mem[0] = stor16[idx]
                mem[32] = 7
                if stor7[stor16[idx]] <= s:
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 6
                    _2518 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2518] = 30
                    mem[_2518 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor16[idx]] > t:
                        _2558 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2558 + 68] = mem[idx + _2518 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2558 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2558 + -mem[64] + 100
                    if t < stor6[stor16[idx]]:
                        revert with 0, 17
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 7
                    _2735 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2735] = 30
                    mem[_2735 + 32] = 'SafeMath: subtraction overflow'
                    if stor7[stor16[idx]] <= s:
                        if s < stor7[stor16[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor7[stor16[idx]]
                        t = t - stor6[stor16[idx]]
                        continue 
                    _2759 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2759 + 68] = mem[idx + _2735 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2759 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2759 + -mem[64] + 100
                _2519 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2519] = 26
                mem[_2519 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2559 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2559 + 68] = mem[idx + _2519 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2559 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2559 + -mem[64] + 100
                if not arg1:
                    if not arg1 * stor38 / 1000:
                        return 0
                    if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                        revert with 0, 17
                    if not arg1 * stor38 / 1000:
                        revert with 0, 18
                    if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3015 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3015] = 30
                    mem[_3015 + 32] = 'SafeMath: subtraction overflow'
                    _3399 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3399] = 30
                    mem[_3399 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor38 / 1000 * stor19 / totalSupply <= 0:
                        if 0 < arg1 * stor38 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                        else:
                            return 0
                    _3515 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3515 + 68] = mem[idx + _3399 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3515 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3515 + -mem[64] + 100
                if arg1 and stor19 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor38 / 1000:
                    _3014 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3014] = 30
                    mem[_3014 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor19 / totalSupply:
                        _3065 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3065 + 68] = mem[idx + _3014 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3065 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3065 + -mem[64] + 100
                    if arg1 * stor19 / totalSupply < 0:
                        revert with 0, 17
                    _3397 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3397] = 30
                    mem[_3397 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor19 / totalSupply:
                        if arg1 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor19 / totalSupply)
                    _3514 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3514 + 68] = mem[idx + _3397 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3514 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3514 + -mem[64] + 100
                if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                    revert with 0, 17
                if not arg1 * stor38 / 1000:
                    revert with 0, 18
                if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3282 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3282] = 30
                mem[_3282 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor19 / totalSupply:
                    _3396 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3396 + 68] = mem[idx + _3282 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3396 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3396 + -mem[64] + 100
                if arg1 * stor19 / totalSupply < 0:
                    revert with 0, 17
                _3868 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3868] = 30
                mem[_3868 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor38 / 1000 * stor19 / totalSupply <= arg1 * stor19 / totalSupply:
                    if arg1 * stor19 / totalSupply < arg1 * stor38 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    return (arg1 * stor19 / totalSupply)
                _3987 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3987 + 68] = mem[idx + _3868 + 32]
                    idx = idx + 32
                    continue 
                mem[_3987 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3987 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor19 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if arg1 * stor38 / 1000:
                        if arg1 * stor38 / 1000 and t / s > -1 / arg1 * stor38 / 1000:
                            revert with 0, 17
                        if not arg1 * stor38 / 1000:
                            revert with 0, 18
                        if arg1 * stor38 / 1000 * t / s / arg1 * stor38 / 1000 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * stor38 / 1000 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * stor38 / 1000 * t / s:
                            revert with 0, 17
                        else:
                            return 0
                    else:
                        return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor38 / 1000:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                else:
                    if arg1 * stor38 / 1000 and t / s > -1 / arg1 * stor38 / 1000:
                        revert with 0, 17
                    if not arg1 * stor38 / 1000:
                        revert with 0, 18
                    if arg1 * stor38 / 1000 * t / s / arg1 * stor38 / 1000 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if arg1 * stor38 / 1000 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * stor38 / 1000 * t / s:
                        revert with 0, 17
                return (arg1 * t / s)
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if arg1 * stor38 / 1000:
                    if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                        revert with 0, 17
                    if not arg1 * stor38 / 1000:
                        revert with 0, 18
                    if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * stor38 / 1000 * stor19 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * stor38 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    else:
                        return 0
                else:
                    return 0
            if arg1 and stor19 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * stor38 / 1000:
                if 0 > arg1 * stor19 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor19 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor19 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor19 / totalSupply < 0:
                    revert with 0, 17
            else:
                if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                    revert with 0, 17
                if not arg1 * stor38 / 1000:
                    revert with 0, 18
                if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor19 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor19 / totalSupply < 0:
                    revert with 0, 17
                if arg1 * stor38 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor19 / totalSupply < arg1 * stor38 / 1000 * stor19 / totalSupply:
                    revert with 0, 17
    else:
        if arg1 and stor36 > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * stor36 / arg1 != stor36:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * stor36 / 1000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * stor36 / 1000:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * stor36 / 1000):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * stor36 / 1000) < 0:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor19
            while idx < stor16.length:
                mem[0] = stor16[idx]
                mem[32] = 6
                if stor6[stor16[idx]] > t:
                    _2472 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2472] = 26
                    mem[_2472 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2514 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2514 + 68] = mem[idx + _2472 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2514 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2514 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * stor36 / 1000:
                            return 0
                        if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                            revert with 0, 17
                        if not arg1 * stor36 / 1000:
                            revert with 0, 18
                        if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2954 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2954] = 30
                        mem[_2954 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor36 / 1000 * stor19 / totalSupply > 0:
                            _3007 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3007 + 68] = mem[idx + _2954 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3007 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3007 + -mem[64] + 100
                        if 0 < arg1 * stor36 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                        _3271 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3271] = 30
                        mem[_3271 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * stor36 / 1000 * stor19 / totalSupply:
                            if -1 * arg1 * stor36 / 1000 * stor19 / totalSupply < 0:
                                revert with 0, 17
                            else:
                                return 0
                        _3386 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3386 + 68] = mem[idx + _3271 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3386 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3386 + -mem[64] + 100
                    if arg1 and stor19 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor36 / 1000:
                        _2953 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2953] = 30
                        mem[_2953 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor19 / totalSupply:
                            _3006 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3006 + 68] = mem[idx + _2953 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3006 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3006 + -mem[64] + 100
                        if arg1 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        _3269 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3269] = 30
                        mem[_3269 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor19 / totalSupply:
                            if arg1 * stor19 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor19 / totalSupply)
                        _3385 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3385 + 68] = mem[idx + _3269 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3385 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3385 + -mem[64] + 100
                    if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                        revert with 0, 17
                    if not arg1 * stor36 / 1000:
                        revert with 0, 18
                    if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3154 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3154] = 30
                    mem[_3154 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor36 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                        _3268 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3268 + 68] = mem[idx + _3154 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3268 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3268 + -mem[64] + 100
                    if arg1 * stor19 / totalSupply < arg1 * stor36 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    _3692 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3692] = 30
                    mem[_3692 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply):
                        if (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) < 0:
                            revert with 0, 17
                        return (arg1 * stor19 / totalSupply)
                    _3855 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3855 + 68] = mem[idx + _3692 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3855 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3855 + -mem[64] + 100
                if idx >= stor16.length:
                    revert with 0, 50
                mem[0] = stor16[idx]
                mem[32] = 7
                if stor7[stor16[idx]] <= s:
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 6
                    _2515 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2515] = 30
                    mem[_2515 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor16[idx]] > t:
                        _2555 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2555 + 68] = mem[idx + _2515 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2555 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2555 + -mem[64] + 100
                    if t < stor6[stor16[idx]]:
                        revert with 0, 17
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 7
                    _2732 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2732] = 30
                    mem[_2732 + 32] = 'SafeMath: subtraction overflow'
                    if stor7[stor16[idx]] <= s:
                        if s < stor7[stor16[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor7[stor16[idx]]
                        t = t - stor6[stor16[idx]]
                        continue 
                    _2756 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2756 + 68] = mem[idx + _2732 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2756 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2756 + -mem[64] + 100
                _2516 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2516] = 26
                mem[_2516 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2556 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2556 + 68] = mem[idx + _2516 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2556 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2556 + -mem[64] + 100
                if not arg1:
                    if not arg1 * stor36 / 1000:
                        return 0
                    if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                        revert with 0, 17
                    if not arg1 * stor36 / 1000:
                        revert with 0, 18
                    if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3011 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3011] = 30
                    mem[_3011 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor36 / 1000 * stor19 / totalSupply > 0:
                        _3060 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3060 + 68] = mem[idx + _3011 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3060 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3060 + -mem[64] + 100
                    if 0 < arg1 * stor36 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    _3390 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3390] = 30
                    mem[_3390 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * stor36 / 1000 * stor19 / totalSupply:
                        if -1 * arg1 * stor36 / 1000 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        else:
                            return 0
                    _3511 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3511 + 68] = mem[idx + _3390 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3511 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3511 + -mem[64] + 100
                if arg1 and stor19 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor36 / 1000:
                    _3010 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3010] = 30
                    mem[_3010 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor19 / totalSupply:
                        _3059 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3059 + 68] = mem[idx + _3010 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3059 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3059 + -mem[64] + 100
                    if arg1 * stor19 / totalSupply < 0:
                        revert with 0, 17
                    _3388 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3388] = 30
                    mem[_3388 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor19 / totalSupply:
                        if arg1 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor19 / totalSupply)
                    _3510 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3510 + 68] = mem[idx + _3388 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3510 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3510 + -mem[64] + 100
                if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                    revert with 0, 17
                if not arg1 * stor36 / 1000:
                    revert with 0, 18
                if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3273 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3273] = 30
                mem[_3273 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor36 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                    _3387 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3387 + 68] = mem[idx + _3273 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3387 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3387 + -mem[64] + 100
                if arg1 * stor19 / totalSupply < arg1 * stor36 / 1000 * stor19 / totalSupply:
                    revert with 0, 17
                _3858 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3858] = 30
                mem[_3858 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply):
                    if (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) < 0:
                        revert with 0, 17
                    return (arg1 * stor19 / totalSupply)
                _3984 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3984 + 68] = mem[idx + _3858 + 32]
                    idx = idx + 32
                    continue 
                mem[_3984 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3984 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor19 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if arg1 * stor36 / 1000:
                        if arg1 * stor36 / 1000 and t / s > -1 / arg1 * stor36 / 1000:
                            revert with 0, 17
                        if not arg1 * stor36 / 1000:
                            revert with 0, 18
                        if arg1 * stor36 / 1000 * t / s / arg1 * stor36 / 1000 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * stor36 / 1000 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * stor36 / 1000 * t / s:
                            revert with 0, 17
                        if 0 > -1 * arg1 * stor36 / 1000 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * stor36 / 1000 * t / s < 0:
                            revert with 0, 17
                        else:
                            return 0
                    else:
                        return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor36 / 1000:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                else:
                    if arg1 * stor36 / 1000 and t / s > -1 / arg1 * stor36 / 1000:
                        revert with 0, 17
                    if not arg1 * stor36 / 1000:
                        revert with 0, 18
                    if arg1 * stor36 / 1000 * t / s / arg1 * stor36 / 1000 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * stor36 / 1000 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * stor36 / 1000 * t / s:
                        revert with 0, 17
                    if 0 > (arg1 * t / s) - (arg1 * stor36 / 1000 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * stor36 / 1000 * t / s) < 0:
                        revert with 0, 17
                return (arg1 * t / s)
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if arg1 * stor36 / 1000:
                    if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                        revert with 0, 17
                    if not arg1 * stor36 / 1000:
                        revert with 0, 18
                    if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * stor36 / 1000 * stor19 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * stor36 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    if 0 > -1 * arg1 * stor36 / 1000 * stor19 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * stor36 / 1000 * stor19 / totalSupply < 0:
                        revert with 0, 17
                    else:
                        return 0
                else:
                    return 0
            if arg1 and stor19 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * stor36 / 1000:
                if 0 > arg1 * stor19 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor19 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor19 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor19 / totalSupply < 0:
                    revert with 0, 17
            else:
                if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                    revert with 0, 17
                if not arg1 * stor36 / 1000:
                    revert with 0, 18
                if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * stor36 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor19 / totalSupply < arg1 * stor36 / 1000 * stor19 / totalSupply:
                    revert with 0, 17
                if 0 > (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) < 0:
                    revert with 0, 17
        else:
            if arg1 and stor38 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor38 / arg1 != stor38:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * stor36 / 1000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * stor36 / 1000:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * stor38 / 1000 > arg1 - (arg1 * stor36 / 1000):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * stor36 / 1000) < arg1 * stor38 / 1000:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor19
            while idx < stor16.length:
                mem[0] = stor16[idx]
                mem[32] = 6
                if stor6[stor16[idx]] > t:
                    _2471 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2471] = 26
                    mem[_2471 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2511 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2511 + 68] = mem[idx + _2471 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2511 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2511 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * stor36 / 1000:
                            if not arg1 * stor38 / 1000:
                                return 0
                            if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                                revert with 0, 17
                            if not arg1 * stor38 / 1000:
                                revert with 0, 18
                            if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2946 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2946] = 30
                            mem[_2946 + 32] = 'SafeMath: subtraction overflow'
                            _3258 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3258] = 30
                            mem[_3258 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor38 / 1000 * stor19 / totalSupply <= 0:
                                if 0 < arg1 * stor38 / 1000 * stor19 / totalSupply:
                                    revert with 0, 17
                                else:
                                    return 0
                            _3376 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3376 + 68] = mem[idx + _3258 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3376 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3376 + -mem[64] + 100
                        if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                            revert with 0, 17
                        if not arg1 * stor36 / 1000:
                            revert with 0, 18
                        if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor38 / 1000:
                            _2945 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2945] = 30
                            mem[_2945 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor36 / 1000 * stor19 / totalSupply > 0:
                                _3000 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3000 + 68] = mem[idx + _2945 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3000 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3000 + -mem[64] + 100
                            if 0 < arg1 * stor36 / 1000 * stor19 / totalSupply:
                                revert with 0, 17
                            _3256 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3256] = 30
                            mem[_3256 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * stor36 / 1000 * stor19 / totalSupply:
                                if -1 * arg1 * stor36 / 1000 * stor19 / totalSupply < 0:
                                    revert with 0, 17
                                else:
                                    return 0
                            _3375 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3375 + 68] = mem[idx + _3256 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3375 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3375 + -mem[64] + 100
                        if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                            revert with 0, 17
                        if not arg1 * stor38 / 1000:
                            revert with 0, 18
                        if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3145 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3145] = 30
                        mem[_3145 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor36 / 1000 * stor19 / totalSupply > 0:
                            _3255 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3255 + 68] = mem[idx + _3145 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3255 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3255 + -mem[64] + 100
                        if 0 < arg1 * stor36 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                        _3678 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3678] = 30
                        mem[_3678 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor38 / 1000 * stor19 / totalSupply <= -1 * arg1 * stor36 / 1000 * stor19 / totalSupply:
                            if -1 * arg1 * stor36 / 1000 * stor19 / totalSupply < arg1 * stor38 / 1000 * stor19 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _3840 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3840 + 68] = mem[idx + _3678 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3840 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3840 + -mem[64] + 100
                    if arg1 and stor19 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor36 / 1000:
                        if not arg1 * stor38 / 1000:
                            _2944 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2944] = 30
                            mem[_2944 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor19 / totalSupply:
                                _2999 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2999 + 68] = mem[idx + _2944 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2999 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2999 + -mem[64] + 100
                            if arg1 * stor19 / totalSupply < 0:
                                revert with 0, 17
                            _3253 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3253] = 30
                            mem[_3253 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor19 / totalSupply:
                                if arg1 * stor19 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor19 / totalSupply)
                            _3374 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3374 + 68] = mem[idx + _3253 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3374 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3374 + -mem[64] + 100
                        if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                            revert with 0, 17
                        if not arg1 * stor38 / 1000:
                            revert with 0, 18
                        if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3144 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3144] = 30
                        mem[_3144 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor19 / totalSupply:
                            _3252 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3252 + 68] = mem[idx + _3144 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3252 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3252 + -mem[64] + 100
                        if arg1 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        _3676 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3676] = 30
                        mem[_3676 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor38 / 1000 * stor19 / totalSupply <= arg1 * stor19 / totalSupply:
                            if arg1 * stor19 / totalSupply < arg1 * stor38 / 1000 * stor19 / totalSupply:
                                revert with 0, 17
                            return (arg1 * stor19 / totalSupply)
                        _3838 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3838 + 68] = mem[idx + _3676 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3838 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3838 + -mem[64] + 100
                    if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                        revert with 0, 17
                    if not arg1 * stor36 / 1000:
                        revert with 0, 18
                    if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor38 / 1000:
                        _3143 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3143] = 30
                        mem[_3143 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor36 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                            _3251 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3251 + 68] = mem[idx + _3143 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3251 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3251 + -mem[64] + 100
                        if arg1 * stor19 / totalSupply < arg1 * stor36 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                        _3674 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3674] = 30
                        mem[_3674 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply):
                            if (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) < 0:
                                revert with 0, 17
                            return (arg1 * stor19 / totalSupply)
                        _3837 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3837 + 68] = mem[idx + _3674 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3837 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3837 + -mem[64] + 100
                    if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                        revert with 0, 17
                    if not arg1 * stor38 / 1000:
                        revert with 0, 18
                    if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3503 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3503] = 30
                    mem[_3503 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor36 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                        _3673 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3673 + 68] = mem[idx + _3503 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3673 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3673 + -mem[64] + 100
                    if arg1 * stor19 / totalSupply < arg1 * stor36 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    _4155 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4155] = 30
                    mem[_4155 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor38 / 1000 * stor19 / totalSupply <= (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply):
                        if (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) < arg1 * stor38 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor19 / totalSupply)
                    _4307 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4307 + 68] = mem[idx + _4155 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4307 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4307 + -mem[64] + 100
                if idx >= stor16.length:
                    revert with 0, 50
                mem[0] = stor16[idx]
                mem[32] = 7
                if stor7[stor16[idx]] <= s:
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 6
                    _2512 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2512] = 30
                    mem[_2512 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor16[idx]] > t:
                        _2552 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2552 + 68] = mem[idx + _2512 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2552 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2552 + -mem[64] + 100
                    if t < stor6[stor16[idx]]:
                        revert with 0, 17
                    if idx >= stor16.length:
                        revert with 0, 50
                    mem[0] = stor16[idx]
                    mem[32] = 7
                    _2729 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2729] = 30
                    mem[_2729 + 32] = 'SafeMath: subtraction overflow'
                    if stor7[stor16[idx]] <= s:
                        if s < stor7[stor16[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor7[stor16[idx]]
                        t = t - stor6[stor16[idx]]
                        continue 
                    _2753 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2753 + 68] = mem[idx + _2729 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2753 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2753 + -mem[64] + 100
                _2513 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2513] = 26
                mem[_2513 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2553 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2553 + 68] = mem[idx + _2513 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2553 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2553 + -mem[64] + 100
                if not arg1:
                    if not arg1 * stor36 / 1000:
                        if not arg1 * stor38 / 1000:
                            return 0
                        if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                            revert with 0, 17
                        if not arg1 * stor38 / 1000:
                            revert with 0, 18
                        if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3005 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3005] = 30
                        mem[_3005 + 32] = 'SafeMath: subtraction overflow'
                        _3384 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3384] = 30
                        mem[_3384 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor38 / 1000 * stor19 / totalSupply <= 0:
                            if 0 < arg1 * stor38 / 1000 * stor19 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _3507 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3507 + 68] = mem[idx + _3384 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3507 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3507 + -mem[64] + 100
                    if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                        revert with 0, 17
                    if not arg1 * stor36 / 1000:
                        revert with 0, 18
                    if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor38 / 1000:
                        _3004 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3004] = 30
                        mem[_3004 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor36 / 1000 * stor19 / totalSupply > 0:
                            _3057 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3057 + 68] = mem[idx + _3004 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3057 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3057 + -mem[64] + 100
                        if 0 < arg1 * stor36 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                        _3382 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3382] = 30
                        mem[_3382 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * stor36 / 1000 * stor19 / totalSupply:
                            if -1 * arg1 * stor36 / 1000 * stor19 / totalSupply < 0:
                                revert with 0, 17
                            else:
                                return 0
                        _3506 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3506 + 68] = mem[idx + _3382 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3506 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3506 + -mem[64] + 100
                    if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                        revert with 0, 17
                    if not arg1 * stor38 / 1000:
                        revert with 0, 18
                    if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3261 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3261] = 30
                    mem[_3261 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor36 / 1000 * stor19 / totalSupply > 0:
                        _3381 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3381 + 68] = mem[idx + _3261 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3381 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3381 + -mem[64] + 100
                    if 0 < arg1 * stor36 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    _3848 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3848] = 30
                    mem[_3848 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor38 / 1000 * stor19 / totalSupply <= -1 * arg1 * stor36 / 1000 * stor19 / totalSupply:
                        if -1 * arg1 * stor36 / 1000 * stor19 / totalSupply < arg1 * stor38 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                        else:
                            return 0
                    _3981 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3981 + 68] = mem[idx + _3848 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3981 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3981 + -mem[64] + 100
                if arg1 and stor19 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor36 / 1000:
                    if not arg1 * stor38 / 1000:
                        _3003 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3003] = 30
                        mem[_3003 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor19 / totalSupply:
                            _3056 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3056 + 68] = mem[idx + _3003 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3056 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3056 + -mem[64] + 100
                        if arg1 * stor19 / totalSupply < 0:
                            revert with 0, 17
                        _3379 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3379] = 30
                        mem[_3379 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor19 / totalSupply:
                            if arg1 * stor19 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor19 / totalSupply)
                        _3505 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3505 + 68] = mem[idx + _3379 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3505 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3505 + -mem[64] + 100
                    if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                        revert with 0, 17
                    if not arg1 * stor38 / 1000:
                        revert with 0, 18
                    if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3260 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3260] = 30
                    mem[_3260 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor19 / totalSupply:
                        _3378 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3378 + 68] = mem[idx + _3260 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3378 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3378 + -mem[64] + 100
                    if arg1 * stor19 / totalSupply < 0:
                        revert with 0, 17
                    _3846 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3846] = 30
                    mem[_3846 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor38 / 1000 * stor19 / totalSupply <= arg1 * stor19 / totalSupply:
                        if arg1 * stor19 / totalSupply < arg1 * stor38 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor19 / totalSupply)
                    _3979 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3979 + 68] = mem[idx + _3846 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3979 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3979 + -mem[64] + 100
                if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                    revert with 0, 17
                if not arg1 * stor36 / 1000:
                    revert with 0, 18
                if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor38 / 1000:
                    _3259 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3259] = 30
                    mem[_3259 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor36 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                        _3377 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3377 + 68] = mem[idx + _3259 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3377 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3377 + -mem[64] + 100
                    if arg1 * stor19 / totalSupply < arg1 * stor36 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    _3844 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3844] = 30
                    mem[_3844 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply):
                        if (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) < 0:
                            revert with 0, 17
                        return (arg1 * stor19 / totalSupply)
                    _3978 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3978 + 68] = mem[idx + _3844 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3978 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3978 + -mem[64] + 100
                if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                    revert with 0, 17
                if not arg1 * stor38 / 1000:
                    revert with 0, 18
                if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3681 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3681] = 30
                mem[_3681 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor36 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                    _3843 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3843 + 68] = mem[idx + _3681 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3843 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3843 + -mem[64] + 100
                if arg1 * stor19 / totalSupply < arg1 * stor36 / 1000 * stor19 / totalSupply:
                    revert with 0, 17
                _4311 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4311] = 30
                mem[_4311 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor38 / 1000 * stor19 / totalSupply <= (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply):
                    if (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) < arg1 * stor38 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    return (arg1 * stor19 / totalSupply)
                _4379 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4379 + 68] = mem[idx + _4311 + 32]
                    idx = idx + 32
                    continue 
                mem[_4379 + 98] = 0
                revert with memory
                  from mem[64]
                   len _4379 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor19 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * stor36 / 1000:
                        if arg1 * stor38 / 1000:
                            if arg1 * stor38 / 1000 and t / s > -1 / arg1 * stor38 / 1000:
                                revert with 0, 17
                            if not arg1 * stor38 / 1000:
                                revert with 0, 18
                            if arg1 * stor38 / 1000 * t / s / arg1 * stor38 / 1000 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * stor38 / 1000 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * stor38 / 1000 * t / s:
                                revert with 0, 17
                    else:
                        if arg1 * stor36 / 1000 and t / s > -1 / arg1 * stor36 / 1000:
                            revert with 0, 17
                        if not arg1 * stor36 / 1000:
                            revert with 0, 18
                        if arg1 * stor36 / 1000 * t / s / arg1 * stor36 / 1000 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * stor38 / 1000:
                            if arg1 * stor36 / 1000 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * stor36 / 1000 * t / s:
                                revert with 0, 17
                            if 0 > -1 * arg1 * stor36 / 1000 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * stor36 / 1000 * t / s < 0:
                                revert with 0, 17
                        else:
                            if arg1 * stor38 / 1000 and t / s > -1 / arg1 * stor38 / 1000:
                                revert with 0, 17
                            if not arg1 * stor38 / 1000:
                                revert with 0, 18
                            if arg1 * stor38 / 1000 * t / s / arg1 * stor38 / 1000 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * stor36 / 1000 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * stor36 / 1000 * t / s:
                                revert with 0, 17
                            if arg1 * stor38 / 1000 * t / s > -1 * arg1 * stor36 / 1000 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * stor36 / 1000 * t / s < arg1 * stor38 / 1000 * t / s:
                                revert with 0, 17
                    return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor36 / 1000:
                    if not arg1 * stor38 / 1000:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                    else:
                        if arg1 * stor38 / 1000 and t / s > -1 / arg1 * stor38 / 1000:
                            revert with 0, 17
                        if not arg1 * stor38 / 1000:
                            revert with 0, 18
                        if arg1 * stor38 / 1000 * t / s / arg1 * stor38 / 1000 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if arg1 * stor38 / 1000 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * stor38 / 1000 * t / s:
                            revert with 0, 17
                else:
                    if arg1 * stor36 / 1000 and t / s > -1 / arg1 * stor36 / 1000:
                        revert with 0, 17
                    if not arg1 * stor36 / 1000:
                        revert with 0, 18
                    if arg1 * stor36 / 1000 * t / s / arg1 * stor36 / 1000 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor38 / 1000:
                        if arg1 * stor36 / 1000 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * stor36 / 1000 * t / s:
                            revert with 0, 17
                        if 0 > (arg1 * t / s) - (arg1 * stor36 / 1000 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * stor36 / 1000 * t / s) < 0:
                            revert with 0, 17
                    else:
                        if arg1 * stor38 / 1000 and t / s > -1 / arg1 * stor38 / 1000:
                            revert with 0, 17
                        if not arg1 * stor38 / 1000:
                            revert with 0, 18
                        if arg1 * stor38 / 1000 * t / s / arg1 * stor38 / 1000 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * stor36 / 1000 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * stor36 / 1000 * t / s:
                            revert with 0, 17
                        if arg1 * stor38 / 1000 * t / s > (arg1 * t / s) - (arg1 * stor36 / 1000 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * stor36 / 1000 * t / s) < arg1 * stor38 / 1000 * t / s:
                            revert with 0, 17
                return (arg1 * t / s)
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * stor36 / 1000:
                    if arg1 * stor38 / 1000:
                        if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                            revert with 0, 17
                        if not arg1 * stor38 / 1000:
                            revert with 0, 18
                        if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * stor38 / 1000 * stor19 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * stor38 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                else:
                    if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                        revert with 0, 17
                    if not arg1 * stor36 / 1000:
                        revert with 0, 18
                    if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * stor38 / 1000:
                        if arg1 * stor36 / 1000 * stor19 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * stor36 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                        if 0 > -1 * arg1 * stor36 / 1000 * stor19 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * stor36 / 1000 * stor19 / totalSupply < 0:
                            revert with 0, 17
                    else:
                        if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                            revert with 0, 17
                        if not arg1 * stor38 / 1000:
                            revert with 0, 18
                        if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * stor36 / 1000 * stor19 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * stor36 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                        if arg1 * stor38 / 1000 * stor19 / totalSupply > -1 * arg1 * stor36 / 1000 * stor19 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * stor36 / 1000 * stor19 / totalSupply < arg1 * stor38 / 1000 * stor19 / totalSupply:
                            revert with 0, 17
                return 0
            if arg1 and stor19 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor19 / totalSupply / arg1 != stor19 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * stor36 / 1000:
                if not arg1 * stor38 / 1000:
                    if 0 > arg1 * stor19 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor19 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor19 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor19 / totalSupply < 0:
                        revert with 0, 17
                else:
                    if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                        revert with 0, 17
                    if not arg1 * stor38 / 1000:
                        revert with 0, 18
                    if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor19 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor19 / totalSupply < 0:
                        revert with 0, 17
                    if arg1 * stor38 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor19 / totalSupply < arg1 * stor38 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
            else:
                if arg1 * stor36 / 1000 and stor19 / totalSupply > -1 / arg1 * stor36 / 1000:
                    revert with 0, 17
                if not arg1 * stor36 / 1000:
                    revert with 0, 18
                if arg1 * stor36 / 1000 * stor19 / totalSupply / arg1 * stor36 / 1000 != stor19 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * stor38 / 1000:
                    if arg1 * stor36 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor19 / totalSupply < arg1 * stor36 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    if 0 > (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) < 0:
                        revert with 0, 17
                else:
                    if arg1 * stor38 / 1000 and stor19 / totalSupply > -1 / arg1 * stor38 / 1000:
                        revert with 0, 17
                    if not arg1 * stor38 / 1000:
                        revert with 0, 18
                    if arg1 * stor38 / 1000 * stor19 / totalSupply / arg1 * stor38 / 1000 != stor19 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * stor36 / 1000 * stor19 / totalSupply > arg1 * stor19 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor19 / totalSupply < arg1 * stor36 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
                    if arg1 * stor38 / 1000 * stor19 / totalSupply > (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor19 / totalSupply) - (arg1 * stor36 / 1000 * stor19 / totalSupply) < arg1 * stor38 / 1000 * stor19 / totalSupply:
                        revert with 0, 17
    return (arg1 * stor19 / totalSupply)
}



}
