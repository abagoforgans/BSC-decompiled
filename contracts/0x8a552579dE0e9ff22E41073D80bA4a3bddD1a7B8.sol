contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 sub_3022553d;
mapping of uint8 stor2;
array of address stor4;
address stor5;
address uniswapV2RouterAddress;
address stor7;
address stor8;
uint256 stor9;
address stor10;
address stor11;
address baseTokenAddress;
address saleTokenAddress;
address sub_a4bbfb74Address;
uint256 buyAmount;
uint256 stor16; offset 32
uint256 sub_466506ac;

function buyAmount() {
    return buyAmount
}

function sub_3022553d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_3022553d[arg1]
}

function sub_466506ac(?) {
    return sub_466506ac
}

function uniswapV2RouterAddress() {
    return uniswapV2RouterAddress
}

function owner() {
    return owner
}

function sub_a4bbfb74(?) {
    return sub_a4bbfb74Address
}

function baseToken() {
    return baseTokenAddress
}

function saleToken() {
    return saleTokenAddress
}

function _fallback() payable {
    revert
}

function sub_d8f8d35b(?) {
    return baseTokenAddress, saleTokenAddress, buyAmount, sub_a4bbfb74Address
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function addWhilteList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = 1
    stor4.length++
    stor4[stor4.length] = arg1
}

function withdrawETH() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call stor5 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
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

function sub_92316d7d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, uniswapV2RouterAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_98b35cb7(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg5 == address(arg5)
    if bool(stor2[msg.sender]) != 1:
        if stor5 != msg.sender:
            revert with 0, 'You are not allowed'
    baseTokenAddress = address(arg1)
    saleTokenAddress = address(arg2)
    buyAmount = arg3
    sub_466506ac = arg4
    sub_a4bbfb74Address = address(arg5)
}

function sub_fc87f44e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uniswapV2RouterAddress, stor9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function fuck() {
    mem[128] = baseTokenAddress
    mem[160] = saleTokenAddress
    mem[192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[196] = buyAmount
    idx = 0
    s = 128
    t = 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor10)
    call stor10.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args buyAmount, sub_466506ac, Array(len=2, data=mem[388 len 64]), sub_a4bbfb74Address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_10da470b(?) {
    mem[128] = baseTokenAddress
    mem[160] = saleTokenAddress
    mem[192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[196] = buyAmount
    idx = 0
    s = 128
    t = 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor10)
    call stor10.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args buyAmount, sub_466506ac, Array(len=2, data=mem[388 len 64]), sub_a4bbfb74Address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function removeWhilteList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = 0
    idx = 0
    while idx < stor4.length:
        mem[0] = 4
        if stor4[idx] == arg1:
            if stor4.length < 1:
                revert with 0, 17
            if stor4.length - 1 >= stor4.length:
                revert with 0, 50
            if idx >= stor4.length:
                revert with 0, 50
            stor4[idx] = stor4[stor4.length]
            if not stor4.length:
                revert with 0, 49
            mem[0] = 4
            stor4[stor4.length] = 0
            stor4.length--
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uniswapV2RouterAddress = arg1
    stor10 = arg1
    require ext_code.size(arg1)
    staticcall arg1.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor8 = ext_call.return_data[12 len 20]
    require ext_code.size(stor10)
    staticcall stor10.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor7 = ext_call.return_data[12 len 20]
    stor11 = ext_call.return_data[12 len 20]
}

function fuck2() {
    mem[128] = baseTokenAddress
    mem[160] = saleTokenAddress
    mem[192] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
    mem[196] = sub_466506ac
    mem[228] = buyAmount
    mem[260] = 160
    mem[356] = 2
    idx = 0
    s = 128
    t = 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[292] = sub_a4bbfb74Address
    mem[324] = block.timestamp
    require ext_code.size(stor10)
    call stor10.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args sub_466506ac, buyAmount, Array(len=2, data=mem[388 len 64]), sub_a4bbfb74Address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], stor16 <= test266151307()
    require return_data.size + 192 > mem[192 len 4], stor16 + 223
    if mem[mem[192 len 4], stor16 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[192 len 4], stor16 + 192]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], stor16 + 192]) + 193 > test266151307():
        revert with 0, 65
    require mem[192 len 4], stor16 + (32 * mem[mem[192 len 4], stor16 + 192]) + 32 <= return_data.size
}

function sub_70c53464(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    mem[0] = msg.sender
    mem[32] = 2
    if bool(stor2[msg.sender]) != 1:
        if stor5 != msg.sender:
            revert with 0, 'You are not allowed'
    mem[96] = 2
    mem[64] = 192
    mem[128] = stor8
    mem[160] = address(arg1)
    idx = msg.value
    s = 0
    while idx:
        if arg2 > idx:
            if idx:
                call msg.sender with:
                   value idx wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = mem[96]
            t = 0
            u = 128
            v = mem[64] + 164
            while t < mem[96]:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            mem[mem[64] + 68] = address(arg3)
            mem[mem[64] + 100] = block.timestamp
            require ext_code.size(stor10)
            call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value arg2 wei
                 gas gas_remaining wei
                args 0, 128, address(arg3), block.timestamp, mem[mem[64] + 132 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx < arg2:
                revert with 0, 17
            if uint8(s) == 255:
                revert with 0, 17
            if uint8(uint8(s) + 1) <= 50:
                if idx - arg2:
                    idx = idx - arg2
                    s = uint8(s) + 1
                    continue 
            else:
                if idx - arg2:
                    call msg.sender with:
                       value idx - arg2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ef7ac430(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    if bool(stor2[msg.sender]) != 1:
        if stor5 != msg.sender:
            revert with 0, 'You are not allowed'
    if arg2 >= 10000:
        revert with 0, 'wrong slippage'
    mem[192] = 2
    mem[128] = stor8
    mem[160] = address(arg1)
    mem[224] = address(arg1)
    mem[256] = stor8
    idx = 0
    s = 128
    t = 452
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor10)
    call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 2, mem[452 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, uniswapV2RouterAddress
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] * arg2 / 10000
        idx = 0
        s = 224
        t = (2 * ceil32(return_data.size)) + 484
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor10)
        call stor10.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0] * arg2 / 10000, 0, 160, address(arg3), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 484 len 64]
    else:
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args uniswapV2RouterAddress, stor9
        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] * arg2 / 10000
        idx = 0
        s = 224
        t = (4 * ceil32(return_data.size)) + 484
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor10)
        call stor10.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0] * arg2 / 10000, 0, 160, address(arg3), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 484 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_d8f4c745(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    if bool(stor2[msg.sender]) != 1:
        if stor5 != msg.sender:
            revert with 0, 'You are not allowed'
    mem[192] = 2
    mem[128] = stor8
    mem[160] = address(arg1)
    mem[224] = address(arg1)
    mem[256] = stor8
    idx = 0
    s = 128
    t = 452
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor10)
    call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg2 wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 2, mem[452 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Your Money Burn! Stop!'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, uniswapV2RouterAddress
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 452] = 2
        idx = 0
        s = 224
        t = (2 * ceil32(return_data.size)) + 484
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor10)
        call stor10.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(arg3), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 484 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if msg.value < arg2:
            revert with 0, 17
        idx = 0
        s = 128
        t = (2 * ceil32(return_data.size)) + 452
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor10)
        call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value - arg2 wei
             gas gas_remaining wei
            args 0, 128, address(arg3), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 452 len 64]
    else:
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args uniswapV2RouterAddress, stor9
        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 452] = 2
        idx = 0
        s = 224
        t = (4 * ceil32(return_data.size)) + 484
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor10)
        call stor10.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(arg3), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 484 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if msg.value < arg2:
            revert with 0, 17
        idx = 0
        s = 128
        t = (4 * ceil32(return_data.size)) + 452
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor10)
        call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value - arg2 wei
             gas gas_remaining wei
            args 0, 128, address(arg3), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_6f4946c9(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 == address(arg4)
    mem[0] = msg.sender
    mem[32] = 2
    if bool(stor2[msg.sender]) != 1:
        if stor5 != msg.sender:
            revert with 0, 'You are not allowed'
    mem[96] = 2
    mem[192] = 2
    mem[128] = stor8
    mem[160] = address(arg1)
    mem[224] = address(arg1)
    mem[256] = stor8
    mem[324] = 128
    mem[420] = 2
    idx = 0
    s = 128
    t = 452
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[356] = this.address
    mem[388] = block.timestamp
    require ext_code.size(stor10)
    call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg3 wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 2, mem[452 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[292] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Your Money Burn! Stop!'
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = uniswapV2RouterAddress
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, uniswapV2RouterAddress
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 324] = 0
        mem[(2 * ceil32(return_data.size)) + 356] = 160
        mem[(2 * ceil32(return_data.size)) + 452] = 2
        idx = 0
        s = 224
        t = (2 * ceil32(return_data.size)) + 484
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 388] = address(arg4)
        mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp
        require ext_code.size(stor10)
        call stor10.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 484 len 64]
    else:
        mem[(2 * ceil32(return_data.size)) + 292] = uniswapV2RouterAddress
        mem[(2 * ceil32(return_data.size)) + 324] = stor9
        require ext_code.size(address(arg1))
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args uniswapV2RouterAddress, stor9
        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 288
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 324] = 0
        mem[(4 * ceil32(return_data.size)) + 356] = 160
        mem[(4 * ceil32(return_data.size)) + 452] = 2
        idx = 0
        s = 224
        t = (4 * ceil32(return_data.size)) + 484
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 388] = address(arg4)
        mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp
        require ext_code.size(stor10)
        call stor10.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(arg4), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 484 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value < arg3:
        revert with 0, 17
    idx = msg.value - arg3
    s = 0
    while idx:
        if arg2 > idx:
            if idx:
                call msg.sender with:
                   value idx wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = mem[96]
            t = 0
            u = 128
            v = mem[64] + 164
            while t < mem[96]:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            mem[mem[64] + 68] = address(arg4)
            mem[mem[64] + 100] = block.timestamp
            require ext_code.size(stor10)
            call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value arg2 wei
                 gas gas_remaining wei
                args 0, 128, address(arg4), block.timestamp, mem[mem[64] + 132 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx < arg2:
                revert with 0, 17
            if uint8(s) == 255:
                revert with 0, 17
            if uint8(uint8(s) + 1) <= 50:
                if idx - arg2:
                    idx = idx - arg2
                    s = uint8(s) + 1
                    continue 
            else:
                if idx - arg2:
                    call msg.sender with:
                       value idx - arg2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6396e2e8(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    mem[0] = msg.sender
    mem[32] = 2
    if 1 == bool(stor2[msg.sender]):
        mem[96] = 2
        mem[64] = 192
        mem[128] = stor8
        mem[160] = address(arg1)
        idx = msg.value
        s = 0
        while idx:
            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg2
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[96]
            t = 0
            u = 128
            v = mem[64] + 100
            while t < mem[96]:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(stor10)
            staticcall stor10.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg2, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _96 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _98 = mem[_96]
            require mem[_96] <= test266151307()
            require _96 + return_data.size > _96 + mem[_96] + 31
            _100 = mem[_96 + mem[_96]]
            if mem[_96 + mem[_96]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_96 + mem[_96]]) + 1 < 0 or _96 + ceil32(return_data.size) + ceil32(32 * mem[_96 + mem[_96]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _96 + ceil32(return_data.size) + ceil32(32 * mem[_96 + mem[_96]]) + 1
            mem[_96 + ceil32(return_data.size)] = _100
            require _98 + (32 * _100) + 32 <= return_data.size
            u = _96 + _98 + 32
            v = _96 + ceil32(return_data.size) + 32
            t = 0
            while t < _100:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t + 1
                continue 
            if 0 >= _100:
                revert with 0, 50
            if mem[_96 + ceil32(return_data.size) + 32] > idx:
                if idx:
                    call msg.sender with:
                       value idx wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if not _100:
                    revert with 0, 50
                _138 = mem[_96 + ceil32(return_data.size) + 32]
                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = mem[96]
                t = 0
                u = 128
                v = mem[64] + 164
                while t < mem[96]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[mem[64] + 68] = address(arg3)
                mem[mem[64] + 100] = block.timestamp
                require ext_code.size(stor10)
                call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value _138 wei
                     gas gas_remaining wei
                    args 0, 128, address(arg3), block.timestamp, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 >= mem[_96 + ceil32(return_data.size)]:
                    revert with 0, 50
                if idx < mem[_96 + ceil32(return_data.size) + 32]:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if uint8(uint8(s) + 1) <= 50:
                    if idx - mem[_96 + ceil32(return_data.size) + 32]:
                        idx = idx - mem[_96 + ceil32(return_data.size) + 32]
                        s = uint8(s) + 1
                        continue 
                else:
                    if idx - mem[_96 + ceil32(return_data.size) + 32]:
                        call msg.sender with:
                           value idx - mem[_96 + ceil32(return_data.size) + 32] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
    else:
        if stor5 != msg.sender:
            revert with 0, 'You are not allowed'
        mem[96] = 2
        mem[64] = 192
        mem[128] = stor8
        mem[160] = address(arg1)
        idx = msg.value
        s = 0
        while idx:
            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg2
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[96]
            t = 0
            u = 128
            v = mem[64] + 100
            while t < mem[96]:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(stor10)
            staticcall stor10.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg2, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _97 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _99 = mem[_97]
            require mem[_97] <= test266151307()
            require _97 + return_data.size > _97 + mem[_97] + 31
            _101 = mem[_97 + mem[_97]]
            if mem[_97 + mem[_97]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_97 + mem[_97]]) + 1 < 0 or _97 + ceil32(return_data.size) + ceil32(32 * mem[_97 + mem[_97]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _97 + ceil32(return_data.size) + ceil32(32 * mem[_97 + mem[_97]]) + 1
            mem[_97 + ceil32(return_data.size)] = _101
            require _99 + (32 * _101) + 32 <= return_data.size
            u = _97 + _99 + 32
            v = _97 + ceil32(return_data.size) + 32
            t = 0
            while t < _101:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t + 1
                continue 
            if 0 >= _101:
                revert with 0, 50
            if mem[_97 + ceil32(return_data.size) + 32] > idx:
                if idx:
                    call msg.sender with:
                       value idx wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if not _101:
                    revert with 0, 50
                _140 = mem[_97 + ceil32(return_data.size) + 32]
                mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = mem[96]
                t = 0
                u = 128
                v = mem[64] + 164
                while t < mem[96]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[mem[64] + 68] = address(arg3)
                mem[mem[64] + 100] = block.timestamp
                require ext_code.size(stor10)
                call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value _140 wei
                     gas gas_remaining wei
                    args 0, 128, address(arg3), block.timestamp, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 >= mem[_97 + ceil32(return_data.size)]:
                    revert with 0, 50
                if idx < mem[_97 + ceil32(return_data.size) + 32]:
                    revert with 0, 17
                if uint8(s) == 255:
                    revert with 0, 17
                if uint8(uint8(s) + 1) <= 50:
                    if idx - mem[_97 + ceil32(return_data.size) + 32]:
                        idx = idx - mem[_97 + ceil32(return_data.size) + 32]
                        s = uint8(s) + 1
                        continue 
                else:
                    if idx - mem[_97 + ceil32(return_data.size) + 32]:
                        call msg.sender with:
                           value idx - mem[_97 + ceil32(return_data.size) + 32] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}

function sub_748dcab0(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    mem[0] = msg.sender
    mem[32] = 2
    if 1 == bool(stor2[msg.sender]):
        mem[96] = 2
        require ext_code.size(stor10)
        staticcall stor10.WETH() with:
                gas gas_remaining wei
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[128] = ext_call.return_data[12 len 20]
        mem[160] = address(arg1)
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = msg.value
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor10)
        staticcall stor10.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args msg.value, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _78 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 223
        _80 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
        require _78 + (32 * _80) + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _80] = mem[ceil32(return_data.size) + _78 + 224 len 32 * _80]
        if 1 >= _80:
            revert with 0, 50
        _126 = mem[(2 * ceil32(return_data.size)) + 256]
        if mem[(2 * ceil32(return_data.size)) + 256] and arg2 > -1 / mem[(2 * ceil32(return_data.size)) + 256]:
            revert with 0, 17
        mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _126 * arg2 / 100 / 1000
        mem[mem[64] + 36] = 128
        idx = 0
        s = 128
        t = mem[64] + 164
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = block.timestamp
        require ext_code.size(stor10)
        call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value / 1000 wei
             gas gas_remaining wei
            args _126 * arg2 / 100 / 1000, Array(len=2, data=mem[mem[64] + 164 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if msg.value < msg.value / 1000:
            revert with 0, 17
        mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = 128
        mem[mem[64] + 132] = 2
        idx = 0
        s = 128
        t = mem[64] + 164
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 68] = address(arg3)
        mem[mem[64] + 100] = block.timestamp
        require ext_code.size(stor10)
        call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value - (msg.value / 1000) wei
             gas gas_remaining wei
            args 0, 128, address(arg3), block.timestamp, 2, mem[mem[64] + 164 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _196 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _198 = mem[_196]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _198
        require ext_code.size(address(arg1))
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _198
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _204 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_204] == bool(mem[_204])
    else:
        if stor5 != msg.sender:
            revert with 0, 'You are not allowed'
        mem[96] = 2
        require ext_code.size(stor10)
        staticcall stor10.WETH() with:
                gas gas_remaining wei
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[128] = ext_call.return_data[12 len 20]
        mem[160] = address(arg1)
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = msg.value
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor10)
        staticcall stor10.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args msg.value, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _79 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 223
        _81 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 193 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
        require _79 + (32 * _81) + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _81] = mem[ceil32(return_data.size) + _79 + 224 len 32 * _81]
        if 1 >= _81:
            revert with 0, 50
        _127 = mem[(2 * ceil32(return_data.size)) + 256]
        if mem[(2 * ceil32(return_data.size)) + 256] and arg2 > -1 / mem[(2 * ceil32(return_data.size)) + 256]:
            revert with 0, 17
        mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _127 * arg2 / 100 / 1000
        mem[mem[64] + 36] = 128
        idx = 0
        s = 128
        t = mem[64] + 164
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = block.timestamp
        require ext_code.size(stor10)
        call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value / 1000 wei
             gas gas_remaining wei
            args _127 * arg2 / 100 / 1000, Array(len=2, data=mem[mem[64] + 164 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if msg.value < msg.value / 1000:
            revert with 0, 17
        mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = 128
        mem[mem[64] + 132] = 2
        idx = 0
        s = 128
        t = mem[64] + 164
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 68] = address(arg3)
        mem[mem[64] + 100] = block.timestamp
        require ext_code.size(stor10)
        call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value - (msg.value / 1000) wei
             gas gas_remaining wei
            args 0, 128, address(arg3), block.timestamp, 2, mem[mem[64] + 164 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _197 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _199 = mem[_197]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _199
        require ext_code.size(address(arg1))
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _199
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _205 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_205] == bool(mem[_205])
}

function sub_af10abab(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[68] <= test266151307()
    require calldata.size > cd[68] + 35
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 < 96 or ceil32(32 * ('cd', 68).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    s = cd[68] + 36
    t = 128
    idx = 0
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[0] = msg.sender
    mem[32] = 2
    if 1 == bool(stor2[msg.sender]):
        mem[ceil32(32 * ('cd', 68).length) + 97] = 2
        mem[ceil32(32 * ('cd', 68).length) + 129] = stor8
        mem[ceil32(32 * ('cd', 68).length) + 161] = address(cd[4])
        mem[ceil32(32 * ('cd', 68).length) + 197] = this.address
        require ext_code.size(stor8)
        staticcall stor8.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(32 * ('cd', 68).length) + 193] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 193
        require return_data.size >= 32
        idx = 0
        s = mem[ceil32(32 * ('cd', 68).length) + 193]
        while idx < ('cd', 68).length:
            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[36]
            mem[mem[64] + 36] = 64
            _156 = mem[ceil32(32 * ('cd', 68).length) + 97]
            mem[mem[64] + 68] = mem[ceil32(32 * ('cd', 68).length) + 97]
            s = 0
            t = ceil32(32 * ('cd', 68).length) + 129
            u = mem[64] + 100
            while s < _156:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(stor10)
            staticcall stor10.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args cd[36], 64, mem[mem[64] + 68 len (32 * _156) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _214 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _216 = mem[_214]
            require mem[_214] <= test266151307()
            require _214 + return_data.size > _214 + mem[_214] + 31
            _218 = mem[_214 + mem[_214]]
            if mem[_214 + mem[_214]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_214 + mem[_214]]) + 1 < 0 or _214 + ceil32(return_data.size) + ceil32(32 * mem[_214 + mem[_214]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _214 + ceil32(return_data.size) + ceil32(32 * mem[_214 + mem[_214]]) + 1
            mem[_214 + ceil32(return_data.size)] = _218
            require _216 + (32 * _218) + 32 <= return_data.size
            t = _214 + _216 + 32
            u = _214 + ceil32(return_data.size) + 32
            s = 0
            while s < _218:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor8)
            staticcall stor8.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _268 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _270 = mem[_268]
            if 0 >= _218:
                revert with 0, 50
            if mem[_268] < mem[_214 + ceil32(return_data.size) + 32]:
            if 0 >= _218:
                revert with 0, 50
            _278 = mem[_214 + ceil32(return_data.size) + 32]
            if mem[_214 + ceil32(return_data.size) + 32] and 2 > -1 / mem[_214 + ceil32(return_data.size) + 32]:
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            _282 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[36]
            mem[mem[64] + 36] = 2 * _278
            mem[mem[64] + 68] = 160
            _286 = mem[ceil32(32 * ('cd', 68).length) + 97]
            mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 68).length) + 97]
            s = 0
            t = ceil32(32 * ('cd', 68).length) + 129
            u = mem[64] + 196
            while s < _286:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 100] = address(_282)
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(stor10)
            call stor10.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[36], 2 * _278, 160, address(_282), block.timestamp, mem[mem[64] + 164 len (32 * _286) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _306 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _308 = mem[_306]
            require mem[_306] <= test266151307()
            require _306 + return_data.size > _306 + mem[_306] + 31
            _310 = mem[_306 + mem[_306]]
            if mem[_306 + mem[_306]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_306 + mem[_306]]) + 1 < 0 or _306 + ceil32(return_data.size) + ceil32(32 * mem[_306 + mem[_306]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _306 + ceil32(return_data.size) + ceil32(32 * mem[_306 + mem[_306]]) + 1
            mem[_306 + ceil32(return_data.size)] = _310
            require _308 + (32 * _310) + 32 <= return_data.size
            t = _306 + _308 + 32
            u = _306 + ceil32(return_data.size) + 32
            s = 0
            while s < _310:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if _306 + _308 + (32 * _310) + 32 == -1:
                revert with 0, 17
            t = _306 + _308 + (32 * _310) + 33
            s = _270
            continue 
    else:
        if stor5 != msg.sender:
            revert with 0, 'You are not allowed'
        mem[ceil32(32 * ('cd', 68).length) + 97] = 2
        mem[ceil32(32 * ('cd', 68).length) + 129] = stor8
        mem[ceil32(32 * ('cd', 68).length) + 161] = address(cd[4])
        mem[ceil32(32 * ('cd', 68).length) + 197] = this.address
        require ext_code.size(stor8)
        staticcall stor8.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(32 * ('cd', 68).length) + 193] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 193
        require return_data.size >= 32
        idx = 0
        s = mem[ceil32(32 * ('cd', 68).length) + 193]
        while idx < ('cd', 68).length:
            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[36]
            mem[mem[64] + 36] = 64
            _157 = mem[ceil32(32 * ('cd', 68).length) + 97]
            mem[mem[64] + 68] = mem[ceil32(32 * ('cd', 68).length) + 97]
            s = 0
            t = ceil32(32 * ('cd', 68).length) + 129
            u = mem[64] + 100
            while s < _157:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(stor10)
            staticcall stor10.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args cd[36], 64, mem[mem[64] + 68 len (32 * _157) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _215 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _217 = mem[_215]
            require mem[_215] <= test266151307()
            require _215 + return_data.size > _215 + mem[_215] + 31
            _219 = mem[_215 + mem[_215]]
            if mem[_215 + mem[_215]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_215 + mem[_215]]) + 1 < 0 or _215 + ceil32(return_data.size) + ceil32(32 * mem[_215 + mem[_215]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _215 + ceil32(return_data.size) + ceil32(32 * mem[_215 + mem[_215]]) + 1
            mem[_215 + ceil32(return_data.size)] = _219
            require _217 + (32 * _219) + 32 <= return_data.size
            t = _215 + _217 + 32
            u = _215 + ceil32(return_data.size) + 32
            s = 0
            while s < _219:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor8)
            staticcall stor8.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _269 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _271 = mem[_269]
            if 0 >= _219:
                revert with 0, 50
            if mem[_269] < mem[_215 + ceil32(return_data.size) + 32]:
            if 0 >= _219:
                revert with 0, 50
            _279 = mem[_215 + ceil32(return_data.size) + 32]
            if mem[_215 + ceil32(return_data.size) + 32] and 2 > -1 / mem[_215 + ceil32(return_data.size) + 32]:
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            _284 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[36]
            mem[mem[64] + 36] = 2 * _279
            mem[mem[64] + 68] = 160
            _287 = mem[ceil32(32 * ('cd', 68).length) + 97]
            mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 68).length) + 97]
            s = 0
            t = ceil32(32 * ('cd', 68).length) + 129
            u = mem[64] + 196
            while s < _287:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 100] = address(_284)
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(stor10)
            call stor10.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[36], 2 * _279, 160, address(_284), block.timestamp, mem[mem[64] + 164 len (32 * _287) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _307 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _309 = mem[_307]
            require mem[_307] <= test266151307()
            require _307 + return_data.size > _307 + mem[_307] + 31
            _311 = mem[_307 + mem[_307]]
            if mem[_307 + mem[_307]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_307 + mem[_307]]) + 1 < 0 or _307 + ceil32(return_data.size) + ceil32(32 * mem[_307 + mem[_307]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _307 + ceil32(return_data.size) + ceil32(32 * mem[_307 + mem[_307]]) + 1
            mem[_307 + ceil32(return_data.size)] = _311
            require _309 + (32 * _311) + 32 <= return_data.size
            t = _307 + _309 + 32
            u = _307 + ceil32(return_data.size) + 32
            s = 0
            while s < _311:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if _307 + _309 + (32 * _311) + 32 == -1:
                revert with 0, 17
            t = _307 + _309 + (32 * _311) + 33
            s = _271
            continue 
}

function sub_89f50bef(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[68] <= test266151307()
    require calldata.size > cd[68] + 35
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 < 96 or ceil32(32 * ('cd', 68).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    s = cd[68] + 36
    t = 128
    idx = 0
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[0] = msg.sender
    mem[32] = 2
    if 1 == bool(stor2[msg.sender]):
        mem[ceil32(32 * ('cd', 68).length) + 97] = 2
        mem[64] = ceil32(32 * ('cd', 68).length) + 193
        mem[ceil32(32 * ('cd', 68).length) + 129] = stor8
        mem[ceil32(32 * ('cd', 68).length) + 161] = address(cd[4])
        idx = 0
        s = msg.value
        while idx < ('cd', 68).length:
            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[36]
            mem[mem[64] + 36] = 64
            _146 = mem[ceil32(32 * ('cd', 68).length) + 97]
            mem[mem[64] + 68] = mem[ceil32(32 * ('cd', 68).length) + 97]
            t = 0
            u = ceil32(32 * ('cd', 68).length) + 129
            v = mem[64] + 100
            while t < _146:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(stor10)
            staticcall stor10.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args cd[36], 64, mem[mem[64] + 68 len (32 * _146) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _204 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _206 = mem[_204]
            require mem[_204] <= test266151307()
            require _204 + return_data.size > _204 + mem[_204] + 31
            _208 = mem[_204 + mem[_204]]
            if mem[_204 + mem[_204]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_204 + mem[_204]]) + 1 < 0 or _204 + ceil32(return_data.size) + ceil32(32 * mem[_204 + mem[_204]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _204 + ceil32(return_data.size) + ceil32(32 * mem[_204 + mem[_204]]) + 1
            mem[_204 + ceil32(return_data.size)] = _208
            require _206 + (32 * _208) + 32 <= return_data.size
            u = _204 + _206 + 32
            v = _204 + ceil32(return_data.size) + 32
            t = 0
            while t < _208:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t + 1
                continue 
            if 0 >= _208:
                revert with 0, 50
            if mem[_204 + ceil32(return_data.size) + 32] > s:
                if s:
                    call msg.sender with:
                       value s wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if not _208:
                    revert with 0, 50
                _260 = mem[_204 + ceil32(return_data.size) + 32]
                if idx >= mem[96]:
                    revert with 0, 50
                _264 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[36]
                mem[mem[64] + 36] = 128
                _270 = mem[ceil32(32 * ('cd', 68).length) + 97]
                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 68).length) + 97]
                t = 0
                u = ceil32(32 * ('cd', 68).length) + 129
                v = mem[64] + 164
                while t < _270:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[mem[64] + 68] = address(_264)
                mem[mem[64] + 100] = block.timestamp
                require ext_code.size(stor10)
                call stor10.swapETHForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value _260 wei
                     gas gas_remaining wei
                    args cd[36], 128, address(_264), block.timestamp, mem[mem[64] + 132 len (32 * _270) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _296 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _298 = mem[_296]
                require mem[_296] <= test266151307()
                require _296 + return_data.size > _296 + mem[_296] + 31
                _300 = mem[_296 + mem[_296]]
                if mem[_296 + mem[_296]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_296 + mem[_296]]) + 1 < 0 or _296 + ceil32(return_data.size) + ceil32(32 * mem[_296 + mem[_296]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _296 + ceil32(return_data.size) + ceil32(32 * mem[_296 + mem[_296]]) + 1
                mem[_296 + ceil32(return_data.size)] = _300
                require _298 + (32 * _300) + 32 <= return_data.size
                u = _296 + _298 + 32
                v = _296 + ceil32(return_data.size) + 32
                t = 0
                while t < _300:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t + 1
                    continue 
                if 0 >= mem[_204 + ceil32(return_data.size)]:
                    revert with 0, 50
                if s < mem[_204 + ceil32(return_data.size) + 32]:
                    revert with 0, 17
                if s - mem[_204 + ceil32(return_data.size) + 32] > 0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - mem[_204 + ceil32(return_data.size) + 32]
                    continue 
                if s - mem[_204 + ceil32(return_data.size) + 32]:
                    call msg.sender with:
                       value s - mem[_204 + ceil32(return_data.size) + 32] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    else:
        if stor5 != msg.sender:
            revert with 0, 'You are not allowed'
        mem[ceil32(32 * ('cd', 68).length) + 97] = 2
        mem[64] = ceil32(32 * ('cd', 68).length) + 193
        mem[ceil32(32 * ('cd', 68).length) + 129] = stor8
        mem[ceil32(32 * ('cd', 68).length) + 161] = address(cd[4])
        idx = 0
        s = msg.value
        while idx < ('cd', 68).length:
            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[36]
            mem[mem[64] + 36] = 64
            _147 = mem[ceil32(32 * ('cd', 68).length) + 97]
            mem[mem[64] + 68] = mem[ceil32(32 * ('cd', 68).length) + 97]
            t = 0
            u = ceil32(32 * ('cd', 68).length) + 129
            v = mem[64] + 100
            while t < _147:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(stor10)
            staticcall stor10.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args cd[36], 64, mem[mem[64] + 68 len (32 * _147) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _205 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _207 = mem[_205]
            require mem[_205] <= test266151307()
            require _205 + return_data.size > _205 + mem[_205] + 31
            _209 = mem[_205 + mem[_205]]
            if mem[_205 + mem[_205]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_205 + mem[_205]]) + 1 < 0 or _205 + ceil32(return_data.size) + ceil32(32 * mem[_205 + mem[_205]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _205 + ceil32(return_data.size) + ceil32(32 * mem[_205 + mem[_205]]) + 1
            mem[_205 + ceil32(return_data.size)] = _209
            require _207 + (32 * _209) + 32 <= return_data.size
            u = _205 + _207 + 32
            v = _205 + ceil32(return_data.size) + 32
            t = 0
            while t < _209:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t + 1
                continue 
            if 0 >= _209:
                revert with 0, 50
            if mem[_205 + ceil32(return_data.size) + 32] > s:
                if s:
                    call msg.sender with:
                       value s wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if not _209:
                    revert with 0, 50
                _262 = mem[_205 + ceil32(return_data.size) + 32]
                if idx >= mem[96]:
                    revert with 0, 50
                _267 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[36]
                mem[mem[64] + 36] = 128
                _271 = mem[ceil32(32 * ('cd', 68).length) + 97]
                mem[mem[64] + 132] = mem[ceil32(32 * ('cd', 68).length) + 97]
                t = 0
                u = ceil32(32 * ('cd', 68).length) + 129
                v = mem[64] + 164
                while t < _271:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[mem[64] + 68] = address(_267)
                mem[mem[64] + 100] = block.timestamp
                require ext_code.size(stor10)
                call stor10.swapETHForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value _262 wei
                     gas gas_remaining wei
                    args cd[36], 128, address(_267), block.timestamp, mem[mem[64] + 132 len (32 * _271) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _297 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _299 = mem[_297]
                require mem[_297] <= test266151307()
                require _297 + return_data.size > _297 + mem[_297] + 31
                _301 = mem[_297 + mem[_297]]
                if mem[_297 + mem[_297]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_297 + mem[_297]]) + 1 < 0 or _297 + ceil32(return_data.size) + ceil32(32 * mem[_297 + mem[_297]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _297 + ceil32(return_data.size) + ceil32(32 * mem[_297 + mem[_297]]) + 1
                mem[_297 + ceil32(return_data.size)] = _301
                require _299 + (32 * _301) + 32 <= return_data.size
                u = _297 + _299 + 32
                v = _297 + ceil32(return_data.size) + 32
                t = 0
                while t < _301:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t + 1
                    continue 
                if 0 >= mem[_205 + ceil32(return_data.size)]:
                    revert with 0, 50
                if s < mem[_205 + ceil32(return_data.size) + 32]:
                    revert with 0, 17
                if s - mem[_205 + ceil32(return_data.size) + 32] > 0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - mem[_205 + ceil32(return_data.size) + 32]
                    continue 
                if s - mem[_205 + ceil32(return_data.size) + 32]:
                    call msg.sender with:
                       value s - mem[_205 + ceil32(return_data.size) + 32] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    if s:
        call msg.sender with:
           value s wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_74b18849(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 == address(arg4)
    mem[0] = msg.sender
    mem[32] = 2
    if 1 == bool(stor2[msg.sender]):
        mem[96] = 2
        mem[192] = 2
        mem[128] = stor8
        mem[160] = address(arg1)
        mem[224] = address(arg1)
        mem[256] = stor8
        mem[324] = 128
        mem[420] = 2
        idx = 0
        s = 128
        t = 452
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[356] = this.address
        mem[388] = block.timestamp
        require ext_code.size(stor10)
        call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value arg3 wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp, 2, mem[452 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[292] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Your Money Burn! Stop!'
        mem[ceil32(return_data.size) + 292] = this.address
        mem[ceil32(return_data.size) + 324] = uniswapV2RouterAddress
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, uniswapV2RouterAddress
        mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 288
        require return_data.size >= 32
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 324] = 0
            mem[(2 * ceil32(return_data.size)) + 356] = 160
            mem[(2 * ceil32(return_data.size)) + 452] = 2
            idx = 0
            s = 224
            t = (2 * ceil32(return_data.size)) + 484
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 388] = address(arg4)
            mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp
            require ext_code.size(stor10)
            call stor10.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 484 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if msg.value < arg3:
                revert with 0, 17
            idx = msg.value - arg3
            s = 0
            while idx:
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg2
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[96]
                t = 0
                u = 128
                v = mem[64] + 100
                while t < mem[96]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor10)
                staticcall stor10.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _456 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _460 = mem[_456]
                require mem[_456] <= test266151307()
                require _456 + return_data.size > _456 + mem[_456] + 31
                _464 = mem[_456 + mem[_456]]
                if mem[_456 + mem[_456]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_456 + mem[_456]]) + 1 < 0 or _456 + ceil32(return_data.size) + ceil32(32 * mem[_456 + mem[_456]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _456 + ceil32(return_data.size) + ceil32(32 * mem[_456 + mem[_456]]) + 1
                mem[_456 + ceil32(return_data.size)] = _464
                require _460 + (32 * _464) + 32 <= return_data.size
                u = _456 + _460 + 32
                v = _456 + ceil32(return_data.size) + 32
                t = 0
                while t < _464:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t + 1
                    continue 
                if 0 >= _464:
                    revert with 0, 50
                if mem[_456 + ceil32(return_data.size) + 32] > idx:
                    if idx:
                        call msg.sender with:
                           value idx wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not _464:
                        revert with 0, 50
                    _540 = mem[_456 + ceil32(return_data.size) + 32]
                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = mem[96]
                    t = 0
                    u = 128
                    v = mem[64] + 164
                    while t < mem[96]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[mem[64] + 68] = address(arg4)
                    mem[mem[64] + 100] = block.timestamp
                    require ext_code.size(stor10)
                    call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value _540 wei
                         gas gas_remaining wei
                        args 0, 128, address(arg4), block.timestamp, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= mem[_456 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if idx < mem[_456 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if uint8(uint8(s) + 1) <= 50:
                        if idx - mem[_456 + ceil32(return_data.size) + 32]:
                            idx = idx - mem[_456 + ceil32(return_data.size) + 32]
                            s = uint8(s) + 1
                            continue 
                    else:
                        if idx - mem[_456 + ceil32(return_data.size) + 32]:
                            call msg.sender with:
                               value idx - mem[_456 + ceil32(return_data.size) + 32] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[(2 * ceil32(return_data.size)) + 292] = uniswapV2RouterAddress
            mem[(2 * ceil32(return_data.size)) + 324] = stor9
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args uniswapV2RouterAddress, stor9
            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 288
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 324] = 0
            mem[(4 * ceil32(return_data.size)) + 356] = 160
            mem[(4 * ceil32(return_data.size)) + 452] = 2
            idx = 0
            s = 224
            t = (4 * ceil32(return_data.size)) + 484
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 388] = address(arg4)
            mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp
            require ext_code.size(stor10)
            call stor10.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(arg4), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 484 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if msg.value < arg3:
                revert with 0, 17
            idx = msg.value - arg3
            s = 0
            while idx:
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg2
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[96]
                t = 0
                u = 128
                v = mem[64] + 100
                while t < mem[96]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor10)
                staticcall stor10.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _457 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _461 = mem[_457]
                require mem[_457] <= test266151307()
                require _457 + return_data.size > _457 + mem[_457] + 31
                _465 = mem[_457 + mem[_457]]
                if mem[_457 + mem[_457]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_457 + mem[_457]]) + 1 < 0 or _457 + ceil32(return_data.size) + ceil32(32 * mem[_457 + mem[_457]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _457 + ceil32(return_data.size) + ceil32(32 * mem[_457 + mem[_457]]) + 1
                mem[_457 + ceil32(return_data.size)] = _465
                require _461 + (32 * _465) + 32 <= return_data.size
                u = _457 + _461 + 32
                v = _457 + ceil32(return_data.size) + 32
                t = 0
                while t < _465:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t + 1
                    continue 
                if 0 >= _465:
                    revert with 0, 50
                if mem[_457 + ceil32(return_data.size) + 32] > idx:
                    if idx:
                        call msg.sender with:
                           value idx wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not _465:
                        revert with 0, 50
                    _542 = mem[_457 + ceil32(return_data.size) + 32]
                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = mem[96]
                    t = 0
                    u = 128
                    v = mem[64] + 164
                    while t < mem[96]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[mem[64] + 68] = address(arg4)
                    mem[mem[64] + 100] = block.timestamp
                    require ext_code.size(stor10)
                    call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value _542 wei
                         gas gas_remaining wei
                        args 0, 128, address(arg4), block.timestamp, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= mem[_457 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if idx < mem[_457 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if uint8(uint8(s) + 1) <= 50:
                        if idx - mem[_457 + ceil32(return_data.size) + 32]:
                            idx = idx - mem[_457 + ceil32(return_data.size) + 32]
                            s = uint8(s) + 1
                            continue 
                    else:
                        if idx - mem[_457 + ceil32(return_data.size) + 32]:
                            call msg.sender with:
                               value idx - mem[_457 + ceil32(return_data.size) + 32] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
    else:
        if stor5 != msg.sender:
            revert with 0, 'You are not allowed'
        mem[96] = 2
        mem[192] = 2
        mem[128] = stor8
        mem[160] = address(arg1)
        mem[224] = address(arg1)
        mem[256] = stor8
        mem[324] = 128
        mem[420] = 2
        idx = 0
        s = 128
        t = 452
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[356] = this.address
        mem[388] = block.timestamp
        require ext_code.size(stor10)
        call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value arg3 wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp, 2, mem[452 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[292] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Your Money Burn! Stop!'
        mem[ceil32(return_data.size) + 292] = this.address
        mem[ceil32(return_data.size) + 324] = uniswapV2RouterAddress
        require ext_code.size(address(arg1))
        staticcall address(arg1).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, uniswapV2RouterAddress
        mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 288
        require return_data.size >= 32
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 324] = 0
            mem[(2 * ceil32(return_data.size)) + 356] = 160
            mem[(2 * ceil32(return_data.size)) + 452] = 2
            idx = 0
            s = 224
            t = (2 * ceil32(return_data.size)) + 484
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 388] = address(arg4)
            mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp
            require ext_code.size(stor10)
            call stor10.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(arg4), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 484 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if msg.value < arg3:
                revert with 0, 17
            idx = msg.value - arg3
            s = 0
            while idx:
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg2
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[96]
                t = 0
                u = 128
                v = mem[64] + 100
                while t < mem[96]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor10)
                staticcall stor10.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _458 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _462 = mem[_458]
                require mem[_458] <= test266151307()
                require _458 + return_data.size > _458 + mem[_458] + 31
                _466 = mem[_458 + mem[_458]]
                if mem[_458 + mem[_458]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_458 + mem[_458]]) + 1 < 0 or _458 + ceil32(return_data.size) + ceil32(32 * mem[_458 + mem[_458]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _458 + ceil32(return_data.size) + ceil32(32 * mem[_458 + mem[_458]]) + 1
                mem[_458 + ceil32(return_data.size)] = _466
                require _462 + (32 * _466) + 32 <= return_data.size
                u = _458 + _462 + 32
                v = _458 + ceil32(return_data.size) + 32
                t = 0
                while t < _466:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t + 1
                    continue 
                if 0 >= _466:
                    revert with 0, 50
                if mem[_458 + ceil32(return_data.size) + 32] > idx:
                    if idx:
                        call msg.sender with:
                           value idx wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not _466:
                        revert with 0, 50
                    _544 = mem[_458 + ceil32(return_data.size) + 32]
                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = mem[96]
                    t = 0
                    u = 128
                    v = mem[64] + 164
                    while t < mem[96]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[mem[64] + 68] = address(arg4)
                    mem[mem[64] + 100] = block.timestamp
                    require ext_code.size(stor10)
                    call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value _544 wei
                         gas gas_remaining wei
                        args 0, 128, address(arg4), block.timestamp, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= mem[_458 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if idx < mem[_458 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if uint8(uint8(s) + 1) <= 50:
                        if idx - mem[_458 + ceil32(return_data.size) + 32]:
                            idx = idx - mem[_458 + ceil32(return_data.size) + 32]
                            s = uint8(s) + 1
                            continue 
                    else:
                        if idx - mem[_458 + ceil32(return_data.size) + 32]:
                            call msg.sender with:
                               value idx - mem[_458 + ceil32(return_data.size) + 32] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[(2 * ceil32(return_data.size)) + 292] = uniswapV2RouterAddress
            mem[(2 * ceil32(return_data.size)) + 324] = stor9
            require ext_code.size(address(arg1))
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args uniswapV2RouterAddress, stor9
            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 288
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 324] = 0
            mem[(4 * ceil32(return_data.size)) + 356] = 160
            mem[(4 * ceil32(return_data.size)) + 452] = 2
            idx = 0
            s = 224
            t = (4 * ceil32(return_data.size)) + 484
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 388] = address(arg4)
            mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp
            require ext_code.size(stor10)
            call stor10.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(arg4), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 484 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if msg.value < arg3:
                revert with 0, 17
            idx = msg.value - arg3
            s = 0
            while idx:
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg2
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[96]
                t = 0
                u = 128
                v = mem[64] + 100
                while t < mem[96]:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                require ext_code.size(stor10)
                staticcall stor10.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _459 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _463 = mem[_459]
                require mem[_459] <= test266151307()
                require _459 + return_data.size > _459 + mem[_459] + 31
                _467 = mem[_459 + mem[_459]]
                if mem[_459 + mem[_459]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_459 + mem[_459]]) + 1 < 0 or _459 + ceil32(return_data.size) + ceil32(32 * mem[_459 + mem[_459]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _459 + ceil32(return_data.size) + ceil32(32 * mem[_459 + mem[_459]]) + 1
                mem[_459 + ceil32(return_data.size)] = _467
                require _463 + (32 * _467) + 32 <= return_data.size
                u = _459 + _463 + 32
                v = _459 + ceil32(return_data.size) + 32
                t = 0
                while t < _467:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t + 1
                    continue 
                if 0 >= _467:
                    revert with 0, 50
                if mem[_459 + ceil32(return_data.size) + 32] > idx:
                    if idx:
                        call msg.sender with:
                           value idx wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not _467:
                        revert with 0, 50
                    _546 = mem[_459 + ceil32(return_data.size) + 32]
                    mem[mem[64]] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = mem[96]
                    t = 0
                    u = 128
                    v = mem[64] + 164
                    while t < mem[96]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[mem[64] + 68] = address(arg4)
                    mem[mem[64] + 100] = block.timestamp
                    require ext_code.size(stor10)
                    call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value _546 wei
                         gas gas_remaining wei
                        args 0, 128, address(arg4), block.timestamp, mem[mem[64] + 132 len (32 * mem[96]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 0 >= mem[_459 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if idx < mem[_459 + ceil32(return_data.size) + 32]:
                        revert with 0, 17
                    if uint8(s) == 255:
                        revert with 0, 17
                    if uint8(uint8(s) + 1) <= 50:
                        if idx - mem[_459 + ceil32(return_data.size) + 32]:
                            idx = idx - mem[_459 + ceil32(return_data.size) + 32]
                            s = uint8(s) + 1
                            continue 
                    else:
                        if idx - mem[_459 + ceil32(return_data.size) + 32]:
                            call msg.sender with:
                               value idx - mem[_459 + ceil32(return_data.size) + 32] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
}



}
