contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'PaypalFi', 0

const decimals = 9

const symbol = '', 0

const MASK = test266151307()


address owner;
mapping of uint8 stor1;
address WETHAddress;
address stor4;
address stor5;
uint256 totalSupply;
uint256 _maxTxAmount;
uint256 _maxWallet;
uint256 sub_9d64bf93;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor13;
mapping of uint8 stor14;
mapping of uint8 stor15;
mapping of uint8 stor16;
uint8 sub_91950f30;
mapping of uint8 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint256 stor29;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
address sub_1df59e2fAddress;
address routerAddress;
uint8 autoBuybackEnabled; offset 160
uint128 stor38; offset 160
address pairAddress;
uint256 stor39;
uint256 stor40;
uint256 stor41;
uint256 stor42;
uint256 stor43;
address stor44;
uint8 swapEnabled; offset 160
uint128 stor45; offset 160
address distributorAddress;
uint256 stor46;

function checkFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    return bool(stor16[address(arg1)])
}

function totalSupply() {
    return totalSupply
}

function sub_1df59e2f(?) {
    return sub_1df59e2fAddress
}

function _isFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor16[arg1])
}

function autoBuybackEnabled() {
    return bool(autoBuybackEnabled)
}

function isFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor13[arg1])
}

function isDividendExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor15[arg1])
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function _maxTxAmount() {
    return _maxTxAmount
}

function _maxWallet() {
    return _maxWallet
}

function getOwner() {
    return owner
}

function isTxLimitExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor14[arg1])
}

function sub_91950f30(?) {
    return bool(sub_91950f30)
}

function sub_9d64bf93(?) {
    return sub_9d64bf93
}

function distributorAddress() {
    return distributorAddress
}

function pair() {
    return pairAddress
}

function WETH() {
    return WETHAddress
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor18[arg1])
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function marketingFeeReceiver() {
    return marketingFeeReceiverAddress
}

function router() {
    return routerAddress
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == owner)
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        return stor23
    return stor28
}

function sub_15d61a82(?) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_9d64bf93 = arg1
}

function setTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    _maxTxAmount = arg1
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    _maxWallet = arg1
}

function setFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor16[address(arg1)] = 1
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function unSetFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor16[address(arg1)] = 0
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function sub_379fad9a(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_91950f30 = uint8(bool(arg1))
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = totalSupply
    emit Approval(totalSupply, msg.sender, arg1);
    return 1
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor45 = Mask(96, 0, arg1)
    stor46 = arg2
}

function getCirculatingSupply() {
    if totalSupply < balanceOf[stor4]:
        revert with 0, 17
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 0, 17
    return (totalSupply - balanceOf[stor4] - balanceOf[stor5])
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    owner = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor13[address(arg1)] = uint8(arg2)
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor14[address(arg1)] = uint8(arg2)
}

function Sweep() {
    if owner != msg.sender:
        revert with 0, '!OWNER'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setAutoBuybackSettings(bool arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor38 = Mask(96, 0, arg1)
    stor39 = arg2
    stor40 = 0
    stor41 = arg3
    stor42 = arg4
    stor43 = block.number
}

function setFeeReceivers(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoLiquidityReceiverAddress = arg1
    marketingFeeReceiverAddress = arg2
    sub_1df59e2fAddress = arg3
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor18[address(arg1)] = uint8(arg2)
    if not arg2:
        stor15[address(arg1)] = 0
    else:
        stor15[address(arg1)] = 1
        if not arg2:
            stor15[address(arg1)] = 0
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor15[address(arg1)] = uint8(arg2)
    require ext_code.size(stor44)
    if not arg2:
        call stor44.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor44.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9) {
    require calldata.size - 4 >= 288
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor19 = arg1
    stor20 = arg2
    stor21 = arg3
    stor22 = arg4
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg1 + arg2 + arg3 > !arg4:
        revert with 0, 17
    stor23 = arg1 + arg2 + arg3 + arg4
    stor24 = arg5
    stor25 = arg6
    stor26 = arg7
    stor27 = arg8
    if arg5 > !arg6:
        revert with 0, 17
    if arg5 + arg6 > !arg7:
        revert with 0, 17
    if arg5 + arg6 + arg7 > !arg8:
        revert with 0, 17
    stor28 = arg5 + arg6 + arg7 + arg8
    stor29 = arg9
}

function transferForeignToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
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
    return bool(ext_call.return_data[0])
}

function changeRouterVersion(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.0xad5c4648 with:
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
        staticcall arg1.0xad5c4648 with:
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
    pairAddress = ext_call.return_data[12 len 20]
    routerAddress = arg1
    allowance[this.address][address(arg1)] = totalSupply
    return ext_call.return_data[12 len 20]
}



}
