contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor4;
array of struct stor5;
uint8 stor6;
address owner; offset 8
address stor7;
address dividendTrackerAddress;
address stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 sub_7c5ffd1d;
uint256 stor16;
address stor17;
uint8 stor18; offset 160
uint8 stor18; offset 168
uint128 stor18; offset 160
address stor18;
mapping of uint8 stor19;
mapping of uint8 stor20;
mapping of uint8 stor21;
uint256 gasForProcessing;

function totalSupply() {
    return totalSupply
}

function dividendTracker() {
    return dividendTrackerAddress
}

function isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor20[address(arg1)])
}

function paused() {
    return bool(stor6)
}

function isExcludedFromMaxTx(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor21[address(arg1)])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_7c5ffd1d(?) {
    return sub_7c5ffd1d
}

function owner() {
    return owner
}

function gasForProcessing() {
    return gasForProcessing
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    revert with 0, 'sorry, I cant let you do that'
}

function sub_d45e3e5e(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16 = arg1
    emit 0xf28b4cfe: arg1
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor6:
        revert with 0, 'Pausable: paused'
    stor6 = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor6:
        revert with 0, 'Pausable: not paused'
    stor6 = 0
    emit Unpaused(msg.sender);
}

function addBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor19[address(arg1)] = 1
    emit 0xc77cf9e2: arg1
}

function sub_eb84aa07(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10 = arg1
    stor11 = arg2
    stor12 = arg3
    emit 0x3966186e: arg1, arg2, arg3
}

function removeBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor19[address(arg1)] = 0
    emit 0xd60afd58: arg1
}

function changeMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7 = arg1
    emit MarketingWalletChanged(arg1);
}

function setExcludeFromMaxTx(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor21[address(arg1)] = uint8(arg2)
}

function sub_ec9a7544(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor18.field_0) = address(arg1)
    Mask(96, 0, stor18.field_160) = 0
    emit 0xe0510bfa: address(arg1)
}

function getClaimWait() {
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.claimWait() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getLastProcessedIndex() {
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.0xe7841ec0 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTotalDividendsDistributed() {
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.totalDividendsDistributed() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getNumberOfDividendTokenHolders() {
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.getNumberOfTokenHolders() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function claim() {
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.processAccount(address arg1, bool arg2) with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function updateClaimWait(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.0xe98030c7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function dividendTokenBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawableDividendOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.0xa8b9d240 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function excludeFromDividends(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.0x31e79db0 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_061f764b(?) payable {
    require ext_code.size(stor9)
    call stor9.0xa9059cbb with:
         gas gas_remaining wei
        args stor7, stor14
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 1
    stor14 = 0
    stor13 = 0
}

function setLPPair(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor17 = arg1
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.0x31e79db0 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xa30c81b6: arg1
}

function setExcludeFromAll(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor21[address(arg1)] = 1
    stor20[address(arg1)] = 1
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.0x31e79db0 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function processDividendTracker(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.process(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], arg1, 0, tx.origin);
}

function excludeFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 == bool(stor20[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'InfinityTwo: Account is already the value of 'excluded''
    stor20[address(arg1)] = uint8(arg2)
    emit ExcludeFromFees(arg2, arg1);
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function sub_e8b3eaba(?) payable {
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
    emit 0xdded1c32: address(arg1), arg3
}

function burnAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if address(stor18.field_0):
        if address(stor18.field_0) != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only LunaSwap is allowed to swap your token'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_05ec1415(?) {
    require calldata.size - 4 >= 32
    uint8(stor18.field_160) = 1
    if stor20[msg.sender]:
        stor13 = 0
        stor14 = 0
        sub_7c5ffd1d = 1
    else:
        if arg1 and stor10 > -1 / arg1:
            revert with 0, 17
        stor13 = arg1 * stor10 / 1000
        if arg1 and stor12 > -1 / arg1:
            revert with 0, 17
        stor14 = arg1 * stor12 / 1000
        if arg1 and stor11 > -1 / arg1:
            revert with 0, 17
        sub_7c5ffd1d = arg1 * stor11 / 1000
    if stor13 > !stor14:
        revert with 0, 17
    if stor13 + stor14 > !sub_7c5ffd1d:
        revert with 0, 17
    if arg1 < stor13 + stor14 + sub_7c5ffd1d:
        revert with 0, 17
    return (arg1 - stor13 - stor14 - sub_7c5ffd1d)
}

function sub_da94bc3c(?) {
    require calldata.size - 4 >= 32
    uint8(stor18.field_160) = 1
    if stor20[msg.sender]:
        stor13 = 0
        stor14 = 0
        sub_7c5ffd1d = 1
    else:
        if arg1 and stor10 > -1 / arg1:
            revert with 0, 17
        stor13 = arg1 * stor10 / 1000
        if arg1 and stor12 > -1 / arg1:
            revert with 0, 17
        stor14 = arg1 * stor12 / 1000
        if arg1 and stor11 > -1 / arg1:
            revert with 0, 17
        sub_7c5ffd1d = arg1 * stor11 / 1000
    if stor13 > !stor14:
        revert with 0, 17
    if stor13 + stor14 > !sub_7c5ffd1d:
        revert with 0, 17
    if arg1 < stor13 + stor14 + sub_7c5ffd1d:
        revert with 0, 17
    return (arg1 - stor13 - stor14 - sub_7c5ffd1d)
}

function getAccountDividendsInfoAtIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.getAccountAtIndex(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224]
}

function getAccountDividendsInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.getAccount(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224]
}

function updateGasForProcessing(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 200000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'InfinityTwo: gasForProcessing must be between 200,000 and 500,000'
    if arg1 > 500000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'InfinityTwo: gasForProcessing must be between 200,000 and 500,000'
    if arg1 == gasForProcessing:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'InfinityTwo: Cannot update gasForProcessing to same value'
    emit GasForProcessingUpdated(arg1, gasForProcessing);
    gasForProcessing = arg1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if address(stor18.field_0):
        if address(stor18.field_0) != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only LunaSwap is allowed to swap your token'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if address(stor18.field_0):
        if address(stor18.field_0) != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only LunaSwap is allowed to swap your token'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function excludeMultipleAccountsFromFees(address[] arg1, bool arg2) {
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
        mem[32] = 20
        stor20[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    s = 192
    t = arg1 + 36
    while idx < arg1.length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit ExcludeMultipleAccountsFromFees(Array(len=arg1.length, data=mem[192 len 32 * arg1.length]), arg2);
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(arg1)][address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds allowance'
    if address(stor18.field_0):
        if address(stor18.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only LunaSwap is allowed to swap your token'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor6:
        revert with 0, 'Pausable: paused'
    require not stor19[address(arg1)]
    require not stor19[address(msg.sender)]
    require not stor19[tx.origin]
    require not stor19[address(msg.sender)]
    require not stor19[address(msg.sender)]
    require not stor19[tx.origin]
    if not uint8(stor18.field_168):
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 0, 17
        balanceOf[arg1] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        uint8(stor18.field_160) = 0
    else:
        if address(stor18.field_0):
            if stor17 == msg.sender:
                if not uint8(stor18.field_160):
                    revert with 0, 'Don't try to avoid taxes'
            else:
                if stor17 == arg1:
                    if not uint8(stor18.field_160):
                        revert with 0, 'Don't try to avoid taxes'
                else:
                    if tx.origin == stor17:
                        if not uint8(stor18.field_160):
                            revert with 0, 'Don't try to avoid taxes'
        if not stor21[address(msg.sender)]:
            if not stor21[address(arg1)]:
                if stor16 > 0:
                    if totalSupply and stor16 > -1 / totalSupply:
                        revert with 0, 17
                    if arg2 > totalSupply * stor16 / 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Sell transfer amount exceeds the maxSellTransactionAmount.'
        uint8(stor18.field_160) = 0
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 0, 17
        balanceOf[arg1] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        require ext_code.size(dividendTrackerAddress)
        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, balanceOf[address(msg.sender)]
        require ext_code.size(dividendTrackerAddress)
        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
        require ext_code.size(dividendTrackerAddress)
        call dividendTrackerAddress.process(uint256 arg1) with:
             gas gas_remaining wei
            args gasForProcessing
        if ext_call.success:
            require return_data.size >= 96
            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
    return 1
}

function name() {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function symbol() {
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5.length):
                if 31 < uint255(stor5.length) * 0.5:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(uint255(stor5.length) * 0.5) + 192 len ceil32(uint255(stor5.length) * 0.5)] = mem[128 len ceil32(uint255(stor5.length) * 0.5)]
        if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
            mem[ceil32(uint255(stor5.length) * 0.5) + (uint255(stor5.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 0, 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5.length):
            if 31 < uint255(stor5.length) * 0.5:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if stor6:
        revert with 0, 'Pausable: paused'
    require not stor19[address(arg2)]
    require not stor19[address(msg.sender)]
    require not stor19[tx.origin]
    require not stor19[address(arg1)]
    require not stor19[address(msg.sender)]
    require not stor19[tx.origin]
    if not uint8(stor18.field_168):
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(arg1)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(arg1)] -= arg3
        if balanceOf[arg2] > !arg3:
            revert with 0, 17
        balanceOf[arg2] += arg3
        emit Transfer(arg3, arg1, arg2);
        uint8(stor18.field_160) = 0
        if allowance[address(arg1)][msg.sender] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
        if address(stor18.field_0):
            if address(stor18.field_0) != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only LunaSwap is allowed to swap your token'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    else:
        if address(stor18.field_0):
            if stor17 == arg1:
                if not uint8(stor18.field_160):
                    revert with 0, 'Don't try to avoid taxes'
            else:
                if stor17 == arg2:
                    if not uint8(stor18.field_160):
                        revert with 0, 'Don't try to avoid taxes'
                else:
                    if tx.origin == stor17:
                        if not uint8(stor18.field_160):
                            revert with 0, 'Don't try to avoid taxes'
        if not stor21[address(arg1)]:
            if not stor21[address(arg2)]:
                if stor16 > 0:
                    if totalSupply and stor16 > -1 / totalSupply:
                        revert with 0, 17
                    if arg3 > totalSupply * stor16 / 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Sell transfer amount exceeds the maxSellTransactionAmount.'
        uint8(stor18.field_160) = 0
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(arg1)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(arg1)] -= arg3
        if balanceOf[arg2] > !arg3:
            revert with 0, 17
        balanceOf[arg2] += arg3
        emit Transfer(arg3, arg1, arg2);
        require ext_code.size(dividendTrackerAddress)
        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
        require ext_code.size(dividendTrackerAddress)
        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), balanceOf[address(arg2)]
        require ext_code.size(dividendTrackerAddress)
        call dividendTrackerAddress.process(uint256 arg1) with:
             gas gas_remaining wei
            args gasForProcessing
        if not ext_call.success:
            if allowance[address(arg1)][msg.sender] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
            if address(stor18.field_0):
                if address(stor18.field_0) != msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only LunaSwap is allowed to swap your token'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        else:
            require return_data.size >= 96
            emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
            if allowance[address(arg1)][msg.sender] < arg3:
                revert with 0, 'ERC20: transfer amount exceeds allowance'
            if address(stor18.field_0):
                if address(stor18.field_0) != msg.sender:
                    revert with 0, 'Only LunaSwap is allowed to swap your token'
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x7c5ffd1d(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xc0246668(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xe8b3eaba(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xeb91e651(?????) > uint32(call.func_hash) >> 224:
                    if uint32(call.func_hash) >> 224 != unknown_0xe8b3eaba(?????):
                        if unknown_0xe98030c7(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.0xe98030c7 with:
                                 gas gas_remaining wei
                                args cd[4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require unknown_0xeb84aa07(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 96
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            stor10 = cd[4]
                            stor11 = cd[36]
                            stor12 = cd[68]
                            emit 0x3966186e: cd[4], cd[36], cd[68]
                    else:
                        require calldata.size - 4 >= 96
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(cd[36]), cd[68]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit 0xdded1c32: address(cd[4]), cd[68]
                else:
                    if unknown_0xeb91e651(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor19[address(cd[4])] = 0
                        emit 0xd60afd58: address(cd[4])
                    else:
                        if unknown_0xec9a7544(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            address(stor18.field_0) = address(cd[4])
                            Mask(96, 0, stor18.field_160) = 0
                            emit 0xe0510bfa: address(cd[4])
                        else:
                            if unknown_0xf27fd254(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require ext_code.size(dividendTrackerAddress)
                                staticcall dividendTrackerAddress.getAccountAtIndex(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args cd[4]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 256
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                return ext_call.return_data[12 len 20], 
                                       ext_call.return_data[32],
                                       ext_call.return_data[64],
                                       ext_call.return_data[96],
                                       ext_call.return_data[128],
                                       ext_call.return_data[160],
                                       ext_call.return_data[192],
                                       ext_call.return_data[224]
                            require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if not address(cd[4]):
                                revert with 0, 'Ownable: new owner is the zero address'
                            owner = address(cd[4])
                            emit OwnershipTransferred(owner, address(cd[4]));
            if unknown_0xda94bc3c(?????) > uint32(call.func_hash) >> 224:
                if unknown_0xc0246668(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == bool(cd[36])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if bool(cd[36]) == bool(stor20[address(cd[4])]):
                        revert with 0, 'InfinityTwo: Account is already the value of 'excluded''
                    stor20[address(cd[4])] = uint8(bool(cd[36]))
                    emit ExcludeFromFees(bool(cd[36]), address(cd[4]));
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xc492f046(?????):
                        require unknown_0xd45e3e5e(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor16 = cd[4]
                        emit 0xf28b4cfe: cd[4]
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] <= test266151307()
                        require cd[4] + 35 < calldata.size
                        require ('cd', 4).length <= test266151307()
                        require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                        require cd[36] == bool(cd[36])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        idx = 0
                        while idx < ('cd', 4).length:
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 20
                            stor20[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        idx = 0
                        s = 224
                        t = cd[4] + 36
                        while idx < ('cd', 4).length:
                            require cd[t] == address(cd[t])
                            mem[s] = address(cd[t])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit ExcludeMultipleAccountsFromFees(Array(len=('cd', 4).length, data=mem[224 len 32 * ('cd', 4).length]), bool(cd[36]));
            if uint32(call.func_hash) >> 224 != unknown_0xda94bc3c(?????):
                if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    return allowance[address(cd[4])][address(cd[36])]
                if uint32(call.func_hash) >> 224 != unknown_0xde1c24d0(?????):
                    require unknown_0xe7841ec0(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require ext_code.size(dividendTrackerAddress)
                    staticcall dividendTrackerAddress.0xe7841ec0 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor17 = address(cd[4])
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.0x31e79db0 with:
                     gas gas_remaining wei
                    args address(cd[4])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xa30c81b6: address(cd[4])
            require not msg.value
            require calldata.size - 4 >= 32
            uint8(stor18.field_160) = 1
            if stor20[msg.sender]:
                stor13 = 0
                stor14 = 0
                sub_7c5ffd1d = 1
            else:
                if cd[4] and stor10 > -1 / cd[4]:
                    revert with 0, 17
                stor13 = cd[4] * stor10 / 1000
                if cd[4] and stor12 > -1 / cd[4]:
                    revert with 0, 17
                stor14 = cd[4] * stor12 / 1000
                if cd[4] and stor11 > -1 / cd[4]:
                    revert with 0, 17
                sub_7c5ffd1d = cd[4] * stor11 / 1000
            if stor13 > !stor14:
                revert with 0, 17
            if stor13 + stor14 > !sub_7c5ffd1d:
                revert with 0, 17
            if cd[4] < stor13 + stor14 + sub_7c5ffd1d:
                revert with 0, 17
            return (cd[4] - stor13 - stor14 - sub_7c5ffd1d)
        if unknown_0x9cfe42da(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x7c5ffd1d(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_7c5ffd1d
            if unknown_0x8456cb59(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if stor6:
                    revert with 0, 'Pausable: paused'
                stor6 = 1
                emit Paused(msg.sender);
            if unknown_0x871c128d(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if cd[4] < 200000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'InfinityTwo: gasForProcessing must be between 200,000 and 500,000'
                if cd[4] > 500000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'InfinityTwo: gasForProcessing must be between 200,000 and 500,000'
                if cd[4] == gasForProcessing:
                    revert with 0, 'InfinityTwo: Cannot update gasForProcessing to same value'
                emit GasForProcessingUpdated(cd[4], gasForProcessing);
                gasForProcessing = cd[4]
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if uint32(call.func_hash) >> 224 != unknown_0x95d89b41(?????):
                require unknown_0x9c1b8af5(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return gasForProcessing
            require not msg.value
            if bool(stor5.length):
                if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor5.length):
                    if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor5.length):
                        if 31 < uint255(stor5.length) * 0.5:
                            mem[160] = uint256(stor5.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor5.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor5[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor5.length), data=mem[160 len ceil32(uint255(stor5.length) * 0.5)])
                        mem[160] = 256 * stor5.length.field_8
                else:
                    if bool(stor5.length) == stor5.length.field_1 < 32:
                        revert with 0, 34
                    if stor5.length.field_1:
                        if 31 < stor5.length.field_1:
                            mem[160] = uint256(stor5.field_0)
                            idx = 160
                            s = 0
                            while stor5.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor5[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor5.length), data=mem[160 len ceil32(uint255(stor5.length) * 0.5)])
                        mem[160] = 256 * stor5.length.field_8
                mem[ceil32(uint255(stor5.length) * 0.5) + 224 len ceil32(uint255(stor5.length) * 0.5)] = mem[160 len ceil32(uint255(stor5.length) * 0.5)]
                if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
                    mem[ceil32(uint255(stor5.length) * 0.5) + (uint255(stor5.length) * 0.5) + 224] = 0
                return Array(len=2 * Mask(256, -1, stor5.length), data=mem[160 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if bool(stor5.length):
                if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor5.length):
                    if 31 < uint255(stor5.length) * 0.5:
                        mem[160] = uint256(stor5.field_0)
                        idx = 160
                        s = 0
                        while (uint255(stor5.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor5[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor5.length % 128, data=mem[160 len ceil32(stor5.length.field_1)])
                    mem[160] = 256 * stor5.length.field_8
            else:
                if bool(stor5.length) == stor5.length.field_1 < 32:
                    revert with 0, 34
                if stor5.length.field_1:
                    if 31 < stor5.length.field_1:
                        mem[160] = uint256(stor5.field_0)
                        idx = 160
                        s = 0
                        while stor5.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor5[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor5.length % 128, data=mem[160 len ceil32(stor5.length.field_1)])
                    mem[160] = 256 * stor5.length.field_8
            mem[ceil32(stor5.length.field_1) + 224 len ceil32(stor5.length.field_1)] = mem[160 len ceil32(stor5.length.field_1)]
            if ceil32(stor5.length.field_1) > stor5.length.field_1:
                mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 224] = 0
            return Array(len=stor5.length % 128, data=mem[160 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 224 len 2 * ceil32(stor5.length.field_1)]), 
        if unknown_0xa8b9d240(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x9cfe42da(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor19[address(cd[4])] = 1
                emit 0xc77cf9e2: address(cd[4])
            if unknown_0xa26579ad(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require ext_code.size(dividendTrackerAddress)
                staticcall dividendTrackerAddress.claimWait() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0]
            require unknown_0xa457c2d7(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            if allowance[msg.sender][address(cd[4])] < cd[36]:
                revert with 0, 'ERC20: decreased allowance below zero'
            if address(stor18.field_0):
                if address(stor18.field_0) != address(cd[4]):
                    revert with 0, 'Only LunaSwap is allowed to swap your token'
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not address(cd[4]):
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(msg.sender)][address(cd[4])] = allowance[msg.sender][address(cd[4])] - cd[36]
            emit Approval((allowance[msg.sender][address(cd[4])] - cd[36]), msg.sender, address(cd[4]));
        else:
            if unknown_0xa8b9d240(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                require ext_code.size(dividendTrackerAddress)
                staticcall dividendTrackerAddress.0xa8b9d240 with:
                        gas gas_remaining wei
                       args address(cd[4])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0]
            if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
                if uint32(call.func_hash) >> 224 != unknown_0xad56c13c(?????):
                    require unknown_0xbb85c6d1(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor7 = address(cd[4])
                    emit MarketingWalletChanged(address(cd[4]));
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                require ext_code.size(dividendTrackerAddress)
                staticcall dividendTrackerAddress.getAccount(address arg1) with:
                        gas gas_remaining wei
                       args address(cd[4])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 256
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                return ext_call.return_data[12 len 20], 
                       ext_call.return_data[32],
                       ext_call.return_data[64],
                       ext_call.return_data[96],
                       ext_call.return_data[128],
                       ext_call.return_data[160],
                       ext_call.return_data[192],
                       ext_call.return_data[224]
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            if stor6:
                revert with 0, 'Pausable: paused'
            require not stor19[address(cd[4])]
            require not stor19[address(msg.sender)]
            require not stor19[tx.origin]
            require not stor19[address(msg.sender)]
            require not stor19[address(msg.sender)]
            require not stor19[tx.origin]
            if not uint8(stor18.field_168):
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(cd[4]):
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < cd[36]:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= cd[36]
                if balanceOf[address(cd[4])] > !cd[36]:
                    revert with 0, 17
                balanceOf[address(cd[4])] += cd[36]
                emit Transfer(cd[36], msg.sender, address(cd[4]));
                uint8(stor18.field_160) = 0
            else:
                if address(stor18.field_0):
                    if stor17 == msg.sender:
                        if not uint8(stor18.field_160):
                            revert with 0, 'Don't try to avoid taxes'
                    else:
                        if stor17 == address(cd[4]):
                            if not uint8(stor18.field_160):
                                revert with 0, 'Don't try to avoid taxes'
                        else:
                            if tx.origin == stor17:
                                if not uint8(stor18.field_160):
                                    revert with 0, 'Don't try to avoid taxes'
                if not stor21[address(msg.sender)]:
                    if not stor21[address(cd[4])]:
                        if stor16 > 0:
                            if totalSupply and stor16 > -1 / totalSupply:
                                revert with 0, 17
                            if cd[36] > totalSupply * stor16 / 1000:
                                revert with 0, 'Sell transfer amount exceeds the maxSellTransactionAmount.'
                uint8(stor18.field_160) = 0
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(cd[4]):
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < cd[36]:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= cd[36]
                if balanceOf[address(cd[4])] > !cd[36]:
                    revert with 0, 17
                balanceOf[address(cd[4])] += cd[36]
                emit Transfer(cd[36], msg.sender, address(cd[4]));
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, balanceOf[address(msg.sender)]
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), balanceOf[address(cd[4])]
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.process(uint256 arg1) with:
                     gas gas_remaining wei
                    args gasForProcessing
                if ext_call.success:
                    require return_data.size >= 96
                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
    else:
        if unknown_0x49928a50(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x658c27a9(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x49928a50(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor21[address(cd[4])] = 1
                    stor20[address(cd[4])] = 1
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.0x31e79db0 with:
                         gas gas_remaining wei
                        args address(cd[4])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if unknown_0x4e71d92d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.processAccount(address arg1, bool arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if unknown_0x4fbee193(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return bool(stor20[address(cd[4])])
                if unknown_0x5b89029c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == bool(cd[36])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor21[address(cd[4])] = uint8(bool(cd[36]))
                if unknown_0x5c975abb(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(stor6)
                require unknown_0x64b0f653(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require ext_code.size(dividendTrackerAddress)
                staticcall dividendTrackerAddress.getNumberOfTokenHolders() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0]
            if unknown_0x700bb191(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x658c27a9(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return bool(stor21[address(cd[4])])
                if unknown_0x6843cd84(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    require ext_code.size(dividendTrackerAddress)
                    staticcall dividendTrackerAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[4])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                require unknown_0x6fafdf83(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not msg.sender:
                    revert with 0, 'ERC20: burn from the zero address'
                if balanceOf[address(msg.sender)] < cd[4]:
                    revert with 0, 'ERC20: burn amount exceeds balance'
                balanceOf[address(msg.sender)] -= cd[4]
                if totalSupply < cd[4]:
                    revert with 0, 17
                totalSupply -= cd[4]
                emit Transfer(cd[4], msg.sender, 0);
            else:
                if unknown_0x700bb191(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.process(uint256 arg1) with:
                         gas gas_remaining wei
                        args cd[4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], cd[4], 0, tx.origin);
                else:
                    if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return balanceOf[address(cd[4])]
                    if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        revert with 0, 'sorry, I cant let you do that'
                    require unknown_0x79cc6790(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    if allowance[address(cd[4])][address(msg.sender)] < cd[36]:
                        revert with 0, 'ERC20: burn amount exceeds allowance'
                    if address(stor18.field_0):
                        if address(stor18.field_0) != msg.sender:
                            revert with 0, 'Only LunaSwap is allowed to swap your token'
                    if not address(cd[4]):
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(cd[4])][address(msg.sender)] -= cd[36]
                    emit Approval((allowance[address(cd[4])][address(msg.sender)] - cd[36]), address(cd[4]), msg.sender);
                    if not address(cd[4]):
                        revert with 0, 'ERC20: burn from the zero address'
                    if balanceOf[address(cd[4])] < cd[36]:
                        revert with 0, 'ERC20: burn amount exceeds balance'
                    balanceOf[address(cd[4])] -= cd[36]
                    if totalSupply < cd[36]:
                        revert with 0, 17
                    totalSupply -= cd[36]
                    emit Transfer(cd[36], address(cd[4]), 0);
        if unknown_0x2c1f5216(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x31e79db0(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x2c1f5216(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return dividendTrackerAddress
                if uint32(call.func_hash) >> 224 != unknown_0x30bb4cff(?????):
                    require unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return 18
                require not msg.value
                require ext_code.size(dividendTrackerAddress)
                staticcall dividendTrackerAddress.totalDividendsDistributed() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0]
            if unknown_0x31e79db0(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.0x31e79db0 with:
                     gas gas_remaining wei
                    args address(cd[4])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0x39509351(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    if allowance[msg.sender][address(cd[4])] > !cd[36]:
                        revert with 0, 17
                    if address(stor18.field_0):
                        if address(stor18.field_0) != address(cd[4]):
                            revert with 0, 'Only LunaSwap is allowed to swap your token'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not address(cd[4]):
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(msg.sender)][address(cd[4])] = allowance[msg.sender][address(cd[4])] + cd[36]
                    emit Approval((allowance[msg.sender][address(cd[4])] + cd[36]), msg.sender, address(cd[4]));
                    return 1
                if unknown_0x3f4ba83a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not stor6:
                        revert with 0, 'Pausable: not paused'
                    stor6 = 0
                    emit Unpaused(msg.sender);
                else:
                    require unknown_0x42966c68(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if not msg.sender:
                        revert with 0, 'ERC20: burn from the zero address'
                    if balanceOf[address(msg.sender)] < cd[4]:
                        revert with 0, 'ERC20: burn amount exceeds balance'
                    balanceOf[address(msg.sender)] -= cd[4]
                    if totalSupply < cd[4]:
                        revert with 0, 17
                    totalSupply -= cd[4]
                    emit Transfer(cd[4], msg.sender, 0);
        if unknown_0x05ec1415(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            uint8(stor18.field_160) = 1
            if stor20[msg.sender]:
                stor13 = 0
                stor14 = 0
                sub_7c5ffd1d = 1
            else:
                if cd[4] and stor10 > -1 / cd[4]:
                    revert with 0, 17
                stor13 = cd[4] * stor10 / 1000
                if cd[4] and stor12 > -1 / cd[4]:
                    revert with 0, 17
                stor14 = cd[4] * stor12 / 1000
                if cd[4] and stor11 > -1 / cd[4]:
                    revert with 0, 17
                sub_7c5ffd1d = cd[4] * stor11 / 1000
            if stor13 > !stor14:
                revert with 0, 17
            if stor13 + stor14 > !sub_7c5ffd1d:
                revert with 0, 17
            if cd[4] < stor13 + stor14 + sub_7c5ffd1d:
                revert with 0, 17
            return (cd[4] - stor13 - stor14 - sub_7c5ffd1d)
        if unknown_0x061f764b(?????) == uint32(call.func_hash) >> 224:
            require ext_code.size(stor9)
            call stor9.0xa9059cbb with:
                 gas gas_remaining wei
                args stor7, stor14
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 1
            stor14 = 0
            stor13 = 0
        if name() == uint32(call.func_hash) >> 224:
            require not msg.value
            if bool(stor4.length):
                if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor4.length):
                    if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor4.length):
                        if 31 < uint255(stor4.length) * 0.5:
                            mem[160] = uint256(stor4.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor4.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor4[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                        mem[160] = 256 * stor4.length.field_8
                else:
                    if bool(stor4.length) == stor4.length.field_1 < 32:
                        revert with 0, 34
                    if stor4.length.field_1:
                        if 31 < stor4.length.field_1:
                            mem[160] = uint256(stor4.field_0)
                            idx = 160
                            s = 0
                            while stor4.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor4[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                        mem[160] = 256 * stor4.length.field_8
                mem[ceil32(uint255(stor4.length) * 0.5) + 224 len ceil32(uint255(stor4.length) * 0.5)] = mem[160 len ceil32(uint255(stor4.length) * 0.5)]
                if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
                    mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 224] = 0
                return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if bool(stor4.length):
                if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor4.length):
                    if 31 < uint255(stor4.length) * 0.5:
                        mem[160] = uint256(stor4.field_0)
                        idx = 160
                        s = 0
                        while (uint255(stor4.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor4[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                    mem[160] = 256 * stor4.length.field_8
            else:
                if bool(stor4.length) == stor4.length.field_1 < 32:
                    revert with 0, 34
                if stor4.length.field_1:
                    if 31 < stor4.length.field_1:
                        mem[160] = uint256(stor4.field_0)
                        idx = 160
                        s = 0
                        while stor4.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor4[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                    mem[160] = 256 * stor4.length.field_8
            mem[ceil32(stor4.length.field_1) + 224 len ceil32(stor4.length.field_1)] = mem[160 len ceil32(stor4.length.field_1)]
            if ceil32(stor4.length.field_1) > stor4.length.field_1:
                mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 224] = 0
            return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 224 len 2 * ceil32(stor4.length.field_1)]), 
        if approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            if address(stor18.field_0):
                if address(stor18.field_0) != address(cd[4]):
                    revert with 0, 'Only LunaSwap is allowed to swap your token'
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not address(cd[4]):
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(msg.sender)][address(cd[4])] = cd[36]
            emit Approval(cd[36], msg.sender, address(cd[4]));
        else:
            if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return totalSupply
            require unknown_0x23b872dd(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 96
            require cd[4] == address(cd[4])
            require cd[36] == address(cd[36])
            if stor6:
                revert with 0, 'Pausable: paused'
            require not stor19[address(cd[36])]
            require not stor19[address(msg.sender)]
            require not stor19[tx.origin]
            require not stor19[address(cd[4])]
            require not stor19[address(msg.sender)]
            require not stor19[tx.origin]
            if not uint8(stor18.field_168):
                if not address(cd[4]):
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(cd[36]):
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(cd[4])] < cd[68]:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(cd[4])] -= cd[68]
                if balanceOf[address(cd[36])] > !cd[68]:
                    revert with 0, 17
                balanceOf[address(cd[36])] += cd[68]
                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                uint8(stor18.field_160) = 0
            else:
                if address(stor18.field_0):
                    if stor17 == address(cd[4]):
                        if not uint8(stor18.field_160):
                            revert with 0, 'Don't try to avoid taxes'
                    else:
                        if stor17 == address(cd[36]):
                            if not uint8(stor18.field_160):
                                revert with 0, 'Don't try to avoid taxes'
                        else:
                            if tx.origin == stor17:
                                if not uint8(stor18.field_160):
                                    revert with 0, 'Don't try to avoid taxes'
                if not stor21[address(cd[4])]:
                    if not stor21[address(cd[36])]:
                        if stor16 > 0:
                            if totalSupply and stor16 > -1 / totalSupply:
                                revert with 0, 17
                            if cd[68] > totalSupply * stor16 / 1000:
                                revert with 0, 'Sell transfer amount exceeds the maxSellTransactionAmount.'
                uint8(stor18.field_160) = 0
                if not address(cd[4]):
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(cd[36]):
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(cd[4])] < cd[68]:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(cd[4])] -= cd[68]
                if balanceOf[address(cd[36])] > !cd[68]:
                    revert with 0, 17
                balanceOf[address(cd[36])] += cd[68]
                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), balanceOf[address(cd[4])]
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[36]), balanceOf[address(cd[36])]
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.process(uint256 arg1) with:
                     gas gas_remaining wei
                    args gasForProcessing
                if ext_call.success:
                    require return_data.size >= 96
                    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
            if allowance[address(cd[4])][msg.sender] < cd[68]:
                revert with 0, 'ERC20: transfer amount exceeds allowance'
            if address(stor18.field_0):
                if address(stor18.field_0) != msg.sender:
                    revert with 0, 'Only LunaSwap is allowed to swap your token'
            if not address(cd[4]):
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(cd[4])][address(msg.sender)] = allowance[address(cd[4])][msg.sender] - cd[68]
            emit Approval((allowance[address(cd[4])][msg.sender] - cd[68]), address(cd[4]), msg.sender);
    return 1
}



}
