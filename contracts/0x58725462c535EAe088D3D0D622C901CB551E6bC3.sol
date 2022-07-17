contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const decimals = 0

const blackHole = 57005


address owner;
address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor5;
array of struct stor6;
address uniswapV2RouterAddress;
uint8 stor8; offset 160
address uniswapV2PairAddress;
uint256 swapTokensAtAmount;
address stor10;
address stor11;
mapping of uint8 stor12;
mapping of uint8 stor13;
uint8 swapAndLiquifyEnabled;

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[address(arg1)])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function isAutomatedMarketMakerPair(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor13[address(arg1)])
}

function owner() {
    return owner
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor13[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function swapTokensAtAmount() {
    return swapTokensAtAmount
}

function renounceOwnership() {
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    swapAndLiquifyEnabled = uint8(arg1)
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    stor13[address(arg1)] = uint8(arg2)
}

function updateUniswapV2Router(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    emit UpdateUniswapV2Router(arg1, uniswapV2RouterAddress);
    uniswapV2RouterAddress = arg1
}

function excludeFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    stor12[address(arg1)] = uint8(arg2)
    emit ExcludeFromFees(arg2, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if stor1 != msg.sender:
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
        if stor1 != msg.sender:
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
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 12
        stor12[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
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

function sub_1f2eb32f(?) {
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
    mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = swapTokensAtAmount
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
        args swapTokensAtAmount, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor10 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_dccea26f(?) {
    require calldata.size - 4 >= 32
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
    mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
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
        args arg1, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor10 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function name() {
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

function symbol() {
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor6.length):
            if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor6.length):
                if 31 < uint255(stor6.length) * 0.5:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor6.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 0, 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(uint255(stor6.length) * 0.5) + 192 len ceil32(uint255(stor6.length) * 0.5)] = mem[128 len ceil32(uint255(stor6.length) * 0.5)]
        if ceil32(uint255(stor6.length) * 0.5) > uint255(stor6.length) * 0.5:
            mem[ceil32(uint255(stor6.length) * 0.5) + (uint255(stor6.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)], mem[(2 * ceil32(uint255(stor6.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor6.length) * 0.5)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 0, 34
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor6.length):
            if 31 < uint255(stor6.length) * 0.5:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while (uint255(stor6.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 0, 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
    if ceil32(stor6.length.field_1) > stor6.length.field_1:
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[this.address] < swapTokensAtAmount:
        if stor12[address(msg.sender)]:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[arg1] > !arg2:
                revert with 0, 17
            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if stor12[address(arg1)]:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0, 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[arg1] > !arg2:
                    revert with 0, 17
                if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if not arg2 / 100:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if 0 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[230 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < 0:
                        revert with 0, 17
                    if balanceOf[57005] > -1:
                        revert with 0, 17
                    if balanceOf[57005] < balanceOf[57005]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, msg.sender, 57005);
                else:
                    if arg2 / 100 and 3 > -1 / arg2 / 100:
                        revert with 0, 17
                    if not arg2 / 100:
                        revert with 0, 18
                    if 3 * arg2 / 100 / arg2 / 100 != 3:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if 3 * arg2 / 100 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[230 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < 3 * arg2 / 100:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] += -3 * arg2 / 100
                    if balanceOf[57005] > !(3 * arg2 / 100):
                        revert with 0, 17
                    if balanceOf[57005] + (3 * arg2 / 100) < balanceOf[57005]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[57005] += 3 * arg2 / 100
                    emit Transfer((3 * arg2 / 100), msg.sender, 57005);
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not stor11:
                    revert with 0, 'ERC20: transfer to the zero address'
                if arg2 / 50 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                if balanceOf[address(msg.sender)] < arg2 / 50:
                    revert with 0, 17
                balanceOf[address(msg.sender)] -= arg2 / 50
                if balanceOf[stor11] > !(arg2 / 50):
                    revert with 0, 17
                if balanceOf[stor11] + (arg2 / 50) < balanceOf[stor11]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor11] += arg2 / 50
                emit Transfer((arg2 / 50), msg.sender, stor11);
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0, 'ERC20: transfer to the zero address'
                if arg2 / 100 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                if balanceOf[address(msg.sender)] < arg2 / 100:
                    revert with 0, 17
                balanceOf[address(msg.sender)] -= arg2 / 100
                if balanceOf[this.address] > !(arg2 / 100):
                    revert with 0, 17
                if balanceOf[this.address] + (arg2 / 100) < balanceOf[this.address]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] = balanceOf[this.address] + (arg2 / 100)
                emit Transfer((arg2 / 100), msg.sender, this.address);
                if not arg2 / 50:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 0 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[710 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < 0:
                        revert with 0, 17
                    if balanceOf[arg1] > -1:
                        revert with 0, 17
                    if balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1]
                    emit Transfer(0, msg.sender, arg1);
                else:
                    if arg2 / 50 and 47 > -1 / arg2 / 50:
                        revert with 0, 17
                    if not arg2 / 50:
                        revert with 0, 18
                    if 47 * arg2 / 50 / arg2 / 50 != 47:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if 47 * arg2 / 50 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[710 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < 47 * arg2 / 50:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] += -47 * arg2 / 50
                    if balanceOf[arg1] > !(47 * arg2 / 50):
                        revert with 0, 17
                    if balanceOf[arg1] + (47 * arg2 / 50) < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + (47 * arg2 / 50)
                    emit Transfer((47 * arg2 / 50), msg.sender, arg1);
    else:
        if stor8:
            if stor12[address(msg.sender)]:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0, 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[arg1] > !arg2:
                    revert with 0, 17
                if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if stor12[address(arg1)]:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if not arg2 / 100:
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if 0 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[230 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < 0:
                            revert with 0, 17
                        if balanceOf[57005] > -1:
                            revert with 0, 17
                        if balanceOf[57005] < balanceOf[57005]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, msg.sender, 57005);
                    else:
                        if arg2 / 100 and 3 > -1 / arg2 / 100:
                            revert with 0, 17
                        if not arg2 / 100:
                            revert with 0, 18
                        if 3 * arg2 / 100 / arg2 / 100 != 3:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if 3 * arg2 / 100 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[230 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < 3 * arg2 / 100:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] += -3 * arg2 / 100
                        if balanceOf[57005] > !(3 * arg2 / 100):
                            revert with 0, 17
                        if balanceOf[57005] + (3 * arg2 / 100) < balanceOf[57005]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[57005] += 3 * arg2 / 100
                        emit Transfer((3 * arg2 / 100), msg.sender, 57005);
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not stor11:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if arg2 / 50 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2 / 50:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2 / 50
                    if balanceOf[stor11] > !(arg2 / 50):
                        revert with 0, 17
                    if balanceOf[stor11] + (arg2 / 50) < balanceOf[stor11]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor11] += arg2 / 50
                    emit Transfer((arg2 / 50), msg.sender, stor11);
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not this.address:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if arg2 / 100 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2 / 100:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2 / 100
                    if balanceOf[this.address] > !(arg2 / 100):
                        revert with 0, 17
                    if balanceOf[this.address] + (arg2 / 100) < balanceOf[this.address]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] = balanceOf[this.address] + (arg2 / 100)
                    emit Transfer((arg2 / 100), msg.sender, this.address);
                    if not arg2 / 50:
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 0 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[710 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < 0:
                            revert with 0, 17
                        if balanceOf[arg1] > -1:
                            revert with 0, 17
                        if balanceOf[arg1] < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[arg1]
                        emit Transfer(0, msg.sender, arg1);
                    else:
                        if arg2 / 50 and 47 > -1 / arg2 / 50:
                            revert with 0, 17
                        if not arg2 / 50:
                            revert with 0, 18
                        if 47 * arg2 / 50 / arg2 / 50 != 47:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if 47 * arg2 / 50 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[710 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < 47 * arg2 / 50:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] += -47 * arg2 / 50
                        if balanceOf[arg1] > !(47 * arg2 / 50):
                            revert with 0, 17
                        if balanceOf[arg1] + (47 * arg2 / 50) < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[arg1] + (47 * arg2 / 50)
                        emit Transfer((47 * arg2 / 50), msg.sender, arg1);
        else:
            if uniswapV2PairAddress == msg.sender:
                if stor12[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor12[address(arg1)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not arg2 / 100:
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if 0 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[230 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < 0:
                                revert with 0, 17
                            if balanceOf[57005] > -1:
                                revert with 0, 17
                            if balanceOf[57005] < balanceOf[57005]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, msg.sender, 57005);
                        else:
                            if arg2 / 100 and 3 > -1 / arg2 / 100:
                                revert with 0, 17
                            if not arg2 / 100:
                                revert with 0, 18
                            if 3 * arg2 / 100 / arg2 / 100 != 3:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if 3 * arg2 / 100 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[230 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < 3 * arg2 / 100:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] += -3 * arg2 / 100
                            if balanceOf[57005] > !(3 * arg2 / 100):
                                revert with 0, 17
                            if balanceOf[57005] + (3 * arg2 / 100) < balanceOf[57005]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[57005] += 3 * arg2 / 100
                            emit Transfer((3 * arg2 / 100), msg.sender, 57005);
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor11:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg2 / 50 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2 / 50:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2 / 50
                        if balanceOf[stor11] > !(arg2 / 50):
                            revert with 0, 17
                        if balanceOf[stor11] + (arg2 / 50) < balanceOf[stor11]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor11] += arg2 / 50
                        emit Transfer((arg2 / 50), msg.sender, stor11);
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg2 / 100 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2 / 100:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2 / 100
                        if balanceOf[this.address] > !(arg2 / 100):
                            revert with 0, 17
                        if balanceOf[this.address] + (arg2 / 100) < balanceOf[this.address]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] = balanceOf[this.address] + (arg2 / 100)
                        emit Transfer((arg2 / 100), msg.sender, this.address);
                        if not arg2 / 50:
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if 0 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[710 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < 0:
                                revert with 0, 17
                            if balanceOf[arg1] > -1:
                                revert with 0, 17
                            if balanceOf[arg1] < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[arg1]
                            emit Transfer(0, msg.sender, arg1);
                        else:
                            if arg2 / 50 and 47 > -1 / arg2 / 50:
                                revert with 0, 17
                            if not arg2 / 50:
                                revert with 0, 18
                            if 47 * arg2 / 50 / arg2 / 50 != 47:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if 47 * arg2 / 50 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[710 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < 47 * arg2 / 50:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] += -47 * arg2 / 50
                            if balanceOf[arg1] > !(47 * arg2 / 50):
                                revert with 0, 17
                            if balanceOf[arg1] + (47 * arg2 / 50) < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[arg1] + (47 * arg2 / 50)
                            emit Transfer((47 * arg2 / 50), msg.sender, arg1);
            else:
                if not swapAndLiquifyEnabled:
                    if stor12[address(msg.sender)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor12[address(arg1)]:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if not arg2 / 100:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[230 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 17
                                if balanceOf[57005] > -1:
                                    revert with 0, 17
                                if balanceOf[57005] < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, 57005);
                            else:
                                if arg2 / 100 and 3 > -1 / arg2 / 100:
                                    revert with 0, 17
                                if not arg2 / 100:
                                    revert with 0, 18
                                if 3 * arg2 / 100 / arg2 / 100 != 3:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if 3 * arg2 / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[230 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 3 * arg2 / 100:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] += -3 * arg2 / 100
                                if balanceOf[57005] > !(3 * arg2 / 100):
                                    revert with 0, 17
                                if balanceOf[57005] + (3 * arg2 / 100) < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[57005] += 3 * arg2 / 100
                                emit Transfer((3 * arg2 / 100), msg.sender, 57005);
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not stor11:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg2 / 50 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2 / 50:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2 / 50
                            if balanceOf[stor11] > !(arg2 / 50):
                                revert with 0, 17
                            if balanceOf[stor11] + (arg2 / 50) < balanceOf[stor11]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor11] += arg2 / 50
                            emit Transfer((arg2 / 50), msg.sender, stor11);
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg2 / 100 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2 / 100:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2 / 100
                            if balanceOf[this.address] > !(arg2 / 100):
                                revert with 0, 17
                            if balanceOf[this.address] + (arg2 / 100) < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] = balanceOf[this.address] + (arg2 / 100)
                            emit Transfer((arg2 / 100), msg.sender, this.address);
                            if not arg2 / 50:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[710 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 17
                                if balanceOf[arg1] > -1:
                                    revert with 0, 17
                                if balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[arg1]
                                emit Transfer(0, msg.sender, arg1);
                            else:
                                if arg2 / 50 and 47 > -1 / arg2 / 50:
                                    revert with 0, 17
                                if not arg2 / 50:
                                    revert with 0, 18
                                if 47 * arg2 / 50 / arg2 / 50 != 47:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 47 * arg2 / 50 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[710 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 47 * arg2 / 50:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] += -47 * arg2 / 50
                                if balanceOf[arg1] > !(47 * arg2 / 50):
                                    revert with 0, 17
                                if balanceOf[arg1] + (47 * arg2 / 50) < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[arg1] + (47 * arg2 / 50)
                                emit Transfer((47 * arg2 / 50), msg.sender, arg1);
                else:
                    stor8 = 1
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
                    mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = swapTokensAtAmount
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
                        args swapTokensAtAmount, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor10 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    stor8 = 0
                    if stor12[address(msg.sender)]:
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[arg1] > !arg2:
                            revert with 0, 17
                        if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor12[address(arg1)]:
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48, 0
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[arg1] > !arg2:
                                revert with 0, 17
                            if balanceOf[arg1] + arg2 < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[arg1] + arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if not arg2 / 100:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, block.timestamp) >> 32 >> 48,
                                                0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 17
                                if balanceOf[57005] > -1:
                                    revert with 0, 17
                                if balanceOf[57005] < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, 57005);
                            else:
                                if arg2 / 100 and 3 > -1 / arg2 / 100:
                                    revert with 0, 17
                                if not arg2 / 100:
                                    revert with 0, 18
                                if 3 * arg2 / 100 / arg2 / 100 != 3:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if 3 * arg2 / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, block.timestamp) >> 32 >> 48,
                                                0
                                if balanceOf[address(msg.sender)] < 3 * arg2 / 100:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] += -3 * arg2 / 100
                                if balanceOf[57005] > !(3 * arg2 / 100):
                                    revert with 0, 17
                                if balanceOf[57005] + (3 * arg2 / 100) < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[57005] += 3 * arg2 / 100
                                emit Transfer((3 * arg2 / 100), msg.sender, 57005);
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not stor11:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg2 / 50 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 486 len 26] >> 48,
                                            0
                            if balanceOf[address(msg.sender)] < arg2 / 50:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2 / 50
                            if balanceOf[stor11] > !(arg2 / 50):
                                revert with 0, 17
                            if balanceOf[stor11] + (arg2 / 50) < balanceOf[stor11]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor11] += arg2 / 50
                            emit Transfer((arg2 / 50), msg.sender, stor11);
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg2 / 100 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 646 len 26] >> 48,
                                            0
                            if balanceOf[address(msg.sender)] < arg2 / 100:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2 / 100
                            if balanceOf[this.address] > !(arg2 / 100):
                                revert with 0, 17
                            if balanceOf[this.address] + (arg2 / 100) < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] = balanceOf[this.address] + (arg2 / 100)
                            emit Transfer((arg2 / 100), msg.sender, this.address);
                            if not arg2 / 50:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 806 len 26] >> 48,
                                                0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 17
                                if balanceOf[arg1] > -1:
                                    revert with 0, 17
                                if balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[arg1]
                                emit Transfer(0, msg.sender, arg1);
                            else:
                                if arg2 / 50 and 47 > -1 / arg2 / 50:
                                    revert with 0, 17
                                if not arg2 / 50:
                                    revert with 0, 18
                                if 47 * arg2 / 50 / arg2 / 50 != 47:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 47 * arg2 / 50 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 806 len 26] >> 48,
                                                0
                                if balanceOf[address(msg.sender)] < 47 * arg2 / 50:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] += -47 * arg2 / 50
                                if balanceOf[arg1] > !(47 * arg2 / 50):
                                    revert with 0, 17
                                if balanceOf[arg1] + (47 * arg2 / 50) < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[arg1] + (47 * arg2 / 50)
                                emit Transfer((47 * arg2 / 50), msg.sender, arg1);
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x7949a403(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xb62496f5(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xdccea26f(?????) > uint32(call.func_hash) >> 224:
                if unknown_0xb62496f5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return bool(stor13[cd[4]])
                if unknown_0xc0246668(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == bool(cd[36])
                    if owner != msg.sender:
                        if stor1 != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                    stor12[address(cd[4])] = uint8(bool(cd[36]))
                    emit ExcludeFromFees(bool(cd[36]), address(cd[4]));
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xc492f046(?????):
                        require unknown_0xc49b9a80(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == bool(cd[4])
                        if owner != msg.sender:
                            if stor1 != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                        swapAndLiquifyEnabled = uint8(bool(cd[4]))
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] <= test266151307()
                        require cd[4] + 35 < calldata.size
                        require ('cd', 4).length <= test266151307()
                        require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                        require cd[36] == bool(cd[36])
                        if owner != msg.sender:
                            if stor1 != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                        idx = 0
                        while idx < ('cd', 4).length:
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 12
                            stor12[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
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
            else:
                if uint32(call.func_hash) >> 224 != unknown_0xdccea26f(?????):
                    if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        return allowance[address(cd[4])][address(cd[36])]
                    if unknown_0xe2f45605(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return swapTokensAtAmount
                    require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        if stor1 != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                    if not address(cd[4]):
                        revert with 0, 'Ownable: new owner is the zero address'
                    emit OwnershipTransferred(owner, address(cd[4]));
                    owner = address(cd[4])
                else:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    mem[160] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[192] = ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 228] = cd[4]
                    idx = 0
                    s = ceil32(return_data.size) + 420
                    t = 160
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[4], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call stor10 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
        if unknown_0x9a7a23d6(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x7949a403(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                return bool(stor13[address(cd[4])])
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            require unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            if bool(stor6.length):
                if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor6.length):
                    if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor6.length):
                        if 31 < uint255(stor6.length) * 0.5:
                            mem[160] = uint256(stor6.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor6.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor6[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor6.length), data=mem[160 len ceil32(uint255(stor6.length) * 0.5)])
                        mem[160] = 256 * stor6.length.field_8
                else:
                    if bool(stor6.length) == stor6.length.field_1 < 32:
                        revert with 0, 34
                    if stor6.length.field_1:
                        if 31 < stor6.length.field_1:
                            mem[160] = uint256(stor6.field_0)
                            idx = 160
                            s = 0
                            while stor6.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor6[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor6.length), data=mem[160 len ceil32(uint255(stor6.length) * 0.5)])
                        mem[160] = 256 * stor6.length.field_8
                mem[ceil32(uint255(stor6.length) * 0.5) + 224 len ceil32(uint255(stor6.length) * 0.5)] = mem[160 len ceil32(uint255(stor6.length) * 0.5)]
                if ceil32(uint255(stor6.length) * 0.5) > uint255(stor6.length) * 0.5:
                    mem[ceil32(uint255(stor6.length) * 0.5) + (uint255(stor6.length) * 0.5) + 224] = 0
                return Array(len=2 * Mask(256, -1, stor6.length), data=mem[160 len ceil32(uint255(stor6.length) * 0.5)], mem[(2 * ceil32(uint255(stor6.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor6.length) * 0.5)]), 
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 0, 34
            if bool(stor6.length):
                if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor6.length):
                    if 31 < uint255(stor6.length) * 0.5:
                        mem[160] = uint256(stor6.field_0)
                        idx = 160
                        s = 0
                        while (uint255(stor6.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor6[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor6.length % 128, data=mem[160 len ceil32(stor6.length.field_1)])
                    mem[160] = 256 * stor6.length.field_8
            else:
                if bool(stor6.length) == stor6.length.field_1 < 32:
                    revert with 0, 34
                if stor6.length.field_1:
                    if 31 < stor6.length.field_1:
                        mem[160] = uint256(stor6.field_0)
                        idx = 160
                        s = 0
                        while stor6.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor6[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor6.length % 128, data=mem[160 len ceil32(stor6.length.field_1)])
                    mem[160] = 256 * stor6.length.field_8
            mem[ceil32(stor6.length.field_1) + 224 len ceil32(stor6.length.field_1)] = mem[160 len ceil32(stor6.length.field_1)]
            if ceil32(stor6.length.field_1) > stor6.length.field_1:
                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 224] = 0
            return Array(len=stor6.length % 128, data=mem[160 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 224 len 2 * ceil32(stor6.length.field_1)]), 
        if unknown_0x9a7a23d6(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            require cd[36] == bool(cd[36])
            if owner != msg.sender:
                if stor1 != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
            stor13[address(cd[4])] = uint8(bool(cd[36]))
        if unknown_0x9e90f9aa(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return 57005
        if unknown_0xa457c2d7(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            if cd[36] > allowance[msg.sender][address(cd[4])]:
                revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[197 len 27] >> 40, 0
            if allowance[msg.sender][address(cd[4])] < cd[36]:
                revert with 0, 17
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not address(cd[4]):
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(msg.sender)][address(cd[4])] = allowance[msg.sender][address(cd[4])] - cd[36]
            emit Approval((allowance[msg.sender][address(cd[4])] - cd[36]), msg.sender, address(cd[4]));
        else:
            require unknown_0xa9059cbb(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not address(cd[4]):
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[this.address] < swapTokensAtAmount:
                if stor12[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(cd[4]):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if cd[36] > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < cd[36]:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= cd[36]
                    if balanceOf[address(cd[4])] > !cd[36]:
                        revert with 0, 17
                    if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(cd[4])] += cd[36]
                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                else:
                    if stor12[address(cd[4])]:
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(cd[4]):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if cd[36] > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < cd[36]:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= cd[36]
                        if balanceOf[address(cd[4])] > !cd[36]:
                            revert with 0, 17
                        if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(cd[4])] += cd[36]
                        emit Transfer(cd[36], msg.sender, address(cd[4]));
                    else:
                        if not cd[36] / 100:
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if 0 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < 0:
                                revert with 0, 17
                            if balanceOf[57005] > -1:
                                revert with 0, 17
                            if balanceOf[57005] < balanceOf[57005]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, msg.sender, 57005);
                        else:
                            if cd[36] / 100 and 3 > -1 / cd[36] / 100:
                                revert with 0, 17
                            if not cd[36] / 100:
                                revert with 0, 18
                            if 3 * cd[36] / 100 / cd[36] / 100 != 3:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if 3 * cd[36] / 100 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < 3 * cd[36] / 100:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] += -3 * cd[36] / 100
                            if balanceOf[57005] > !(3 * cd[36] / 100):
                                revert with 0, 17
                            if balanceOf[57005] + (3 * cd[36] / 100) < balanceOf[57005]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[57005] += 3 * cd[36] / 100
                            emit Transfer((3 * cd[36] / 100), msg.sender, 57005);
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor11:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if cd[36] / 50 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < cd[36] / 50:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= cd[36] / 50
                        if balanceOf[stor11] > !(cd[36] / 50):
                            revert with 0, 17
                        if balanceOf[stor11] + (cd[36] / 50) < balanceOf[stor11]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor11] += cd[36] / 50
                        emit Transfer((cd[36] / 50), msg.sender, stor11);
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if cd[36] / 100 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[582 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < cd[36] / 100:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= cd[36] / 100
                        if balanceOf[this.address] > !(cd[36] / 100):
                            revert with 0, 17
                        if balanceOf[this.address] + (cd[36] / 100) < balanceOf[this.address]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] = balanceOf[this.address] + (cd[36] / 100)
                        emit Transfer((cd[36] / 100), msg.sender, this.address);
                        if not cd[36] / 50:
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if 0 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[742 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < 0:
                                revert with 0, 17
                            if balanceOf[address(cd[4])] > -1:
                                revert with 0, 17
                            if balanceOf[address(cd[4])] < balanceOf[address(cd[4])]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(cd[4])] = balanceOf[address(cd[4])]
                            emit Transfer(0, msg.sender, address(cd[4]));
                        else:
                            if cd[36] / 50 and 47 > -1 / cd[36] / 50:
                                revert with 0, 17
                            if not cd[36] / 50:
                                revert with 0, 18
                            if 47 * cd[36] / 50 / cd[36] / 50 != 47:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if 47 * cd[36] / 50 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[742 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < 47 * cd[36] / 50:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] += -47 * cd[36] / 50
                            if balanceOf[address(cd[4])] > !(47 * cd[36] / 50):
                                revert with 0, 17
                            if balanceOf[address(cd[4])] + (47 * cd[36] / 50) < balanceOf[address(cd[4])]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(cd[4])] += 47 * cd[36] / 50
                            emit Transfer((47 * cd[36] / 50), msg.sender, address(cd[4]));
            else:
                if stor8:
                    if stor12[address(msg.sender)]:
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(cd[4]):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if cd[36] > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < cd[36]:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= cd[36]
                        if balanceOf[address(cd[4])] > !cd[36]:
                            revert with 0, 17
                        if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(cd[4])] += cd[36]
                        emit Transfer(cd[36], msg.sender, address(cd[4]));
                    else:
                        if stor12[address(cd[4])]:
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if cd[36] > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < cd[36]:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= cd[36]
                            if balanceOf[address(cd[4])] > !cd[36]:
                                revert with 0, 17
                            if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(cd[4])] += cd[36]
                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                        else:
                            if not cd[36] / 100:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 17
                                if balanceOf[57005] > -1:
                                    revert with 0, 17
                                if balanceOf[57005] < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, msg.sender, 57005);
                            else:
                                if cd[36] / 100 and 3 > -1 / cd[36] / 100:
                                    revert with 0, 17
                                if not cd[36] / 100:
                                    revert with 0, 18
                                if 3 * cd[36] / 100 / cd[36] / 100 != 3:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if 3 * cd[36] / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 3 * cd[36] / 100:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] += -3 * cd[36] / 100
                                if balanceOf[57005] > !(3 * cd[36] / 100):
                                    revert with 0, 17
                                if balanceOf[57005] + (3 * cd[36] / 100) < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[57005] += 3 * cd[36] / 100
                                emit Transfer((3 * cd[36] / 100), msg.sender, 57005);
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not stor11:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if cd[36] / 50 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < cd[36] / 50:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= cd[36] / 50
                            if balanceOf[stor11] > !(cd[36] / 50):
                                revert with 0, 17
                            if balanceOf[stor11] + (cd[36] / 50) < balanceOf[stor11]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor11] += cd[36] / 50
                            emit Transfer((cd[36] / 50), msg.sender, stor11);
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if cd[36] / 100 > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[582 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < cd[36] / 100:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= cd[36] / 100
                            if balanceOf[this.address] > !(cd[36] / 100):
                                revert with 0, 17
                            if balanceOf[this.address] + (cd[36] / 100) < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] = balanceOf[this.address] + (cd[36] / 100)
                            emit Transfer((cd[36] / 100), msg.sender, this.address);
                            if not cd[36] / 50:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[742 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 17
                                if balanceOf[address(cd[4])] > -1:
                                    revert with 0, 17
                                if balanceOf[address(cd[4])] < balanceOf[address(cd[4])]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(cd[4])] = balanceOf[address(cd[4])]
                                emit Transfer(0, msg.sender, address(cd[4]));
                            else:
                                if cd[36] / 50 and 47 > -1 / cd[36] / 50:
                                    revert with 0, 17
                                if not cd[36] / 50:
                                    revert with 0, 18
                                if 47 * cd[36] / 50 / cd[36] / 50 != 47:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 47 * cd[36] / 50 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[742 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < 47 * cd[36] / 50:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] += -47 * cd[36] / 50
                                if balanceOf[address(cd[4])] > !(47 * cd[36] / 50):
                                    revert with 0, 17
                                if balanceOf[address(cd[4])] + (47 * cd[36] / 50) < balanceOf[address(cd[4])]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(cd[4])] += 47 * cd[36] / 50
                                emit Transfer((47 * cd[36] / 50), msg.sender, address(cd[4]));
                else:
                    if uniswapV2PairAddress == msg.sender:
                        if stor12[address(msg.sender)]:
                            if not msg.sender:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if cd[36] > balanceOf[address(msg.sender)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                            if balanceOf[address(msg.sender)] < cd[36]:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= cd[36]
                            if balanceOf[address(cd[4])] > !cd[36]:
                                revert with 0, 17
                            if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(cd[4])] += cd[36]
                            emit Transfer(cd[36], msg.sender, address(cd[4]));
                        else:
                            if stor12[address(cd[4])]:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if cd[36] > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if not cd[36] / 100:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 17
                                    if balanceOf[57005] > -1:
                                        revert with 0, 17
                                    if balanceOf[57005] < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, msg.sender, 57005);
                                else:
                                    if cd[36] / 100 and 3 > -1 / cd[36] / 100:
                                        revert with 0, 17
                                    if not cd[36] / 100:
                                        revert with 0, 18
                                    if 3 * cd[36] / 100 / cd[36] / 100 != 3:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if 3 * cd[36] / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 3 * cd[36] / 100:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] += -3 * cd[36] / 100
                                    if balanceOf[57005] > !(3 * cd[36] / 100):
                                        revert with 0, 17
                                    if balanceOf[57005] + (3 * cd[36] / 100) < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[57005] += 3 * cd[36] / 100
                                    emit Transfer((3 * cd[36] / 100), msg.sender, 57005);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not stor11:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if cd[36] / 50 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < cd[36] / 50:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= cd[36] / 50
                                if balanceOf[stor11] > !(cd[36] / 50):
                                    revert with 0, 17
                                if balanceOf[stor11] + (cd[36] / 50) < balanceOf[stor11]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor11] += cd[36] / 50
                                emit Transfer((cd[36] / 50), msg.sender, stor11);
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if cd[36] / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[582 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < cd[36] / 100:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= cd[36] / 100
                                if balanceOf[this.address] > !(cd[36] / 100):
                                    revert with 0, 17
                                if balanceOf[this.address] + (cd[36] / 100) < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = balanceOf[this.address] + (cd[36] / 100)
                                emit Transfer((cd[36] / 100), msg.sender, this.address);
                                if not cd[36] / 50:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[742 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 17
                                    if balanceOf[address(cd[4])] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(cd[4])] < balanceOf[address(cd[4])]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(cd[4])] = balanceOf[address(cd[4])]
                                    emit Transfer(0, msg.sender, address(cd[4]));
                                else:
                                    if cd[36] / 50 and 47 > -1 / cd[36] / 50:
                                        revert with 0, 17
                                    if not cd[36] / 50:
                                        revert with 0, 18
                                    if 47 * cd[36] / 50 / cd[36] / 50 != 47:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 47 * cd[36] / 50 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[742 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < 47 * cd[36] / 50:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] += -47 * cd[36] / 50
                                    if balanceOf[address(cd[4])] > !(47 * cd[36] / 50):
                                        revert with 0, 17
                                    if balanceOf[address(cd[4])] + (47 * cd[36] / 50) < balanceOf[address(cd[4])]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(cd[4])] += 47 * cd[36] / 50
                                    emit Transfer((47 * cd[36] / 50), msg.sender, address(cd[4]));
                    else:
                        if not swapAndLiquifyEnabled:
                            if stor12[address(msg.sender)]:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if cd[36] > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if stor12[address(cd[4])]:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if cd[36] > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(cd[4])] += cd[36]
                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                else:
                                    if not cd[36] / 100:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 0, 17
                                        if balanceOf[57005] > -1:
                                            revert with 0, 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                    else:
                                        if cd[36] / 100 and 3 > -1 / cd[36] / 100:
                                            revert with 0, 17
                                        if not cd[36] / 100:
                                            revert with 0, 18
                                        if 3 * cd[36] / 100 / cd[36] / 100 != 3:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 3 * cd[36] / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 3 * cd[36] / 100:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] += -3 * cd[36] / 100
                                        if balanceOf[57005] > !(3 * cd[36] / 100):
                                            revert with 0, 17
                                        if balanceOf[57005] + (3 * cd[36] / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += 3 * cd[36] / 100
                                        emit Transfer((3 * cd[36] / 100), msg.sender, 57005);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not stor11:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if cd[36] / 50 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < cd[36] / 50:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36] / 50
                                    if balanceOf[stor11] > !(cd[36] / 50):
                                        revert with 0, 17
                                    if balanceOf[stor11] + (cd[36] / 50) < balanceOf[stor11]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor11] += cd[36] / 50
                                    emit Transfer((cd[36] / 50), msg.sender, stor11);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if cd[36] / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[582 len 26] >> 48, 0
                                    if balanceOf[address(msg.sender)] < cd[36] / 100:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36] / 100
                                    if balanceOf[this.address] > !(cd[36] / 100):
                                        revert with 0, 17
                                    if balanceOf[this.address] + (cd[36] / 100) < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address] + (cd[36] / 100)
                                    emit Transfer((cd[36] / 100), msg.sender, this.address);
                                    if not cd[36] / 50:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[742 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] < balanceOf[address(cd[4])]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])]
                                        emit Transfer(0, msg.sender, address(cd[4]));
                                    else:
                                        if cd[36] / 50 and 47 > -1 / cd[36] / 50:
                                            revert with 0, 17
                                        if not cd[36] / 50:
                                            revert with 0, 18
                                        if 47 * cd[36] / 50 / cd[36] / 50 != 47:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 47 * cd[36] / 50 > balanceOf[address(msg.sender)]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[742 len 26] >> 48, 0
                                        if balanceOf[address(msg.sender)] < 47 * cd[36] / 50:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] += -47 * cd[36] / 50
                                        if balanceOf[address(cd[4])] > !(47 * cd[36] / 50):
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] + (47 * cd[36] / 50) < balanceOf[address(cd[4])]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(cd[4])] += 47 * cd[36] / 50
                                        emit Transfer((47 * cd[36] / 50), msg.sender, address(cd[4]));
                        else:
                            stor8 = 1
                            mem[160] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[192] = ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = swapTokensAtAmount
                            idx = 0
                            s = ceil32(return_data.size) + 420
                            t = 160
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args swapTokensAtAmount, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stor10 with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            stor8 = 0
                            if stor12[address(msg.sender)]:
                                if not msg.sender:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if cd[36] > balanceOf[address(msg.sender)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48, 0
                                if balanceOf[address(msg.sender)] < cd[36]:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= cd[36]
                                if balanceOf[address(cd[4])] > !cd[36]:
                                    revert with 0, 17
                                if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(cd[4])] += cd[36]
                                emit Transfer(cd[36], msg.sender, address(cd[4]));
                            else:
                                if stor12[address(cd[4])]:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if cd[36] > balanceOf[address(msg.sender)]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48, 0
                                    if balanceOf[address(msg.sender)] < cd[36]:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36]
                                    if balanceOf[address(cd[4])] > !cd[36]:
                                        revert with 0, 17
                                    if balanceOf[address(cd[4])] + cd[36] < balanceOf[address(cd[4])]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(cd[4])] += cd[36]
                                    emit Transfer(cd[36], msg.sender, address(cd[4]));
                                else:
                                    if not cd[36] / 100:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, block.timestamp) >> 32 >> 48,
                                                        0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 0, 17
                                        if balanceOf[57005] > -1:
                                            revert with 0, 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, msg.sender, 57005);
                                    else:
                                        if cd[36] / 100 and 3 > -1 / cd[36] / 100:
                                            revert with 0, 17
                                        if not cd[36] / 100:
                                            revert with 0, 18
                                        if 3 * cd[36] / 100 / cd[36] / 100 != 3:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 3 * cd[36] / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, block.timestamp) >> 32 >> 48,
                                                        0
                                        if balanceOf[address(msg.sender)] < 3 * cd[36] / 100:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] += -3 * cd[36] / 100
                                        if balanceOf[57005] > !(3 * cd[36] / 100):
                                            revert with 0, 17
                                        if balanceOf[57005] + (3 * cd[36] / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += 3 * cd[36] / 100
                                        emit Transfer((3 * cd[36] / 100), msg.sender, 57005);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not stor11:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if cd[36] / 50 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 518 len 26] >> 48,
                                                    0
                                    if balanceOf[address(msg.sender)] < cd[36] / 50:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36] / 50
                                    if balanceOf[stor11] > !(cd[36] / 50):
                                        revert with 0, 17
                                    if balanceOf[stor11] + (cd[36] / 50) < balanceOf[stor11]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor11] += cd[36] / 50
                                    emit Transfer((cd[36] / 50), msg.sender, stor11);
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if cd[36] / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 678 len 26] >> 48,
                                                    0
                                    if balanceOf[address(msg.sender)] < cd[36] / 100:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)] -= cd[36] / 100
                                    if balanceOf[this.address] > !(cd[36] / 100):
                                        revert with 0, 17
                                    if balanceOf[this.address] + (cd[36] / 100) < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address] + (cd[36] / 100)
                                    emit Transfer((cd[36] / 100), msg.sender, this.address);
                                    if not cd[36] / 50:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 838 len 26] >> 48,
                                                        0
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] < balanceOf[address(cd[4])]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(cd[4])] = balanceOf[address(cd[4])]
                                        emit Transfer(0, msg.sender, address(cd[4]));
                                    else:
                                        if cd[36] / 50 and 47 > -1 / cd[36] / 50:
                                            revert with 0, 17
                                        if not cd[36] / 50:
                                            revert with 0, 18
                                        if 47 * cd[36] / 50 / cd[36] / 50 != 47:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 47 * cd[36] / 50 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 838 len 26] >> 48,
                                                        0
                                        if balanceOf[address(msg.sender)] < 47 * cd[36] / 50:
                                            revert with 0, 17
                                        balanceOf[address(msg.sender)] += -47 * cd[36] / 50
                                        if balanceOf[address(cd[4])] > !(47 * cd[36] / 50):
                                            revert with 0, 17
                                        if balanceOf[address(cd[4])] + (47 * cd[36] / 50) < balanceOf[address(cd[4])]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(cd[4])] += 47 * cd[36] / 50
                                        emit Transfer((47 * cd[36] / 50), msg.sender, address(cd[4]));
    else:
        if unknown_0x33f3d628(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x4fbee193(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x4fbee193(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return bool(stor12[address(cd[4])])
                if unknown_0x65b8dbc0(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        if stor1 != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                    emit UpdateUniswapV2Router(address(cd[4]), uniswapV2RouterAddress);
                    uniswapV2RouterAddress = address(cd[4])
                else:
                    if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return balanceOf[address(cd[4])]
                    require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    if owner != msg.sender:
                        if stor1 != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                    emit OwnershipTransferred(owner, 0);
                    owner = 0
            if unknown_0x33f3d628(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    if stor1 != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                require ext_code.size(address(cd[4]))
                call address(cd[4]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, cd[36]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                return bool(ext_call.return_data[0])
            if uint32(call.func_hash) >> 224 != unknown_0x39509351(?????):
                if unknown_0x49bd5a5e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return uniswapV2PairAddress
                require unknown_0x4a74bb02(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return bool(swapAndLiquifyEnabled)
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            if allowance[msg.sender][address(cd[4])] > !cd[36]:
                revert with 0, 17
            if allowance[msg.sender][address(cd[4])] + cd[36] < allowance[msg.sender][address(cd[4])]:
                revert with 0, 'SafeMath: addition overflow'
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not address(cd[4]):
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(msg.sender)][address(cd[4])] = allowance[msg.sender][address(cd[4])] + cd[36]
            emit Approval((allowance[msg.sender][address(cd[4])] + cd[36]), msg.sender, address(cd[4]));
        else:
            if unknown_0x18160ddd(?????) > uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != name():
                    if uint32(call.func_hash) >> 224 != approve(address arg1, uint256 arg2):
                        require unknown_0x1694505e(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return uniswapV2RouterAddress
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    if not msg.sender:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not address(cd[4]):
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(msg.sender)][address(cd[4])] = cd[36]
                    emit Approval(cd[36], msg.sender, address(cd[4]));
                    return 1
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
            if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return totalSupply
            if unknown_0x1f2eb32f(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                mem[160] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[192] = ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 228] = swapTokensAtAmount
                idx = 0
                s = ceil32(return_data.size) + 420
                t = 160
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args swapTokensAtAmount, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor10 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
            if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
                require unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return 0
            require not msg.value
            require calldata.size - 4 >= 96
            require cd[4] == address(cd[4])
            require cd[36] == address(cd[36])
            if not address(cd[4]):
                revert with 0, 'ERC20: transfer from the zero address'
            if not address(cd[36]):
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[this.address] < swapTokensAtAmount:
                if stor12[address(cd[4])]:
                    if not address(cd[4]):
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(cd[36]):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if cd[68] > balanceOf[address(cd[4])]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                    if balanceOf[address(cd[4])] < cd[68]:
                        revert with 0, 17
                    balanceOf[address(cd[4])] -= cd[68]
                    if balanceOf[address(cd[36])] > !cd[68]:
                        revert with 0, 17
                    if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(cd[36])] += cd[68]
                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                else:
                    if stor12[address(cd[36])]:
                        if not address(cd[4]):
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(cd[36]):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if cd[68] > balanceOf[address(cd[4])]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                        if balanceOf[address(cd[4])] < cd[68]:
                            revert with 0, 17
                        balanceOf[address(cd[4])] -= cd[68]
                        if balanceOf[address(cd[36])] > !cd[68]:
                            revert with 0, 17
                        if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(cd[36])] += cd[68]
                        emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                    else:
                        if not cd[68] / 100:
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer from the zero address'
                            if 0 > balanceOf[address(cd[4])]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                            if balanceOf[address(cd[4])] < 0:
                                revert with 0, 17
                            if balanceOf[57005] > -1:
                                revert with 0, 17
                            if balanceOf[57005] < balanceOf[57005]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, address(cd[4]), 57005);
                        else:
                            if cd[68] / 100 and 3 > -1 / cd[68] / 100:
                                revert with 0, 17
                            if not cd[68] / 100:
                                revert with 0, 18
                            if 3 * cd[68] / 100 / cd[68] / 100 != 3:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer from the zero address'
                            if 3 * cd[68] / 100 > balanceOf[address(cd[4])]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                            if balanceOf[address(cd[4])] < 3 * cd[68] / 100:
                                revert with 0, 17
                            balanceOf[address(cd[4])] += -3 * cd[68] / 100
                            if balanceOf[57005] > !(3 * cd[68] / 100):
                                revert with 0, 17
                            if balanceOf[57005] + (3 * cd[68] / 100) < balanceOf[57005]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[57005] += 3 * cd[68] / 100
                            emit Transfer((3 * cd[68] / 100), address(cd[4]), 57005);
                        if not address(cd[4]):
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not stor11:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if cd[68] / 50 > balanceOf[address(cd[4])]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                        if balanceOf[address(cd[4])] < cd[68] / 50:
                            revert with 0, 17
                        balanceOf[address(cd[4])] -= cd[68] / 50
                        if balanceOf[stor11] > !(cd[68] / 50):
                            revert with 0, 17
                        if balanceOf[stor11] + (cd[68] / 50) < balanceOf[stor11]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor11] += cd[68] / 50
                        emit Transfer((cd[68] / 50), address(cd[4]), stor11);
                        if not address(cd[4]):
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if cd[68] / 100 > balanceOf[address(cd[4])]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[582 len 26] >> 48, 0
                        if balanceOf[address(cd[4])] < cd[68] / 100:
                            revert with 0, 17
                        balanceOf[address(cd[4])] -= cd[68] / 100
                        if balanceOf[this.address] > !(cd[68] / 100):
                            revert with 0, 17
                        if balanceOf[this.address] + (cd[68] / 100) < balanceOf[this.address]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] = balanceOf[this.address] + (cd[68] / 100)
                        emit Transfer((cd[68] / 100), address(cd[4]), this.address);
                        if not cd[68] / 50:
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(cd[36]):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if 0 > balanceOf[address(cd[4])]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[742 len 26] >> 48, 0
                            if balanceOf[address(cd[4])] < 0:
                                revert with 0, 17
                            if balanceOf[address(cd[36])] > -1:
                                revert with 0, 17
                            if balanceOf[address(cd[36])] < balanceOf[address(cd[36])]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(cd[36])] = balanceOf[address(cd[36])]
                            emit Transfer(0, address(cd[4]), address(cd[36]));
                        else:
                            if cd[68] / 50 and 47 > -1 / cd[68] / 50:
                                revert with 0, 17
                            if not cd[68] / 50:
                                revert with 0, 18
                            if 47 * cd[68] / 50 / cd[68] / 50 != 47:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(cd[36]):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if 47 * cd[68] / 50 > balanceOf[address(cd[4])]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[742 len 26] >> 48, 0
                            if balanceOf[address(cd[4])] < 47 * cd[68] / 50:
                                revert with 0, 17
                            balanceOf[address(cd[4])] += -47 * cd[68] / 50
                            if balanceOf[address(cd[36])] > !(47 * cd[68] / 50):
                                revert with 0, 17
                            if balanceOf[address(cd[36])] + (47 * cd[68] / 50) < balanceOf[address(cd[36])]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(cd[36])] += 47 * cd[68] / 50
                            emit Transfer((47 * cd[68] / 50), address(cd[4]), address(cd[36]));
                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[840 len 24] >> 64, 0
            else:
                if stor8:
                    if stor12[address(cd[4])]:
                        if not address(cd[4]):
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(cd[36]):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if cd[68] > balanceOf[address(cd[4])]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                        if balanceOf[address(cd[4])] < cd[68]:
                            revert with 0, 17
                        balanceOf[address(cd[4])] -= cd[68]
                        if balanceOf[address(cd[36])] > !cd[68]:
                            revert with 0, 17
                        if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(cd[36])] += cd[68]
                        emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                        if cd[68] > allowance[address(cd[4])][msg.sender]:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                    else:
                        if stor12[address(cd[36])]:
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(cd[36]):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if cd[68] > balanceOf[address(cd[4])]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                            if balanceOf[address(cd[4])] < cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] -= cd[68]
                            if balanceOf[address(cd[36])] > !cd[68]:
                                revert with 0, 17
                            if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(cd[36])] += cd[68]
                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                        else:
                            if not cd[68] / 100:
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if 0 > balanceOf[address(cd[4])]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                if balanceOf[address(cd[4])] < 0:
                                    revert with 0, 17
                                if balanceOf[57005] > -1:
                                    revert with 0, 17
                                if balanceOf[57005] < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                emit Transfer(0, address(cd[4]), 57005);
                            else:
                                if cd[68] / 100 and 3 > -1 / cd[68] / 100:
                                    revert with 0, 17
                                if not cd[68] / 100:
                                    revert with 0, 18
                                if 3 * cd[68] / 100 / cd[68] / 100 != 3:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if 3 * cd[68] / 100 > balanceOf[address(cd[4])]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                if balanceOf[address(cd[4])] < 3 * cd[68] / 100:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] += -3 * cd[68] / 100
                                if balanceOf[57005] > !(3 * cd[68] / 100):
                                    revert with 0, 17
                                if balanceOf[57005] + (3 * cd[68] / 100) < balanceOf[57005]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[57005] += 3 * cd[68] / 100
                                emit Transfer((3 * cd[68] / 100), address(cd[4]), 57005);
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not stor11:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if cd[68] / 50 > balanceOf[address(cd[4])]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                            if balanceOf[address(cd[4])] < cd[68] / 50:
                                revert with 0, 17
                            balanceOf[address(cd[4])] -= cd[68] / 50
                            if balanceOf[stor11] > !(cd[68] / 50):
                                revert with 0, 17
                            if balanceOf[stor11] + (cd[68] / 50) < balanceOf[stor11]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor11] += cd[68] / 50
                            emit Transfer((cd[68] / 50), address(cd[4]), stor11);
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if cd[68] / 100 > balanceOf[address(cd[4])]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[582 len 26] >> 48, 0
                            if balanceOf[address(cd[4])] < cd[68] / 100:
                                revert with 0, 17
                            balanceOf[address(cd[4])] -= cd[68] / 100
                            if balanceOf[this.address] > !(cd[68] / 100):
                                revert with 0, 17
                            if balanceOf[this.address] + (cd[68] / 100) < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] = balanceOf[this.address] + (cd[68] / 100)
                            emit Transfer((cd[68] / 100), address(cd[4]), this.address);
                            if not cd[68] / 50:
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[36]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 0 > balanceOf[address(cd[4])]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[742 len 26] >> 48, 0
                                if balanceOf[address(cd[4])] < 0:
                                    revert with 0, 17
                                if balanceOf[address(cd[36])] > -1:
                                    revert with 0, 17
                                if balanceOf[address(cd[36])] < balanceOf[address(cd[36])]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(cd[36])] = balanceOf[address(cd[36])]
                                emit Transfer(0, address(cd[4]), address(cd[36]));
                            else:
                                if cd[68] / 50 and 47 > -1 / cd[68] / 50:
                                    revert with 0, 17
                                if not cd[68] / 50:
                                    revert with 0, 18
                                if 47 * cd[68] / 50 / cd[68] / 50 != 47:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[36]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if 47 * cd[68] / 50 > balanceOf[address(cd[4])]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[742 len 26] >> 48, 0
                                if balanceOf[address(cd[4])] < 47 * cd[68] / 50:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] += -47 * cd[68] / 50
                                if balanceOf[address(cd[36])] > !(47 * cd[68] / 50):
                                    revert with 0, 17
                                if balanceOf[address(cd[36])] + (47 * cd[68] / 50) < balanceOf[address(cd[36])]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(cd[36])] += 47 * cd[68] / 50
                                emit Transfer((47 * cd[68] / 50), address(cd[4]), address(cd[36]));
                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[840 len 24] >> 64, 0
                else:
                    if uniswapV2PairAddress == address(cd[4]):
                        if stor12[address(cd[4])]:
                            if not address(cd[4]):
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(cd[36]):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if cd[68] > balanceOf[address(cd[4])]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                            if balanceOf[address(cd[4])] < cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[4])] -= cd[68]
                            if balanceOf[address(cd[36])] > !cd[68]:
                                revert with 0, 17
                            if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(cd[36])] += cd[68]
                            emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                            if cd[68] > allowance[address(cd[4])][msg.sender]:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                        else:
                            if stor12[address(cd[36])]:
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[36]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if cd[68] > balanceOf[address(cd[4])]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                            else:
                                if not cd[68] / 100:
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if 0 > balanceOf[address(cd[4])]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                    if balanceOf[address(cd[4])] < 0:
                                        revert with 0, 17
                                    if balanceOf[57005] > -1:
                                        revert with 0, 17
                                    if balanceOf[57005] < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Transfer(0, address(cd[4]), 57005);
                                else:
                                    if cd[68] / 100 and 3 > -1 / cd[68] / 100:
                                        revert with 0, 17
                                    if not cd[68] / 100:
                                        revert with 0, 18
                                    if 3 * cd[68] / 100 / cd[68] / 100 != 3:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if 3 * cd[68] / 100 > balanceOf[address(cd[4])]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                    if balanceOf[address(cd[4])] < 3 * cd[68] / 100:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] += -3 * cd[68] / 100
                                    if balanceOf[57005] > !(3 * cd[68] / 100):
                                        revert with 0, 17
                                    if balanceOf[57005] + (3 * cd[68] / 100) < balanceOf[57005]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[57005] += 3 * cd[68] / 100
                                    emit Transfer((3 * cd[68] / 100), address(cd[4]), 57005);
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not stor11:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if cd[68] / 50 > balanceOf[address(cd[4])]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                if balanceOf[address(cd[4])] < cd[68] / 50:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] -= cd[68] / 50
                                if balanceOf[stor11] > !(cd[68] / 50):
                                    revert with 0, 17
                                if balanceOf[stor11] + (cd[68] / 50) < balanceOf[stor11]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor11] += cd[68] / 50
                                emit Transfer((cd[68] / 50), address(cd[4]), stor11);
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if cd[68] / 100 > balanceOf[address(cd[4])]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[582 len 26] >> 48, 0
                                if balanceOf[address(cd[4])] < cd[68] / 100:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] -= cd[68] / 100
                                if balanceOf[this.address] > !(cd[68] / 100):
                                    revert with 0, 17
                                if balanceOf[this.address] + (cd[68] / 100) < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = balanceOf[this.address] + (cd[68] / 100)
                                emit Transfer((cd[68] / 100), address(cd[4]), this.address);
                                if not cd[68] / 50:
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[36]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 0 > balanceOf[address(cd[4])]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[742 len 26] >> 48, 0
                                    if balanceOf[address(cd[4])] < 0:
                                        revert with 0, 17
                                    if balanceOf[address(cd[36])] > -1:
                                        revert with 0, 17
                                    if balanceOf[address(cd[36])] < balanceOf[address(cd[36])]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(cd[36])] = balanceOf[address(cd[36])]
                                    emit Transfer(0, address(cd[4]), address(cd[36]));
                                else:
                                    if cd[68] / 50 and 47 > -1 / cd[68] / 50:
                                        revert with 0, 17
                                    if not cd[68] / 50:
                                        revert with 0, 18
                                    if 47 * cd[68] / 50 / cd[68] / 50 != 47:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[36]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if 47 * cd[68] / 50 > balanceOf[address(cd[4])]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[742 len 26] >> 48, 0
                                    if balanceOf[address(cd[4])] < 47 * cd[68] / 50:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] += -47 * cd[68] / 50
                                    if balanceOf[address(cd[36])] > !(47 * cd[68] / 50):
                                        revert with 0, 17
                                    if balanceOf[address(cd[36])] + (47 * cd[68] / 50) < balanceOf[address(cd[36])]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(cd[36])] += 47 * cd[68] / 50
                                    emit Transfer((47 * cd[68] / 50), address(cd[4]), address(cd[36]));
                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[840 len 24] >> 64, 0
                    else:
                        if not swapAndLiquifyEnabled:
                            if stor12[address(cd[4])]:
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[36]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if cd[68] > balanceOf[address(cd[4])]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                            else:
                                if stor12[address(cd[36])]:
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[36]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if cd[68] > balanceOf[address(cd[4])]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(cd[36])] += cd[68]
                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                                else:
                                    if not cd[68] / 100:
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(cd[4])]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                        if balanceOf[address(cd[4])] < 0:
                                            revert with 0, 17
                                        if balanceOf[57005] > -1:
                                            revert with 0, 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, address(cd[4]), 57005);
                                    else:
                                        if cd[68] / 100 and 3 > -1 / cd[68] / 100:
                                            revert with 0, 17
                                        if not cd[68] / 100:
                                            revert with 0, 18
                                        if 3 * cd[68] / 100 / cd[68] / 100 != 3:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 3 * cd[68] / 100 > balanceOf[address(cd[4])]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                                        if balanceOf[address(cd[4])] < 3 * cd[68] / 100:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] += -3 * cd[68] / 100
                                        if balanceOf[57005] > !(3 * cd[68] / 100):
                                            revert with 0, 17
                                        if balanceOf[57005] + (3 * cd[68] / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += 3 * cd[68] / 100
                                        emit Transfer((3 * cd[68] / 100), address(cd[4]), 57005);
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not stor11:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if cd[68] / 50 > balanceOf[address(cd[4])]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                                    if balanceOf[address(cd[4])] < cd[68] / 50:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68] / 50
                                    if balanceOf[stor11] > !(cd[68] / 50):
                                        revert with 0, 17
                                    if balanceOf[stor11] + (cd[68] / 50) < balanceOf[stor11]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor11] += cd[68] / 50
                                    emit Transfer((cd[68] / 50), address(cd[4]), stor11);
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if cd[68] / 100 > balanceOf[address(cd[4])]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[582 len 26] >> 48, 0
                                    if balanceOf[address(cd[4])] < cd[68] / 100:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68] / 100
                                    if balanceOf[this.address] > !(cd[68] / 100):
                                        revert with 0, 17
                                    if balanceOf[this.address] + (cd[68] / 100) < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address] + (cd[68] / 100)
                                    emit Transfer((cd[68] / 100), address(cd[4]), this.address);
                                    if not cd[68] / 50:
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[36]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(cd[4])]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[742 len 26] >> 48, 0
                                        if balanceOf[address(cd[4])] < 0:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] < balanceOf[address(cd[36])]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(cd[36])] = balanceOf[address(cd[36])]
                                        emit Transfer(0, address(cd[4]), address(cd[36]));
                                    else:
                                        if cd[68] / 50 and 47 > -1 / cd[68] / 50:
                                            revert with 0, 17
                                        if not cd[68] / 50:
                                            revert with 0, 18
                                        if 47 * cd[68] / 50 / cd[68] / 50 != 47:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[36]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 47 * cd[68] / 50 > balanceOf[address(cd[4])]:
                                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[742 len 26] >> 48, 0
                                        if balanceOf[address(cd[4])] < 47 * cd[68] / 50:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] += -47 * cd[68] / 50
                                        if balanceOf[address(cd[36])] > !(47 * cd[68] / 50):
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] + (47 * cd[68] / 50) < balanceOf[address(cd[36])]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(cd[36])] += 47 * cd[68] / 50
                                        emit Transfer((47 * cd[68] / 50), address(cd[4]), address(cd[36]));
                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[840 len 24] >> 64, 0
                        else:
                            stor8 = 1
                            mem[160] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[192] = ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = swapTokensAtAmount
                            idx = 0
                            s = ceil32(return_data.size) + 420
                            t = 160
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args swapTokensAtAmount, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call stor10 with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            stor8 = 0
                            if stor12[address(cd[4])]:
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not address(cd[36]):
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if cd[68] > balanceOf[address(cd[4])]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48, 0
                                if balanceOf[address(cd[4])] < cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])] -= cd[68]
                                if balanceOf[address(cd[36])] > !cd[68]:
                                    revert with 0, 17
                                if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(cd[36])] += cd[68]
                                emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                if cd[68] > allowance[address(cd[4])][msg.sender]:
                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                            else:
                                if stor12[address(cd[36])]:
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not address(cd[36]):
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if cd[68] > balanceOf[address(cd[4])]:
                                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, 0 >> 48, 0
                                    if balanceOf[address(cd[4])] < cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68]
                                    if balanceOf[address(cd[36])] > !cd[68]:
                                        revert with 0, 17
                                    if balanceOf[address(cd[36])] + cd[68] < balanceOf[address(cd[36])]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(cd[36])] += cd[68]
                                    emit Transfer(cd[68], address(cd[4]), address(cd[36]));
                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, 0 >> 64, 0
                                else:
                                    if not cd[68] / 100:
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 0 > balanceOf[address(cd[4])]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, block.timestamp) >> 32 >> 48,
                                                        0
                                        if balanceOf[address(cd[4])] < 0:
                                            revert with 0, 17
                                        if balanceOf[57005] > -1:
                                            revert with 0, 17
                                        if balanceOf[57005] < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Transfer(0, address(cd[4]), 57005);
                                    else:
                                        if cd[68] / 100 and 3 > -1 / cd[68] / 100:
                                            revert with 0, 17
                                        if not cd[68] / 100:
                                            revert with 0, 18
                                        if 3 * cd[68] / 100 / cd[68] / 100 != 3:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if 3 * cd[68] / 100 > balanceOf[address(cd[4])]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, block.timestamp) >> 32 >> 48,
                                                        0
                                        if balanceOf[address(cd[4])] < 3 * cd[68] / 100:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] += -3 * cd[68] / 100
                                        if balanceOf[57005] > !(3 * cd[68] / 100):
                                            revert with 0, 17
                                        if balanceOf[57005] + (3 * cd[68] / 100) < balanceOf[57005]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[57005] += 3 * cd[68] / 100
                                        emit Transfer((3 * cd[68] / 100), address(cd[4]), 57005);
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not stor11:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if cd[68] / 50 > balanceOf[address(cd[4])]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 518 len 26] >> 48,
                                                    0
                                    if balanceOf[address(cd[4])] < cd[68] / 50:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68] / 50
                                    if balanceOf[stor11] > !(cd[68] / 50):
                                        revert with 0, 17
                                    if balanceOf[stor11] + (cd[68] / 50) < balanceOf[stor11]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor11] += cd[68] / 50
                                    emit Transfer((cd[68] / 50), address(cd[4]), stor11);
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if cd[68] / 100 > balanceOf[address(cd[4])]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 678 len 26] >> 48,
                                                    0
                                    if balanceOf[address(cd[4])] < cd[68] / 100:
                                        revert with 0, 17
                                    balanceOf[address(cd[4])] -= cd[68] / 100
                                    if balanceOf[this.address] > !(cd[68] / 100):
                                        revert with 0, 17
                                    if balanceOf[this.address] + (cd[68] / 100) < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address] + (cd[68] / 100)
                                    emit Transfer((cd[68] / 100), address(cd[4]), this.address);
                                    if not cd[68] / 50:
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[36]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 0 > balanceOf[address(cd[4])]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 838 len 26] >> 48,
                                                        0
                                        if balanceOf[address(cd[4])] < 0:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] > -1:
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] < balanceOf[address(cd[36])]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(cd[36])] = balanceOf[address(cd[36])]
                                        emit Transfer(0, address(cd[4]), address(cd[36]));
                                    else:
                                        if cd[68] / 50 and 47 > -1 / cd[68] / 50:
                                            revert with 0, 17
                                        if not cd[68] / 50:
                                            revert with 0, 18
                                        if 47 * cd[68] / 50 / cd[68] / 50 != 47:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not address(cd[36]):
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if 47 * cd[68] / 50 > balanceOf[address(cd[4])]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 838 len 26] >> 48,
                                                        0
                                        if balanceOf[address(cd[4])] < 47 * cd[68] / 50:
                                            revert with 0, 17
                                        balanceOf[address(cd[4])] += -47 * cd[68] / 50
                                        if balanceOf[address(cd[36])] > !(47 * cd[68] / 50):
                                            revert with 0, 17
                                        if balanceOf[address(cd[36])] + (47 * cd[68] / 50) < balanceOf[address(cd[36])]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(cd[36])] += 47 * cd[68] / 50
                                        emit Transfer((47 * cd[68] / 50), address(cd[4]), address(cd[36]));
                                    if cd[68] > allowance[address(cd[4])][msg.sender]:
                                        revert with 0, 
                                                    32,
                                                    40,
                                                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 936 len 24] >> 64,
                                                    0
            ('le', ('cd', 68), ('stor', ('map', 'msg.sender', ('map', ('mask_shl', 160, 0, 0, ('cd', 4)), ('name', 'allowance', 3)))))
            if allowance[address(cd[4])][msg.sender] < cd[68]:
                revert with 0, 17
            if not address(cd[4]):
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(cd[4])][address(msg.sender)] = allowance[address(cd[4])][msg.sender] - cd[68]
            emit Approval((allowance[address(cd[4])][msg.sender] - cd[68]), address(cd[4]), msg.sender);
    return 1
}



}
