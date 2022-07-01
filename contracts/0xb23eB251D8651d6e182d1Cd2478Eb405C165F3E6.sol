contract main {




// =====================  Runtime code  =====================


const decimals = 18

const getPair = ext_call.return_data[12 len 20]


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor54;
array of struct stor55;
uint8 stor101;
address stor101;
address adminAddress; offset 8
uint256 stor101; offset 8

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function admin() {
    return adminAddress
}

function adminWithdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'onlyAdmin'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
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

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
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
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function initialize() {
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0, 'Initializable: contract is not initializing'
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        bool(stor54.length) = 0
        stor54.length.field_1 = 7
        stor54.length.field_200 = 'PanGuHU' % 72057594037927936
        idx = 0
        while (uint255(stor54.length) * 0.5) + 31 / 32 > idx:
            stor54[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
        bool(stor54.length) = 0
        stor54.length.field_1 = 7
        stor54.length.field_200 = 'PanGuHU' % 72057594037927936
        idx = 0
        while stor54.length.field_1 + 31 / 32 > idx:
            stor54[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        bool(stor55.length) = 0
        stor55.length.field_1 = 7
        stor55.length.field_200 = 'PanGuHU' % 72057594037927936
        idx = 0
        while (uint255(stor55.length) * 0.5) + 31 / 32 > idx:
            stor55[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 0, 34
        bool(stor55.length) = 0
        stor55.length.field_1 = 7
        stor55.length.field_200 = 'PanGuHU' % 72057594037927936
        idx = 0
        while stor55.length.field_1 + 31 / 32 > idx:
            stor55[idx].field_0 = 0
            idx = idx + 1
            continue 
    Mask(248, 0, stor101.field_8) = Mask(248, 0, msg.sender)
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffff2c3de43133125effffff:
        revert with 0, 17
    totalSupply += 1000000 * 10^18
    if balanceOf[address(msg.sender)] > 0xffffffffffffffffffffffffffffffffffffffffffff2c3de43133125effffff:
        revert with 0, 17
    balanceOf[address(msg.sender)] += 1000000 * 10^18
    emit Transfer(1000000 * 10^18, 0, msg.sender);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function name() {
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor54.length):
            if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor54.length):
                if 31 < uint255(stor54.length) * 0.5:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor54.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        else:
            if bool(stor54.length) == stor54.length.field_1 < 32:
                revert with 0, 34
            if stor54.length.field_1:
                if 31 < stor54.length.field_1:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        mem[ceil32(uint255(stor54.length) * 0.5) + 192 len ceil32(uint255(stor54.length) * 0.5)] = mem[128 len ceil32(uint255(stor54.length) * 0.5)]
        if ceil32(uint255(stor54.length) * 0.5) > uint255(stor54.length) * 0.5:
            mem[ceil32(uint255(stor54.length) * 0.5) + (uint255(stor54.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)], mem[(2 * ceil32(uint255(stor54.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor54.length) * 0.5)]), 
    if bool(stor54.length) == stor54.length.field_1 < 32:
        revert with 0, 34
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor54.length):
            if 31 < uint255(stor54.length) * 0.5:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while (uint255(stor54.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
        if stor54.length.field_1:
            if 31 < stor54.length.field_1:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    mem[ceil32(stor54.length.field_1) + 192 len ceil32(stor54.length.field_1)] = mem[128 len ceil32(stor54.length.field_1)]
    if ceil32(stor54.length.field_1) > stor54.length.field_1:
        mem[ceil32(stor54.length.field_1) + stor54.length.field_1 + 192] = 0
    return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 192 len 2 * ceil32(stor54.length.field_1)]), 
}

function symbol() {
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor55.length):
            if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor55.length):
                if 31 < uint255(stor55.length) * 0.5:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor55.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        else:
            if bool(stor55.length) == stor55.length.field_1 < 32:
                revert with 0, 34
            if stor55.length.field_1:
                if 31 < stor55.length.field_1:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while stor55.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        mem[ceil32(uint255(stor55.length) * 0.5) + 192 len ceil32(uint255(stor55.length) * 0.5)] = mem[128 len ceil32(uint255(stor55.length) * 0.5)]
        if ceil32(uint255(stor55.length) * 0.5) > uint255(stor55.length) * 0.5:
            mem[ceil32(uint255(stor55.length) * 0.5) + (uint255(stor55.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)], mem[(2 * ceil32(uint255(stor55.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor55.length) * 0.5)]), 
    if bool(stor55.length) == stor55.length.field_1 < 32:
        revert with 0, 34
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor55.length):
            if 31 < uint255(stor55.length) * 0.5:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while (uint255(stor55.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    else:
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 0, 34
        if stor55.length.field_1:
            if 31 < stor55.length.field_1:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while stor55.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    mem[ceil32(stor55.length.field_1) + 192 len ceil32(stor55.length.field_1)] = mem[128 len ceil32(stor55.length.field_1)]
    if ceil32(stor55.length.field_1) > stor55.length.field_1:
        mem[ceil32(stor55.length.field_1) + stor55.length.field_1 + 192] = 0
    return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)], mem[(2 * ceil32(stor55.length.field_1)) + 192 len 2 * ceil32(stor55.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[132] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    require ext_code.size(0xca143ce32fe78f1f7019d7d551a6402fc5350c73)
    staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.0xe6a43905 with:
            gas gas_remaining wei
           args this.address, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg1 != ext_call.return_data[12 len 20]:
        if not msg.sender:
            revert with 0, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 0, 17
        balanceOf[arg1] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(this.address)
        staticcall this.address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 10000 * 10^18:
            if not uint8(stor101.field_0):
                uint8(stor101.field_0) = 1
                mem[(2 * ceil32(return_data.size)) + 128] = this.address
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.0xad5c4648 with:
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
                    mem[(4 * ceil32(return_data.size)) + 292] = 0x7265737300000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 192
                       len (5 * ceil32(return_data.size)) + 132
                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e] = 10000 * 10^18
                mem[(4 * ceil32(return_data.size)) + 192] = 10000 * 10^18
                emit Approval(mem[(4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                mem[(4 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = 6666666666666666666666
                idx = 0
                s = (4 * ceil32(return_data.size)) + 388
                t = (2 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 6666666666666666666666, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e] = 3333333333333333333333
                emit Approval(3333333333333333333333, this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args this.address, 3333333333333333333333, 0, 0, address(stor101.field_0), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                uint8(stor101.field_0) = 0
        require ext_code.size(this.address)
        staticcall this.address.0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[arg1] > !arg2:
                revert with 0, 17
            balanceOf[arg1] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if this.address == msg.sender:
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[arg1] > !arg2:
                    revert with 0, 17
                balanceOf[arg1] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if arg2 and 90 > -1 / arg2:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < 90 * arg2 / 100:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= 90 * arg2 / 100
                if balanceOf[arg1] > !(90 * arg2 / 100):
                    revert with 0, 17
                balanceOf[arg1] += 90 * arg2 / 100
                emit Transfer((90 * arg2 / 100), msg.sender, arg1);
                if arg2 and 5 > -1 / arg2:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if balanceOf[address(msg.sender)] < 5 * arg2 / 100:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= 5 * arg2 / 100
                if balanceOf[57005] > !(5 * arg2 / 100):
                    revert with 0, 17
                balanceOf[57005] += 5 * arg2 / 100
                emit Transfer((5 * arg2 / 100), msg.sender, 57005);
                if arg2 and 5 > -1 / arg2:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < 5 * arg2 / 100:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= 5 * arg2 / 100
                if balanceOf[this.address] > !(5 * arg2 / 100):
                    revert with 0, 17
                balanceOf[this.address] += 5 * arg2 / 100
                emit Transfer((5 * arg2 / 100), msg.sender, this.address);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    mem[132] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    require ext_code.size(0xca143ce32fe78f1f7019d7d551a6402fc5350c73)
    staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.0xe6a43905 with:
            gas gas_remaining wei
           args this.address, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg2 != ext_call.return_data[12 len 20]:
        if not arg1:
            revert with 0, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[address(arg1)] < arg3:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(arg1)] -= arg3
        if balanceOf[arg2] > !arg3:
            revert with 0, 17
        balanceOf[arg2] += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(this.address)
        staticcall this.address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 10000 * 10^18:
            if not uint8(stor101.field_0):
                uint8(stor101.field_0) = 1
                mem[(2 * ceil32(return_data.size)) + 128] = this.address
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.0xad5c4648 with:
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
                    mem[(4 * ceil32(return_data.size)) + 292] = 0x7265737300000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 192
                       len (5 * ceil32(return_data.size)) + 132
                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e] = 10000 * 10^18
                mem[(4 * ceil32(return_data.size)) + 192] = 10000 * 10^18
                emit Approval(mem[(4 * ceil32(return_data.size)) + 192 len (5 * ceil32(return_data.size)) + 32], this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                mem[(4 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = 6666666666666666666666
                idx = 0
                s = (4 * ceil32(return_data.size)) + 388
                t = (2 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 6666666666666666666666, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e] = 3333333333333333333333
                emit Approval(3333333333333333333333, this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args this.address, 3333333333333333333333, 0, 0, address(stor101.field_0), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                uint8(stor101.field_0) = 0
        require ext_code.size(this.address)
        staticcall this.address.0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not arg1:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= arg3
            if balanceOf[arg2] > !arg3:
                revert with 0, 17
            balanceOf[arg2] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if this.address == arg1:
                if not arg1:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[arg2] > !arg3:
                    revert with 0, 17
                balanceOf[arg2] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if arg3 and 90 > -1 / arg3:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < 90 * arg3 / 100:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= 90 * arg3 / 100
                if balanceOf[arg2] > !(90 * arg3 / 100):
                    revert with 0, 17
                balanceOf[arg2] += 90 * arg3 / 100
                emit Transfer((90 * arg3 / 100), arg1, arg2);
                if arg3 and 5 > -1 / arg3:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 'ERC20: transfer from the zero address'
                if balanceOf[address(arg1)] < 5 * arg3 / 100:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= 5 * arg3 / 100
                if balanceOf[57005] > !(5 * arg3 / 100):
                    revert with 0, 17
                balanceOf[57005] += 5 * arg3 / 100
                emit Transfer((5 * arg3 / 100), arg1, 57005);
                if arg3 and 5 > -1 / arg3:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < 5 * arg3 / 100:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= 5 * arg3 / 100
                if balanceOf[this.address] > !(5 * arg3 / 100):
                    revert with 0, 17
                balanceOf[this.address] += 5 * arg3 / 100
                emit Transfer((5 * arg3 / 100), arg1, this.address);
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x8129fc1c(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xa9059cbb(?????) > uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != unknown_0x8129fc1c(?????):
                if uint32(call.func_hash) >> 224 != unknown_0x95d89b41(?????):
                    if unknown_0xa28835b6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if adminAddress != msg.sender:
                            revert with 0, 'onlyAdmin'
                        call address(arg1) with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require unknown_0xa457c2d7(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        if allowance[msg.sender][address(arg1)] < arg2:
                            revert with 0, 'ERC20: decreased allowance below zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
                        emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, address(arg1));
                    return 1
                require not msg.value
                if bool(stor55.length):
                    if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor55.length):
                        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor55.length):
                            if 31 < uint255(stor55.length) * 0.5:
                                mem[160] = uint256(stor55.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor55.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor55[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor55.length), data=mem[160 len ceil32(uint255(stor55.length) * 0.5)])
                            mem[160] = 256 * stor55.length.field_8
                    else:
                        if bool(stor55.length) == stor55.length.field_1 < 32:
                            revert with 0, 34
                        if stor55.length.field_1:
                            if 31 < stor55.length.field_1:
                                mem[160] = uint256(stor55.field_0)
                                idx = 160
                                s = 0
                                while stor55.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor55[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor55.length), data=mem[160 len ceil32(uint255(stor55.length) * 0.5)])
                            mem[160] = 256 * stor55.length.field_8
                    mem[ceil32(uint255(stor55.length) * 0.5) + 224 len ceil32(uint255(stor55.length) * 0.5)] = mem[160 len ceil32(uint255(stor55.length) * 0.5)]
                    if ceil32(uint255(stor55.length) * 0.5) > uint255(stor55.length) * 0.5:
                        mem[ceil32(uint255(stor55.length) * 0.5) + (uint255(stor55.length) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[160 len ceil32(uint255(stor55.length) * 0.5)], mem[(2 * ceil32(uint255(stor55.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor55.length) * 0.5)]), 
                if bool(stor55.length) == stor55.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor55.length):
                    if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor55.length):
                        if 31 < uint255(stor55.length) * 0.5:
                            mem[160] = uint256(stor55.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor55.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor55[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor55.length % 128, data=mem[160 len ceil32(stor55.length.field_1)])
                        mem[160] = 256 * stor55.length.field_8
                else:
                    if bool(stor55.length) == stor55.length.field_1 < 32:
                        revert with 0, 34
                    if stor55.length.field_1:
                        if 31 < stor55.length.field_1:
                            mem[160] = uint256(stor55.field_0)
                            idx = 160
                            s = 0
                            while stor55.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor55[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor55.length % 128, data=mem[160 len ceil32(stor55.length.field_1)])
                        mem[160] = 256 * stor55.length.field_8
                mem[ceil32(stor55.length.field_1) + 224 len ceil32(stor55.length.field_1)] = mem[160 len ceil32(stor55.length.field_1)]
                if ceil32(stor55.length.field_1) > stor55.length.field_1:
                    mem[ceil32(stor55.length.field_1) + stor55.length.field_1 + 224] = 0
                return Array(len=stor55.length % 128, data=mem[160 len ceil32(stor55.length.field_1)], mem[(2 * ceil32(stor55.length.field_1)) + 224 len 2 * ceil32(stor55.length.field_1)]), 
            require not msg.value
            if uint8(stor0.field_8):
                if ext_code.size(this.address):
                    revert with 0, 'Initializable: contract is already initialized'
            else:
                if uint8(stor0.field_0):
                    revert with 0, 'Initializable: contract is already initialized'
            if not uint8(stor0.field_8):
                uint16(stor0.field_0) = 257
                revert with 0, 'Initializable: contract is not initializing'
            if bool(stor54.length):
                if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
                    revert with 0, 34
                bool(stor54.length) = 0
                stor54.length.field_1 = 7
                stor54.length.field_200 = 'PanGuHU' % 72057594037927936
                idx = 0
                while (uint255(stor54.length) * 0.5) + 31 / 32 > idx:
                    stor54[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if bool(stor54.length) == stor54.length.field_1 < 32:
                    revert with 0, 34
                bool(stor54.length) = 0
                stor54.length.field_1 = 7
                stor54.length.field_200 = 'PanGuHU' % 72057594037927936
                idx = 0
                while stor54.length.field_1 + 31 / 32 > idx:
                    stor54[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            if bool(stor55.length):
                if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
                    revert with 0, 34
                bool(stor55.length) = 0
                stor55.length.field_1 = 7
                stor55.length.field_200 = 'PanGuHU' % 72057594037927936
                idx = 0
                while (uint255(stor55.length) * 0.5) + 31 / 32 > idx:
                    stor55[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if bool(stor55.length) == stor55.length.field_1 < 32:
                    revert with 0, 34
                bool(stor55.length) = 0
                stor55.length.field_1 = 7
                stor55.length.field_200 = 'PanGuHU' % 72057594037927936
                idx = 0
                while stor55.length.field_1 + 31 / 32 > idx:
                    stor55[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            Mask(248, 0, stor101.field_8) = Mask(248, 0, msg.sender)
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffff2c3de43133125effffff:
                revert with 0, 17
            totalSupply += 1000000 * 10^18
            if balanceOf[address(msg.sender)] > 0xffffffffffffffffffffffffffffffffffffffffffff2c3de43133125effffff:
                revert with 0, 17
            balanceOf[address(msg.sender)] += 1000000 * 10^18
            emit Transfer(1000000 * 10^18, 0, msg.sender);
            if not uint8(stor0.field_8):
                uint8(stor0.field_8) = 0
        if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
            if uint32(call.func_hash) >> 224 != unknown_0xc1f1b1b5(?????):
                if uint32(call.func_hash) >> 224 != unknown_0xdd62ed3e(?????):
                    require unknown_0xf851a440(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return adminAddress
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                return allowance[address(arg1)][address(arg2)]
            require not msg.value
            require ext_code.size(0xca143ce32fe78f1f7019d7d551a6402fc5350c73)
            staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.0xe6a43905 with:
                    gas gas_remaining wei
                   args this.address, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return ext_call.return_data[12 len 20]
        require not msg.value
        require calldata.size - 4 >= 64
        require arg1 == address(arg1)
        mem[164] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        require ext_code.size(0xca143ce32fe78f1f7019d7d551a6402fc5350c73)
        staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.0xe6a43905 with:
                gas gas_remaining wei
               args this.address, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(arg1) != ext_call.return_data[12 len 20]:
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not address(arg1):
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > !arg2:
                revert with 0, 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, address(arg1));
        else:
            mem[ceil32(return_data.size) + 132] = this.address
            require ext_code.size(this.address)
            staticcall this.address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 10000 * 10^18:
                if not uint8(stor101.field_0):
                    uint8(stor101.field_0) = 1
                    mem[(2 * ceil32(return_data.size)) + 160] = this.address
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.0xad5c4648 with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[12 len 20]
                    if not this.address:
                        mem[(4 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 228] = 32
                        mem[(4 * ceil32(return_data.size)) + 260] = 36
                        mem[(4 * ceil32(return_data.size)) + 292] = 'ERC20: approve from the zero add'
                        mem[(4 * ceil32(return_data.size)) + 324] = 0x7265737300000000000000000000000000000000000000000000000000000000
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 224
                           len (5 * ceil32(return_data.size)) + 132
                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e] = 10000 * 10^18
                    mem[(4 * ceil32(return_data.size)) + 224] = 10000 * 10^18
                    emit Approval(mem[(4 * ceil32(return_data.size)) + 224 len (5 * ceil32(return_data.size)) + 32], this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                    mem[(4 * ceil32(return_data.size)) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 228] = 6666666666666666666666
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 420
                    t = (2 * ceil32(return_data.size)) + 160
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 6666666666666666666666, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e] = 3333333333333333333333
                    emit Approval(3333333333333333333333, this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args this.address, 3333333333333333333333, 0, 0, address(stor101.field_0), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    uint8(stor101.field_0) = 0
            require ext_code.size(this.address)
            staticcall this.address.0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(arg1):
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, address(arg1));
            else:
                if this.address == msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(arg1):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, address(arg1));
                else:
                    if arg2 and 90 > -1 / arg2:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(arg1):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < 90 * arg2 / 100:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= 90 * arg2 / 100
                    if balanceOf[address(arg1)] > !(90 * arg2 / 100):
                        revert with 0, 17
                    balanceOf[address(arg1)] += 90 * arg2 / 100
                    emit Transfer((90 * arg2 / 100), msg.sender, address(arg1));
                    if arg2 and 5 > -1 / arg2:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if balanceOf[address(msg.sender)] < 5 * arg2 / 100:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= 5 * arg2 / 100
                    if balanceOf[57005] > !(5 * arg2 / 100):
                        revert with 0, 17
                    balanceOf[57005] += 5 * arg2 / 100
                    emit Transfer((5 * arg2 / 100), msg.sender, 57005);
                    if arg2 and 5 > -1 / arg2:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not this.address:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < 5 * arg2 / 100:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= 5 * arg2 / 100
                    if balanceOf[this.address] > !(5 * arg2 / 100):
                        revert with 0, 17
                    balanceOf[this.address] += 5 * arg2 / 100
                    emit Transfer((5 * arg2 / 100), msg.sender, this.address);
    else:
        if unknown_0x23b872dd(?????) > uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != name():
                if uint32(call.func_hash) >> 224 != approve(address arg1, uint256 arg2):
                    require unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return totalSupply
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if not msg.sender:
                    revert with 0, 'ERC20: approve from the zero address'
                if not address(arg1):
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(msg.sender)][address(arg1)] = arg2
                emit Approval(arg2, msg.sender, address(arg1));
                return 1
            require not msg.value
            if bool(stor54.length):
                if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor54.length):
                    if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor54.length):
                        if 31 < uint255(stor54.length) * 0.5:
                            mem[160] = uint256(stor54.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor54.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor54[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor54.length), data=mem[160 len ceil32(uint255(stor54.length) * 0.5)])
                        mem[160] = 256 * stor54.length.field_8
                else:
                    if bool(stor54.length) == stor54.length.field_1 < 32:
                        revert with 0, 34
                    if stor54.length.field_1:
                        if 31 < stor54.length.field_1:
                            mem[160] = uint256(stor54.field_0)
                            idx = 160
                            s = 0
                            while stor54.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor54[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor54.length), data=mem[160 len ceil32(uint255(stor54.length) * 0.5)])
                        mem[160] = 256 * stor54.length.field_8
                mem[ceil32(uint255(stor54.length) * 0.5) + 224 len ceil32(uint255(stor54.length) * 0.5)] = mem[160 len ceil32(uint255(stor54.length) * 0.5)]
                if ceil32(uint255(stor54.length) * 0.5) > uint255(stor54.length) * 0.5:
                    mem[ceil32(uint255(stor54.length) * 0.5) + (uint255(stor54.length) * 0.5) + 224] = 0
                return Array(len=2 * Mask(256, -1, stor54.length), data=mem[160 len ceil32(uint255(stor54.length) * 0.5)], mem[(2 * ceil32(uint255(stor54.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor54.length) * 0.5)]), 
            if bool(stor54.length) == stor54.length.field_1 < 32:
                revert with 0, 34
            if bool(stor54.length):
                if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor54.length):
                    if 31 < uint255(stor54.length) * 0.5:
                        mem[160] = uint256(stor54.field_0)
                        idx = 160
                        s = 0
                        while (uint255(stor54.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor54[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor54.length % 128, data=mem[160 len ceil32(stor54.length.field_1)])
                    mem[160] = 256 * stor54.length.field_8
            else:
                if bool(stor54.length) == stor54.length.field_1 < 32:
                    revert with 0, 34
                if stor54.length.field_1:
                    if 31 < stor54.length.field_1:
                        mem[160] = uint256(stor54.field_0)
                        idx = 160
                        s = 0
                        while stor54.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor54[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor54.length % 128, data=mem[160 len ceil32(stor54.length.field_1)])
                    mem[160] = 256 * stor54.length.field_8
            mem[ceil32(stor54.length.field_1) + 224 len ceil32(stor54.length.field_1)] = mem[160 len ceil32(stor54.length.field_1)]
            if ceil32(stor54.length.field_1) > stor54.length.field_1:
                mem[ceil32(stor54.length.field_1) + stor54.length.field_1 + 224] = 0
            return Array(len=stor54.length % 128, data=mem[160 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 224 len 2 * ceil32(stor54.length.field_1)]), 
        if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
            if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 18
            if uint32(call.func_hash) >> 224 != unknown_0x39509351(?????):
                require unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return balanceOf[address(arg1)]
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if allowance[msg.sender][address(arg1)] > !arg2:
                revert with 0, 17
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not address(arg1):
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
            emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, address(arg1));
        else:
            require not msg.value
            require calldata.size - 4 >= 96
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            mem[164] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            require ext_code.size(0xca143ce32fe78f1f7019d7d551a6402fc5350c73)
            staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.0xe6a43905 with:
                    gas gas_remaining wei
                   args this.address, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if address(arg2) != ext_call.return_data[12 len 20]:
                if not address(arg1):
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(arg2):
                    revert with 0, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, address(arg1), address(arg2));
            else:
                mem[ceil32(return_data.size) + 132] = this.address
                require ext_code.size(this.address)
                staticcall this.address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 10000 * 10^18:
                    if not uint8(stor101.field_0):
                        uint8(stor101.field_0) = 1
                        mem[(2 * ceil32(return_data.size)) + 160] = this.address
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.0xad5c4648 with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[12 len 20]
                        if not this.address:
                            mem[(4 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 228] = 32
                            mem[(4 * ceil32(return_data.size)) + 260] = 36
                            mem[(4 * ceil32(return_data.size)) + 292] = 'ERC20: approve from the zero add'
                            mem[(4 * ceil32(return_data.size)) + 324] = 0x7265737300000000000000000000000000000000000000000000000000000000
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 224
                               len (5 * ceil32(return_data.size)) + 132
                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e] = 10000 * 10^18
                        mem[(4 * ceil32(return_data.size)) + 224] = 10000 * 10^18
                        emit Approval(mem[(4 * ceil32(return_data.size)) + 224 len (5 * ceil32(return_data.size)) + 32], this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                        mem[(4 * ceil32(return_data.size)) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 228] = 6666666666666666666666
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 420
                        t = (2 * ceil32(return_data.size)) + 160
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 6666666666666666666666, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e] = 3333333333333333333333
                        emit Approval(3333333333333333333333, this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args this.address, 3333333333333333333333, 0, 0, address(stor101.field_0), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        uint8(stor101.field_0) = 0
                require ext_code.size(this.address)
                staticcall this.address.0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not address(arg1):
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(arg2):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, address(arg1), address(arg2));
                else:
                    if this.address == address(arg1):
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg2):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, address(arg1), address(arg2));
                    else:
                        if arg3 and 90 > -1 / arg3:
                            revert with 0, 17
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg2):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < 90 * arg3 / 100:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= 90 * arg3 / 100
                        if balanceOf[address(arg2)] > !(90 * arg3 / 100):
                            revert with 0, 17
                        balanceOf[address(arg2)] += 90 * arg3 / 100
                        emit Transfer((90 * arg3 / 100), address(arg1), address(arg2));
                        if arg3 and 5 > -1 / arg3:
                            revert with 0, 17
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer from the zero address'
                        if balanceOf[address(arg1)] < 5 * arg3 / 100:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= 5 * arg3 / 100
                        if balanceOf[57005] > !(5 * arg3 / 100):
                            revert with 0, 17
                        balanceOf[57005] += 5 * arg3 / 100
                        emit Transfer((5 * arg3 / 100), address(arg1), 57005);
                        if arg3 and 5 > -1 / arg3:
                            revert with 0, 17
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < 5 * arg3 / 100:
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= 5 * arg3 / 100
                        if balanceOf[this.address] > !(5 * arg3 / 100):
                            revert with 0, 17
                        balanceOf[this.address] += 5 * arg3 / 100
                        emit Transfer((5 * arg3 / 100), address(arg1), this.address);
            if allowance[address(arg1)][msg.sender] < arg3:
                revert with 0, 'ERC20: transfer amount exceeds allowance'
            if not address(arg1):
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
            emit Approval((allowance[address(arg1)][msg.sender] - arg3), address(arg1), msg.sender);
    return 1
}



}
