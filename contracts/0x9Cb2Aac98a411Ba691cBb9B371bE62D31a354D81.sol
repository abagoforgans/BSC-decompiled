contract main {




// =====================  Runtime code  =====================


const decimals = 18

const sub_3dcc8e4f(?) = 0x10ed43c718714eb63d5aa57b78b54704e256024e

const sub_693c7aeb(?) = 0xca143ce32fe78f1f7019d7d551a6402fc5350c73


mapping of uint256 balanceOf;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
address RESERVEAddress;
address WINNERAddress;
address ASSETAddress;
mapping of uint256 allowance;
uint8 stor10;
uint256 reserveRate;
uint8 enabled; offset 160
uint128 stor12; offset 160
address stor12;
mapping of uint8 stor13;
uint256 sub_7b0834d8;
uint8 sub_088943ba;

function sub_088943ba(?) {
    return bool(sub_088943ba)
}

function totalSupply() {
    return totalSupply
}

function enabled() {
    return bool(enabled)
}

function ASSET() {
    return ASSETAddress
}

function reserveRate() {
    return reserveRate
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_7b0834d8(?) {
    return sub_7b0834d8
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor13[arg1])
}

function RESERVE() {
    return RESERVEAddress
}

function WINNER() {
    return WINNERAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function startGame() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor12.field_160) = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setReserve(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    RESERVEAddress = arg1
}

function sub_09b468d9(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_088943ba = uint8(bool(arg1))
}

function setWhitelist(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13[address(arg1)] = uint8(arg2)
}

function setReserveRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transaction will never be higher than 5%'
    reserveRate = arg1
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

function setup(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    WINNERAddress = arg2
    RESERVEAddress = arg1
    address(stor12.field_0) = 0x10ed43c718714eb63d5aa57b78b54704e256024e
    stor13[address(msg.sender)] = 1
    stor13[address(arg1)] = 1
    stor13[address(this.address)] = 1
    stor13[0x10ed43c718714eb63d5aa57b78b54704e256024e] = 1
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

function sub_d29c64aa(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) > 0x7482296a44b8c66dae88fd0ab1f2cd414ef6371185933a7b55c9d77ebf9a0:
        revert with 'NH{q', 17
    call RESERVEAddress with:
       value 9000 * eth.balance(this.address) / 10000 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call WINNERAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
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

function approveTransferFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(arg1)][address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    return 1
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
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'EXCEED_BALANCE'
    if reserveRate and arg2 > -1 / reserveRate:
        revert with 'NH{q', 17
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = address(ext_call.return_data[0])
    require ext_code.size(0xca143ce32fe78f1f7019d7d551a6402fc5350c73)
    staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor13[address(msg.sender)]:
        if ext_call.return_data[12 len 20] != msg.sender:
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
            if not enabled:
                revert with 0, 'NOT_ENABLED'
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not this.address:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < reserveRate * arg2 / 10000:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= reserveRate * arg2 / 10000
            if balanceOf[address(this.address)] > -(reserveRate * arg2 / 10000) - 1:
                revert with 'NH{q', 17
            balanceOf[address(this.address)] += reserveRate * arg2 / 10000
            emit Transfer((reserveRate * arg2 / 10000), msg.sender, this.address);
            if arg2 < reserveRate * arg2 / 10000:
                revert with 'NH{q', 17
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < arg2 - (reserveRate * arg2 / 10000):
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (reserveRate * arg2 / 10000)
            if balanceOf[address(arg1)] > -arg2 + (reserveRate * arg2 / 10000) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (reserveRate * arg2 / 10000)
            emit Transfer((arg2 - (reserveRate * arg2 / 10000)), msg.sender, arg1);
            if sub_7b0834d8 > -2:
                revert with 'NH{q', 17
            sub_7b0834d8++
            if sub_088943ba:
                if stor10:
                    revert with 0, 'UniswapV2: LOCKED'
                stor10 = 1
                if balanceOf[address(this.address)] > 0x6e605d214e941a4cf630efb94a4456a9a91f26b248a66d4c6c387b4fa80b3:
                    revert with 'NH{q', 17
                mem[(2 * ceil32(return_data.size)) + 128] = this.address
                require ext_code.size(address(stor12.field_0))
                staticcall address(stor12.field_0).WETH() with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                if not this.address:
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = 32
                    mem[(4 * ceil32(return_data.size)) + 228] = 36
                    mem[(4 * ceil32(return_data.size)) + 260] = 'ERC20: approve from the zero add'
                    mem[(4 * ceil32(return_data.size)) + 292] = 'ress'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 192
                       len (5 * ceil32(return_data.size)) + 132
                if not address(stor12.field_0):
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = 32
                    mem[(4 * ceil32(return_data.size)) + 228] = 34
                    mem[(4 * ceil32(return_data.size)) + 260] = 'ERC20: approve to the zero addre'
                    mem[(4 * ceil32(return_data.size)) + 292] = 'ss'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 192
                       len (5 * ceil32(return_data.size)) + 132
                allowance[address(this.address)][address(stor12.field_0)] = 9500 * balanceOf[address(this.address)] / 10000
                mem[(4 * ceil32(return_data.size)) + 192] = 9500 * balanceOf[address(this.address)] / 10000
                emit Approval(mem[(4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], this.address, address(stor12.field_0));
                mem[(4 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = 9500 * balanceOf[address(this.address)] / 10000
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (4 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(stor12.field_0))
                call address(stor12.field_0).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 9500 * balanceOf[address(this.address)] / 10000, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call RESERVEAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                stor10 = 0
    else:
        if ext_call.return_data[12 len 20] != msg.sender:
            if not enabled:
                revert with 0, 'NOT_ENABLED'
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not this.address:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < reserveRate * arg2 / 10000:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= reserveRate * arg2 / 10000
            if balanceOf[address(this.address)] > -(reserveRate * arg2 / 10000) - 1:
                revert with 'NH{q', 17
            balanceOf[address(this.address)] += reserveRate * arg2 / 10000
            emit Transfer((reserveRate * arg2 / 10000), msg.sender, this.address);
            if arg2 < reserveRate * arg2 / 10000:
                revert with 'NH{q', 17
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < arg2 - (reserveRate * arg2 / 10000):
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (reserveRate * arg2 / 10000)
            if balanceOf[address(arg1)] > -arg2 + (reserveRate * arg2 / 10000) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (reserveRate * arg2 / 10000)
            emit Transfer((arg2 - (reserveRate * arg2 / 10000)), msg.sender, arg1);
            if sub_7b0834d8 > -2:
                revert with 'NH{q', 17
            sub_7b0834d8++
            if sub_088943ba:
                if stor10:
                    revert with 0, 'UniswapV2: LOCKED'
                stor10 = 1
                if balanceOf[address(this.address)] > 0x6e605d214e941a4cf630efb94a4456a9a91f26b248a66d4c6c387b4fa80b3:
                    revert with 'NH{q', 17
                mem[(2 * ceil32(return_data.size)) + 128] = this.address
                require ext_code.size(address(stor12.field_0))
                staticcall address(stor12.field_0).WETH() with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                if not this.address:
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = 32
                    mem[(4 * ceil32(return_data.size)) + 228] = 36
                    mem[(4 * ceil32(return_data.size)) + 260] = 'ERC20: approve from the zero add'
                    mem[(4 * ceil32(return_data.size)) + 292] = 'ress'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 192
                       len (5 * ceil32(return_data.size)) + 132
                if not address(stor12.field_0):
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = 32
                    mem[(4 * ceil32(return_data.size)) + 228] = 34
                    mem[(4 * ceil32(return_data.size)) + 260] = 'ERC20: approve to the zero addre'
                    mem[(4 * ceil32(return_data.size)) + 292] = 'ss'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 192
                       len (5 * ceil32(return_data.size)) + 132
                allowance[address(this.address)][address(stor12.field_0)] = 9500 * balanceOf[address(this.address)] / 10000
                mem[(4 * ceil32(return_data.size)) + 192] = 9500 * balanceOf[address(this.address)] / 10000
                emit Approval(mem[(4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], this.address, address(stor12.field_0));
                mem[(4 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = 9500 * balanceOf[address(this.address)] / 10000
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (4 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(stor12.field_0))
                call address(stor12.field_0).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 9500 * balanceOf[address(this.address)] / 10000, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call RESERVEAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                stor10 = 0
        else:
            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
            staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            mem[(4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
            require ext_code.size(0xca143ce32fe78f1f7019d7d551a6402fc5350c73)
            staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
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
                if not enabled:
                    revert with 0, 'NOT_ENABLED'
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < reserveRate * arg2 / 10000:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= reserveRate * arg2 / 10000
                if balanceOf[address(this.address)] > -(reserveRate * arg2 / 10000) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(this.address)] += reserveRate * arg2 / 10000
                emit Transfer((reserveRate * arg2 / 10000), msg.sender, this.address);
                if arg2 < reserveRate * arg2 / 10000:
                    revert with 'NH{q', 17
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < arg2 - (reserveRate * arg2 / 10000):
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (reserveRate * arg2 / 10000)
                if balanceOf[address(arg1)] > -arg2 + (reserveRate * arg2 / 10000) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (reserveRate * arg2 / 10000)
                emit Transfer((arg2 - (reserveRate * arg2 / 10000)), msg.sender, arg1);
                if sub_7b0834d8 > -2:
                    revert with 'NH{q', 17
                sub_7b0834d8++
                if sub_088943ba:
                    if stor10:
                        revert with 0, 'UniswapV2: LOCKED'
                    stor10 = 1
                    if balanceOf[address(this.address)] > 0x6e605d214e941a4cf630efb94a4456a9a91f26b248a66d4c6c387b4fa80b3:
                        revert with 'NH{q', 17
                    mem[(6 * ceil32(return_data.size)) + 128] = this.address
                    require ext_code.size(address(stor12.field_0))
                    staticcall address(stor12.field_0).WETH() with:
                            gas gas_remaining wei
                    mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not address(stor12.field_0):
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][address(stor12.field_0)] = 9500 * balanceOf[address(this.address)] / 10000
                    emit Approval((9500 * balanceOf[address(this.address)] / 10000), this.address, address(stor12.field_0));
                    mem[(7 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(7 * ceil32(return_data.size)) + 196] = 9500 * balanceOf[address(this.address)] / 10000
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = (7 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(stor12.field_0))
                    call address(stor12.field_0).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 9500 * balanceOf[address(this.address)] / 10000, 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call RESERVEAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    stor10 = 0
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'EXCEED_BALANCE'
    if reserveRate and arg3 > -1 / reserveRate:
        revert with 'NH{q', 17
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = address(ext_call.return_data[0])
    require ext_code.size(0xca143ce32fe78f1f7019d7d551a6402fc5350c73)
    staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor13[address(arg1)]:
        if ext_call.return_data[12 len 20] != arg1:
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
            if not enabled:
                revert with 0, 'NOT_ENABLED'
            if not arg1:
                revert with 0, 'ERC20: transfer from the zero address'
            if not this.address:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < reserveRate * arg3 / 10000:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= reserveRate * arg3 / 10000
            if balanceOf[address(this.address)] > -(reserveRate * arg3 / 10000) - 1:
                revert with 'NH{q', 17
            balanceOf[address(this.address)] += reserveRate * arg3 / 10000
            emit Transfer((reserveRate * arg3 / 10000), arg1, this.address);
            if arg3 < reserveRate * arg3 / 10000:
                revert with 'NH{q', 17
            if not arg1:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < arg3 - (reserveRate * arg3 / 10000):
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (reserveRate * arg3 / 10000)
            if balanceOf[address(arg2)] > -arg3 + (reserveRate * arg3 / 10000) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (reserveRate * arg3 / 10000)
            emit Transfer((arg3 - (reserveRate * arg3 / 10000)), arg1, arg2);
            if sub_7b0834d8 > -2:
                revert with 'NH{q', 17
            sub_7b0834d8++
            if sub_088943ba:
                if stor10:
                    revert with 0, 'UniswapV2: LOCKED'
                stor10 = 1
                if balanceOf[address(this.address)] > 0x6e605d214e941a4cf630efb94a4456a9a91f26b248a66d4c6c387b4fa80b3:
                    revert with 'NH{q', 17
                mem[(2 * ceil32(return_data.size)) + 128] = this.address
                require ext_code.size(address(stor12.field_0))
                staticcall address(stor12.field_0).WETH() with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                if not this.address:
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = 32
                    mem[(4 * ceil32(return_data.size)) + 228] = 36
                    mem[(4 * ceil32(return_data.size)) + 260] = 'ERC20: approve from the zero add'
                    mem[(4 * ceil32(return_data.size)) + 292] = 'ress'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 192
                       len (5 * ceil32(return_data.size)) + 132
                if not address(stor12.field_0):
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = 32
                    mem[(4 * ceil32(return_data.size)) + 228] = 34
                    mem[(4 * ceil32(return_data.size)) + 260] = 'ERC20: approve to the zero addre'
                    mem[(4 * ceil32(return_data.size)) + 292] = 'ss'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 192
                       len (5 * ceil32(return_data.size)) + 132
                allowance[address(this.address)][address(stor12.field_0)] = 9500 * balanceOf[address(this.address)] / 10000
                mem[(4 * ceil32(return_data.size)) + 192] = 9500 * balanceOf[address(this.address)] / 10000
                emit Approval(mem[(4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], this.address, address(stor12.field_0));
                mem[(4 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = 9500 * balanceOf[address(this.address)] / 10000
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (4 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(stor12.field_0))
                call address(stor12.field_0).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 9500 * balanceOf[address(this.address)] / 10000, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call RESERVEAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                stor10 = 0
    else:
        if ext_call.return_data[12 len 20] != arg1:
            if not enabled:
                revert with 0, 'NOT_ENABLED'
            if not arg1:
                revert with 0, 'ERC20: transfer from the zero address'
            if not this.address:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < reserveRate * arg3 / 10000:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= reserveRate * arg3 / 10000
            if balanceOf[address(this.address)] > -(reserveRate * arg3 / 10000) - 1:
                revert with 'NH{q', 17
            balanceOf[address(this.address)] += reserveRate * arg3 / 10000
            emit Transfer((reserveRate * arg3 / 10000), arg1, this.address);
            if arg3 < reserveRate * arg3 / 10000:
                revert with 'NH{q', 17
            if not arg1:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < arg3 - (reserveRate * arg3 / 10000):
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (reserveRate * arg3 / 10000)
            if balanceOf[address(arg2)] > -arg3 + (reserveRate * arg3 / 10000) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (reserveRate * arg3 / 10000)
            emit Transfer((arg3 - (reserveRate * arg3 / 10000)), arg1, arg2);
            if sub_7b0834d8 > -2:
                revert with 'NH{q', 17
            sub_7b0834d8++
            if sub_088943ba:
                if stor10:
                    revert with 0, 'UniswapV2: LOCKED'
                stor10 = 1
                if balanceOf[address(this.address)] > 0x6e605d214e941a4cf630efb94a4456a9a91f26b248a66d4c6c387b4fa80b3:
                    revert with 'NH{q', 17
                mem[(2 * ceil32(return_data.size)) + 128] = this.address
                require ext_code.size(address(stor12.field_0))
                staticcall address(stor12.field_0).WETH() with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                if not this.address:
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = 32
                    mem[(4 * ceil32(return_data.size)) + 228] = 36
                    mem[(4 * ceil32(return_data.size)) + 260] = 'ERC20: approve from the zero add'
                    mem[(4 * ceil32(return_data.size)) + 292] = 'ress'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 192
                       len (5 * ceil32(return_data.size)) + 132
                if not address(stor12.field_0):
                    mem[(4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = 32
                    mem[(4 * ceil32(return_data.size)) + 228] = 34
                    mem[(4 * ceil32(return_data.size)) + 260] = 'ERC20: approve to the zero addre'
                    mem[(4 * ceil32(return_data.size)) + 292] = 'ss'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 192
                       len (5 * ceil32(return_data.size)) + 132
                allowance[address(this.address)][address(stor12.field_0)] = 9500 * balanceOf[address(this.address)] / 10000
                mem[(4 * ceil32(return_data.size)) + 192] = 9500 * balanceOf[address(this.address)] / 10000
                emit Approval(mem[(4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], this.address, address(stor12.field_0));
                mem[(4 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = 9500 * balanceOf[address(this.address)] / 10000
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (4 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(stor12.field_0))
                call address(stor12.field_0).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 9500 * balanceOf[address(this.address)] / 10000, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call RESERVEAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                stor10 = 0
        else:
            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
            staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            mem[(4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
            require ext_code.size(0xca143ce32fe78f1f7019d7d551a6402fc5350c73)
            staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != arg1:
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
                if not enabled:
                    revert with 0, 'NOT_ENABLED'
                if not arg1:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < reserveRate * arg3 / 10000:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= reserveRate * arg3 / 10000
                if balanceOf[address(this.address)] > -(reserveRate * arg3 / 10000) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(this.address)] += reserveRate * arg3 / 10000
                emit Transfer((reserveRate * arg3 / 10000), arg1, this.address);
                if arg3 < reserveRate * arg3 / 10000:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < arg3 - (reserveRate * arg3 / 10000):
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (reserveRate * arg3 / 10000)
                if balanceOf[address(arg2)] > -arg3 + (reserveRate * arg3 / 10000) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (reserveRate * arg3 / 10000)
                emit Transfer((arg3 - (reserveRate * arg3 / 10000)), arg1, arg2);
                if sub_7b0834d8 > -2:
                    revert with 'NH{q', 17
                sub_7b0834d8++
                if sub_088943ba:
                    if stor10:
                        revert with 0, 'UniswapV2: LOCKED'
                    stor10 = 1
                    if balanceOf[address(this.address)] > 0x6e605d214e941a4cf630efb94a4456a9a91f26b248a66d4c6c387b4fa80b3:
                        revert with 'NH{q', 17
                    mem[(6 * ceil32(return_data.size)) + 128] = this.address
                    require ext_code.size(address(stor12.field_0))
                    staticcall address(stor12.field_0).WETH() with:
                            gas gas_remaining wei
                    mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not address(stor12.field_0):
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][address(stor12.field_0)] = 9500 * balanceOf[address(this.address)] / 10000
                    emit Approval((9500 * balanceOf[address(this.address)] / 10000), this.address, address(stor12.field_0));
                    mem[(7 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(7 * ceil32(return_data.size)) + 196] = 9500 * balanceOf[address(this.address)] / 10000
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 128
                    t = (7 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(stor12.field_0))
                    call address(stor12.field_0).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 9500 * balanceOf[address(this.address)] / 10000, 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call RESERVEAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    stor10 = 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
