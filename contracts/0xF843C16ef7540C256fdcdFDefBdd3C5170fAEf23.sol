contract main {




// =====================  Runtime code  =====================


const decimals = 9


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
address stor6;
address uniswapV2PairAddress;
uint16 stor8;
uint16 stor8; offset 16
uint16 stor9;
uint16 stor9; offset 16
uint8 stor10;
uint8 swapEnabled; offset 16
uint256 stor10; offset 16
uint256 swapTokensAtAmount;
uint16 stor12;
uint16 stor12; offset 16
address _teamWalletAddress; offset 32
address _marketingWalletAddress;
mapping of uint8 stor14;
mapping of uint8 stor15;
mapping of uint8 stor16;

function totalSupply() {
    return totalSupply
}

function _isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor15[arg1])
}

function _marketingWalletAddress() {
    return _marketingWalletAddress
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor14[address(arg1)])
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor16[arg1])
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

function _teamWalletAddress() {
    return _teamWalletAddress
}

function _fallback() payable {
    revert
}

function buyFee() {
    return uint16(stor8.field_0), uint16(stor8.field_16)
}

function sellFee() {
    return uint16(stor9.field_0), uint16(stor9.field_16)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setTeamWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _teamWalletAddress = arg1
}

function setSwapTokensAmt(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapTokensAtAmount = arg1
}

function setProjectWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _marketingWalletAddress = arg1
}

function setSwapEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(240, 0, stor10.field_16) = Mask(240, 0, arg1)
}

function blacklistAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor15[address(arg1)] = uint8(arg2)
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
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setBuyFee(uint16 arg1, uint16 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint16(stor8.field_0) = arg1
    uint16(stor8.field_16) = arg2
    if uint16(stor8.field_0) > -uint16(stor8.field_16) + 65535:
        revert with 'NH{q', 17
    uint16(stor12.field_0) = uint16(uint16(stor8.field_0) + uint16(stor8.field_16))
}

function setSellFee(uint16 arg1, uint16 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint16(stor9.field_0) = arg1
    uint16(stor9.field_16) = arg2
    if uint16(stor9.field_0) > -uint16(stor9.field_16) + 65535:
        revert with 'NH{q', 17
    uint16(stor12.field_16) = uint16(uint16(stor9.field_0) + uint16(stor9.field_16))
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

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == uniswapV2PairAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MTC: The PancakeSwap pair cannot be removed from automatedMarketMakerPairs'
    if bool(stor16[address(arg1)]) == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MTC: Automated market maker pair is already set to that value'
    stor16[address(arg1)] = uint8(arg2)
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
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
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    idx = 0
    s = arg1 + 36
    t = 192
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit ExcludeMultipleAccountsFromFees(Array(len=arg1.length, data=mem[192 len 32 * arg1.length]), arg2);
}

function updateUniswapV2Router(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MTC: The router already has that address'
    emit UpdateUniswapV2Router(arg1, stor6);
    stor6 = arg1
    require ext_code.size(stor6)
    staticcall stor6.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor6)
    staticcall stor6.WETH() with:
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
}

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() {
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
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

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if stor15[address(msg.sender)]:
        revert with 0, 'Blacklisted address'
    if stor15[address(arg1)]:
        revert with 0, 'Blacklisted address'
    if not arg2:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        if balanceOf[address(arg1)] > -1:
            revert with 'NH{q', 17
        emit Transfer(0, msg.sender, arg1);
    else:
        if balanceOf[address(this.address)] < swapTokensAtAmount:
            if stor14[address(msg.sender)]:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if stor14[address(arg1)]:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if uint8(stor10.field_0):
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor16[address(msg.sender)]:
                            if arg2 and uint16(stor12.field_0) > -1 / arg2:
                                revert with 'NH{q', 17
                            if arg2 < arg2 * uint16(stor12.field_0) / 1000:
                                revert with 'NH{q', 17
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 * uint16(stor12.field_0) / 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2 * uint16(stor12.field_0) / 1000
                            if balanceOf[address(this.address)] > -(arg2 * uint16(stor12.field_0) / 1000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg2 * uint16(stor12.field_0) / 1000
                            emit Transfer((arg2 * uint16(stor12.field_0) / 1000), msg.sender, this.address);
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * uint16(stor12.field_0) / 1000):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * uint16(stor12.field_0) / 1000)
                            if balanceOf[address(arg1)] > -arg2 + (arg2 * uint16(stor12.field_0) / 1000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * uint16(stor12.field_0) / 1000)
                            emit Transfer((arg2 - (arg2 * uint16(stor12.field_0) / 1000)), msg.sender, arg1);
                        else:
                            if not stor16[address(arg1)]:
                                if arg2 and 0 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if arg2 < 0:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                if balanceOf[address(this.address)] > -1:
                                    revert with 'NH{q', 17
                                emit Transfer(0, msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg2 and uint16(stor12.field_16) > -1 / arg2:
                                    revert with 'NH{q', 17
                                if arg2 < arg2 * uint16(stor12.field_16) / 1000:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 * uint16(stor12.field_16) / 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2 * uint16(stor12.field_16) / 1000
                                if balanceOf[address(this.address)] > -(arg2 * uint16(stor12.field_16) / 1000) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg2 * uint16(stor12.field_16) / 1000
                                emit Transfer((arg2 * uint16(stor12.field_16) / 1000), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * uint16(stor12.field_16) / 1000):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * uint16(stor12.field_16) / 1000)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * uint16(stor12.field_16) / 1000) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * uint16(stor12.field_16) / 1000)
                                emit Transfer((arg2 - (arg2 * uint16(stor12.field_16) / 1000)), msg.sender, arg1);
        else:
            if uint8(stor10.field_0):
                if stor14[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor14[address(arg1)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if uint8(stor10.field_0):
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor16[address(msg.sender)]:
                                if arg2 and uint16(stor12.field_0) > -1 / arg2:
                                    revert with 'NH{q', 17
                                if arg2 < arg2 * uint16(stor12.field_0) / 1000:
                                    revert with 'NH{q', 17
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 * uint16(stor12.field_0) / 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2 * uint16(stor12.field_0) / 1000
                                if balanceOf[address(this.address)] > -(arg2 * uint16(stor12.field_0) / 1000) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg2 * uint16(stor12.field_0) / 1000
                                emit Transfer((arg2 * uint16(stor12.field_0) / 1000), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * uint16(stor12.field_0) / 1000):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * uint16(stor12.field_0) / 1000)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 * uint16(stor12.field_0) / 1000) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * uint16(stor12.field_0) / 1000)
                                emit Transfer((arg2 - (arg2 * uint16(stor12.field_0) / 1000)), msg.sender, arg1);
                            else:
                                if not stor16[address(arg1)]:
                                    if arg2 and 0 > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if arg2 < 0:
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    if balanceOf[address(this.address)] > -1:
                                        revert with 'NH{q', 17
                                    emit Transfer(0, msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 and uint16(stor12.field_16) > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if arg2 < arg2 * uint16(stor12.field_16) / 1000:
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 * uint16(stor12.field_16) / 1000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2 * uint16(stor12.field_16) / 1000
                                    if balanceOf[address(this.address)] > -(arg2 * uint16(stor12.field_16) / 1000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] += arg2 * uint16(stor12.field_16) / 1000
                                    emit Transfer((arg2 * uint16(stor12.field_16) / 1000), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * uint16(stor12.field_16) / 1000):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * uint16(stor12.field_16) / 1000)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * uint16(stor12.field_16) / 1000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * uint16(stor12.field_16) / 1000)
                                    emit Transfer((arg2 - (arg2 * uint16(stor12.field_16) / 1000)), msg.sender, arg1);
            else:
                if not swapEnabled:
                    if stor14[address(msg.sender)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor14[address(arg1)]:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if uint8(stor10.field_0):
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor16[address(msg.sender)]:
                                    if arg2 and uint16(stor12.field_0) > -1 / arg2:
                                        revert with 'NH{q', 17
                                    if arg2 < arg2 * uint16(stor12.field_0) / 1000:
                                        revert with 'NH{q', 17
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 * uint16(stor12.field_0) / 1000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2 * uint16(stor12.field_0) / 1000
                                    if balanceOf[address(this.address)] > -(arg2 * uint16(stor12.field_0) / 1000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] += arg2 * uint16(stor12.field_0) / 1000
                                    emit Transfer((arg2 * uint16(stor12.field_0) / 1000), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * uint16(stor12.field_0) / 1000):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * uint16(stor12.field_0) / 1000)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * uint16(stor12.field_0) / 1000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * uint16(stor12.field_0) / 1000)
                                    emit Transfer((arg2 - (arg2 * uint16(stor12.field_0) / 1000)), msg.sender, arg1);
                                else:
                                    if not stor16[address(arg1)]:
                                        if arg2 and 0 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if arg2 < 0:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < 0:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 and uint16(stor12.field_16) > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if arg2 < arg2 * uint16(stor12.field_16) / 1000:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 * uint16(stor12.field_16) / 1000:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2 * uint16(stor12.field_16) / 1000
                                        if balanceOf[address(this.address)] > -(arg2 * uint16(stor12.field_16) / 1000) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)] += arg2 * uint16(stor12.field_16) / 1000
                                        emit Transfer((arg2 * uint16(stor12.field_16) / 1000), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * uint16(stor12.field_16) / 1000):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * uint16(stor12.field_16) / 1000)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * uint16(stor12.field_16) / 1000) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * uint16(stor12.field_16) / 1000)
                                        emit Transfer((arg2 - (arg2 * uint16(stor12.field_16) / 1000)), msg.sender, arg1);
                else:
                    if stor16[address(msg.sender)]:
                        if stor14[address(msg.sender)]:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor14[address(arg1)]:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if uint8(stor10.field_0):
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor16[address(msg.sender)]:
                                        if arg2 and uint16(stor12.field_0) > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if arg2 < arg2 * uint16(stor12.field_0) / 1000:
                                            revert with 'NH{q', 17
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 * uint16(stor12.field_0) / 1000:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2 * uint16(stor12.field_0) / 1000
                                        if balanceOf[address(this.address)] > -(arg2 * uint16(stor12.field_0) / 1000) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)] += arg2 * uint16(stor12.field_0) / 1000
                                        emit Transfer((arg2 * uint16(stor12.field_0) / 1000), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2 - (arg2 * uint16(stor12.field_0) / 1000):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * uint16(stor12.field_0) / 1000)
                                        if balanceOf[address(arg1)] > -arg2 + (arg2 * uint16(stor12.field_0) / 1000) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * uint16(stor12.field_0) / 1000)
                                        emit Transfer((arg2 - (arg2 * uint16(stor12.field_0) / 1000)), msg.sender, arg1);
                                    else:
                                        if not stor16[address(arg1)]:
                                            if arg2 and 0 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < 0:
                                                revert with 'NH{q', 17
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            if balanceOf[address(this.address)] > -1:
                                                revert with 'NH{q', 17
                                            emit Transfer(0, msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg2 and uint16(stor12.field_16) > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * uint16(stor12.field_16) / 1000:
                                                revert with 'NH{q', 17
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 * uint16(stor12.field_16) / 1000:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2 * uint16(stor12.field_16) / 1000
                                            if balanceOf[address(this.address)] > -(arg2 * uint16(stor12.field_16) / 1000) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(this.address)] += arg2 * uint16(stor12.field_16) / 1000
                                            emit Transfer((arg2 * uint16(stor12.field_16) / 1000), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * uint16(stor12.field_16) / 1000):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * uint16(stor12.field_16) / 1000)
                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * uint16(stor12.field_16) / 1000) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * uint16(stor12.field_16) / 1000)
                                            emit Transfer((arg2 - (arg2 * uint16(stor12.field_16) / 1000)), msg.sender, arg1);
                    else:
                        if msg.sender == owner:
                            if stor14[address(msg.sender)]:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor14[address(arg1)]:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if uint8(stor10.field_0):
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor16[address(msg.sender)]:
                                            if arg2 and uint16(stor12.field_0) > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * uint16(stor12.field_0) / 1000:
                                                revert with 'NH{q', 17
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 * uint16(stor12.field_0) / 1000:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2 * uint16(stor12.field_0) / 1000
                                            if balanceOf[address(this.address)] > -(arg2 * uint16(stor12.field_0) / 1000) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(this.address)] += arg2 * uint16(stor12.field_0) / 1000
                                            emit Transfer((arg2 * uint16(stor12.field_0) / 1000), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2 - (arg2 * uint16(stor12.field_0) / 1000):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * uint16(stor12.field_0) / 1000)
                                            if balanceOf[address(arg1)] > -arg2 + (arg2 * uint16(stor12.field_0) / 1000) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * uint16(stor12.field_0) / 1000)
                                            emit Transfer((arg2 - (arg2 * uint16(stor12.field_0) / 1000)), msg.sender, arg1);
                                        else:
                                            if not stor16[address(arg1)]:
                                                if arg2 and 0 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < 0:
                                                    revert with 'NH{q', 17
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < 0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                if balanceOf[address(this.address)] > -1:
                                                    revert with 'NH{q', 17
                                                emit Transfer(0, msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if arg2 and uint16(stor12.field_16) > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * uint16(stor12.field_16) / 1000:
                                                    revert with 'NH{q', 17
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2 * uint16(stor12.field_16) / 1000:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2 * uint16(stor12.field_16) / 1000
                                                if balanceOf[address(this.address)] > -(arg2 * uint16(stor12.field_16) / 1000) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(this.address)] += arg2 * uint16(stor12.field_16) / 1000
                                                emit Transfer((arg2 * uint16(stor12.field_16) / 1000), msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * uint16(stor12.field_16) / 1000):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * uint16(stor12.field_16) / 1000)
                                                if balanceOf[address(arg1)] > -arg2 + (arg2 * uint16(stor12.field_16) / 1000) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * uint16(stor12.field_16) / 1000)
                                                emit Transfer((arg2 - (arg2 * uint16(stor12.field_16) / 1000)), msg.sender, arg1);
                        else:
                            if arg1 == owner:
                                if stor14[address(msg.sender)]:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor14[address(arg1)]:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if uint8(stor10.field_0):
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor16[address(msg.sender)]:
                                                if arg2 and uint16(stor12.field_0) > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * uint16(stor12.field_0) / 1000:
                                                    revert with 'NH{q', 17
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2 * uint16(stor12.field_0) / 1000:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2 * uint16(stor12.field_0) / 1000
                                                if balanceOf[address(this.address)] > -(arg2 * uint16(stor12.field_0) / 1000) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(this.address)] += arg2 * uint16(stor12.field_0) / 1000
                                                emit Transfer((arg2 * uint16(stor12.field_0) / 1000), msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * uint16(stor12.field_0) / 1000):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * uint16(stor12.field_0) / 1000)
                                                if balanceOf[address(arg1)] > -arg2 + (arg2 * uint16(stor12.field_0) / 1000) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * uint16(stor12.field_0) / 1000)
                                                emit Transfer((arg2 - (arg2 * uint16(stor12.field_0) / 1000)), msg.sender, arg1);
                                            else:
                                                if not stor16[address(arg1)]:
                                                    if arg2 and 0 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < 0:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    if balanceOf[address(this.address)] > -1:
                                                        revert with 'NH{q', 17
                                                    emit Transfer(0, msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and uint16(stor12.field_16) > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * uint16(stor12.field_16) / 1000:
                                                        revert with 'NH{q', 17
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2 * uint16(stor12.field_16) / 1000:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] -= arg2 * uint16(stor12.field_16) / 1000
                                                    if balanceOf[address(this.address)] > -(arg2 * uint16(stor12.field_16) / 1000) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(this.address)] += arg2 * uint16(stor12.field_16) / 1000
                                                    emit Transfer((arg2 * uint16(stor12.field_16) / 1000), msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * uint16(stor12.field_16) / 1000):
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * uint16(stor12.field_16) / 1000)
                                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * uint16(stor12.field_16) / 1000) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * uint16(stor12.field_16) / 1000)
                                                    emit Transfer((arg2 - (arg2 * uint16(stor12.field_16) / 1000)), msg.sender, arg1);
                            else:
                                uint8(stor10.field_0) = 1
                                if uint16(stor12.field_0) > -uint16(stor12.field_16) + 65535:
                                    revert with 'NH{q', 17
                                mem[128] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.WETH() with:
                                        gas gas_remaining wei
                                mem[192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[160] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not stor6:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor6] = balanceOf[address(this.address)]
                                emit Approval(balanceOf[address(this.address)], this.address, stor6);
                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)]
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 388
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                call stor6.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if uint16(stor8.field_0) > -uint16(stor9.field_0) + 65535:
                                    revert with 'NH{q', 17
                                if eth.balance(this.address) and uint16(uint16(stor8.field_0) + uint16(stor9.field_0)) > -1 / eth.balance(this.address):
                                    revert with 'NH{q', 17
                                if not uint16(uint16(stor12.field_0) + uint16(stor12.field_16)):
                                    revert with 'NH{q', 18
                                call _marketingWalletAddress with:
                                   value eth.balance(this.address) * uint16(uint16(stor8.field_0) + uint16(stor9.field_0)) / uint16(uint16(stor12.field_0) + uint16(stor12.field_16)) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call _teamWalletAddress with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                emit SwapAndSend(balanceOf[address(this.address)], eth.balance(this.address), eth.balance(this.address) * uint16(uint16(stor8.field_0) + uint16(stor9.field_0)) / uint16(uint16(stor12.field_0) + uint16(stor12.field_16)));
                                uint8(stor10.field_0) = 0
                                if stor14[address(msg.sender)]:
                                    if not msg.sender:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(msg.sender)] < arg2:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor14[address(arg1)]:
                                        if not msg.sender:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(msg.sender)] < arg2:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if uint8(stor10.field_0):
                                            if not msg.sender:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(msg.sender)] < arg2:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor16[address(msg.sender)]:
                                                if arg2 and uint16(stor12.field_0) > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * uint16(stor12.field_0) / 1000:
                                                    revert with 'NH{q', 17
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2 * uint16(stor12.field_0) / 1000:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] -= arg2 * uint16(stor12.field_0) / 1000
                                                if balanceOf[address(this.address)] > -(arg2 * uint16(stor12.field_0) / 1000) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(this.address)] += arg2 * uint16(stor12.field_0) / 1000
                                                emit Transfer((arg2 * uint16(stor12.field_0) / 1000), msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(msg.sender)] < arg2 - (arg2 * uint16(stor12.field_0) / 1000):
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * uint16(stor12.field_0) / 1000)
                                                if balanceOf[address(arg1)] > -arg2 + (arg2 * uint16(stor12.field_0) / 1000) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * uint16(stor12.field_0) / 1000)
                                                emit Transfer((arg2 - (arg2 * uint16(stor12.field_0) / 1000)), msg.sender, arg1);
                                            else:
                                                if not stor16[address(arg1)]:
                                                    if arg2 and 0 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < 0:
                                                        revert with 'NH{q', 17
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < 0:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    if balanceOf[address(this.address)] > -1:
                                                        revert with 'NH{q', 17
                                                    emit Transfer(0, msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 and uint16(stor12.field_16) > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * uint16(stor12.field_16) / 1000:
                                                        revert with 'NH{q', 17
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2 * uint16(stor12.field_16) / 1000:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] -= arg2 * uint16(stor12.field_16) / 1000
                                                    if balanceOf[address(this.address)] > -(arg2 * uint16(stor12.field_16) / 1000) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(this.address)] += arg2 * uint16(stor12.field_16) / 1000
                                                    emit Transfer((arg2 * uint16(stor12.field_16) / 1000), msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * uint16(stor12.field_16) / 1000):
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * uint16(stor12.field_16) / 1000)
                                                    if balanceOf[address(arg1)] > -arg2 + (arg2 * uint16(stor12.field_16) / 1000) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * uint16(stor12.field_16) / 1000)
                                                    emit Transfer((arg2 - (arg2 * uint16(stor12.field_16) / 1000)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if stor15[address(arg1)]:
        revert with 0, 'Blacklisted address'
    if stor15[address(arg2)]:
        revert with 0, 'Blacklisted address'
    if not arg3:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(arg1)] < 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        if balanceOf[address(arg2)] > -1:
            revert with 'NH{q', 17
        emit Transfer(0, arg1, arg2);
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    else:
        if balanceOf[address(this.address)] < swapTokensAtAmount:
            if stor14[address(arg1)]:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if stor14[address(arg2)]:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if uint8(stor10.field_0):
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor16[address(arg1)]:
                            if arg3 and uint16(stor12.field_0) > -1 / arg3:
                                revert with 'NH{q', 17
                            if arg3 < arg3 * uint16(stor12.field_0) / 1000:
                                revert with 'NH{q', 17
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not this.address:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3 * uint16(stor12.field_0) / 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] -= arg3 * uint16(stor12.field_0) / 1000
                            if balanceOf[address(this.address)] > -(arg3 * uint16(stor12.field_0) / 1000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg3 * uint16(stor12.field_0) / 1000
                            emit Transfer((arg3 * uint16(stor12.field_0) / 1000), arg1, this.address);
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3 - (arg3 * uint16(stor12.field_0) / 1000):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * uint16(stor12.field_0) / 1000)
                            if balanceOf[address(arg2)] > -arg3 + (arg3 * uint16(stor12.field_0) / 1000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * uint16(stor12.field_0) / 1000)
                            emit Transfer((arg3 - (arg3 * uint16(stor12.field_0) / 1000)), arg1, arg2);
                        else:
                            if not stor16[address(arg2)]:
                                if arg3 and 0 > -1 / arg3:
                                    revert with 'NH{q', 17
                                if arg3 < 0:
                                    revert with 'NH{q', 17
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                if balanceOf[address(this.address)] > -1:
                                    revert with 'NH{q', 17
                                emit Transfer(0, arg1, this.address);
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if arg3 and uint16(stor12.field_16) > -1 / arg3:
                                    revert with 'NH{q', 17
                                if arg3 < arg3 * uint16(stor12.field_16) / 1000:
                                    revert with 'NH{q', 17
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3 * uint16(stor12.field_16) / 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3 * uint16(stor12.field_16) / 1000
                                if balanceOf[address(this.address)] > -(arg3 * uint16(stor12.field_16) / 1000) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg3 * uint16(stor12.field_16) / 1000
                                emit Transfer((arg3 * uint16(stor12.field_16) / 1000), arg1, this.address);
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3 - (arg3 * uint16(stor12.field_16) / 1000):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * uint16(stor12.field_16) / 1000)
                                if balanceOf[address(arg2)] > -arg3 + (arg3 * uint16(stor12.field_16) / 1000) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * uint16(stor12.field_16) / 1000)
                                emit Transfer((arg3 - (arg3 * uint16(stor12.field_16) / 1000)), arg1, arg2);
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        else:
            if uint8(stor10.field_0):
                if stor14[address(arg1)]:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if stor14[address(arg2)]:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if uint8(stor10.field_0):
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor16[address(arg1)]:
                                if arg3 and uint16(stor12.field_0) > -1 / arg3:
                                    revert with 'NH{q', 17
                                if arg3 < arg3 * uint16(stor12.field_0) / 1000:
                                    revert with 'NH{q', 17
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not this.address:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3 * uint16(stor12.field_0) / 1000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3 * uint16(stor12.field_0) / 1000
                                if balanceOf[address(this.address)] > -(arg3 * uint16(stor12.field_0) / 1000) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg3 * uint16(stor12.field_0) / 1000
                                emit Transfer((arg3 * uint16(stor12.field_0) / 1000), arg1, this.address);
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3 - (arg3 * uint16(stor12.field_0) / 1000):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * uint16(stor12.field_0) / 1000)
                                if balanceOf[address(arg2)] > -arg3 + (arg3 * uint16(stor12.field_0) / 1000) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * uint16(stor12.field_0) / 1000)
                                emit Transfer((arg3 - (arg3 * uint16(stor12.field_0) / 1000)), arg1, arg2);
                            else:
                                if not stor16[address(arg2)]:
                                    if arg3 and 0 > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if arg3 < 0:
                                        revert with 'NH{q', 17
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    if balanceOf[address(this.address)] > -1:
                                        revert with 'NH{q', 17
                                    emit Transfer(0, arg1, this.address);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg3 and uint16(stor12.field_16) > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if arg3 < arg3 * uint16(stor12.field_16) / 1000:
                                        revert with 'NH{q', 17
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3 * uint16(stor12.field_16) / 1000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3 * uint16(stor12.field_16) / 1000
                                    if balanceOf[address(this.address)] > -(arg3 * uint16(stor12.field_16) / 1000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] += arg3 * uint16(stor12.field_16) / 1000
                                    emit Transfer((arg3 * uint16(stor12.field_16) / 1000), arg1, this.address);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3 - (arg3 * uint16(stor12.field_16) / 1000):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * uint16(stor12.field_16) / 1000)
                                    if balanceOf[address(arg2)] > -arg3 + (arg3 * uint16(stor12.field_16) / 1000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * uint16(stor12.field_16) / 1000)
                                    emit Transfer((arg3 - (arg3 * uint16(stor12.field_16) / 1000)), arg1, arg2);
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            else:
                if not swapEnabled:
                    if stor14[address(arg1)]:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor14[address(arg2)]:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if uint8(stor10.field_0):
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor16[address(arg1)]:
                                    if arg3 and uint16(stor12.field_0) > -1 / arg3:
                                        revert with 'NH{q', 17
                                    if arg3 < arg3 * uint16(stor12.field_0) / 1000:
                                        revert with 'NH{q', 17
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not this.address:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3 * uint16(stor12.field_0) / 1000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3 * uint16(stor12.field_0) / 1000
                                    if balanceOf[address(this.address)] > -(arg3 * uint16(stor12.field_0) / 1000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] += arg3 * uint16(stor12.field_0) / 1000
                                    emit Transfer((arg3 * uint16(stor12.field_0) / 1000), arg1, this.address);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3 - (arg3 * uint16(stor12.field_0) / 1000):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * uint16(stor12.field_0) / 1000)
                                    if balanceOf[address(arg2)] > -arg3 + (arg3 * uint16(stor12.field_0) / 1000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * uint16(stor12.field_0) / 1000)
                                    emit Transfer((arg3 - (arg3 * uint16(stor12.field_0) / 1000)), arg1, arg2);
                                else:
                                    if not stor16[address(arg2)]:
                                        if arg3 and 0 > -1 / arg3:
                                            revert with 'NH{q', 17
                                        if arg3 < 0:
                                            revert with 'NH{q', 17
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < 0:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        if balanceOf[address(this.address)] > -1:
                                            revert with 'NH{q', 17
                                        emit Transfer(0, arg1, this.address);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg3 and uint16(stor12.field_16) > -1 / arg3:
                                            revert with 'NH{q', 17
                                        if arg3 < arg3 * uint16(stor12.field_16) / 1000:
                                            revert with 'NH{q', 17
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 * uint16(stor12.field_16) / 1000:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3 * uint16(stor12.field_16) / 1000
                                        if balanceOf[address(this.address)] > -(arg3 * uint16(stor12.field_16) / 1000) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)] += arg3 * uint16(stor12.field_16) / 1000
                                        emit Transfer((arg3 * uint16(stor12.field_16) / 1000), arg1, this.address);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * uint16(stor12.field_16) / 1000):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * uint16(stor12.field_16) / 1000)
                                        if balanceOf[address(arg2)] > -arg3 + (arg3 * uint16(stor12.field_16) / 1000) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * uint16(stor12.field_16) / 1000)
                                        emit Transfer((arg3 - (arg3 * uint16(stor12.field_16) / 1000)), arg1, arg2);
                    if allowance[address(arg1)][address(msg.sender)] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                else:
                    if stor16[address(arg1)]:
                        if stor14[address(arg1)]:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                            if not arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor14[address(arg2)]:
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if uint8(stor10.field_0):
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor16[address(arg1)]:
                                        if arg3 and uint16(stor12.field_0) > -1 / arg3:
                                            revert with 'NH{q', 17
                                        if arg3 < arg3 * uint16(stor12.field_0) / 1000:
                                            revert with 'NH{q', 17
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not this.address:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 * uint16(stor12.field_0) / 1000:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3 * uint16(stor12.field_0) / 1000
                                        if balanceOf[address(this.address)] > -(arg3 * uint16(stor12.field_0) / 1000) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(this.address)] += arg3 * uint16(stor12.field_0) / 1000
                                        emit Transfer((arg3 * uint16(stor12.field_0) / 1000), arg1, this.address);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3 - (arg3 * uint16(stor12.field_0) / 1000):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * uint16(stor12.field_0) / 1000)
                                        if balanceOf[address(arg2)] > -arg3 + (arg3 * uint16(stor12.field_0) / 1000) - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * uint16(stor12.field_0) / 1000)
                                        emit Transfer((arg3 - (arg3 * uint16(stor12.field_0) / 1000)), arg1, arg2);
                                    else:
                                        if not stor16[address(arg2)]:
                                            if arg3 and 0 > -1 / arg3:
                                                revert with 'NH{q', 17
                                            if arg3 < 0:
                                                revert with 'NH{q', 17
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            if balanceOf[address(this.address)] > -1:
                                                revert with 'NH{q', 17
                                            emit Transfer(0, arg1, this.address);
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if arg3 and uint16(stor12.field_16) > -1 / arg3:
                                                revert with 'NH{q', 17
                                            if arg3 < arg3 * uint16(stor12.field_16) / 1000:
                                                revert with 'NH{q', 17
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3 * uint16(stor12.field_16) / 1000:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] -= arg3 * uint16(stor12.field_16) / 1000
                                            if balanceOf[address(this.address)] > -(arg3 * uint16(stor12.field_16) / 1000) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(this.address)] += arg3 * uint16(stor12.field_16) / 1000
                                            emit Transfer((arg3 * uint16(stor12.field_16) / 1000), arg1, this.address);
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3 - (arg3 * uint16(stor12.field_16) / 1000):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * uint16(stor12.field_16) / 1000)
                                            if balanceOf[address(arg2)] > -arg3 + (arg3 * uint16(stor12.field_16) / 1000) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * uint16(stor12.field_16) / 1000)
                                            emit Transfer((arg3 - (arg3 * uint16(stor12.field_16) / 1000)), arg1, arg2);
                        if allowance[address(arg1)][address(msg.sender)] < arg3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                    else:
                        if arg1 == owner:
                            if stor14[address(arg1)]:
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                if not arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor14[address(arg2)]:
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if uint8(stor10.field_0):
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if stor16[address(arg1)]:
                                            if arg3 and uint16(stor12.field_0) > -1 / arg3:
                                                revert with 'NH{q', 17
                                            if arg3 < arg3 * uint16(stor12.field_0) / 1000:
                                                revert with 'NH{q', 17
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not this.address:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3 * uint16(stor12.field_0) / 1000:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] -= arg3 * uint16(stor12.field_0) / 1000
                                            if balanceOf[address(this.address)] > -(arg3 * uint16(stor12.field_0) / 1000) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(this.address)] += arg3 * uint16(stor12.field_0) / 1000
                                            emit Transfer((arg3 * uint16(stor12.field_0) / 1000), arg1, this.address);
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3 - (arg3 * uint16(stor12.field_0) / 1000):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * uint16(stor12.field_0) / 1000)
                                            if balanceOf[address(arg2)] > -arg3 + (arg3 * uint16(stor12.field_0) / 1000) - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * uint16(stor12.field_0) / 1000)
                                            emit Transfer((arg3 - (arg3 * uint16(stor12.field_0) / 1000)), arg1, arg2);
                                        else:
                                            if not stor16[address(arg2)]:
                                                if arg3 and 0 > -1 / arg3:
                                                    revert with 'NH{q', 17
                                                if arg3 < 0:
                                                    revert with 'NH{q', 17
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)] < 0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                if balanceOf[address(this.address)] > -1:
                                                    revert with 'NH{q', 17
                                                emit Transfer(0, arg1, this.address);
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)] < arg3:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[address(arg2)] > -arg3 - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                            else:
                                                if arg3 and uint16(stor12.field_16) > -1 / arg3:
                                                    revert with 'NH{q', 17
                                                if arg3 < arg3 * uint16(stor12.field_16) / 1000:
                                                    revert with 'NH{q', 17
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)] < arg3 * uint16(stor12.field_16) / 1000:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)] -= arg3 * uint16(stor12.field_16) / 1000
                                                if balanceOf[address(this.address)] > -(arg3 * uint16(stor12.field_16) / 1000) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(this.address)] += arg3 * uint16(stor12.field_16) / 1000
                                                emit Transfer((arg3 * uint16(stor12.field_16) / 1000), arg1, this.address);
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)] < arg3 - (arg3 * uint16(stor12.field_16) / 1000):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * uint16(stor12.field_16) / 1000)
                                                if balanceOf[address(arg2)] > -arg3 + (arg3 * uint16(stor12.field_16) / 1000) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * uint16(stor12.field_16) / 1000)
                                                emit Transfer((arg3 - (arg3 * uint16(stor12.field_16) / 1000)), arg1, arg2);
                            if allowance[address(arg1)][address(msg.sender)] < arg3:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                        else:
                            if arg2 == owner:
                                if stor14[address(arg1)]:
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor14[address(arg2)]:
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if uint8(stor10.field_0):
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor16[address(arg1)]:
                                                if arg3 and uint16(stor12.field_0) > -1 / arg3:
                                                    revert with 'NH{q', 17
                                                if arg3 < arg3 * uint16(stor12.field_0) / 1000:
                                                    revert with 'NH{q', 17
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)] < arg3 * uint16(stor12.field_0) / 1000:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)] -= arg3 * uint16(stor12.field_0) / 1000
                                                if balanceOf[address(this.address)] > -(arg3 * uint16(stor12.field_0) / 1000) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(this.address)] += arg3 * uint16(stor12.field_0) / 1000
                                                emit Transfer((arg3 * uint16(stor12.field_0) / 1000), arg1, this.address);
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)] < arg3 - (arg3 * uint16(stor12.field_0) / 1000):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * uint16(stor12.field_0) / 1000)
                                                if balanceOf[address(arg2)] > -arg3 + (arg3 * uint16(stor12.field_0) / 1000) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * uint16(stor12.field_0) / 1000)
                                                emit Transfer((arg3 - (arg3 * uint16(stor12.field_0) / 1000)), arg1, arg2);
                                            else:
                                                if not stor16[address(arg2)]:
                                                    if arg3 and 0 > -1 / arg3:
                                                        revert with 'NH{q', 17
                                                    if arg3 < 0:
                                                        revert with 'NH{q', 17
                                                    if not arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)] < 0:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    if balanceOf[address(this.address)] > -1:
                                                        revert with 'NH{q', 17
                                                    emit Transfer(0, arg1, this.address);
                                                    if not arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)] < arg3:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg2)] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if arg3 and uint16(stor12.field_16) > -1 / arg3:
                                                        revert with 'NH{q', 17
                                                    if arg3 < arg3 * uint16(stor12.field_16) / 1000:
                                                        revert with 'NH{q', 17
                                                    if not arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)] < arg3 * uint16(stor12.field_16) / 1000:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)] -= arg3 * uint16(stor12.field_16) / 1000
                                                    if balanceOf[address(this.address)] > -(arg3 * uint16(stor12.field_16) / 1000) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(this.address)] += arg3 * uint16(stor12.field_16) / 1000
                                                    emit Transfer((arg3 * uint16(stor12.field_16) / 1000), arg1, this.address);
                                                    if not arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)] < arg3 - (arg3 * uint16(stor12.field_16) / 1000):
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * uint16(stor12.field_16) / 1000)
                                                    if balanceOf[address(arg2)] > -arg3 + (arg3 * uint16(stor12.field_16) / 1000) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * uint16(stor12.field_16) / 1000)
                                                    emit Transfer((arg3 - (arg3 * uint16(stor12.field_16) / 1000)), arg1, arg2);
                                if allowance[address(arg1)][address(msg.sender)] < arg3:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                            else:
                                uint8(stor10.field_0) = 1
                                if uint16(stor12.field_0) > -uint16(stor12.field_16) + 65535:
                                    revert with 'NH{q', 17
                                mem[128] = this.address
                                require ext_code.size(stor6)
                                staticcall stor6.WETH() with:
                                        gas gas_remaining wei
                                mem[192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[160] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not stor6:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor6] = balanceOf[address(this.address)]
                                emit Approval(balanceOf[address(this.address)], this.address, stor6);
                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)]
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 388
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor6)
                                call stor6.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if uint16(stor8.field_0) > -uint16(stor9.field_0) + 65535:
                                    revert with 'NH{q', 17
                                if eth.balance(this.address) and uint16(uint16(stor8.field_0) + uint16(stor9.field_0)) > -1 / eth.balance(this.address):
                                    revert with 'NH{q', 17
                                if not uint16(uint16(stor12.field_0) + uint16(stor12.field_16)):
                                    revert with 'NH{q', 18
                                call _marketingWalletAddress with:
                                   value eth.balance(this.address) * uint16(uint16(stor8.field_0) + uint16(stor9.field_0)) / uint16(uint16(stor12.field_0) + uint16(stor12.field_16)) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call _teamWalletAddress with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                emit SwapAndSend(balanceOf[address(this.address)], eth.balance(this.address), eth.balance(this.address) * uint16(uint16(stor8.field_0) + uint16(stor9.field_0)) / uint16(uint16(stor12.field_0) + uint16(stor12.field_16)));
                                uint8(stor10.field_0) = 0
                                if stor14[address(arg1)]:
                                    if not arg1:
                                        revert with 0, 'ERC20: transfer from the zero address'
                                    if not arg2:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if balanceOf[address(arg1)] < arg3:
                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor14[address(arg2)]:
                                        if not arg1:
                                            revert with 0, 'ERC20: transfer from the zero address'
                                        if not arg2:
                                            revert with 0, 'ERC20: transfer to the zero address'
                                        if balanceOf[address(arg1)] < arg3:
                                            revert with 0, 'ERC20: transfer amount exceeds balance'
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] > -arg3 - 1:
                                            revert with 'NH{q', 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if uint8(stor10.field_0):
                                            if not arg1:
                                                revert with 0, 'ERC20: transfer from the zero address'
                                            if not arg2:
                                                revert with 0, 'ERC20: transfer to the zero address'
                                            if balanceOf[address(arg1)] < arg3:
                                                revert with 0, 'ERC20: transfer amount exceeds balance'
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[address(arg2)] > -arg3 - 1:
                                                revert with 'NH{q', 17
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                        else:
                                            if stor16[address(arg1)]:
                                                if arg3 and uint16(stor12.field_0) > -1 / arg3:
                                                    revert with 'NH{q', 17
                                                if arg3 < arg3 * uint16(stor12.field_0) / 1000:
                                                    revert with 'NH{q', 17
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not this.address:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)] < arg3 * uint16(stor12.field_0) / 1000:
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)] -= arg3 * uint16(stor12.field_0) / 1000
                                                if balanceOf[address(this.address)] > -(arg3 * uint16(stor12.field_0) / 1000) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(this.address)] += arg3 * uint16(stor12.field_0) / 1000
                                                emit Transfer((arg3 * uint16(stor12.field_0) / 1000), arg1, this.address);
                                                if not arg1:
                                                    revert with 0, 'ERC20: transfer from the zero address'
                                                if not arg2:
                                                    revert with 0, 'ERC20: transfer to the zero address'
                                                if balanceOf[address(arg1)] < arg3 - (arg3 * uint16(stor12.field_0) / 1000):
                                                    revert with 0, 'ERC20: transfer amount exceeds balance'
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * uint16(stor12.field_0) / 1000)
                                                if balanceOf[address(arg2)] > -arg3 + (arg3 * uint16(stor12.field_0) / 1000) - 1:
                                                    revert with 'NH{q', 17
                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * uint16(stor12.field_0) / 1000)
                                                emit Transfer((arg3 - (arg3 * uint16(stor12.field_0) / 1000)), arg1, arg2);
                                            else:
                                                if not stor16[address(arg2)]:
                                                    if arg3 and 0 > -1 / arg3:
                                                        revert with 'NH{q', 17
                                                    if arg3 < 0:
                                                        revert with 'NH{q', 17
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)] < 0:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    if balanceOf[address(this.address)] > -1:
                                                        revert with 'NH{q', 17
                                                    emit Transfer(0, arg1, this.address);
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)] < arg3:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg2)] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                else:
                                                    if arg3 and uint16(stor12.field_16) > -1 / arg3:
                                                        revert with 'NH{q', 17
                                                    if arg3 < arg3 * uint16(stor12.field_16) / 1000:
                                                        revert with 'NH{q', 17
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not this.address:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)] < arg3 * uint16(stor12.field_16) / 1000:
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)] -= arg3 * uint16(stor12.field_16) / 1000
                                                    if balanceOf[address(this.address)] > -(arg3 * uint16(stor12.field_16) / 1000) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(this.address)] += arg3 * uint16(stor12.field_16) / 1000
                                                    emit Transfer((arg3 * uint16(stor12.field_16) / 1000), arg1, this.address);
                                                    if not arg1:
                                                        revert with 0, 'ERC20: transfer from the zero address'
                                                    if not arg2:
                                                        revert with 0, 'ERC20: transfer to the zero address'
                                                    if balanceOf[address(arg1)] < arg3 - (arg3 * uint16(stor12.field_16) / 1000):
                                                        revert with 0, 'ERC20: transfer amount exceeds balance'
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * uint16(stor12.field_16) / 1000)
                                                    if balanceOf[address(arg2)] > -arg3 + (arg3 * uint16(stor12.field_16) / 1000) - 1:
                                                        revert with 'NH{q', 17
                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * uint16(stor12.field_16) / 1000)
                                                    emit Transfer((arg3 - (arg3 * uint16(stor12.field_16) / 1000)), arg1, arg2);
                                if allowance[address(arg1)][address(msg.sender)] < arg3:
                                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                                if not arg1:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0, 'ERC20: approve to the zero address'
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
