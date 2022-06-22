contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'Hare', 0

const decimals = 9

const symbol = 'HARE', 0


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
mapping of uint256 stor101;
mapping of uint256 allowance;
mapping of uint8 stor104;
mapping of uint8 stor105;
uint256 totalSupply;
uint256 stor107;
uint256 sub_ccc70314;
uint256 _developmentFee;
uint256 _reflectionFee;
uint256 _liquidityFee;
uint256 _marketingFee;
uint256 stor114;
uint256 sub_3f595807;
uint256 stor116;
uint256 maxWalletAmount;
address sub_c96a1a75Address;
address _marketingWalletAddress;
address _developmentWalletAddress;
address sub_56d9b9a0Address;
address uniswapV2RouterAddress;
uint8 isTradingEnabled; offset 160
uint8 stor124; offset 168
uint8 stor124; offset 176
uint32 stor124; offset 160
uint128 stor124;
uint128 stor124; offset 160
address uniswapV2PairAddress;
uint256 stor124; offset 72
uint256 _maxTxAmount;

function isTradingEnabled() {
    return bool(isTradingEnabled)
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function _marketingFee() {
    return _marketingFee
}

function _developmentWalletAddress() {
    return _developmentWalletAddress
}

function _reflectionFee() {
    return _reflectionFee
}

function sub_3f595807(?) {
    return sub_3f595807
}

function _marketingWalletAddress() {
    return _marketingWalletAddress
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function sub_56d9b9a0(?) {
    return sub_56d9b9a0Address
}

function _liquidityFee() {
    return _liquidityFee
}

function _maxTxAmount() {
    return _maxTxAmount
}

function owner() {
    return owner
}

function maxWalletAmount() {
    return maxWalletAmount
}

function sub_c96a1a75(?) {
    return sub_c96a1a75Address
}

function sub_ccc70314(?) {
    return sub_ccc70314
}

function _developmentFee() {
    return _developmentFee
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_704d0b68(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    _reflectionFee = arg1
    stor114 = arg1
    emit 0x682f3fef: _reflectionFee, arg1
}

function excludeFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor104[address(arg1)] = uint8(arg2)
    emit ExcludeFromFees(arg2, arg1);
}

function excludeFromLimits(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor105[address(arg1)] = uint8(arg2)
    emit ExcludeFromLimits(arg2, arg1);
}

function sub_45712cc9(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    Mask(72, 0, stor124.field_0) = Mask(72, 0, bool(arg1))
    Mask(184, 0, stor124.field_72) = 0
    emit 0xc51b8a42: bool(arg1)
}

function openTrading(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not uint8(stor124.field_168):
        revert with 0, 'Liquidity not enabled.'
    Mask(96, 0, stor124.field_160) = Mask(96, 0, arg1)
    emit OpenTrading(arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function updateRouterAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'Address cannot be 0'
    if uniswapV2RouterAddress == arg1:
        revert with 0, 'Router already has that address'
    uniswapV2RouterAddress = arg1
    emit 0xafec2681: arg1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor101[address(arg1)] > stor107:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if not totalSupply:
        revert with 'NH{q', 18
    if not totalSupply:
        revert with 'NH{q', 18
    if not stor107 / totalSupply:
        revert with 'NH{q', 18
    return (stor101[address(arg1)] / stor107 / totalSupply)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: Approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: Approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_4ded73be(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not address(arg1):
        revert with 0, 'Address cannot be 0'
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor105[address(arg1)] = 1
    emit ExcludeFromLimits(1, address(arg1));
    stor105[stor122] = 0
    emit ExcludeFromLimits(0, sub_56d9b9a0Address);
    sub_56d9b9a0Address = address(arg1)
    emit 0xdb72479c: sub_56d9b9a0Address, address(arg1)
}

function sub_6e7efe96(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not eth.balance(this.address):
        revert with 0, 'Contract has a zero balance.'
    if arg1:
        call owner with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xc52f5671: 1
}

function sub_204b496a(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    _developmentFee = arg1
    if _marketingFee > !arg1:
        revert with 'NH{q', 17
    if _marketingFee + arg1 > !sub_ccc70314:
        revert with 'NH{q', 17
    if _marketingFee + arg1 + sub_ccc70314 > !_liquidityFee:
        revert with 'NH{q', 17
    sub_3f595807 = _marketingFee + arg1 + sub_ccc70314 + _liquidityFee
    stor116 = _marketingFee + arg1 + sub_ccc70314 + _liquidityFee
    emit 0x3e2e8abb: _developmentFee, _developmentFee
}

function sub_7850f1a3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    _marketingFee = arg1
    if arg1 > !_developmentFee:
        revert with 'NH{q', 17
    if arg1 + _developmentFee > !sub_ccc70314:
        revert with 'NH{q', 17
    if arg1 + _developmentFee + sub_ccc70314 > !_liquidityFee:
        revert with 'NH{q', 17
    sub_3f595807 = arg1 + _developmentFee + sub_ccc70314 + _liquidityFee
    stor116 = arg1 + _developmentFee + sub_ccc70314 + _liquidityFee
    emit 0x3e9383ce: _marketingFee, _marketingFee
}

function sub_adf200e2(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    sub_ccc70314 = arg1
    if _marketingFee > !_developmentFee:
        revert with 'NH{q', 17
    if _marketingFee + _developmentFee > !arg1:
        revert with 'NH{q', 17
    if _marketingFee + _developmentFee + arg1 > !_liquidityFee:
        revert with 'NH{q', 17
    sub_3f595807 = _marketingFee + _developmentFee + arg1 + _liquidityFee
    stor116 = _marketingFee + _developmentFee + arg1 + _liquidityFee
    emit 0x889dddbf: sub_ccc70314, sub_ccc70314
}

function sweepTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg2 <= 0:
        revert with 0, 'Invalid amount supplied.'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0xf1156aae: msg.sender, arg2
}

function setLiquidityTaxPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    _liquidityFee = arg1
    if _marketingFee > !_developmentFee:
        revert with 'NH{q', 17
    if _marketingFee + _developmentFee > !sub_ccc70314:
        revert with 'NH{q', 17
    if _marketingFee + _developmentFee + sub_ccc70314 > !arg1:
        revert with 'NH{q', 17
    sub_3f595807 = _marketingFee + _developmentFee + sub_ccc70314 + arg1
    stor116 = _marketingFee + _developmentFee + sub_ccc70314 + arg1
    emit 0x80ed03f2: _liquidityFee, _liquidityFee
}

function sub_2b0ff4be(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if uint8(arg1) < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Max Tc must be between 0.1% (1) and 100% (1000)'
    if uint8(arg1) > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Max Tc must be between 0.1% (1) and 100% (1000)'
    if totalSupply and uint8(arg1) > -1 / totalSupply:
        revert with 'NH{q', 17
    _maxTxAmount = totalSupply * uint8(arg1) / 1000
    emit 0xe7baa832: (totalSupply * uint8(arg1) / 1000)
}

function sub_be7a5793(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if uint8(arg1) < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Max wallet percentage must be between 0.1% (1) and 100% (1000)'
    if uint8(arg1) > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Max wallet percentage must be between 0.1% (1) and 100% (1000)'
    if totalSupply and uint8(arg1) > -1 / totalSupply:
        revert with 'NH{q', 17
    maxWalletAmount = totalSupply * uint8(arg1) / 1000
}

function sub_85a4397e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not address(arg1):
        revert with 0, 'Address cannot be 0'
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor104[address(arg1)] = 1
    emit ExcludeFromFees(1, address(arg1));
    stor104[stor119] = 0
    emit ExcludeFromFees(0, sub_c96a1a75Address);
    stor105[address(arg1)] = 1
    emit ExcludeFromLimits(1, address(arg1));
    stor105[stor119] = 0
    emit ExcludeFromLimits(0, sub_c96a1a75Address);
    sub_c96a1a75Address = address(arg1)
    emit 0xb35969a3: sub_c96a1a75Address, address(arg1)
}

function updateMarketingWalletAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'Address cannot be 0'
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor104[address(arg1)] = 1
    emit ExcludeFromFees(1, arg1);
    stor104[stor120] = 0
    emit ExcludeFromFees(0, _marketingWalletAddress);
    stor105[address(arg1)] = 1
    emit ExcludeFromLimits(1, arg1);
    stor105[stor120] = 0
    emit ExcludeFromLimits(0, _marketingWalletAddress);
    _marketingWalletAddress = arg1
    emit UpdatedMarketingWallet(_marketingWalletAddress, arg1);
}

function sub_0479f31e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not address(arg1):
        revert with 0, 'Address cannot be 0'
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor104[address(arg1)] = 1
    emit ExcludeFromFees(1, address(arg1));
    stor104[stor121] = 0
    emit ExcludeFromFees(0, _developmentWalletAddress);
    stor105[address(arg1)] = 1
    emit ExcludeFromLimits(1, address(arg1));
    stor105[stor121] = 0
    emit ExcludeFromLimits(0, _developmentWalletAddress);
    _developmentWalletAddress = address(arg1)
    emit 0xf87735eb: _developmentWalletAddress, address(arg1)
}

function manualSend() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if eth.balance(this.address) and sub_ccc70314 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    if not sub_3f595807:
        revert with 'NH{q', 18
    call sub_c96a1a75Address with:
       value eth.balance(this.address) * sub_ccc70314 / sub_3f595807 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) and _marketingFee > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    if not sub_3f595807:
        revert with 'NH{q', 18
    call _marketingWalletAddress with:
       value eth.balance(this.address) * _marketingFee / sub_3f595807 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) and _developmentFee > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    if not sub_3f595807:
        revert with 'NH{q', 18
    call _developmentWalletAddress with:
       value eth.balance(this.address) * _developmentFee / sub_3f595807 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) and _liquidityFee > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    if not sub_3f595807:
        revert with 'NH{q', 18
    call sub_56d9b9a0Address with:
       value eth.balance(this.address) * _liquidityFee / sub_3f595807 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x3a38922c: eth.balance(this.address)
}

function addLiquidity() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not uniswapV2RouterAddress:
        revert with 0, 'UniswapV2Router not set.'
    if not uniswapV2PairAddress:
        revert with 0, 'UniswapV2Pair not set.'
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: Approve from the zero address'
    if not uniswapV2RouterAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: Approve to the zero address'
    allowance[address(this.address)][stor123] = totalSupply
    emit Approval(totalSupply, this.address, uniswapV2RouterAddress);
    if stor101[address(this.address)] > stor107:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if not totalSupply:
        revert with 'NH{q', 18
    if not totalSupply:
        revert with 'NH{q', 18
    if not stor107 / totalSupply:
        revert with 'NH{q', 18
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args 0, 0, stor101[address(this.address)] / stor107 / totalSupply, 0, 0, owner, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(uniswapV2PairAddress)
    call uniswapV2PairAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uniswapV2RouterAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x3f20ce75: 1
}

function manualSwap() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if stor101[address(this.address)] > stor107:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if not totalSupply:
        revert with 'NH{q', 18
    if not totalSupply:
        revert with 'NH{q', 18
    if not stor107 / totalSupply:
        revert with 'NH{q', 18
    uint8(stor124.field_176) = 1
    mem[128] = this.address
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'ERC20: Approve from the zero address'
    if not uniswapV2RouterAddress:
        revert with 0, 'ERC20: Approve to the zero address'
    allowance[address(this.address)][stor123] = stor101[address(this.address)] / stor107 / totalSupply
    emit Approval((stor101[address(this.address)] / stor107 / totalSupply), this.address, uniswapV2RouterAddress);
    mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = stor101[address(this.address)] / stor107 / totalSupply
    idx = 0
    s = ceil32(return_data.size) + 388
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args stor101[address(this.address)] / stor107 / totalSupply, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor124.field_176) = 0
    emit 0x56ca8a41: (stor101[address(this.address)] / stor107 / totalSupply)
}

function initialize(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    totalSupply = 1000 * 10^18
    stor107 = 0xffffffffffffffffffffffffffffffffffffffffffffffe731bf092fde600000
    sub_ccc70314 = 1
    _developmentFee = 2
    _reflectionFee = 2
    _liquidityFee = 3
    _marketingFee = 2
    stor114 = 2
    sub_3f595807 = 8
    stor116 = 8
    maxWalletAmount = 10 * 10^18
    sub_c96a1a75Address = arg1
    _developmentWalletAddress = arg2
    _marketingWalletAddress = arg3
    sub_56d9b9a0Address = arg4
    uint32(stor124.field_160) = 0
    if totalSupply > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    _maxTxAmount = 2 * totalSupply / 1000
    stor101[msg.sender] = stor107
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor104[stor51] = 1
    emit ExcludeFromFees(1, owner);
    stor104[address(this.address)] = 1
    emit ExcludeFromFees(1, this.address);
    stor104[stor119] = 1
    emit ExcludeFromFees(1, sub_c96a1a75Address);
    stor104[stor120] = 1
    emit ExcludeFromFees(1, _marketingWalletAddress);
    stor104[stor121] = 1
    emit ExcludeFromFees(1, _developmentWalletAddress);
    stor104[stor122] = 1
    emit ExcludeFromFees(1, sub_56d9b9a0Address);
    stor105[stor51] = 1
    emit ExcludeFromLimits(1, owner);
    stor105[address(this.address)] = 1
    emit ExcludeFromLimits(1, this.address);
    stor105[stor119] = 1
    emit ExcludeFromLimits(1, sub_c96a1a75Address);
    stor105[stor120] = 1
    emit ExcludeFromLimits(1, _marketingWalletAddress);
    stor105[stor121] = 1
    emit ExcludeFromLimits(1, _developmentWalletAddress);
    stor105[stor122] = 1
    emit ExcludeFromLimits(1, sub_56d9b9a0Address);
    emit Transfer(totalSupply, 0, msg.sender);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function setPairAddress() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not uniswapV2RouterAddress:
        revert with 0, 'Must set uniswapV2Router first'
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
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
    uniswapV2PairAddress = ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        require ext_code.size(uniswapV2RouterAddress)
        staticcall uniswapV2RouterAddress.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(uniswapV2RouterAddress)
        staticcall uniswapV2RouterAddress.WETH() with:
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
    emit 0x79f5b680: 1
}



}
