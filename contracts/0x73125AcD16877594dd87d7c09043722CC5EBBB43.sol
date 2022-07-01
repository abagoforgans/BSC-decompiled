contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'Lunar Tiger', 0

const decimals = 18

const symbol = 'LTG', 0


address owner;
address stor1;
address sub_1ec3ab25Address;
address REWARDAddress;
uint8 stor6; offset 160
uint128 stor6; offset 160
address pinkAntiBotAddress;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor10;
mapping of uint8 stor11;
uint256 sub_2b27f370;
uint256 buyMarketingFee;
uint256 buyLiquidityFee;
uint256 buyDevFee;
uint256 buyBurnFee;
uint256 buyTotalFees;
uint256 sub_4a365bb4;
uint256 sellMarketingFee;
uint256 sellLiquidityFee;
uint256 sellDevFee;
uint256 sellBurnFee;
uint256 sellTotalFees;
address marketingFeeReceiverAddress;
address devFeeReceiverAddress;
address routerAddress;
address pairAddress;
address dividendDistributorAddress;
uint256 stor29;
uint8 swapEnabled;
uint256 swapThreshold;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
}

function sub_1ec3ab25(?) {
    return sub_1ec3ab25Address
}

function sub_2b27f370(?) {
    return sub_2b27f370
}

function pinkAntiBot() {
    return pinkAntiBotAddress
}

function antibotEnabled() {
    return bool(uint8(stor6.field_160))
}

function sub_4a365bb4(?) {
    return sub_4a365bb4
}

function sellTotalFees() {
    return sellTotalFees
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function buyMarketingFee() {
    return buyMarketingFee
}

function owner() {
    return owner
}

function sellMarketingFee() {
    return sellMarketingFee
}

function buyDevFee() {
    return buyDevFee
}

function sellDevFee() {
    return sellDevFee
}

function pair() {
    return pairAddress
}

function sellBurnFee() {
    return sellBurnFee
}

function dividendDistributor() {
    return dividendDistributorAddress
}

function REWARD() {
    return REWARDAddress
}

function buyTotalFees() {
    return buyTotalFees
}

function devFeeReceiver() {
    return devFeeReceiverAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function buyBurnFee() {
    return buyBurnFee
}

function marketingFeeReceiver() {
    return marketingFeeReceiverAddress
}

function buyLiquidityFee() {
    return buyLiquidityFee
}

function sellLiquidityFee() {
    return sellLiquidityFee
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function claimProcess() {
    require ext_code.size(dividendDistributorAddress)
    call dividendDistributorAddress.process(uint256 arg1) with:
         gas gas_remaining wei
        args stor29
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[address(msg.sender)][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function sub_e7b39057(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1ec3ab25Address = address(arg1)
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < 750000
    stor29 = arg1
}

function sub_fe49fc41(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor6.field_160) = Mask(96, 0, bool(arg1))
}

function sub_711ee875(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10[address(arg1)] = 1
    stor11[address(arg1)] = 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10[address(arg1)] = uint8(arg2)
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
}

function setFeeReceivers(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketingFeeReceiverAddress = arg1
    devFeeReceiverAddress = arg2
}

function purgeBeforeSwitch() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(dividendDistributorAddress)
    call dividendDistributorAddress.purge(address arg1) with:
         gas gas_remaining wei
        args msg.sender
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
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function getLastProcessedIndex() {
    require ext_code.size(dividendDistributorAddress)
    staticcall dividendDistributorAddress.0xe7841ec0 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function totalDistributedRewards() {
    require ext_code.size(dividendDistributorAddress)
    staticcall dividendDistributorAddress.0xa87df832 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getNumberOfTokenHolders() {
    require ext_code.size(dividendDistributorAddress)
    staticcall dividendDistributorAddress.getNumberOfTokenHolders() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_e3e80dc3(?) {
    if stor11[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not allowed to get rewards'
    require ext_code.size(dividendDistributorAddress)
    call dividendDistributorAddress.setShare(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, balanceOf[address(msg.sender)]
    emit IncludeInReward(msg.sender);
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(dividendDistributorAddress)
    call dividendDistributorAddress.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function clearStuckBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) and arg1 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call msg.sender with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a7cfaa52(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require ext_code.size(dividendDistributorAddress)
    call dividendDistributorAddress.claimDividend() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1:
        require ext_code.size(dividendDistributorAddress)
        call dividendDistributorAddress.process(uint256 arg1) with:
             gas gas_remaining wei
            args stor29
}

function sub_0a05cd01(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(dividendDistributorAddress)
    staticcall dividendDistributorAddress.0xa05cd01 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 != this.address
    require arg1 != pairAddress
    stor11[address(arg1)] = uint8(arg2)
    require ext_code.size(dividendDistributorAddress)
    if not arg2:
        call dividendDistributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call dividendDistributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updateBuyFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2b27f370 = arg1
    buyMarketingFee = arg2
    buyLiquidityFee = arg3
    buyDevFee = arg4
    buyBurnFee = arg5
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 + arg3 > -arg4 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 + arg3 + arg4 > -arg5 - 1:
        revert with 'NH{q', 17
    buyTotalFees = arg1 + arg2 + arg3 + arg4 + arg5
    if buyTotalFees > 30:
        revert with 0, 'Total Fee must be less than 30%'
}

function updateSellFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4a365bb4 = arg1
    sellMarketingFee = arg2
    sellLiquidityFee = arg3
    sellDevFee = arg4
    sellBurnFee = arg5
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 + arg3 > -arg4 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 + arg3 + arg4 > -arg5 - 1:
        revert with 'NH{q', 17
    sellTotalFees = arg1 + arg2 + arg3 + arg4 + arg5
    if sellTotalFees > 30:
        revert with 0, 'Total Fee must be less than 30%'
}

function sub_d4fbc517(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if address(arg1) == stor1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can not reward BNB in this tracker'
    REWARDAddress = address(arg1)
    mem[96] = 0x60379e1300000000000000000000000000000000000000000000000000000000
    require ext_code.size(dividendDistributorAddress)
    staticcall dividendDistributorAddress.0x60379e13 with:
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
    require _6 + (32 * _7) + 32 <= return_data.size
    idx = 0
    s = _6 + 128
    t = ceil32(return_data.size) + 128
    while idx < _7:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] len 8205] = code.data[28593 len 8205]
    mem[mem[64] + 8205] = routerAddress
    mem[mem[64] + 8237] = address(arg1)
    create contract with 0 wei
                    code: code.data[28593 len 8205], routerAddress, address(arg1)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    dividendDistributorAddress = address(create.new_address)
    if arg2:
        idx = 0
        while idx < _7:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _44 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            mem[32] = 8
            mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_44)
            mem[mem[64] + 36] = balanceOf[mem[0]]
            require ext_code.size(dividendDistributorAddress)
            call dividendDistributorAddress.setShare(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_44), balanceOf[mem[0]]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    emit 0xa5c7646e: address(arg1)
}

function sub_96784f75(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Mismatch between Address and token count'
    idx = 0
    s = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        if s > -cd[((32 * idx) + cd[68] + 36)] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + cd[((32 * idx) + cd[68] + 36)]
        continue 
    mem[0] = address(cd[4])
    mem[32] = 8
    if balanceOf[address(cd[4])] < s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length:
        revert with 0, 'Not enough tokens to airdrop'
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        _55 = mem[64]
        mem[64] = mem[64] + 64
        mem[_55] = 20
        mem[_55 + 32] = 'Insufficient Balance'
        mem[32] = 8
        if cd[((32 * idx) + cd[68] + 36)] > balanceOf[address(cd[4])]:
            _57 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 20
            idx = 0
            while idx < 20:
                mem[_57 + idx + 68] = mem[_55 + idx + 32]
                idx = idx + 32
                continue 
            mem[_57 + 88] = 0
            revert with memory
              from mem[64]
               len _57 + -mem[64] + 100
        balanceOf[address(cd[4])] -= cd[((32 * idx) + cd[68] + 36)]
        if balanceOf[address(cd[((32 * idx) + cd[36] + 36)])] > -cd[((32 * idx) + cd[68] + 36)] - 1:
            revert with 'NH{q', 17
        balanceOf[address(cd[((32 * idx) + cd[36] + 36)])] += cd[((32 * idx) + cd[68] + 36)]
        mem[mem[64]] = cd[((32 * idx) + cd[68] + 36)]
        emit Transfer(cd[((32 * idx) + cd[68] + 36)], address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)]));
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[32] = 11
        if not stor11[address(cd[((32 * idx) + cd[36] + 36)])]:
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = 8
            mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 36] = balanceOf[address(cd[((32 * idx) + cd[36] + 36)])]
            require ext_code.size(dividendDistributorAddress)
            call dividendDistributorAddress.setShare(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[36] + 36)]), balanceOf[address(cd[((32 * idx) + cd[36] + 36)])]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if not stor11[address(cd[4])]:
        require ext_code.size(dividendDistributorAddress)
        call dividendDistributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), balanceOf[address(cd[4])]
}



}
