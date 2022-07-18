contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const decimals = 6


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor4;
array of struct stor5;
address uniswapV2RouterAddress;
address uniswapV2PairAddress;
address sub_8230af5aAddress;
address dogeAddress;
uint256 swapTokensAtAmount;
address stor12;
mapping of uint8 stor14;
mapping of uint8 stor15;
mapping of address inviter;
uint8 swapAndLiquifyEnabled; offset 160
uint128 stor17; offset 160
address sub_ebf519e4Address;
uint256 startTime;
uint256 minBuyAmount;
uint256 buyAmount;
uint256 sub_cebaa466;
uint256 sellAmount;
uint256 sub_4d884790;
mapping of uint8 stor25;

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function buyAmount() {
    return buyAmount
}

function doge() {
    return dogeAddress
}

function sellAmount() {
    return sellAmount
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function sub_4d884790(?) {
    return sub_4d884790
}

function isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor14[address(arg1)])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function sub_8230af5a(?) {
    return sub_8230af5aAddress
}

function owner() {
    return owner
}

function sub_910a8747(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor25[arg1])
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor15[arg1])
}

function sub_cebaa466(?) {
    return sub_cebaa466
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_dfe0c28e(?) {
    return stor24.length
}

function swapTokensAtAmount() {
    return swapTokensAtAmount
}

function sub_ebf519e4(?) {
    return sub_ebf519e4Address
}

function inviter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return inviter[arg1]
}

function minBuyAmount() {
    return minBuyAmount
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setSwapTokensAtAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapTokensAtAmount = arg1
}

function sub_ef5bd939(?) {
    if startTime > -181:
        revert with 0, 17
    if startTime + 180 < startTime:
        revert with 0, 'SafeMath: addition overflow'
    return (startTime + 180 > block.timestamp)
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor17 = Mask(96, 0, arg1)
}

function updateUniswapV2Router(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit UpdateUniswapV2Router(arg1, uniswapV2RouterAddress);
    uniswapV2RouterAddress = arg1
}

function excludeFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14[address(arg1)] = uint8(arg2)
    emit ExcludeFromFees(arg2, arg1);
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
        mem[32] = 14
        stor14[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
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

function sub_6ad50b35(?) {
    mem[128] = this.address
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    mem[192] = 0xc9882def23bc42d53895b8361d0b1edc7570bc6a
    mem[ceil32(return_data.size) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 228] = swapTokensAtAmount
    idx = 0
    s = ceil32(return_data.size) + 420
    t = 128
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args swapTokensAtAmount, 0, 160, address(this.address), block.timestamp, 3, mem[ceil32(return_data.size) + 420 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_84e63bb2(?) {
    if sub_cebaa466 > buyAmount:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if buyAmount < sub_cebaa466:
        revert with 0, 17
    if balanceOf[address(this.address)] >= buyAmount - sub_cebaa466:
        if buyAmount - sub_cebaa466 >= 10^13:
            mem[192] = this.address
            require ext_code.size(uniswapV2RouterAddress)
            staticcall uniswapV2RouterAddress.WETH() with:
                    gas gas_remaining wei
            mem[288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[224] = ext_call.return_data[12 len 20]
            mem[256] = 0xc9882def23bc42d53895b8361d0b1edc7570bc6a
            mem[ceil32(return_data.size) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 292] = buyAmount - sub_cebaa466
            idx = 0
            s = ceil32(return_data.size) + 484
            t = 192
            while idx < 3:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args buyAmount - sub_cebaa466, 0, 160, address(this.address), block.timestamp, 3, mem[ceil32(return_data.size) + 484 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function sub_17e2003a(?) {
    if sub_4d884790 > sellAmount:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if sellAmount < sub_4d884790:
        revert with 0, 17
    if balanceOf[address(this.address)] >= sellAmount - sub_4d884790:
        if sellAmount - sub_4d884790 >= 130:
            mem[192] = this.address
            require ext_code.size(uniswapV2RouterAddress)
            staticcall uniswapV2RouterAddress.WETH() with:
                    gas gas_remaining wei
            mem[256] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[224] = ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 260] = sellAmount - sub_4d884790
            idx = 0
            s = ceil32(return_data.size) + 452
            t = 192
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args sellAmount - sub_4d884790, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 452 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor12 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if sub_4d884790 > !(sellAmount - sub_4d884790):
                revert with 0, 17
            if sellAmount < sub_4d884790:
                revert with 0, 'SafeMath: addition overflow'
            sub_4d884790 = sellAmount
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

function sub_c1315e61(?) {
    mem[100] = this.address
    require ext_code.size(dogeAddress)
    staticcall dogeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 10000:
        if not ext_call.return_data[0]:
            mem[64] = ceil32(return_data.size) + 160
            mem[ceil32(return_data.size) + 96] = 26
            mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
            if stor24.length:
                if stor24.length <= 10:
                    idx = 0
                    s = 0
                    t = 0
                    while idx < stor24.length:
                        mem[0] = stor24[idx]
                        mem[32] = 1
                        if s > !balanceOf[stor24[idx]]:
                            revert with 0, 17
                        if s + balanceOf[stor24[idx]] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + balanceOf[stor24[idx]]
                        t = stor24[idx]
                        continue 
                    if stor24.length <= 10:
                        idx = 0
                        t = 0
                        u = 160 * stor24.length
                        while idx < stor24.length:
                            mem[0] = stor24[idx]
                            mem[32] = 1
                            if balanceOf[stor24[idx]] < 10^11:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = t
                                u = stor24[idx]
                                continue 
                            mem[0] = stor24[idx]
                            mem[32] = 1
                            if not balanceOf[stor24[idx]]:
                                _425 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_425] = 26
                                mem[_425 + 32] = 'SafeMath: division by zero'
                                if not s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length:
                                    _429 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _429 + 68] = mem[idx + _425 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_429 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _429 + -mem[64] + 100
                                if 0 / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length:
                                    _520 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_520] = 26
                                    mem[_520 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = stor24[idx]
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(dogeAddress)
                                    call dogeAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor24[idx], 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _571 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_571] == bool(mem[_571])
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = 0 / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length
                                u = stor24[idx]
                                continue 
                            if balanceOf[stor24[idx]] and 10000 > -1 / balanceOf[stor24[idx]]:
                                revert with 0, 17
                            if not balanceOf[stor24[idx]]:
                                revert with 0, 18
                            if 10000 * balanceOf[stor24[idx]] / balanceOf[stor24[idx]] != 10000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _459 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_459] = 26
                            mem[_459 + 32] = 'SafeMath: division by zero'
                            if not s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length:
                                _479 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _479 + 68] = mem[idx + _459 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_479 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _479 + -mem[64] + 100
                            if 10000 * balanceOf[stor24[idx]] / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length:
                                _551 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_551] = 26
                                mem[_551 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = stor24[idx]
                                mem[mem[64] + 36] = 0
                                require ext_code.size(dogeAddress)
                                call dogeAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor24[idx], 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _623 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_623] == bool(mem[_623])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = 10000 * balanceOf[stor24[idx]] / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length
                            u = stor24[idx]
                            continue 
                    else:
                        idx = 0
                        t = 0
                        u = 160 * stor24.length
                        while idx < 10:
                            if 0 > !idx:
                                revert with 0, 17
                            if idx >= stor24.length:
                                revert with 0, 50
                            mem[0] = stor24[idx]
                            mem[32] = 1
                            if balanceOf[stor24[idx]] < 10^11:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = t
                                u = stor24[idx]
                                continue 
                            mem[0] = stor24[idx]
                            mem[32] = 1
                            if not balanceOf[stor24[idx]]:
                                _436 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_436] = 26
                                mem[_436 + 32] = 'SafeMath: division by zero'
                                if not s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length:
                                    _451 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _451 + 68] = mem[idx + _436 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_451 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _451 + -mem[64] + 100
                                if 0 / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length:
                                    _536 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_536] = 26
                                    mem[_536 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = stor24[idx]
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(dogeAddress)
                                    call dogeAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor24[idx], 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _595 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_595] == bool(mem[_595])
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = 0 / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length
                                u = stor24[idx]
                                continue 
                            if balanceOf[stor24[idx]] and 10000 > -1 / balanceOf[stor24[idx]]:
                                revert with 0, 17
                            if not balanceOf[stor24[idx]]:
                                revert with 0, 18
                            if 10000 * balanceOf[stor24[idx]] / balanceOf[stor24[idx]] != 10000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _492 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_492] = 26
                            mem[_492 + 32] = 'SafeMath: division by zero'
                            if not s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length:
                                _506 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _506 + 68] = mem[idx + _492 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_506 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _506 + -mem[64] + 100
                            if 10000 * balanceOf[stor24[idx]] / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length:
                                _572 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_572] = 26
                                mem[_572 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = stor24[idx]
                                mem[mem[64] + 36] = 0
                                require ext_code.size(dogeAddress)
                                call dogeAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor24[idx], 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _647 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_647] == bool(mem[_647])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = 10000 * balanceOf[stor24[idx]] / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length
                            u = stor24[idx]
                            continue 
                else:
                    if stor24.length < 10:
                        revert with 0, 17
                    mem[64] = ceil32(return_data.size) + 224
                    mem[ceil32(return_data.size) + 160] = 24
                    mem[ceil32(return_data.size) + 192] = 'SafeMath: modulo by zero'
                    if not stor24.length - 10:
                        revert with 0, 'SafeMath: modulo by zero', 0
                    idx = 0
                    s = 0
                    t = 0
                    while idx < 10:
                        if block.timestamp % stor24.length - 10 > !idx:
                            revert with 0, 17
                        if (block.timestamp % stor24.length - 10) + idx >= stor24.length:
                            revert with 0, 50
                        mem[0] = stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]
                        mem[32] = 1
                        if s > !balanceOf[stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]]:
                            revert with 0, 17
                        if s + balanceOf[stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + balanceOf[stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]]
                        t = stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]
                        continue 
                    if stor24.length <= 10:
                        idx = 0
                        t = 0
                        u = 1600
                        while idx < stor24.length:
                            mem[0] = stor24[idx]
                            mem[32] = 1
                            if balanceOf[stor24[idx]] < 10^11:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = t
                                u = stor24[idx]
                                continue 
                            mem[0] = stor24[idx]
                            mem[32] = 1
                            if not balanceOf[stor24[idx]]:
                                _426 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_426] = 26
                                mem[_426 + 32] = 'SafeMath: division by zero'
                                if not 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s:
                                    _430 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _430 + 68] = mem[idx + _426 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_430 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _430 + -mem[64] + 100
                                if 0 / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s:
                                    _522 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_522] = 26
                                    mem[_522 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = stor24[idx]
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(dogeAddress)
                                    call dogeAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor24[idx], 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _573 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_573] == bool(mem[_573])
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = 0 / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s
                                u = stor24[idx]
                                continue 
                            if balanceOf[stor24[idx]] and 10000 > -1 / balanceOf[stor24[idx]]:
                                revert with 0, 17
                            if not balanceOf[stor24[idx]]:
                                revert with 0, 18
                            if 10000 * balanceOf[stor24[idx]] / balanceOf[stor24[idx]] != 10000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _461 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_461] = 26
                            mem[_461 + 32] = 'SafeMath: division by zero'
                            if not 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s:
                                _483 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _483 + 68] = mem[idx + _461 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_483 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _483 + -mem[64] + 100
                            if 10000 * balanceOf[stor24[idx]] / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s:
                                _552 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_552] = 26
                                mem[_552 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = stor24[idx]
                                mem[mem[64] + 36] = 0
                                require ext_code.size(dogeAddress)
                                call dogeAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor24[idx], 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _624 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_624] == bool(mem[_624])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = 10000 * balanceOf[stor24[idx]] / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s
                            u = stor24[idx]
                            continue 
                    else:
                        idx = 0
                        t = 0
                        u = 1600
                        while idx < 10:
                            if block.timestamp % stor24.length - 10 > !idx:
                                revert with 0, 17
                            if (block.timestamp % stor24.length - 10) + idx >= stor24.length:
                                revert with 0, 50
                            mem[0] = stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]
                            mem[32] = 1
                            if balanceOf[stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]] < 10^11:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = t
                                u = stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]
                                continue 
                            mem[0] = stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]
                            mem[32] = 1
                            if not balanceOf[stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]]:
                                _438 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_438] = 26
                                mem[_438 + 32] = 'SafeMath: division by zero'
                                if not 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s:
                                    _454 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _454 + 68] = mem[idx + _438 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_454 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _454 + -mem[64] + 100
                                if 0 / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s:
                                    _538 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_538] = 26
                                    mem[_538 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(dogeAddress)
                                    call dogeAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx], 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _596 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_596] == bool(mem[_596])
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = 0 / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s
                                u = stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]
                                continue 
                            if balanceOf[stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]] and 10000 > -1 / balanceOf[stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]]:
                                revert with 0, 17
                            if not balanceOf[stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]]:
                                revert with 0, 18
                            if 10000 * balanceOf[stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]] / balanceOf[stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]] != 10000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _494 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_494] = 26
                            mem[_494 + 32] = 'SafeMath: division by zero'
                            if not 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s:
                                _509 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _509 + 68] = mem[idx + _494 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_509 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _509 + -mem[64] + 100
                            if 10000 * balanceOf[stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]] / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s:
                                _574 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_574] = 26
                                mem[_574 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]
                                mem[mem[64] + 36] = 0
                                require ext_code.size(dogeAddress)
                                call dogeAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx], 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _648 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_648] == bool(mem[_648])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = 10000 * balanceOf[stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]] / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s
                            u = stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]
                            continue 
        else:
            if ext_call.return_data[0] and 4 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if 4 * ext_call.return_data[0] / ext_call.return_data[0] != 4:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[64] = ceil32(return_data.size) + 160
            mem[ceil32(return_data.size) + 96] = 26
            mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
            if stor24.length:
                if stor24.length <= 10:
                    idx = 0
                    s = 0
                    t = 0
                    while idx < stor24.length:
                        mem[0] = stor24[idx]
                        mem[32] = 1
                        if s > !balanceOf[stor24[idx]]:
                            revert with 0, 17
                        if s + balanceOf[stor24[idx]] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + balanceOf[stor24[idx]]
                        t = stor24[idx]
                        continue 
                    if stor24.length <= 10:
                        idx = 0
                        t = 0
                        u = 160 * stor24.length
                        while idx < stor24.length:
                            mem[0] = stor24[idx]
                            mem[32] = 1
                            if balanceOf[stor24[idx]] < 10^11:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = t
                                u = stor24[idx]
                                continue 
                            mem[0] = stor24[idx]
                            mem[32] = 1
                            if not balanceOf[stor24[idx]]:
                                _423 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_423] = 26
                                mem[_423 + 32] = 'SafeMath: division by zero'
                                if not s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length:
                                    _427 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _427 + 68] = mem[idx + _423 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_427 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _427 + -mem[64] + 100
                                if 0 / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length:
                                    if not 4 * ext_call.return_data[0] / 5:
                                        _516 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_516] = 26
                                        mem[_516 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = stor24[idx]
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(dogeAddress)
                                        call dogeAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor24[idx], 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _565 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_565] == bool(mem[_565])
                                    else:
                                        if 4 * ext_call.return_data[0] / 5 and 0 / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length > -1 / 4 * ext_call.return_data[0] / 5:
                                            revert with 0, 17
                                        if not 4 * ext_call.return_data[0] / 5:
                                            revert with 0, 18
                                        if 4 * ext_call.return_data[0] / 5 * 0 / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length / 4 * ext_call.return_data[0] / 5 != 0 / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _548 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_548] = 26
                                        mem[_548 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = stor24[idx]
                                        mem[mem[64] + 36] = 4 * ext_call.return_data[0] / 5 * 0 / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length / 10000
                                        require ext_code.size(dogeAddress)
                                        call dogeAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor24[idx], 4 * ext_call.return_data[0] / 5 * 0 / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length / 10000
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _618 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_618] == bool(mem[_618])
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = 0 / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length
                                u = stor24[idx]
                                continue 
                            if balanceOf[stor24[idx]] and 10000 > -1 / balanceOf[stor24[idx]]:
                                revert with 0, 17
                            if not balanceOf[stor24[idx]]:
                                revert with 0, 18
                            if 10000 * balanceOf[stor24[idx]] / balanceOf[stor24[idx]] != 10000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _455 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_455] = 26
                            mem[_455 + 32] = 'SafeMath: division by zero'
                            if not s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length:
                                _471 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _471 + 68] = mem[idx + _455 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_471 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _471 + -mem[64] + 100
                            if 10000 * balanceOf[stor24[idx]] / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length:
                                if not 4 * ext_call.return_data[0] / 5:
                                    _547 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_547] = 26
                                    mem[_547 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = stor24[idx]
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(dogeAddress)
                                    call dogeAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor24[idx], 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _617 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_617] == bool(mem[_617])
                                else:
                                    if 4 * ext_call.return_data[0] / 5 and 10000 * balanceOf[stor24[idx]] / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length > -1 / 4 * ext_call.return_data[0] / 5:
                                        revert with 0, 17
                                    if not 4 * ext_call.return_data[0] / 5:
                                        revert with 0, 18
                                    if 4 * ext_call.return_data[0] / 5 * 10000 * balanceOf[stor24[idx]] / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length / 4 * ext_call.return_data[0] / 5 != 10000 * balanceOf[stor24[idx]] / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _591 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_591] = 26
                                    mem[_591 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = stor24[idx]
                                    mem[mem[64] + 36] = 4 * ext_call.return_data[0] / 5 * 10000 * balanceOf[stor24[idx]] / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length / 10000
                                    require ext_code.size(dogeAddress)
                                    call dogeAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor24[idx], 4 * ext_call.return_data[0] / 5 * 10000 * balanceOf[stor24[idx]] / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length / 10000
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _659 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_659] == bool(mem[_659])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = 10000 * balanceOf[stor24[idx]] / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length
                            u = stor24[idx]
                            continue 
                    else:
                        idx = 0
                        t = 0
                        u = 160 * stor24.length
                        while idx < 10:
                            if 0 > !idx:
                                revert with 0, 17
                            if idx >= stor24.length:
                                revert with 0, 50
                            mem[0] = stor24[idx]
                            mem[32] = 1
                            if balanceOf[stor24[idx]] < 10^11:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = t
                                u = stor24[idx]
                                continue 
                            mem[0] = stor24[idx]
                            mem[32] = 1
                            if not balanceOf[stor24[idx]]:
                                _432 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_432] = 26
                                mem[_432 + 32] = 'SafeMath: division by zero'
                                if not s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length:
                                    _445 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _445 + 68] = mem[idx + _432 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_445 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _445 + -mem[64] + 100
                                if 0 / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length:
                                    if not 4 * ext_call.return_data[0] / 5:
                                        _532 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_532] = 26
                                        mem[_532 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = stor24[idx]
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(dogeAddress)
                                        call dogeAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor24[idx], 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _592 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_592] == bool(mem[_592])
                                    else:
                                        if 4 * ext_call.return_data[0] / 5 and 0 / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length > -1 / 4 * ext_call.return_data[0] / 5:
                                            revert with 0, 17
                                        if not 4 * ext_call.return_data[0] / 5:
                                            revert with 0, 18
                                        if 4 * ext_call.return_data[0] / 5 * 0 / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length / 4 * ext_call.return_data[0] / 5 != 0 / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _567 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_567] = 26
                                        mem[_567 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = stor24[idx]
                                        mem[mem[64] + 36] = 4 * ext_call.return_data[0] / 5 * 0 / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length / 10000
                                        require ext_code.size(dogeAddress)
                                        call dogeAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor24[idx], 4 * ext_call.return_data[0] / 5 * 0 / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length / 10000
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _644 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_644] == bool(mem[_644])
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = 0 / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length
                                u = stor24[idx]
                                continue 
                            if balanceOf[stor24[idx]] and 10000 > -1 / balanceOf[stor24[idx]]:
                                revert with 0, 17
                            if not balanceOf[stor24[idx]]:
                                revert with 0, 18
                            if 10000 * balanceOf[stor24[idx]] / balanceOf[stor24[idx]] != 10000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _488 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_488] = 26
                            mem[_488 + 32] = 'SafeMath: division by zero'
                            if not s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length:
                                _500 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _500 + 68] = mem[idx + _488 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_500 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _500 + -mem[64] + 100
                            if 10000 * balanceOf[stor24[idx]] / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length:
                                if not 4 * ext_call.return_data[0] / 5:
                                    _566 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_566] = 26
                                    mem[_566 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = stor24[idx]
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(dogeAddress)
                                    call dogeAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor24[idx], 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _643 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_643] == bool(mem[_643])
                                else:
                                    if 4 * ext_call.return_data[0] / 5 and 10000 * balanceOf[stor24[idx]] / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length > -1 / 4 * ext_call.return_data[0] / 5:
                                        revert with 0, 17
                                    if not 4 * ext_call.return_data[0] / 5:
                                        revert with 0, 18
                                    if 4 * ext_call.return_data[0] / 5 * 10000 * balanceOf[stor24[idx]] / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length / 4 * ext_call.return_data[0] / 5 != 10000 * balanceOf[stor24[idx]] / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _619 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_619] = 26
                                    mem[_619 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = stor24[idx]
                                    mem[mem[64] + 36] = 4 * ext_call.return_data[0] / 5 * 10000 * balanceOf[stor24[idx]] / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length / 10000
                                    require ext_code.size(dogeAddress)
                                    call dogeAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor24[idx], 4 * ext_call.return_data[0] / 5 * 10000 * balanceOf[stor24[idx]] / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length / 10000
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _667 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_667] == bool(mem[_667])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = 10000 * balanceOf[stor24[idx]] / s * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length * stor24.length
                            u = stor24[idx]
                            continue 
                else:
                    if stor24.length < 10:
                        revert with 0, 17
                    mem[64] = ceil32(return_data.size) + 224
                    mem[ceil32(return_data.size) + 160] = 24
                    mem[ceil32(return_data.size) + 192] = 'SafeMath: modulo by zero'
                    if not stor24.length - 10:
                        revert with 0, 'SafeMath: modulo by zero', 0
                    idx = 0
                    s = 0
                    t = 0
                    while idx < 10:
                        if block.timestamp % stor24.length - 10 > !idx:
                            revert with 0, 17
                        if (block.timestamp % stor24.length - 10) + idx >= stor24.length:
                            revert with 0, 50
                        mem[0] = stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]
                        mem[32] = 1
                        if s > !balanceOf[stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]]:
                            revert with 0, 17
                        if s + balanceOf[stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]] < s:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + balanceOf[stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]]
                        t = stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]
                        continue 
                    if stor24.length <= 10:
                        idx = 0
                        t = 0
                        u = 1600
                        while idx < stor24.length:
                            mem[0] = stor24[idx]
                            mem[32] = 1
                            if balanceOf[stor24[idx]] < 10^11:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = t
                                u = stor24[idx]
                                continue 
                            mem[0] = stor24[idx]
                            mem[32] = 1
                            if not balanceOf[stor24[idx]]:
                                _424 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_424] = 26
                                mem[_424 + 32] = 'SafeMath: division by zero'
                                if not 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s:
                                    _428 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _428 + 68] = mem[idx + _424 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_428 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _428 + -mem[64] + 100
                                if 0 / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s:
                                    if not 4 * ext_call.return_data[0] / 5:
                                        _518 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_518] = 26
                                        mem[_518 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = stor24[idx]
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(dogeAddress)
                                        call dogeAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor24[idx], 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _568 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_568] == bool(mem[_568])
                                    else:
                                        if 4 * ext_call.return_data[0] / 5 and 0 / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s > -1 / 4 * ext_call.return_data[0] / 5:
                                            revert with 0, 17
                                        if not 4 * ext_call.return_data[0] / 5:
                                            revert with 0, 18
                                        if 4 * ext_call.return_data[0] / 5 * 0 / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s / 4 * ext_call.return_data[0] / 5 != 0 / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _550 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_550] = 26
                                        mem[_550 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = stor24[idx]
                                        mem[mem[64] + 36] = 4 * ext_call.return_data[0] / 5 * 0 / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s / 10000
                                        require ext_code.size(dogeAddress)
                                        call dogeAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor24[idx], 4 * ext_call.return_data[0] / 5 * 0 / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s / 10000
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _621 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_621] == bool(mem[_621])
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = 0 / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s
                                u = stor24[idx]
                                continue 
                            if balanceOf[stor24[idx]] and 10000 > -1 / balanceOf[stor24[idx]]:
                                revert with 0, 17
                            if not balanceOf[stor24[idx]]:
                                revert with 0, 18
                            if 10000 * balanceOf[stor24[idx]] / balanceOf[stor24[idx]] != 10000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _457 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_457] = 26
                            mem[_457 + 32] = 'SafeMath: division by zero'
                            if not 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s:
                                _475 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _475 + 68] = mem[idx + _457 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_475 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _475 + -mem[64] + 100
                            if 10000 * balanceOf[stor24[idx]] / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s:
                                if not 4 * ext_call.return_data[0] / 5:
                                    _549 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_549] = 26
                                    mem[_549 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = stor24[idx]
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(dogeAddress)
                                    call dogeAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor24[idx], 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _620 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_620] == bool(mem[_620])
                                else:
                                    if 4 * ext_call.return_data[0] / 5 and 10000 * balanceOf[stor24[idx]] / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s > -1 / 4 * ext_call.return_data[0] / 5:
                                        revert with 0, 17
                                    if not 4 * ext_call.return_data[0] / 5:
                                        revert with 0, 18
                                    if 4 * ext_call.return_data[0] / 5 * 10000 * balanceOf[stor24[idx]] / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s / 4 * ext_call.return_data[0] / 5 != 10000 * balanceOf[stor24[idx]] / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _593 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_593] = 26
                                    mem[_593 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = stor24[idx]
                                    mem[mem[64] + 36] = 4 * ext_call.return_data[0] / 5 * 10000 * balanceOf[stor24[idx]] / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s / 10000
                                    require ext_code.size(dogeAddress)
                                    call dogeAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor24[idx], 4 * ext_call.return_data[0] / 5 * 10000 * balanceOf[stor24[idx]] / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s / 10000
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _660 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_660] == bool(mem[_660])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = 10000 * balanceOf[stor24[idx]] / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s
                            u = stor24[idx]
                            continue 
                    else:
                        idx = 0
                        t = 0
                        u = 1600
                        while idx < 10:
                            if block.timestamp % stor24.length - 10 > !idx:
                                revert with 0, 17
                            if (block.timestamp % stor24.length - 10) + idx >= stor24.length:
                                revert with 0, 50
                            mem[0] = stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]
                            mem[32] = 1
                            if balanceOf[stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]] < 10^11:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = t
                                u = stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]
                                continue 
                            mem[0] = stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]
                            mem[32] = 1
                            if not balanceOf[stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]]:
                                _434 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_434] = 26
                                mem[_434 + 32] = 'SafeMath: division by zero'
                                if not 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s:
                                    _448 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _448 + 68] = mem[idx + _434 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_448 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _448 + -mem[64] + 100
                                if 0 / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s:
                                    if not 4 * ext_call.return_data[0] / 5:
                                        _534 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_534] = 26
                                        mem[_534 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(dogeAddress)
                                        call dogeAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx], 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _594 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_594] == bool(mem[_594])
                                    else:
                                        if 4 * ext_call.return_data[0] / 5 and 0 / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s > -1 / 4 * ext_call.return_data[0] / 5:
                                            revert with 0, 17
                                        if not 4 * ext_call.return_data[0] / 5:
                                            revert with 0, 18
                                        if 4 * ext_call.return_data[0] / 5 * 0 / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s / 4 * ext_call.return_data[0] / 5 != 0 / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _570 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_570] = 26
                                        mem[_570 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]
                                        mem[mem[64] + 36] = 4 * ext_call.return_data[0] / 5 * 0 / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s / 10000
                                        require ext_code.size(dogeAddress)
                                        call dogeAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx], 4 * ext_call.return_data[0] / 5 * 0 / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s / 10000
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _646 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_646] == bool(mem[_646])
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                t = 0 / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s
                                u = stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]
                                continue 
                            if balanceOf[stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]] and 10000 > -1 / balanceOf[stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]]:
                                revert with 0, 17
                            if not balanceOf[stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]]:
                                revert with 0, 18
                            if 10000 * balanceOf[stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]] / balanceOf[stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]] != 10000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _490 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_490] = 26
                            mem[_490 + 32] = 'SafeMath: division by zero'
                            if not 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s:
                                _503 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _503 + 68] = mem[idx + _490 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_503 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _503 + -mem[64] + 100
                            if 10000 * balanceOf[stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]] / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s:
                                if not 4 * ext_call.return_data[0] / 5:
                                    _569 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_569] = 26
                                    mem[_569 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(dogeAddress)
                                    call dogeAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx], 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _645 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_645] == bool(mem[_645])
                                else:
                                    if 4 * ext_call.return_data[0] / 5 and 10000 * balanceOf[stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]] / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s > -1 / 4 * ext_call.return_data[0] / 5:
                                        revert with 0, 17
                                    if not 4 * ext_call.return_data[0] / 5:
                                        revert with 0, 18
                                    if 4 * ext_call.return_data[0] / 5 * 10000 * balanceOf[stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]] / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s / 4 * ext_call.return_data[0] / 5 != 10000 * balanceOf[stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]] / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _622 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_622] = 26
                                    mem[_622 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]
                                    mem[mem[64] + 36] = 4 * ext_call.return_data[0] / 5 * 10000 * balanceOf[stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]] / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s / 10000
                                    require ext_code.size(dogeAddress)
                                    call dogeAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx], 4 * ext_call.return_data[0] / 5 * 10000 * balanceOf[stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]] / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s / 10000
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _668 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_668] == bool(mem[_668])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = 10000 * balanceOf[stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]] / 0x35f9dea3e1f6bdfef70cdd17b25efa418ca63a22764cec100000000000000000000 * s
                            u = stor[('name', 'stor24', 24) + (block.timestamp % stor24.length - 10) + idx]
                            continue 
}



}
