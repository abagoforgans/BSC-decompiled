contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transferOwner(address arg1)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = '', 0

const symbol = '', 0

const DEAD = 57005


address owner;
mapping of uint256 balanceOf;
mapping of uint8 stor2;
uint256 stor3;
mapping of uint256 allowance;
mapping of uint8 stor5;
mapping of uint8 stor6;
uint8 stor7;
mapping of uint8 stor8;
uint8 decimals;
uint256 totalSupply;
uint16 stor12;
uint16 stor12; offset 16
uint16 stor12; offset 32
uint16 stor13;
uint16 stor13; offset 16
uint16 stor13; offset 32
uint16 stor13; offset 48
uint16 stor13; offset 64
uint16 stor13; offset 80
uint16 stor13; offset 96
uint16 stor14;
uint16 stor14; offset 16
uint16 stor14; offset 32
uint16 stor14; offset 48
address dexRouterAddress;
address lpPairAddress;
address currentRouterAddress;
address _marketingWalletAddress;
address sub_bc3e0739Address;
address sub_d41dfd5bAddress;
address stor21;
uint8 contractSwapEnabled; offset 168
uint128 stor22; offset 168
address sub_506757c0Address;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint8 tradingEnabled;
uint8 _hasLiqBeenAdded; offset 8

function dexRouter() {
    return dexRouterAddress
}

function currentRouter() {
    return currentRouterAddress
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function lpPair() {
    return lpPairAddress
}

function tradingEnabled() {
    return bool(tradingEnabled)
}

function isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[address(arg1)])
}

function sub_506757c0(?) {
    return sub_506757c0Address
}

function _hasLiqBeenAdded() {
    return bool(_hasLiqBeenAdded)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function _marketingWallet() {
    return _marketingWalletAddress
}

function sub_bc3e0739(?) {
    return sub_bc3e0739Address
}

function sub_d41dfd5b(?) {
    return sub_d41dfd5bAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function contractSwapEnabled() {
    return bool(contractSwapEnabled)
}

function sub_069d955f(?) {
    return uint16(stor12.field_0), uint16(stor12.field_0), uint16(stor12.field_32)
}

function staticVals() {
    return uint16(stor14.field_0), uint16(stor14.field_0), uint16(stor14.field_0), uint16(stor14.field_48)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    stor5[stor0] = 0
    owner = 0
    emit OwnershipTransferred(address arg1, address arg2)
    emit 0x0 
    emit 0x0 
}

function getCirculatingSupply() {
    if balanceOf[57005] > !balanceOf[0]:
        revert with 0, 17
    if totalSupply < balanceOf[57005] + balanceOf[0]:
        revert with 0, 17
    return (totalSupply - balanceOf[57005] - balanceOf[0])
}

function changeRouterContingency(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    require not _hasLiqBeenAdded
    currentRouterAddress = arg1
}

function setContractSwapEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    stor22 = Mask(88, 0, arg1)
    emit ContractSwapEnabledUpdated(arg1);
}

function setExcludedFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    stor5[address(arg1)] = uint8(arg2)
}

function _ratios() {
    return uint16(stor13.field_0), 
           uint16(stor13.field_0),
           uint16(stor13.field_0),
           uint16(stor13.field_0),
           uint16(stor13.field_64),
           uint16(stor13.field_0),
           uint16(stor13.field_96)
}

function enableTrading() {
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if tradingEnabled:
        revert with 0, 'Trading already enabled!'
    if not _hasLiqBeenAdded:
        revert with 0, 'Liquidity must be added.'
    tradingEnabled = 1
}

function setInitializer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if _hasLiqBeenAdded:
        revert with 0, 'Liquidity is already in.'
    if this.address == arg1:
        revert with 0, 'Can't be self.'
}

function withdrawETH(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to withdraw ETH'
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0, 'ERC20: Zero Address'
    if not arg1:
        revert with 0, 'ERC20: Zero Address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function approveContractContingency() {
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if not this.address:
        revert with 0, 'ERC20: Zero Address'
    if not dexRouterAddress:
        revert with 0, 'ERC20: Zero Address'
    allowance[address(this.address)][stor15] = -1
    emit Approval(-1, this.address, dexRouterAddress);
    return 1
}

function sweepContingency() {
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if _hasLiqBeenAdded:
        revert with 0, 'Cannot call after liquidity.'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setWallets(address arg1, address arg2, address arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    _marketingWalletAddress = arg1
    sub_bc3e0739Address = arg2
    sub_d41dfd5bAddress = arg3
    sub_506757c0Address = arg4
    if not stor21:
        stor21 = arg5
}

function setSwapSettings(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    stor25 = totalSupply * arg1 / arg2
    if totalSupply and arg3 > -1 / totalSupply:
        revert with 0, 17
    if not arg4:
        revert with 0, 18
    stor26 = totalSupply * arg3 / arg4
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: Zero Address'
    if not arg1:
        revert with 0, 'ERC20: Zero Address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: Zero Address'
    if not arg1:
        revert with 0, 'ERC20: Zero Address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function setLpPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if not arg2:
        stor2[address(arg1)] = 0
    else:
        if stor3:
            if block.timestamp < stor3:
                revert with 0, 17
            if block.timestamp - stor3 <= 72 * 24 * 3600:
                revert with 0, '3 Day cooldown.!'
        stor2[address(arg1)] = 1
        stor3 = block.timestamp
}

function setTaxes(uint16 arg1, uint16 arg2, uint16 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if arg1 > uint16(stor14.field_0):
        revert with 0, 'Cannot exceed maximums.'
    if arg2 > uint16(stor14.field_16):
        revert with 0, 'Cannot exceed maximums.'
    if arg3 > uint16(stor14.field_32):
        revert with 0, 'Cannot exceed maximums.'
    uint16(stor12.field_0) = arg1
    uint16(stor12.field_16) = arg2
    uint16(stor12.field_32) = arg3
}

function setMaxWalletSize(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if totalSupply * arg1 / arg2 < totalSupply / 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Max Wallet amt must be above 0.1% of total supply.'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    stor24 = totalSupply * arg1 / arg2
}

function setMaxTxPercent(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if totalSupply * arg1 / arg2 < totalSupply / 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Max Transaction amt must be above 0.1% of total supply.'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    stor23 = totalSupply * arg1 / arg2
}

function getMaxTX() {
    if not decimals:
        return stor23
    if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
        if not 10^decimals:
            revert with 0, 18
        return (stor23 / 10^decimals)
    s = 10
    t = 1
    idx = decimals
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    return (stor23 / s * t)
}

function getMaxWallet() {
    if not decimals:
        return stor24
    if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
        if not 10^decimals:
            revert with 0, 18
        return (stor24 / 10^decimals)
    s = 10
    t = 1
    idx = decimals
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    return (stor24 / s * t)
}

function excludePresaleAddresses(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if not stor7:
        revert with 0, 'Function already used.'
    if arg1 == arg2:
        stor8[address(arg2)] = 1
        stor6[address(arg2)] = 1
        if owner != msg.sender:
            revert with 0, 'Caller =/= owner.'
    else:
        stor8[address(arg1)] = 1
        stor8[arg2] = 1
        stor6[address(arg1)] = 1
        stor6[arg2] = 1
        if owner != msg.sender:
            revert with 0, 'Caller =/= owner.'
        stor5[address(arg1)] = 1
    stor5[address(arg2)] = 1
}

function setNewRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall arg1.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        staticcall arg1.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall arg1.WETH() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(this.address), address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    lpPairAddress = ext_call.return_data[12 len 20]
    dexRouterAddress = arg1
    if not this.address:
        revert with 0, 'ERC20: Zero Address'
    if not arg1:
        revert with 0, 'ERC20: Zero Address'
    allowance[address(this.address)][address(arg1)] = -1
    emit Approval(-1, this.address, arg1);
}

function sub_d69153c9(?) {
    require calldata.size - 4 >= 192
    require arg1 == uint16(arg1)
    require arg2 == uint16(arg2)
    require arg3 == uint16(arg3)
    require arg4 == uint16(arg4)
    require arg5 == uint16(arg5)
    require arg6 == uint16(arg6)
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if uint16(arg1) > -uint16(arg2) + 65535:
        revert with 0, 17
    if uint16(uint16(arg2) + uint16(arg1)) > -uint16(arg3) + 65535:
        revert with 0, 17
    if uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1))) > -uint16(arg4) + 65535:
        revert with 0, 17
    if uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1)))) > -uint16(arg6) + 65535:
        revert with 0, 17
    if uint16(uint16(arg6) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1))))) > -uint16(arg5) + 65535:
        revert with 0, 17
    if uint16(uint16(arg5) + uint16(uint16(arg6) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1)))))) > 655:
        revert with 0, 17
    if uint16(arg6) > 6:
        revert with 0, 17
    if not uint16(100 * uint16(uint16(arg5) + uint16(uint16(arg6) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1))))))):
        revert with 0, 18
    require uint16(uint16(10000 * uint16(arg6)) / uint16(100 * uint16(uint16(arg5) + uint16(uint16(arg6) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1)))))))) >= 10
    uint16(stor13.field_0) = uint16(arg1)
    uint16(stor13.field_16) = uint16(arg2)
    uint16(stor13.field_32) = uint16(arg3)
    uint16(stor13.field_48) = uint16(arg4)
    uint16(stor13.field_64) = uint16(arg6)
    uint16(stor13.field_80) = uint16(arg5)
    if uint16(arg1) > -uint16(arg2) + 65535:
        revert with 0, 17
    if uint16(uint16(arg2) + uint16(arg1)) > -uint16(arg3) + 65535:
        revert with 0, 17
    if uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1))) > -uint16(arg4) + 65535:
        revert with 0, 17
    if uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1)))) > -uint16(arg6) + 65535:
        revert with 0, 17
    if uint16(uint16(arg6) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1))))) > -uint16(arg5) + 65535:
        revert with 0, 17
    uint16(stor13.field_96) = uint16(uint16(arg5) + uint16(uint16(arg6) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1))))))
}



}
