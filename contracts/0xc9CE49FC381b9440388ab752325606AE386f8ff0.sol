contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - sub_36744fcc(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
mapping of uint8 stor101;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor104;
uint256 totalSupply;
array of struct stor109;
array of struct stor110;
uint8 decimals;
address stor111;
address sub_2e08ebc6Address; offset 8
address marketingWalletAddress;
address sub_a650472cAddress;
uint256 lockTime;
uint8 stor115;
uint8 sub_d733da23; offset 8
uint256 stor115; offset 8
uint256 stor116;
uint8 pauseTrading;
address stor117; offset 8
uint256 stor117; offset 8
uint256 stor117;
address uniswapV2RouterAddress;
address uniswapV2PairAddress;
uint8 swapAndLiquifyEnabled; offset 168
uint128 stor120; offset 168
address sub_21d48a2aAddress;
address BUSDAddress;
address routerAddress;
address WBNBAddress;
uint256 sub_7a67db62;
uint256 sub_3639d423;
uint256 sub_36fe2a43;
uint256 sub_19b4b44f;
uint256 sub_83b54b26;
uint256 sub_a16db024;
uint8 sub_a20b9384;
uint256 stor131;

function lockTime() {
    return lockTime
}

function pauseTrading() {
    return bool(pauseTrading)
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function sub_19b4b44f(?) {
    return sub_19b4b44f
}

function sub_21d48a2a(?) {
    return sub_21d48a2aAddress
}

function MarketingWallet() {
    return marketingWalletAddress
}

function sub_2e08ebc6(?) {
    return sub_2e08ebc6Address
}

function decimals() {
    return decimals
}

function sub_3639d423(?) {
    return sub_3639d423
}

function sub_36fe2a43(?) {
    return sub_36fe2a43
}

function BUSD() {
    return BUSDAddress
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor104[address(arg1)])
}

function sub_57fae080(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor101[address(arg1)])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_7a67db62(?) {
    return sub_7a67db62
}

function sub_83b54b26(?) {
    return sub_83b54b26
}

function owner() {
    return owner
}

function WBNB() {
    return WBNBAddress
}

function sub_a16db024(?) {
    return sub_a16db024
}

function sub_a20b9384(?) {
    return bool(sub_a20b9384)
}

function sub_a650472c(?) {
    return sub_a650472cAddress
}

function sub_d65459e3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor101[arg1])
}

function sub_d733da23(?) {
    return bool(sub_d733da23)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
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

function sub_07af7cc5(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_83b54b26 = arg1
}

function sub_46849ceb(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a16db024 = arg1
}

function sub_63409ee4(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_19b4b44f = arg1
}

function sub_b245b19a(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3639d423 = arg1
}

function sub_e920996b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7a67db62 = arg1
}

function sub_ff22035f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_36fe2a43 = arg1
}

function toggleTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor117.field_0) = not bool(pauseTrading) or Mask(248, 8, uint256(stor117.field_0))
}

function sub_20048253(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor101[address(arg1)] = 0
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor104[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor104[address(arg1)] = 1
}

function setStakingAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a650472cAddress = arg1
}

function setLiquidityWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2e08ebc6Address = arg1
}

function setMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketingWalletAddress = arg1
}

function sub_97934e55(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor101[address(arg1)] = 1
    return 1
}

function sub_aec571e4(?) {
    if not sub_a20b9384:
        return 0
    if block.timestamp > stor131:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor131 < block.timestamp:
        revert with 'NH{q', 17
    return (stor131 - block.timestamp)
}

function sub_a4504174(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor115.field_0):
        uint8(stor115.field_0) = 0
        pauseTrading = 0
        if block.timestamp > -91:
            revert with 'NH{q', 17
        lockTime = block.timestamp + 90
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

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function recoverTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function name() {
    if bool(stor109.length):
        if bool(stor109.length) == stor109.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor109.length):
            if bool(stor109.length) == stor109.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor109.length.field_1:
                if 31 < stor109.length.field_1:
                    mem[128] = uint256(stor109.field_0)
                    idx = 128
                    s = 0
                    while stor109.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor109[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor109.length.field_1), data=mem[128 len ceil32(stor109.length.field_1)])
                mem[128] = 256 * stor109.length.field_8
        else:
            if bool(stor109.length) == stor109.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor109.length.field_1:
                if 31 < stor109.length.field_1:
                    mem[128] = uint256(stor109.field_0)
                    idx = 128
                    s = 0
                    while stor109.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor109[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor109.length.field_1), data=mem[128 len ceil32(stor109.length.field_1)])
                mem[128] = 256 * stor109.length.field_8
        mem[ceil32(stor109.length.field_1) + 192 len ceil32(stor109.length.field_1)] = mem[128 len ceil32(stor109.length.field_1)]
        if ceil32(stor109.length.field_1) > stor109.length.field_1:
            mem[ceil32(stor109.length.field_1) + stor109.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor109.length.field_1), data=mem[128 len ceil32(stor109.length.field_1)], mem[(2 * ceil32(stor109.length.field_1)) + 192 len 2 * ceil32(stor109.length.field_1)]), 
    if bool(stor109.length) == stor109.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor109.length):
        if bool(stor109.length) == stor109.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor109.length.field_1:
            if 31 < stor109.length.field_1:
                mem[128] = uint256(stor109.field_0)
                idx = 128
                s = 0
                while stor109.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor109[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor109.length % 128, data=mem[128 len ceil32(stor109.length.field_1)])
            mem[128] = 256 * stor109.length.field_8
    else:
        if bool(stor109.length) == stor109.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor109.length.field_1:
            if 31 < stor109.length.field_1:
                mem[128] = uint256(stor109.field_0)
                idx = 128
                s = 0
                while stor109.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor109[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor109.length % 128, data=mem[128 len ceil32(stor109.length.field_1)])
            mem[128] = 256 * stor109.length.field_8
    mem[ceil32(stor109.length.field_1) + 192 len ceil32(stor109.length.field_1)] = mem[128 len ceil32(stor109.length.field_1)]
    if ceil32(stor109.length.field_1) > stor109.length.field_1:
        mem[ceil32(stor109.length.field_1) + stor109.length.field_1 + 192] = 0
    return Array(len=stor109.length % 128, data=mem[128 len ceil32(stor109.length.field_1)], mem[(2 * ceil32(stor109.length.field_1)) + 192 len 2 * ceil32(stor109.length.field_1)]), 
}

function symbol() {
    if bool(stor110.length):
        if bool(stor110.length) == stor110.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor110.length):
            if bool(stor110.length) == stor110.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor110.length.field_1:
                if 31 < stor110.length.field_1:
                    mem[128] = uint256(stor110.field_0)
                    idx = 128
                    s = 0
                    while stor110.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor110[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor110.length.field_1), data=mem[128 len ceil32(stor110.length.field_1)])
                mem[128] = 256 * stor110.length.field_8
        else:
            if bool(stor110.length) == stor110.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor110.length.field_1:
                if 31 < stor110.length.field_1:
                    mem[128] = uint256(stor110.field_0)
                    idx = 128
                    s = 0
                    while stor110.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor110[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor110.length.field_1), data=mem[128 len ceil32(stor110.length.field_1)])
                mem[128] = 256 * stor110.length.field_8
        mem[ceil32(stor110.length.field_1) + 192 len ceil32(stor110.length.field_1)] = mem[128 len ceil32(stor110.length.field_1)]
        if ceil32(stor110.length.field_1) > stor110.length.field_1:
            mem[ceil32(stor110.length.field_1) + stor110.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor110.length.field_1), data=mem[128 len ceil32(stor110.length.field_1)], mem[(2 * ceil32(stor110.length.field_1)) + 192 len 2 * ceil32(stor110.length.field_1)]), 
    if bool(stor110.length) == stor110.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor110.length):
        if bool(stor110.length) == stor110.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor110.length.field_1:
            if 31 < stor110.length.field_1:
                mem[128] = uint256(stor110.field_0)
                idx = 128
                s = 0
                while stor110.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor110[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor110.length % 128, data=mem[128 len ceil32(stor110.length.field_1)])
            mem[128] = 256 * stor110.length.field_8
    else:
        if bool(stor110.length) == stor110.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor110.length.field_1:
            if 31 < stor110.length.field_1:
                mem[128] = uint256(stor110.field_0)
                idx = 128
                s = 0
                while stor110.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor110[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor110.length % 128, data=mem[128 len ceil32(stor110.length.field_1)])
            mem[128] = 256 * stor110.length.field_8
    mem[ceil32(stor110.length.field_1) + 192 len ceil32(stor110.length.field_1)] = mem[128 len ceil32(stor110.length.field_1)]
    if ceil32(stor110.length.field_1) > stor110.length.field_1:
        mem[ceil32(stor110.length.field_1) + stor110.length.field_1 + 192] = 0
    return Array(len=stor110.length % 128, data=mem[128 len ceil32(stor110.length.field_1)], mem[(2 * ceil32(stor110.length.field_1)) + 192 len 2 * ceil32(stor110.length.field_1)]), 
}

function initialize(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
    totalSupply = 10^18
    if bool(stor109.length):
        if bool(stor109.length) == stor109.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor109.length) = 0
        stor109.length.field_1 = 9
        stor109.length.field_8 = 'RuyiToken' / 256
        idx = 0
        while stor109.length.field_1 + 31 / 32 > idx:
            stor109[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor109.length) == stor109.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor109.length) = 0
        stor109.length.field_1 = 9
        stor109.length.field_8 = 'RuyiToken' / 256
        idx = 0
        while stor109.length.field_1 + 31 / 32 > idx:
            stor109[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor110.length):
        if bool(stor110.length) == stor110.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor110.length) = 0
        stor110.length.field_1 = 3
        stor110.length.field_8 = 'RYB' / 256
        idx = 0
        while stor110.length.field_1 + 31 / 32 > idx:
            stor110[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor110.length) == stor110.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor110.length) = 0
        stor110.length.field_1 = 3
        stor110.length.field_8 = 'RYB' / 256
        idx = 0
        while stor110.length.field_1 + 31 / 32 > idx:
            stor110[idx].field_0 = 0
            idx = idx + 1
            continue 
    decimals = 9
    uint8(stor115.field_0) = 1
    Mask(248, 0, stor115.field_8) = 1
    stor116 = 10^15
    pauseTrading = 1
    stor120 = 1
    BUSDAddress = 0x78867bbeef44f2326bf8ddd1941a4439382ef2a7
    routerAddress = 0x9ac64cc6e4415144c455bd8e4837fea55603e5c3
    WBNBAddress = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    marketingWalletAddress = arg2
    sub_a650472cAddress = arg1
    sub_2e08ebc6Address = arg3
    staticcall routerAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), BUSDAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    uniswapV2PairAddress = ext_call.return_data[12 len 20]
    staticcall routerAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), WBNBAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    sub_21d48a2aAddress = ext_call.return_data[12 len 20]
    uniswapV2RouterAddress = routerAddress
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not routerAddress:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor122] = -1
    emit Approval(-1, this.address, routerAddress);
    Mask(248, 0, stor117.field_8) = BUSDAddress
    call address(stor117.field_8).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor104[stor51] = 1
    stor104[address(this.address)] = 1
    balanceOf[address(msg.sender)] = totalSupply
    sub_7a67db62 = 3
    sub_3639d423 = 5
    sub_36fe2a43 = 2
    sub_19b4b44f = 3
    sub_83b54b26 = 5
    sub_a16db024 = 2
    sub_a20b9384 = 0
    emit Transfer(totalSupply, 0, msg.sender);
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if pauseTrading:
        if owner != msg.sender:
            revert with 0, 'Trading is paused.'
    if block.timestamp < lockTime:
        if not stor101[address(arg1)]:
            if msg.sender == uniswapV2PairAddress:
                revert with 0, 'Liquidity is locked or limited'
            if msg.sender == sub_21d48a2aAddress:
                revert with 0, 'Liquidity is locked or limited'
        if block.timestamp < lockTime:
            if stor101[address(arg1)]:
                if arg2 > stor116:
                    revert with 0, 'Can't buy more than 1Million'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    if msg.sender == owner:
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if balanceOf[address(msg.sender)] < arg2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if arg1 == owner:
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if balanceOf[address(msg.sender)] < arg2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if stor104[address(msg.sender)]:
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if stor104[address(arg1)]:
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if uniswapV2PairAddress != msg.sender:
                        if not arg2:
                            if not arg2:
                                if not arg2:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor113] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor113] < balanceOf[stor113]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if balanceOf[stor112] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor112] < balanceOf[stor112]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor111] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor111] < balanceOf[stor111]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(0, msg.sender, sub_a650472cAddress);
                                    emit Transfer(0, msg.sender, marketingWalletAddress);
                                    emit Transfer(0, msg.sender, sub_2e08ebc6Address);
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and sub_83b54b26 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * sub_83b54b26 / arg2 != sub_83b54b26:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if arg2 * sub_83b54b26 / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * sub_83b54b26 / 100:
                                        revert with 'NH{q', 17
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor113] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor113] < balanceOf[stor113]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if balanceOf[stor112] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor112] < balanceOf[stor112]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if arg2 * sub_83b54b26 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 * sub_83b54b26 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * sub_83b54b26 / 100
                                    if balanceOf[stor111] > -(arg2 * sub_83b54b26 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor111] + (arg2 * sub_83b54b26 / 100) < balanceOf[stor111]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor111] += arg2 * sub_83b54b26 / 100
                                    if arg2 - (arg2 * sub_83b54b26 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_83b54b26 / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_83b54b26 / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_83b54b26 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * sub_83b54b26 / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_83b54b26 / 100)
                                    emit Transfer(0, msg.sender, sub_a650472cAddress);
                                    emit Transfer(0, msg.sender, marketingWalletAddress);
                                    emit Transfer((arg2 * sub_83b54b26 / 100), msg.sender, sub_2e08ebc6Address);
                                    emit Transfer((arg2 - (arg2 * sub_83b54b26 / 100)), msg.sender, arg1);
                            else:
                                if arg2 and sub_a16db024 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * sub_a16db024 / arg2 != sub_a16db024:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg2:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if arg2 * sub_a16db024 / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * sub_a16db024 / 100:
                                        revert with 'NH{q', 17
                                    if 0 > arg2 - (arg2 * sub_a16db024 / 100):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 - (arg2 * sub_a16db024 / 100) < 0:
                                        revert with 'NH{q', 17
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor113] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor113] < balanceOf[stor113]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if balanceOf[stor112] > -(arg2 * sub_a16db024 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor112] + (arg2 * sub_a16db024 / 100) < balanceOf[stor112]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor112] += arg2 * sub_a16db024 / 100
                                    if arg2 * sub_a16db024 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 * sub_a16db024 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * sub_a16db024 / 100
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor111] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor111] < balanceOf[stor111]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 - (arg2 * sub_a16db024 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_a16db024 / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_a16db024 / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_a16db024 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * sub_a16db024 / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_a16db024 / 100)
                                    emit Transfer(0, msg.sender, sub_a650472cAddress);
                                    emit Transfer((arg2 * sub_a16db024 / 100), msg.sender, marketingWalletAddress);
                                    emit Transfer(0, msg.sender, sub_2e08ebc6Address);
                                    emit Transfer((arg2 - (arg2 * sub_a16db024 / 100)), msg.sender, arg1);
                                else:
                                    if arg2 and sub_83b54b26 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * sub_83b54b26 / arg2 != sub_83b54b26:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if arg2 * sub_a16db024 / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * sub_a16db024 / 100:
                                        revert with 'NH{q', 17
                                    if arg2 * sub_83b54b26 / 100 > arg2 - (arg2 * sub_a16db024 / 100):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 - (arg2 * sub_a16db024 / 100) < arg2 * sub_83b54b26 / 100:
                                        revert with 'NH{q', 17
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor113] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor113] < balanceOf[stor113]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if balanceOf[stor112] > -(arg2 * sub_a16db024 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor112] + (arg2 * sub_a16db024 / 100) < balanceOf[stor112]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor112] += arg2 * sub_a16db024 / 100
                                    if arg2 * sub_a16db024 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 * sub_a16db024 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * sub_a16db024 / 100
                                    if arg2 * sub_83b54b26 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 * sub_83b54b26 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * sub_83b54b26 / 100
                                    if balanceOf[stor111] > -(arg2 * sub_83b54b26 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor111] + (arg2 * sub_83b54b26 / 100) < balanceOf[stor111]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor111] += arg2 * sub_83b54b26 / 100
                                    if arg2 - (arg2 * sub_a16db024 / 100) - (arg2 * sub_83b54b26 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_a16db024 / 100) - (arg2 * sub_83b54b26 / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_a16db024 / 100) + (arg2 * sub_83b54b26 / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_a16db024 / 100) + (arg2 * sub_83b54b26 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * sub_a16db024 / 100) - (arg2 * sub_83b54b26 / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_a16db024 / 100) - (arg2 * sub_83b54b26 / 100)
                                    emit Transfer(0, msg.sender, sub_a650472cAddress);
                                    emit Transfer((arg2 * sub_a16db024 / 100), msg.sender, marketingWalletAddress);
                                    emit Transfer((arg2 * sub_83b54b26 / 100), msg.sender, sub_2e08ebc6Address);
                                    emit Transfer((arg2 - (arg2 * sub_a16db024 / 100) - (arg2 * sub_83b54b26 / 100)), msg.sender, arg1);
                        else:
                            if arg2 and sub_19b4b44f > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * sub_19b4b44f / arg2 != sub_19b4b44f:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if not arg2:
                                if not arg2:
                                    if arg2 * sub_19b4b44f / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * sub_19b4b44f / 100:
                                        revert with 'NH{q', 17
                                    if 0 > arg2 - (arg2 * sub_19b4b44f / 100):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 - (arg2 * sub_19b4b44f / 100) < 0:
                                        revert with 'NH{q', 17
                                    if 0 > arg2 - (arg2 * sub_19b4b44f / 100):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 - (arg2 * sub_19b4b44f / 100) < 0:
                                        revert with 'NH{q', 17
                                    if arg2 * sub_19b4b44f / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 * sub_19b4b44f / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * sub_19b4b44f / 100
                                    if balanceOf[stor113] > -(arg2 * sub_19b4b44f / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor113] + (arg2 * sub_19b4b44f / 100) < balanceOf[stor113]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor113] += arg2 * sub_19b4b44f / 100
                                    if balanceOf[stor112] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor112] < balanceOf[stor112]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor111] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor111] < balanceOf[stor111]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 - (arg2 * sub_19b4b44f / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_19b4b44f / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_19b4b44f / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_19b4b44f / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * sub_19b4b44f / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_19b4b44f / 100)
                                    emit Transfer((arg2 * sub_19b4b44f / 100), msg.sender, sub_a650472cAddress);
                                    emit Transfer(0, msg.sender, marketingWalletAddress);
                                    emit Transfer(0, msg.sender, sub_2e08ebc6Address);
                                    emit Transfer((arg2 - (arg2 * sub_19b4b44f / 100)), msg.sender, arg1);
                                else:
                                    if arg2 and sub_83b54b26 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * sub_83b54b26 / arg2 != sub_83b54b26:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if arg2 * sub_19b4b44f / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * sub_19b4b44f / 100:
                                        revert with 'NH{q', 17
                                    if 0 > arg2 - (arg2 * sub_19b4b44f / 100):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 - (arg2 * sub_19b4b44f / 100) < 0:
                                        revert with 'NH{q', 17
                                    if arg2 * sub_83b54b26 / 100 > arg2 - (arg2 * sub_19b4b44f / 100):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 - (arg2 * sub_19b4b44f / 100) < arg2 * sub_83b54b26 / 100:
                                        revert with 'NH{q', 17
                                    if arg2 * sub_19b4b44f / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 * sub_19b4b44f / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * sub_19b4b44f / 100
                                    if balanceOf[stor113] > -(arg2 * sub_19b4b44f / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor113] + (arg2 * sub_19b4b44f / 100) < balanceOf[stor113]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor113] += arg2 * sub_19b4b44f / 100
                                    if balanceOf[stor112] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor112] < balanceOf[stor112]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if arg2 * sub_83b54b26 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 * sub_83b54b26 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * sub_83b54b26 / 100
                                    if balanceOf[stor111] > -(arg2 * sub_83b54b26 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor111] + (arg2 * sub_83b54b26 / 100) < balanceOf[stor111]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor111] += arg2 * sub_83b54b26 / 100
                                    if arg2 - (arg2 * sub_19b4b44f / 100) - (arg2 * sub_83b54b26 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_19b4b44f / 100) - (arg2 * sub_83b54b26 / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_19b4b44f / 100) + (arg2 * sub_83b54b26 / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_19b4b44f / 100) + (arg2 * sub_83b54b26 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * sub_19b4b44f / 100) - (arg2 * sub_83b54b26 / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_19b4b44f / 100) - (arg2 * sub_83b54b26 / 100)
                                    emit Transfer((arg2 * sub_19b4b44f / 100), msg.sender, sub_a650472cAddress);
                                    emit Transfer(0, msg.sender, marketingWalletAddress);
                                    emit Transfer((arg2 * sub_83b54b26 / 100), msg.sender, sub_2e08ebc6Address);
                                    emit Transfer((arg2 - (arg2 * sub_19b4b44f / 100) - (arg2 * sub_83b54b26 / 100)), msg.sender, arg1);
                            else:
                                if arg2 and sub_a16db024 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * sub_a16db024 / arg2 != sub_a16db024:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg2:
                                    if arg2 * sub_19b4b44f / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * sub_19b4b44f / 100:
                                        revert with 'NH{q', 17
                                    if arg2 * sub_a16db024 / 100 > arg2 - (arg2 * sub_19b4b44f / 100):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 - (arg2 * sub_19b4b44f / 100) < arg2 * sub_a16db024 / 100:
                                        revert with 'NH{q', 17
                                    if 0 > arg2 - (arg2 * sub_19b4b44f / 100) - (arg2 * sub_a16db024 / 100):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 - (arg2 * sub_19b4b44f / 100) - (arg2 * sub_a16db024 / 100) < 0:
                                        revert with 'NH{q', 17
                                    if arg2 * sub_19b4b44f / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 * sub_19b4b44f / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * sub_19b4b44f / 100
                                    if balanceOf[stor113] > -(arg2 * sub_19b4b44f / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor113] + (arg2 * sub_19b4b44f / 100) < balanceOf[stor113]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor113] += arg2 * sub_19b4b44f / 100
                                    if balanceOf[stor112] > -(arg2 * sub_a16db024 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor112] + (arg2 * sub_a16db024 / 100) < balanceOf[stor112]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor112] += arg2 * sub_a16db024 / 100
                                    if arg2 * sub_a16db024 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 * sub_a16db024 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * sub_a16db024 / 100
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor111] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor111] < balanceOf[stor111]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 - (arg2 * sub_19b4b44f / 100) - (arg2 * sub_a16db024 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_19b4b44f / 100) - (arg2 * sub_a16db024 / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_19b4b44f / 100) + (arg2 * sub_a16db024 / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_19b4b44f / 100) + (arg2 * sub_a16db024 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * sub_19b4b44f / 100) - (arg2 * sub_a16db024 / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_19b4b44f / 100) - (arg2 * sub_a16db024 / 100)
                                    emit Transfer((arg2 * sub_19b4b44f / 100), msg.sender, sub_a650472cAddress);
                                    emit Transfer((arg2 * sub_a16db024 / 100), msg.sender, marketingWalletAddress);
                                    emit Transfer(0, msg.sender, sub_2e08ebc6Address);
                                    emit Transfer((arg2 - (arg2 * sub_19b4b44f / 100) - (arg2 * sub_a16db024 / 100)), msg.sender, arg1);
                                else:
                                    if arg2 and sub_83b54b26 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * sub_83b54b26 / arg2 != sub_83b54b26:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if arg2 * sub_19b4b44f / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * sub_19b4b44f / 100:
                                        revert with 'NH{q', 17
                                    if arg2 * sub_a16db024 / 100 > arg2 - (arg2 * sub_19b4b44f / 100):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 - (arg2 * sub_19b4b44f / 100) < arg2 * sub_a16db024 / 100:
                                        revert with 'NH{q', 17
                                    if arg2 * sub_83b54b26 / 100 > arg2 - (arg2 * sub_19b4b44f / 100) - (arg2 * sub_a16db024 / 100):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 - (arg2 * sub_19b4b44f / 100) - (arg2 * sub_a16db024 / 100) < arg2 * sub_83b54b26 / 100:
                                        revert with 'NH{q', 17
                                    if arg2 * sub_19b4b44f / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 * sub_19b4b44f / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * sub_19b4b44f / 100
                                    if balanceOf[stor113] > -(arg2 * sub_19b4b44f / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor113] + (arg2 * sub_19b4b44f / 100) < balanceOf[stor113]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor113] += arg2 * sub_19b4b44f / 100
                                    if balanceOf[stor112] > -(arg2 * sub_a16db024 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor112] + (arg2 * sub_a16db024 / 100) < balanceOf[stor112]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor112] += arg2 * sub_a16db024 / 100
                                    if arg2 * sub_a16db024 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 * sub_a16db024 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * sub_a16db024 / 100
                                    if arg2 * sub_83b54b26 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 * sub_83b54b26 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * sub_83b54b26 / 100
                                    if balanceOf[stor111] > -(arg2 * sub_83b54b26 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor111] + (arg2 * sub_83b54b26 / 100) < balanceOf[stor111]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor111] += arg2 * sub_83b54b26 / 100
                                    if arg2 - (arg2 * sub_19b4b44f / 100) - (arg2 * sub_a16db024 / 100) - (arg2 * sub_83b54b26 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_19b4b44f / 100) - (arg2 * sub_a16db024 / 100) - (arg2 * sub_83b54b26 / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_19b4b44f / 100) + (arg2 * sub_a16db024 / 100) + (arg2 * sub_83b54b26 / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_19b4b44f / 100) + (arg2 * sub_a16db024 / 100) + (arg2 * sub_83b54b26 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * sub_19b4b44f / 100) - (arg2 * sub_a16db024 / 100) - (arg2 * sub_83b54b26 / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_19b4b44f / 100) - (arg2 * sub_a16db024 / 100) - (arg2 * sub_83b54b26 / 100)
                                    emit Transfer((arg2 * sub_19b4b44f / 100), msg.sender, sub_a650472cAddress);
                                    emit Transfer((arg2 * sub_a16db024 / 100), msg.sender, marketingWalletAddress);
                                    emit Transfer((arg2 * sub_83b54b26 / 100), msg.sender, sub_2e08ebc6Address);
                                    emit Transfer((arg2 - (arg2 * sub_19b4b44f / 100) - (arg2 * sub_a16db024 / 100) - (arg2 * sub_83b54b26 / 100)), msg.sender, arg1);
                    else:
                        if not arg2:
                            if not arg2:
                                if not arg2:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor113] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor113] < balanceOf[stor113]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if balanceOf[stor112] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor112] < balanceOf[stor112]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor111] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor111] < balanceOf[stor111]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(0, msg.sender, sub_a650472cAddress);
                                    emit Transfer(0, msg.sender, marketingWalletAddress);
                                    emit Transfer(0, msg.sender, sub_2e08ebc6Address);
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and sub_3639d423 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * sub_3639d423 / arg2 != sub_3639d423:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if arg2 * sub_3639d423 / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * sub_3639d423 / 100:
                                        revert with 'NH{q', 17
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor113] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor113] < balanceOf[stor113]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if balanceOf[stor112] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor112] < balanceOf[stor112]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if arg2 * sub_3639d423 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 * sub_3639d423 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * sub_3639d423 / 100
                                    if balanceOf[stor111] > -(arg2 * sub_3639d423 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor111] + (arg2 * sub_3639d423 / 100) < balanceOf[stor111]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor111] += arg2 * sub_3639d423 / 100
                                    if arg2 - (arg2 * sub_3639d423 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_3639d423 / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_3639d423 / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_3639d423 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * sub_3639d423 / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_3639d423 / 100)
                                    emit Transfer(0, msg.sender, sub_a650472cAddress);
                                    emit Transfer(0, msg.sender, marketingWalletAddress);
                                    emit Transfer((arg2 * sub_3639d423 / 100), msg.sender, sub_2e08ebc6Address);
                                    emit Transfer((arg2 - (arg2 * sub_3639d423 / 100)), msg.sender, arg1);
                            else:
                                if arg2 and sub_36fe2a43 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * sub_36fe2a43 / arg2 != sub_36fe2a43:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg2:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if arg2 * sub_36fe2a43 / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * sub_36fe2a43 / 100:
                                        revert with 'NH{q', 17
                                    if 0 > arg2 - (arg2 * sub_36fe2a43 / 100):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 - (arg2 * sub_36fe2a43 / 100) < 0:
                                        revert with 'NH{q', 17
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor113] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor113] < balanceOf[stor113]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if balanceOf[stor112] > -(arg2 * sub_36fe2a43 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor112] + (arg2 * sub_36fe2a43 / 100) < balanceOf[stor112]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor112] += arg2 * sub_36fe2a43 / 100
                                    if arg2 * sub_36fe2a43 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 * sub_36fe2a43 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * sub_36fe2a43 / 100
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor111] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor111] < balanceOf[stor111]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 - (arg2 * sub_36fe2a43 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_36fe2a43 / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_36fe2a43 / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_36fe2a43 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * sub_36fe2a43 / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_36fe2a43 / 100)
                                    emit Transfer(0, msg.sender, sub_a650472cAddress);
                                    emit Transfer((arg2 * sub_36fe2a43 / 100), msg.sender, marketingWalletAddress);
                                    emit Transfer(0, msg.sender, sub_2e08ebc6Address);
                                    emit Transfer((arg2 - (arg2 * sub_36fe2a43 / 100)), msg.sender, arg1);
                                else:
                                    if arg2 and sub_3639d423 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * sub_3639d423 / arg2 != sub_3639d423:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if arg2 * sub_36fe2a43 / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * sub_36fe2a43 / 100:
                                        revert with 'NH{q', 17
                                    if arg2 * sub_3639d423 / 100 > arg2 - (arg2 * sub_36fe2a43 / 100):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 - (arg2 * sub_36fe2a43 / 100) < arg2 * sub_3639d423 / 100:
                                        revert with 'NH{q', 17
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor113] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor113] < balanceOf[stor113]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if balanceOf[stor112] > -(arg2 * sub_36fe2a43 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor112] + (arg2 * sub_36fe2a43 / 100) < balanceOf[stor112]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor112] += arg2 * sub_36fe2a43 / 100
                                    if arg2 * sub_36fe2a43 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 * sub_36fe2a43 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * sub_36fe2a43 / 100
                                    if arg2 * sub_3639d423 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 * sub_3639d423 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * sub_3639d423 / 100
                                    if balanceOf[stor111] > -(arg2 * sub_3639d423 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor111] + (arg2 * sub_3639d423 / 100) < balanceOf[stor111]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor111] += arg2 * sub_3639d423 / 100
                                    if arg2 - (arg2 * sub_36fe2a43 / 100) - (arg2 * sub_3639d423 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_36fe2a43 / 100) - (arg2 * sub_3639d423 / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_36fe2a43 / 100) + (arg2 * sub_3639d423 / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_36fe2a43 / 100) + (arg2 * sub_3639d423 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * sub_36fe2a43 / 100) - (arg2 * sub_3639d423 / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_36fe2a43 / 100) - (arg2 * sub_3639d423 / 100)
                                    emit Transfer(0, msg.sender, sub_a650472cAddress);
                                    emit Transfer((arg2 * sub_36fe2a43 / 100), msg.sender, marketingWalletAddress);
                                    emit Transfer((arg2 * sub_3639d423 / 100), msg.sender, sub_2e08ebc6Address);
                                    emit Transfer((arg2 - (arg2 * sub_36fe2a43 / 100) - (arg2 * sub_3639d423 / 100)), msg.sender, arg1);
                        else:
                            if arg2 and sub_7a67db62 > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * sub_7a67db62 / arg2 != sub_7a67db62:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if not arg2:
                                if not arg2:
                                    if arg2 * sub_7a67db62 / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * sub_7a67db62 / 100:
                                        revert with 'NH{q', 17
                                    if 0 > arg2 - (arg2 * sub_7a67db62 / 100):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 - (arg2 * sub_7a67db62 / 100) < 0:
                                        revert with 'NH{q', 17
                                    if 0 > arg2 - (arg2 * sub_7a67db62 / 100):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 - (arg2 * sub_7a67db62 / 100) < 0:
                                        revert with 'NH{q', 17
                                    if arg2 * sub_7a67db62 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 * sub_7a67db62 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * sub_7a67db62 / 100
                                    if balanceOf[stor113] > -(arg2 * sub_7a67db62 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor113] + (arg2 * sub_7a67db62 / 100) < balanceOf[stor113]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor113] += arg2 * sub_7a67db62 / 100
                                    if balanceOf[stor112] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor112] < balanceOf[stor112]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor111] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor111] < balanceOf[stor111]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 - (arg2 * sub_7a67db62 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_7a67db62 / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_7a67db62 / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_7a67db62 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * sub_7a67db62 / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_7a67db62 / 100)
                                    emit Transfer((arg2 * sub_7a67db62 / 100), msg.sender, sub_a650472cAddress);
                                    emit Transfer(0, msg.sender, marketingWalletAddress);
                                    emit Transfer(0, msg.sender, sub_2e08ebc6Address);
                                    emit Transfer((arg2 - (arg2 * sub_7a67db62 / 100)), msg.sender, arg1);
                                else:
                                    if arg2 and sub_3639d423 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * sub_3639d423 / arg2 != sub_3639d423:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if arg2 * sub_7a67db62 / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * sub_7a67db62 / 100:
                                        revert with 'NH{q', 17
                                    if 0 > arg2 - (arg2 * sub_7a67db62 / 100):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 - (arg2 * sub_7a67db62 / 100) < 0:
                                        revert with 'NH{q', 17
                                    if arg2 * sub_3639d423 / 100 > arg2 - (arg2 * sub_7a67db62 / 100):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 - (arg2 * sub_7a67db62 / 100) < arg2 * sub_3639d423 / 100:
                                        revert with 'NH{q', 17
                                    if arg2 * sub_7a67db62 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 * sub_7a67db62 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * sub_7a67db62 / 100
                                    if balanceOf[stor113] > -(arg2 * sub_7a67db62 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor113] + (arg2 * sub_7a67db62 / 100) < balanceOf[stor113]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor113] += arg2 * sub_7a67db62 / 100
                                    if balanceOf[stor112] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor112] < balanceOf[stor112]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if arg2 * sub_3639d423 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 * sub_3639d423 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * sub_3639d423 / 100
                                    if balanceOf[stor111] > -(arg2 * sub_3639d423 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor111] + (arg2 * sub_3639d423 / 100) < balanceOf[stor111]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor111] += arg2 * sub_3639d423 / 100
                                    if arg2 - (arg2 * sub_7a67db62 / 100) - (arg2 * sub_3639d423 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_7a67db62 / 100) - (arg2 * sub_3639d423 / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_7a67db62 / 100) + (arg2 * sub_3639d423 / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_7a67db62 / 100) + (arg2 * sub_3639d423 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * sub_7a67db62 / 100) - (arg2 * sub_3639d423 / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_7a67db62 / 100) - (arg2 * sub_3639d423 / 100)
                                    emit Transfer((arg2 * sub_7a67db62 / 100), msg.sender, sub_a650472cAddress);
                                    emit Transfer(0, msg.sender, marketingWalletAddress);
                                    emit Transfer((arg2 * sub_3639d423 / 100), msg.sender, sub_2e08ebc6Address);
                                    emit Transfer((arg2 - (arg2 * sub_7a67db62 / 100) - (arg2 * sub_3639d423 / 100)), msg.sender, arg1);
                            else:
                                if arg2 and sub_36fe2a43 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if not arg2:
                                    revert with 'NH{q', 18
                                if arg2 * sub_36fe2a43 / arg2 != sub_36fe2a43:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg2:
                                    if arg2 * sub_7a67db62 / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * sub_7a67db62 / 100:
                                        revert with 'NH{q', 17
                                    if arg2 * sub_36fe2a43 / 100 > arg2 - (arg2 * sub_7a67db62 / 100):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 - (arg2 * sub_7a67db62 / 100) < arg2 * sub_36fe2a43 / 100:
                                        revert with 'NH{q', 17
                                    if 0 > arg2 - (arg2 * sub_7a67db62 / 100) - (arg2 * sub_36fe2a43 / 100):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 - (arg2 * sub_7a67db62 / 100) - (arg2 * sub_36fe2a43 / 100) < 0:
                                        revert with 'NH{q', 17
                                    if arg2 * sub_7a67db62 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 * sub_7a67db62 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * sub_7a67db62 / 100
                                    if balanceOf[stor113] > -(arg2 * sub_7a67db62 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor113] + (arg2 * sub_7a67db62 / 100) < balanceOf[stor113]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor113] += arg2 * sub_7a67db62 / 100
                                    if balanceOf[stor112] > -(arg2 * sub_36fe2a43 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor112] + (arg2 * sub_36fe2a43 / 100) < balanceOf[stor112]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor112] += arg2 * sub_36fe2a43 / 100
                                    if arg2 * sub_36fe2a43 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 * sub_36fe2a43 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * sub_36fe2a43 / 100
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor111] > -1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor111] < balanceOf[stor111]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 - (arg2 * sub_7a67db62 / 100) - (arg2 * sub_36fe2a43 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_7a67db62 / 100) - (arg2 * sub_36fe2a43 / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_7a67db62 / 100) + (arg2 * sub_36fe2a43 / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_7a67db62 / 100) + (arg2 * sub_36fe2a43 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * sub_7a67db62 / 100) - (arg2 * sub_36fe2a43 / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_7a67db62 / 100) - (arg2 * sub_36fe2a43 / 100)
                                    emit Transfer((arg2 * sub_7a67db62 / 100), msg.sender, sub_a650472cAddress);
                                    emit Transfer((arg2 * sub_36fe2a43 / 100), msg.sender, marketingWalletAddress);
                                    emit Transfer(0, msg.sender, sub_2e08ebc6Address);
                                    emit Transfer((arg2 - (arg2 * sub_7a67db62 / 100) - (arg2 * sub_36fe2a43 / 100)), msg.sender, arg1);
                                else:
                                    if arg2 and sub_3639d423 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if not arg2:
                                        revert with 'NH{q', 18
                                    if arg2 * sub_3639d423 / arg2 != sub_3639d423:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if arg2 * sub_7a67db62 / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 < arg2 * sub_7a67db62 / 100:
                                        revert with 'NH{q', 17
                                    if arg2 * sub_36fe2a43 / 100 > arg2 - (arg2 * sub_7a67db62 / 100):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 - (arg2 * sub_7a67db62 / 100) < arg2 * sub_36fe2a43 / 100:
                                        revert with 'NH{q', 17
                                    if arg2 * sub_3639d423 / 100 > arg2 - (arg2 * sub_7a67db62 / 100) - (arg2 * sub_36fe2a43 / 100):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if arg2 - (arg2 * sub_7a67db62 / 100) - (arg2 * sub_36fe2a43 / 100) < arg2 * sub_3639d423 / 100:
                                        revert with 'NH{q', 17
                                    if arg2 * sub_7a67db62 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 * sub_7a67db62 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * sub_7a67db62 / 100
                                    if balanceOf[stor113] > -(arg2 * sub_7a67db62 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor113] + (arg2 * sub_7a67db62 / 100) < balanceOf[stor113]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor113] += arg2 * sub_7a67db62 / 100
                                    if balanceOf[stor112] > -(arg2 * sub_36fe2a43 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor112] + (arg2 * sub_36fe2a43 / 100) < balanceOf[stor112]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor112] += arg2 * sub_36fe2a43 / 100
                                    if arg2 * sub_36fe2a43 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 * sub_36fe2a43 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * sub_36fe2a43 / 100
                                    if arg2 * sub_3639d423 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 * sub_3639d423 / 100:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 * sub_3639d423 / 100
                                    if balanceOf[stor111] > -(arg2 * sub_3639d423 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[stor111] + (arg2 * sub_3639d423 / 100) < balanceOf[stor111]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[stor111] += arg2 * sub_3639d423 / 100
                                    if arg2 - (arg2 * sub_7a67db62 / 100) - (arg2 * sub_36fe2a43 / 100) - (arg2 * sub_3639d423 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * sub_7a67db62 / 100) - (arg2 * sub_36fe2a43 / 100) - (arg2 * sub_3639d423 / 100):
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * sub_7a67db62 / 100) + (arg2 * sub_36fe2a43 / 100) + (arg2 * sub_3639d423 / 100)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_7a67db62 / 100) + (arg2 * sub_36fe2a43 / 100) + (arg2 * sub_3639d423 / 100) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 * sub_7a67db62 / 100) - (arg2 * sub_36fe2a43 / 100) - (arg2 * sub_3639d423 / 100) < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_7a67db62 / 100) - (arg2 * sub_36fe2a43 / 100) - (arg2 * sub_3639d423 / 100)
                                    emit Transfer((arg2 * sub_7a67db62 / 100), msg.sender, sub_a650472cAddress);
                                    emit Transfer((arg2 * sub_36fe2a43 / 100), msg.sender, marketingWalletAddress);
                                    emit Transfer((arg2 * sub_3639d423 / 100), msg.sender, sub_2e08ebc6Address);
                                    emit Transfer((arg2 - (arg2 * sub_7a67db62 / 100) - (arg2 * sub_36fe2a43 / 100) - (arg2 * sub_3639d423 / 100)), msg.sender, arg1);
    return 1
}



}
