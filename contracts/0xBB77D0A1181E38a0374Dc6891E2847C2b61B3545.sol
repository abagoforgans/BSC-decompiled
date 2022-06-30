contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - sub_2610eaca(?)
#  - sub_6e8cd492(?)
#  - sub_e8a0e3f9(?)
#  - _fallback()
#
const name = 'MetaGameSpace', 0

const symbol = '', 0

const DEAD = 57005


address owner;
mapping of uint256 balanceOf;
uint256 cBalance;
address sub_d3be0b2aAddress;
mapping of uint8 stor4;
uint256 stor5;
mapping of uint256 allowance;
mapping of uint8 stor7;
mapping of uint8 stor10;
uint8 stor11;
mapping of uint8 stor12;
uint8 decimals;
uint256 totalSupply;
uint16 stor16;
uint16 stor16; offset 16
uint16 stor16; offset 32
uint16 stor17;
uint16 stor17; offset 16
uint16 stor17; offset 32
uint16 stor17; offset 48
uint16 stor18;
uint16 stor18; offset 16
uint16 stor18; offset 32
uint16 stor18; offset 48
address dexRouterAddress;
address currentRouterAddress;
uint32 stor21;
address lpPairAddress;
address stor22;
address stor23;
address stor24;
uint8 stor25;
uint8 contractSwapEnabled; offset 8
uint256 stor25; offset 8
uint256 stor26;
uint256 stor27;
uint256 swapThreshold;
uint256 sub_2e8fa821;
uint256 sub_b1283c1c;
uint256 lastSwap;
uint8 stor32;
uint8 stor32; offset 8
address stor32; offset 16
uint256 stor32; offset 16

function lastSwap() {
    return lastSwap
}

function swapThreshold() {
    return swapThreshold
}

function dexRouter() {
    return dexRouterAddress
}

function currentRouter() {
    return currentRouterAddress
}

function totalSupply() {
    return totalSupply
}

function sub_2e8fa821(?) {
    return sub_2e8fa821
}

function decimals() {
    return decimals
}

function lpPair() {
    return address(lpPairAddress)
}

function tradingEnabled() {
    return bool(uint8(stor32.field_0))
}

function isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[address(arg1)])
}

function _hasLiqBeenAdded() {
    return bool(uint8(stor32.field_8))
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

function cBalance() {
    return cBalance
}

function sub_b1283c1c(?) {
    return sub_b1283c1c
}

function sub_d3be0b2a(?) {
    return sub_d3be0b2aAddress
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

function sub_f94aa1b4(?) {
    return stor22, stor23, stor24
}

function sub_069d955f(?) {
    return uint16(stor16.field_0), uint16(stor16.field_0), uint16(stor16.field_32)
}

function _ratios() {
    return uint16(stor17.field_0), uint16(stor17.field_0), uint16(stor17.field_0), uint16(stor17.field_48)
}

function staticVals() {
    return uint16(stor18.field_0), uint16(stor18.field_0), uint16(stor18.field_0), uint16(stor18.field_48)
}

function setMaxTxPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    stor26 = arg1
}

function setMaxWalletSize(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    stor27 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    stor7[stor0] = 0
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
    require not uint8(stor32.field_8)
    currentRouterAddress = arg1
}

function setExcludedFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    stor7[address(arg1)] = uint8(arg2)
}

function setContractSwapEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    Mask(248, 0, stor25.field_8) = Mask(248, 0, arg1)
    emit ContractSwapEnabledUpdated(arg1);
}

function getSniperAmt() {
    staticcall address(stor32.field_16).0x55dbc369 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sweepContingency() {
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setWallets(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    stor22 = arg1
    stor23 = arg2
    stor24 = arg3
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

function setInitializer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if uint8(stor32.field_8):
        revert with 0, 'Liquidity is already in.'
    if this.address == arg1:
        revert with 0, 'Can't be self.'
    address(stor32.field_16) = arg1
}

function getMaxTX() {
    if balanceOf[57005] > !balanceOf[0]:
        revert with 0, 17
    if totalSupply < balanceOf[57005] + balanceOf[0]:
        revert with 0, 17
    if stor26 and totalSupply - balanceOf[57005] - balanceOf[0] > -1 / stor26:
        revert with 0, 17
    return ((totalSupply * stor26) - (balanceOf[57005] * stor26) - (balanceOf[0] * stor26) / 1000)
}

function approveContractContingency() {
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if not this.address:
        revert with 0, 'ERC20: Zero Address'
    if not dexRouterAddress:
        revert with 0, 'ERC20: Zero Address'
    allowance[address(this.address)][stor19] = -1
    emit Approval(-1, this.address, dexRouterAddress);
    return 1
}

function getMaxWallet() {
    if balanceOf[57005] > !balanceOf[0]:
        revert with 0, 17
    if totalSupply < balanceOf[57005] + balanceOf[0]:
        revert with 0, 17
    if stor27 and totalSupply - balanceOf[57005] - balanceOf[0] > -1 / stor27:
        revert with 0, 17
    return ((totalSupply * stor27) - (balanceOf[57005] * stor27) - (balanceOf[0] * stor27) / 1000)
}

function removeSniper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    require ext_code.size(address(stor32.field_16))
    call address(stor32.field_16).0x33251a0b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function removeBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    require ext_code.size(address(stor32.field_16))
    call address(stor32.field_16).0xc6a276c2 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall address(stor32.field_16).0xfe575a87 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function setGasPriceLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if arg1 < 75:
        revert with 0, 'Too low.'
    require ext_code.size(address(stor32.field_16))
    call address(stor32.field_16).setGasPriceLimit(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function setRatios(uint16 arg1, uint16 arg2, uint16 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    uint16(stor17.field_0) = arg1
    uint16(stor17.field_16) = arg2
    uint16(stor17.field_32) = arg3
    if arg1 > -arg2 + 65535:
        revert with 0, 17
    if uint16(arg2 + arg1) > -arg3 + 65535:
        revert with 0, 17
    uint16(stor17.field_48) = uint16(arg3 + uint16(arg2 + arg1))
}

function setSwapSettings(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    swapThreshold = totalSupply * arg1 / arg2
    if totalSupply and arg3 > -1 / totalSupply:
        revert with 0, 17
    if not arg4:
        revert with 0, 18
    sub_2e8fa821 = totalSupply * arg3 / arg4
    sub_b1283c1c = arg5
}

function enableTrading() {
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if uint8(stor32.field_0):
        revert with 0, 'Trading already enabled!'
    if not address(stor32.field_16):
        Mask(240, 0, stor32.field_16) = Mask(240, 0, this.address)
    require ext_code.size(address(stor32.field_16))
    call address(stor32.field_16).setLaunch(address arg1, uint32 arg2, uint64 arg3, uint8 arg4) with:
         gas gas_remaining wei
        args 0, uint32(stor21), block.number << 224, block.timestamp << 192, decimals
    uint8(stor32.field_0) = 1
}

function setProtectionSettings(bool arg1, bool arg2, bool arg3, bool arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    require ext_code.size(address(stor32.field_16))
    call address(stor32.field_16).setProtections(bool arg1, bool arg2, bool arg3, bool arg4) with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setTaxes(uint16 arg1, uint16 arg2, uint16 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if arg1 > uint16(stor18.field_0):
        revert with 0, 'Cannot exceed maximums.'
    if arg2 > uint16(stor18.field_16):
        revert with 0, 'Cannot exceed maximums.'
    if arg3 > uint16(stor18.field_32):
        revert with 0, 'Cannot exceed maximums.'
    uint16(stor16.field_0) = arg1
    uint16(stor16.field_16) = arg2
    uint16(stor16.field_32) = arg3
}

function excludePresaleAddresses(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if not stor11:
        revert with 0, 'Function already used.'
    if arg1 == arg2:
        stor12[address(arg2)] = 1
        stor10[address(arg2)] = 1
        if owner != msg.sender:
            revert with 0, 'Caller =/= owner.'
    else:
        stor12[address(arg1)] = 1
        stor12[arg2] = 1
        stor10[address(arg1)] = 1
        stor10[arg2] = 1
        if owner != msg.sender:
            revert with 0, 'Caller =/= owner.'
        stor7[address(arg1)] = 1
    stor7[address(arg2)] = 1
}

function setLpPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if not arg2:
        stor4[address(arg1)] = 0
        require ext_code.size(address(stor32.field_16))
        call address(stor32.field_16).0x80c581d1 with:
             gas gas_remaining wei
            args address(arg1), 0
    else:
        if stor5:
            if block.timestamp < stor5:
                revert with 0, 17
            if block.timestamp - stor5 <= 72 * 24 * 3600:
                revert with 0, '3 Day cooldown.!'
        stor4[address(arg1)] = 1
        stor5 = block.timestamp
        require ext_code.size(address(stor32.field_16))
        call address(stor32.field_16).0x80c581d1 with:
             gas gas_remaining wei
            args address(arg1), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b6d37a4e(?) {
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if not decimals:
        cBalance = balanceOf[address(this.address)]
    else:
        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
            if not 10^decimals:
                revert with 0, 18
            cBalance = balanceOf[address(this.address)] / 10^decimals
        else:
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
            cBalance = balanceOf[address(this.address)] / s * t
    return balanceOf[address(this.address)]
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
    address(lpPairAddress) = ext_call.return_data[12 len 20]
    dexRouterAddress = arg1
    if not this.address:
        revert with 0, 'ERC20: Zero Address'
    if not arg1:
        revert with 0, 'ERC20: Zero Address'
    allowance[address(this.address)][address(arg1)] = -1
    emit Approval(-1, this.address, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if owner != msg.sender:
        if owner != arg1:
            if owner != tx.origin:
                if not stor12[address(arg1)]:
                    if not stor12[address(msg.sender)]:
                        if arg1 != 57005:
                            if arg1:
                                if msg.sender != this.address:
                                    if not uint8(stor32.field_0):
                                        revert with 0, 'Trading not yet enabled!'
                                    if stor4[address(msg.sender)]:
                                        if balanceOf[57005] > !balanceOf[0]:
                                            revert with 0, 17
                                        if totalSupply < balanceOf[57005] + balanceOf[0]:
                                            revert with 0, 17
                                        if stor26 and totalSupply - balanceOf[57005] - balanceOf[0] > -1 / stor26:
                                            revert with 0, 17
                                        if arg2 > (totalSupply * stor26) - (balanceOf[57005] * stor26) - (balanceOf[0] * stor26) / 1000:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                                    else:
                                        if stor4[address(arg1)]:
                                            if balanceOf[57005] > !balanceOf[0]:
                                                revert with 0, 17
                                            if totalSupply < balanceOf[57005] + balanceOf[0]:
                                                revert with 0, 17
                                            if stor26 and totalSupply - balanceOf[57005] - balanceOf[0] > -1 / stor26:
                                                revert with 0, 17
                                            if arg2 > (totalSupply * stor26) - (balanceOf[57005] * stor26) - (balanceOf[0] * stor26) / 1000:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                                    if currentRouterAddress != arg1:
                                        if not stor4[address(arg1)]:
                                            if balanceOf[57005] > !balanceOf[0]:
                                                revert with 0, 17
                                            if totalSupply < balanceOf[57005] + balanceOf[0]:
                                                revert with 0, 17
                                            if stor27 and totalSupply - balanceOf[57005] - balanceOf[0] > -1 / stor27:
                                                revert with 0, 17
                                            if balanceOf[address(arg1)] > !arg2:
                                                revert with 0, 17
                                            if balanceOf[address(arg1)] + arg2 > (totalSupply * stor27) - (balanceOf[57005] * stor27) - (balanceOf[0] * stor27) / 1000:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxWalletSize.'
    if stor4[address(arg1)]:
        if not uint8(stor25.field_0):
            if contractSwapEnabled:
                if not stor10[address(arg1)]:
                    if not stor10[address(msg.sender)]:
                        if balanceOf[address(this.address)] >= swapThreshold:
                            if lastSwap > !sub_b1283c1c:
                                revert with 0, 17
                            if lastSwap + sub_b1283c1c < block.timestamp:
                                uint8(stor25.field_0) = 1
                                if balanceOf[address(this.address)] < sub_2e8fa821:
                                    if uint16(stor17.field_48):
                                        if allowance[this.address][stor19] != -1:
                                            allowance[this.address][stor19] = -1
                                        if balanceOf[address(this.address)] and uint16(stor17.field_0) > -1 / balanceOf[address(this.address)]:
                                            revert with 0, 17
                                        if not uint16(stor17.field_48):
                                            revert with 0, 18
                                        if balanceOf[address(this.address)] < balanceOf[address(this.address)] * uint16(stor17.field_0) / uint16(stor17.field_48) / 2:
                                            revert with 0, 17
                                        mem[128] = this.address
                                        staticcall dexRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)] - (balanceOf[address(this.address)] * uint16(stor17.field_0) / uint16(stor17.field_48) / 2)
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(dexRouterAddress)
                                        call dexRouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[address(this.address)] - (balanceOf[address(this.address)] * uint16(stor17.field_0) / uint16(stor17.field_48) / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) and uint16(stor17.field_0) > -1 / eth.balance(this.address):
                                            revert with 0, 17
                                        if not uint16(stor17.field_48):
                                            revert with 0, 18
                                        if Mask(255, 1, balanceOf[address(this.address)] * uint16(stor17.field_0) / uint16(stor17.field_48)):
                                            call dexRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) * uint16(stor17.field_0) / uint16(stor17.field_48) / 2 wei
                                                 gas gas_remaining wei
                                                args this.address, Mask(255, 1, balanceOf[address(this.address)] * uint16(stor17.field_0) / uint16(stor17.field_48)), 0, 0, stor24, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            emit SwapAndLiquify(Mask(255, 1, balanceOf[address(this.address)] * uint16(stor17.field_0) / uint16(stor17.field_48)), Mask(255, 1, eth.balance(this.address) * uint16(stor17.field_0) / uint16(stor17.field_48)), balanceOf[address(this.address)] * uint16(stor17.field_0) / uint16(stor17.field_48) / 2);
                                        if eth.balance(this.address) > 0:
                                            if uint16(stor17.field_48) < uint16(stor17.field_0):
                                                revert with 0, 17
                                            if uint16(uint16(stor17.field_48) - uint16(stor17.field_0)) > 0:
                                                if uint16(stor17.field_48) < uint16(stor17.field_0):
                                                    revert with 0, 17
                                                if eth.balance(this.address) and uint16(stor17.field_32) > -1 / eth.balance(this.address):
                                                    revert with 0, 17
                                                if not uint16(uint16(stor17.field_48) - uint16(stor17.field_0)):
                                                    revert with 0, 18
                                                call stor23 with:
                                                   value eth.balance(this.address) * uint16(stor17.field_32) / uint16(uint16(stor17.field_48) - uint16(stor17.field_0)) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call stor22 with:
                                                   value eth.balance(this.address) wei
                                                     gas 2300 * is_zero(value) wei
                                else:
                                    if uint16(stor17.field_48):
                                        if allowance[this.address][stor19] != -1:
                                            allowance[this.address][stor19] = -1
                                        if sub_2e8fa821 and uint16(stor17.field_0) > -1 / sub_2e8fa821:
                                            revert with 0, 17
                                        if not uint16(stor17.field_48):
                                            revert with 0, 18
                                        if sub_2e8fa821 < sub_2e8fa821 * uint16(stor17.field_0) / uint16(stor17.field_48) / 2:
                                            revert with 0, 17
                                        mem[128] = this.address
                                        staticcall dexRouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = sub_2e8fa821 - (sub_2e8fa821 * uint16(stor17.field_0) / uint16(stor17.field_48) / 2)
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(dexRouterAddress)
                                        call dexRouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args sub_2e8fa821 - (sub_2e8fa821 * uint16(stor17.field_0) / uint16(stor17.field_48) / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) and uint16(stor17.field_0) > -1 / eth.balance(this.address):
                                            revert with 0, 17
                                        if not uint16(stor17.field_48):
                                            revert with 0, 18
                                        if Mask(255, 1, sub_2e8fa821 * uint16(stor17.field_0) / uint16(stor17.field_48)):
                                            call dexRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value eth.balance(this.address) * uint16(stor17.field_0) / uint16(stor17.field_48) / 2 wei
                                                 gas gas_remaining wei
                                                args this.address, Mask(255, 1, sub_2e8fa821 * uint16(stor17.field_0) / uint16(stor17.field_48)), 0, 0, stor24, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                            emit SwapAndLiquify(Mask(255, 1, sub_2e8fa821 * uint16(stor17.field_0) / uint16(stor17.field_48)), Mask(255, 1, eth.balance(this.address) * uint16(stor17.field_0) / uint16(stor17.field_48)), sub_2e8fa821 * uint16(stor17.field_0) / uint16(stor17.field_48) / 2);
                                        if eth.balance(this.address) > 0:
                                            if uint16(stor17.field_48) < uint16(stor17.field_0):
                                                revert with 0, 17
                                            if uint16(uint16(stor17.field_48) - uint16(stor17.field_0)) > 0:
                                                if uint16(stor17.field_48) < uint16(stor17.field_0):
                                                    revert with 0, 17
                                                if eth.balance(this.address) and uint16(stor17.field_32) > -1 / eth.balance(this.address):
                                                    revert with 0, 17
                                                if not uint16(uint16(stor17.field_48) - uint16(stor17.field_0)):
                                                    revert with 0, 18
                                                call stor23 with:
                                                   value eth.balance(this.address) * uint16(stor17.field_32) / uint16(uint16(stor17.field_48) - uint16(stor17.field_0)) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                call stor22 with:
                                                   value eth.balance(this.address) wei
                                                     gas 2300 * is_zero(value) wei
                                uint8(stor25.field_0) = 0
                                lastSwap = block.timestamp
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 17
    balanceOf[address(msg.sender)] -= arg2
    if stor7[address(msg.sender)]:
        if balanceOf[address(arg1)] > !arg2:
            revert with 0, 17
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if stor7[address(arg1)]:
            if balanceOf[address(arg1)] > !arg2:
                revert with 0, 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if address(lpPairAddress) == msg.sender:
                if arg2 and uint16(stor16.field_0) > -1 / arg2:
                    revert with 0, 17
                if not uint16(stor18.field_48):
                    revert with 0, 18
                if balanceOf[this.address] > !(arg2 * uint16(stor16.field_0) / uint16(stor18.field_48)):
                    revert with 0, 17
                balanceOf[this.address] += arg2 * uint16(stor16.field_0) / uint16(stor18.field_48)
                emit Transfer((arg2 * uint16(stor16.field_0) / uint16(stor18.field_48)), msg.sender, this.address);
                if arg2 < arg2 * uint16(stor16.field_0) / uint16(stor18.field_48):
                    revert with 0, 17
                if balanceOf[address(arg1)] > !(arg2 - (arg2 * uint16(stor16.field_0) / uint16(stor18.field_48))):
                    revert with 0, 17
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * uint16(stor16.field_0) / uint16(stor18.field_48))
                emit Transfer((arg2 - (arg2 * uint16(stor16.field_0) / uint16(stor18.field_48))), msg.sender, arg1);
            else:
                if address(lpPairAddress) != arg1:
                    if arg2 and uint16(stor16.field_32) > -1 / arg2:
                        revert with 0, 17
                    if not uint16(stor18.field_48):
                        revert with 0, 18
                    if balanceOf[this.address] > !(arg2 * uint16(stor16.field_32) / uint16(stor18.field_48)):
                        revert with 0, 17
                    balanceOf[this.address] += arg2 * uint16(stor16.field_32) / uint16(stor18.field_48)
                    emit Transfer((arg2 * uint16(stor16.field_32) / uint16(stor18.field_48)), msg.sender, this.address);
                    if arg2 < arg2 * uint16(stor16.field_32) / uint16(stor18.field_48):
                        revert with 0, 17
                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * uint16(stor16.field_32) / uint16(stor18.field_48))):
                        revert with 0, 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * uint16(stor16.field_32) / uint16(stor18.field_48))
                    emit Transfer((arg2 - (arg2 * uint16(stor16.field_32) / uint16(stor18.field_48))), msg.sender, arg1);
                else:
                    if arg2 and uint16(stor16.field_16) > -1 / arg2:
                        revert with 0, 17
                    if not uint16(stor18.field_48):
                        revert with 0, 18
                    if balanceOf[this.address] > !(arg2 * uint16(stor16.field_16) / uint16(stor18.field_48)):
                        revert with 0, 17
                    balanceOf[this.address] += arg2 * uint16(stor16.field_16) / uint16(stor18.field_48)
                    emit Transfer((arg2 * uint16(stor16.field_16) / uint16(stor18.field_48)), msg.sender, this.address);
                    if arg2 < arg2 * uint16(stor16.field_16) / uint16(stor18.field_48):
                        revert with 0, 17
                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * uint16(stor16.field_16) / uint16(stor18.field_48))):
                        revert with 0, 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * uint16(stor16.field_16) / uint16(stor18.field_48))
                    emit Transfer((arg2 - (arg2 * uint16(stor16.field_16) / uint16(stor18.field_48))), msg.sender, arg1);
    return 1
}

function transferOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Call renounceOwnership to transfer owner to the zero address.'
    if 57005 == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Call renounceOwnership to transfer owner to the zero address.'
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    stor7[stor0] = 0
    stor7[address(arg1)] = 1
    if balanceOf[stor0] > 0:
        if not owner:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[stor0] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
        if owner != owner:
            if owner != arg1:
                if owner != tx.origin:
                    if not stor12[address(arg1)]:
                        if not stor12[stor0]:
                            if arg1 != 57005:
                                if arg1:
                                    if owner != this.address:
                                        if not uint8(stor32.field_0):
                                            revert with 0, 'Trading not yet enabled!'
                                        if stor4[stor0]:
                                            if balanceOf[57005] > !balanceOf[0]:
                                                revert with 0, 17
                                            if totalSupply < balanceOf[57005] + balanceOf[0]:
                                                revert with 0, 17
                                            if stor26 and totalSupply - balanceOf[57005] - balanceOf[0] > -1 / stor26:
                                                revert with 0, 17
                                            if balanceOf[stor0] > (totalSupply * stor26) - (balanceOf[57005] * stor26) - (balanceOf[0] * stor26) / 1000:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                                        else:
                                            if stor4[address(arg1)]:
                                                if balanceOf[57005] > !balanceOf[0]:
                                                    revert with 0, 17
                                                if totalSupply < balanceOf[57005] + balanceOf[0]:
                                                    revert with 0, 17
                                                if stor26 and totalSupply - balanceOf[57005] - balanceOf[0] > -1 / stor26:
                                                    revert with 0, 17
                                                if balanceOf[stor0] > (totalSupply * stor26) - (balanceOf[57005] * stor26) - (balanceOf[0] * stor26) / 1000:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
                                        if currentRouterAddress != arg1:
                                            if not stor4[address(arg1)]:
                                                if balanceOf[57005] > !balanceOf[0]:
                                                    revert with 0, 17
                                                if totalSupply < balanceOf[57005] + balanceOf[0]:
                                                    revert with 0, 17
                                                if stor27 and totalSupply - balanceOf[57005] - balanceOf[0] > -1 / stor27:
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)] > !balanceOf[stor0]:
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)] + balanceOf[stor0] > (totalSupply * stor27) - (balanceOf[57005] * stor27) - (balanceOf[0] * stor27) / 1000:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxWalletSize.'
        if stor4[address(arg1)]:
            if not uint8(stor25.field_0):
                if contractSwapEnabled:
                    if not stor10[address(arg1)]:
                        if not stor10[stor0]:
                            if balanceOf[address(this.address)] >= swapThreshold:
                                if lastSwap > !sub_b1283c1c:
                                    revert with 0, 17
                                if lastSwap + sub_b1283c1c < block.timestamp:
                                    uint8(stor25.field_0) = 1
                                    if balanceOf[address(this.address)] < sub_2e8fa821:
                                        if uint16(stor17.field_48):
                                            if allowance[this.address][stor19] != -1:
                                                allowance[this.address][stor19] = -1
                                            if balanceOf[address(this.address)] and uint16(stor17.field_0) > -1 / balanceOf[address(this.address)]:
                                                revert with 0, 17
                                            if not uint16(stor17.field_48):
                                                revert with 0, 18
                                            if balanceOf[address(this.address)] < balanceOf[address(this.address)] * uint16(stor17.field_0) / uint16(stor17.field_48) / 2:
                                                revert with 0, 17
                                            mem[128] = this.address
                                            staticcall dexRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[192] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[160] = ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)] - (balanceOf[address(this.address)] * uint16(stor17.field_0) / uint16(stor17.field_48) / 2)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(dexRouterAddress)
                                            call dexRouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[address(this.address)] - (balanceOf[address(this.address)] * uint16(stor17.field_0) / uint16(stor17.field_48) / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) and uint16(stor17.field_0) > -1 / eth.balance(this.address):
                                                revert with 0, 17
                                            if not uint16(stor17.field_48):
                                                revert with 0, 18
                                            if Mask(255, 1, balanceOf[address(this.address)] * uint16(stor17.field_0) / uint16(stor17.field_48)):
                                                call dexRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) * uint16(stor17.field_0) / uint16(stor17.field_48) / 2 wei
                                                     gas gas_remaining wei
                                                    args this.address, Mask(255, 1, balanceOf[address(this.address)] * uint16(stor17.field_0) / uint16(stor17.field_48)), 0, 0, stor24, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                emit SwapAndLiquify(Mask(255, 1, balanceOf[address(this.address)] * uint16(stor17.field_0) / uint16(stor17.field_48)), Mask(255, 1, eth.balance(this.address) * uint16(stor17.field_0) / uint16(stor17.field_48)), balanceOf[address(this.address)] * uint16(stor17.field_0) / uint16(stor17.field_48) / 2);
                                            if eth.balance(this.address) > 0:
                                                if uint16(stor17.field_48) < uint16(stor17.field_0):
                                                    revert with 0, 17
                                                if uint16(uint16(stor17.field_48) - uint16(stor17.field_0)) > 0:
                                                    if uint16(stor17.field_48) < uint16(stor17.field_0):
                                                        revert with 0, 17
                                                    if eth.balance(this.address) and uint16(stor17.field_32) > -1 / eth.balance(this.address):
                                                        revert with 0, 17
                                                    if not uint16(uint16(stor17.field_48) - uint16(stor17.field_0)):
                                                        revert with 0, 18
                                                    call stor23 with:
                                                       value eth.balance(this.address) * uint16(stor17.field_32) / uint16(uint16(stor17.field_48) - uint16(stor17.field_0)) wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call stor22 with:
                                                       value eth.balance(this.address) wei
                                                         gas 2300 * is_zero(value) wei
                                    else:
                                        if uint16(stor17.field_48):
                                            if allowance[this.address][stor19] != -1:
                                                allowance[this.address][stor19] = -1
                                            if sub_2e8fa821 and uint16(stor17.field_0) > -1 / sub_2e8fa821:
                                                revert with 0, 17
                                            if not uint16(stor17.field_48):
                                                revert with 0, 18
                                            if sub_2e8fa821 < sub_2e8fa821 * uint16(stor17.field_0) / uint16(stor17.field_48) / 2:
                                                revert with 0, 17
                                            mem[128] = this.address
                                            staticcall dexRouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[192] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[160] = ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = sub_2e8fa821 - (sub_2e8fa821 * uint16(stor17.field_0) / uint16(stor17.field_48) / 2)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(dexRouterAddress)
                                            call dexRouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args sub_2e8fa821 - (sub_2e8fa821 * uint16(stor17.field_0) / uint16(stor17.field_48) / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) and uint16(stor17.field_0) > -1 / eth.balance(this.address):
                                                revert with 0, 17
                                            if not uint16(stor17.field_48):
                                                revert with 0, 18
                                            if Mask(255, 1, sub_2e8fa821 * uint16(stor17.field_0) / uint16(stor17.field_48)):
                                                call dexRouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value eth.balance(this.address) * uint16(stor17.field_0) / uint16(stor17.field_48) / 2 wei
                                                     gas gas_remaining wei
                                                    args this.address, Mask(255, 1, sub_2e8fa821 * uint16(stor17.field_0) / uint16(stor17.field_48)), 0, 0, stor24, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                emit SwapAndLiquify(Mask(255, 1, sub_2e8fa821 * uint16(stor17.field_0) / uint16(stor17.field_48)), Mask(255, 1, eth.balance(this.address) * uint16(stor17.field_0) / uint16(stor17.field_48)), sub_2e8fa821 * uint16(stor17.field_0) / uint16(stor17.field_48) / 2);
                                            if eth.balance(this.address) > 0:
                                                if uint16(stor17.field_48) < uint16(stor17.field_0):
                                                    revert with 0, 17
                                                if uint16(uint16(stor17.field_48) - uint16(stor17.field_0)) > 0:
                                                    if uint16(stor17.field_48) < uint16(stor17.field_0):
                                                        revert with 0, 17
                                                    if eth.balance(this.address) and uint16(stor17.field_32) > -1 / eth.balance(this.address):
                                                        revert with 0, 17
                                                    if not uint16(uint16(stor17.field_48) - uint16(stor17.field_0)):
                                                        revert with 0, 18
                                                    call stor23 with:
                                                       value eth.balance(this.address) * uint16(stor17.field_32) / uint16(uint16(stor17.field_48) - uint16(stor17.field_0)) wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    call stor22 with:
                                                       value eth.balance(this.address) wei
                                                         gas 2300 * is_zero(value) wei
                                    uint8(stor25.field_0) = 0
                                    lastSwap = block.timestamp
        if balanceOf[stor0] < balanceOf[stor0]:
            revert with 0, 17
        balanceOf[stor0] = 0
        if stor7[stor0]:
            if balanceOf[address(arg1)] > !balanceOf[stor0]:
                revert with 0, 17
            balanceOf[address(arg1)] += balanceOf[stor0]
            emit Transfer(balanceOf[stor0], owner, arg1);
        else:
            if stor7[address(arg1)]:
                if balanceOf[address(arg1)] > !balanceOf[stor0]:
                    revert with 0, 17
                balanceOf[address(arg1)] += balanceOf[stor0]
                emit Transfer(balanceOf[stor0], owner, arg1);
            else:
                if address(lpPairAddress) == owner:
                    if balanceOf[stor0] and uint16(stor16.field_0) > -1 / balanceOf[stor0]:
                        revert with 0, 17
                    if not uint16(stor18.field_48):
                        revert with 0, 18
                    if balanceOf[this.address] > !(balanceOf[stor0] * uint16(stor16.field_0) / uint16(stor18.field_48)):
                        revert with 0, 17
                    balanceOf[this.address] += balanceOf[stor0] * uint16(stor16.field_0) / uint16(stor18.field_48)
                    emit Transfer((balanceOf[stor0] * uint16(stor16.field_0) / uint16(stor18.field_48)), owner, this.address);
                    if balanceOf[stor0] < balanceOf[stor0] * uint16(stor16.field_0) / uint16(stor18.field_48):
                        revert with 0, 17
                    if balanceOf[address(arg1)] > !(balanceOf[stor0] - (balanceOf[stor0] * uint16(stor16.field_0) / uint16(stor18.field_48))):
                        revert with 0, 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + balanceOf[stor0] - (balanceOf[stor0] * uint16(stor16.field_0) / uint16(stor18.field_48))
                    emit Transfer((balanceOf[stor0] - (balanceOf[stor0] * uint16(stor16.field_0) / uint16(stor18.field_48))), owner, arg1);
                else:
                    if address(lpPairAddress) != arg1:
                        if balanceOf[stor0] and uint16(stor16.field_32) > -1 / balanceOf[stor0]:
                            revert with 0, 17
                        if not uint16(stor18.field_48):
                            revert with 0, 18
                        if balanceOf[this.address] > !(balanceOf[stor0] * uint16(stor16.field_32) / uint16(stor18.field_48)):
                            revert with 0, 17
                        balanceOf[this.address] += balanceOf[stor0] * uint16(stor16.field_32) / uint16(stor18.field_48)
                        emit Transfer((balanceOf[stor0] * uint16(stor16.field_32) / uint16(stor18.field_48)), owner, this.address);
                        if balanceOf[stor0] < balanceOf[stor0] * uint16(stor16.field_32) / uint16(stor18.field_48):
                            revert with 0, 17
                        if balanceOf[address(arg1)] > !(balanceOf[stor0] - (balanceOf[stor0] * uint16(stor16.field_32) / uint16(stor18.field_48))):
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + balanceOf[stor0] - (balanceOf[stor0] * uint16(stor16.field_32) / uint16(stor18.field_48))
                        emit Transfer((balanceOf[stor0] - (balanceOf[stor0] * uint16(stor16.field_32) / uint16(stor18.field_48))), owner, arg1);
                    else:
                        if balanceOf[stor0] and uint16(stor16.field_16) > -1 / balanceOf[stor0]:
                            revert with 0, 17
                        if not uint16(stor18.field_48):
                            revert with 0, 18
                        if balanceOf[this.address] > !(balanceOf[stor0] * uint16(stor16.field_16) / uint16(stor18.field_48)):
                            revert with 0, 17
                        balanceOf[this.address] += balanceOf[stor0] * uint16(stor16.field_16) / uint16(stor18.field_48)
                        emit Transfer((balanceOf[stor0] * uint16(stor16.field_16) / uint16(stor18.field_48)), owner, this.address);
                        if balanceOf[stor0] < balanceOf[stor0] * uint16(stor16.field_16) / uint16(stor18.field_48):
                            revert with 0, 17
                        if balanceOf[address(arg1)] > !(balanceOf[stor0] - (balanceOf[stor0] * uint16(stor16.field_16) / uint16(stor18.field_48))):
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + balanceOf[stor0] - (balanceOf[stor0] * uint16(stor16.field_16) / uint16(stor18.field_48))
                        emit Transfer((balanceOf[stor0] - (balanceOf[stor0] * uint16(stor16.field_16) / uint16(stor18.field_48))), owner, arg1);
    owner = arg1
    emit OwnershipTransferred(arg1, arg1);
}



}
