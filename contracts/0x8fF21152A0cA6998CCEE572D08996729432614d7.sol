contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - reflectionFromToken(uint256 arg1, bool arg2)
#  - transfer(address arg1, uint256 arg2)
#
const decimals = 18


address _owner;
mapping of uint8 stor1;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor5;
mapping of uint8 stor6;
uint256 totalSupply;
uint256 stor8;
uint256 totalFees;
array of uint256 name;
array of uint256 symbol;
uint256 _liquidityFee;
uint256 _burnFee;
uint256 _devFee;
uint256 sub_60dd1e3a;
uint256 sub_a41a08fb;
uint256 _taxFee;
mapping of address inviter;
address burnAddress;
address devAddress;
address sub_4422352aAddress;
address sub_e8aa607aAddress;
address uniswapV2RouterAddress;
uint8 swapAndLiquifyEnabled; offset 168
uint8 sub_dac92df0; offset 176
uint8 sub_ed5792d7; offset 184
uint128 stor32; offset 184
uint128 stor32; offset 176
uint128 stor32; offset 168
address uniswapV2PairAddress;

function name() {
    return name[0 len name.length]
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

function devAddress() {
    return devAddress
}

function _taxFee() {
    return _taxFee
}

function sub_4422352a(?) {
    return sub_4422352aAddress
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[address(arg1)])
}

function sub_60dd1e3a(?) {
    return sub_60dd1e3a
}

function _liquidityFee() {
    return _liquidityFee
}

function burnAddress() {
    return burnAddress
}

function owner() {
    return _owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a41a08fb(?) {
    return sub_a41a08fb
}

function _devFee() {
    return _devFee
}

function _owner() {
    return _owner
}

function _burnFee() {
    return _burnFee
}

function sub_dac92df0(?) {
    return bool(sub_dac92df0)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_e8aa607a(?) {
    return sub_e8aa607aAddress
}

function sub_ed5792d7(?) {
    return bool(sub_ed5792d7)
}

function inviter(address arg1) {
    require calldata.size - 4 >= 32
    return inviter[arg1]
}

function _fallback() payable {
    revert
}

function sub_f8c564c6(?) {
    require calldata.size - 4 >= 32
    require stor1[address(msg.sender)]
    sub_60dd1e3a = arg1
}

function setTaxFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require stor1[address(msg.sender)]
    _taxFee = arg1
}

function setDevFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require stor1[address(msg.sender)]
    _devFee = arg1
}

function setBurnFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require stor1[address(msg.sender)]
    _burnFee = arg1
}

function renounceOwnership() {
    require stor1[address(msg.sender)]
    emit OwnershipTransferred(_owner, 0);
    stor1[stor0] = 0
    _owner = 0
}

function setLiquidityFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require stor1[address(msg.sender)]
    _liquidityFee = arg1
}

function setBlack(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require stor1[address(msg.sender)]
    stor6[address(arg1)] = uint8(arg2)
}

function setSwapDevEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require stor1[address(msg.sender)]
    Mask(80, 0, stor32.field_176) = Mask(80, 0, arg1)
}

function setExcludedFromFee(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require stor1[address(msg.sender)]
    stor5[address(arg1)] = uint8(arg2)
}

function setLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require stor1[address(msg.sender)]
    Mask(72, 0, stor32.field_184) = Mask(72, 0, arg1)
}

function setOwner(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require stor1[address(msg.sender)]
    _owner = arg1
    stor1[address(arg1)] = uint8(arg2)
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require stor1[address(msg.sender)]
    Mask(88, 0, stor32.field_168) = Mask(88, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function sub_b43c25e8(?) {
    require calldata.size - 4 >= 64
    require stor1[address(msg.sender)]
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7cc68dc7(?) {
    require calldata.size - 4 >= 96
    require stor1[address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require stor1[address(msg.sender)]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(_owner, arg1);
    stor1[stor0] = 0
    stor1[address(arg1)] = 1
    _owner = arg1
}

function tokenFromReflection(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if stor8 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor8 / totalSupply
    return (arg1 / stor8 / totalSupply)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if stor2[address(arg1)] > stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if stor8 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor8 / totalSupply
    return (stor2[address(arg1)] / stor8 / totalSupply)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}



}
