contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 stor0;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint8 sub_1fcbc407; offset 160
address owner;
uint256 SPARE;
uint128 sub_004c0978; offset 160
address stor7;
address FIATAddress;
address sub_6e41159cAddress;
address ROUTERAddress;

function sub_004c0978(?) {
    return sub_004c0978
}

function totalSupply() {
    return totalSupply
}

function FIAT() {
    return FIATAddress
}

function sub_1fcbc407(?) {
    if sub_1fcbc407 >= 2:
        revert with 0, 33
    return sub_1fcbc407
}

function ROUTER() {
    return ROUTERAddress
}

function sub_6e41159c(?) {
    return sub_6e41159cAddress
}

function SPARE() {
    return SPARE
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_6769a17f(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    SPARE = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_e3bb8e04(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6e41159cAddress = address(arg1)
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

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not eth.balance(this.address):
        revert with 0, 'Balance must be higher than zero'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    ROUTERAddress = arg1
    call FIATAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ROUTERAddress, 10000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if stor0[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    stor0[address(msg.sender)] -= arg2
    if stor0[arg1] > !arg2:
        revert with 0, 17
    stor0[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
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

function sub_9f654fa4(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall FIATAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        call FIATAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args ROUTERAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call FIATAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_589a1fbf(?) {
    staticcall stor7.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    staticcall stor7.getRoundData(uint80 arg1) with:
            gas gas_remaining wei
           args Mask(80, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[96] <= 0:
        revert with 0, 'Round not complete'
    staticcall stor7.getRoundData(uint80 arg1) with:
            gas gas_remaining wei
           args sub_004c0978
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[96] <= 0:
        revert with 0, 'Round not complete'
    return ext_call.return_data[32], ext_call.return_data[32]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if stor0[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    stor0[address(arg1)] -= arg3
    if stor0[arg2] > !arg3:
        revert with 0, 17
    stor0[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 != owner:
        return 0
    if sub_1fcbc407 > 1:
        revert with 0, 33
    if not sub_1fcbc407:
        staticcall FIATAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0]
    staticcall stor7.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    staticcall stor7.getRoundData(uint80 arg1) with:
            gas gas_remaining wei
           args Mask(80, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[96] <= 0:
        revert with 0, 'Round not complete'
    if eth.balance(this.address) / 10^18 and ext_call.return_data[32] / 100 * 10^6 > -1 / eth.balance(this.address) / 10^18:
        revert with 0, 17
    if eth.balance(this.address) / 10^18 * ext_call.return_data[32] / 100 * 10^6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    return (10^18 * eth.balance(this.address) / 10^18 * ext_call.return_data[32] / 100 * 10^6)
}

function sub_d5132dd2(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 100 > !block.timestamp:
        revert with 0, 17
    mem[96] = 2
    mem[128] = sub_6e41159cAddress
    mem[160] = FIATAddress
    if eth.balance(this.address) < 10^17:
        revert with 0, 17
    mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[196] = 0
    mem[228] = 128
    mem[324] = 2
    idx = 0
    s = 128
    t = 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[260] = this.address
    mem[292] = block.timestamp + 100
    call ROUTERAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value eth.balance(this.address) - 10^17 wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp + 100, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _26 = mem[192 len 4], 0
    require mem[192 len 4], 0 <= test266151307()
    require mem[192 len 4], 0 + 223 < return_data.size + 192
    _27 = mem[mem[192 len 4], 0 + 192]
    if mem[mem[192 len 4], 0 + 192] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], 0 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], 0 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], 0 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
    require (32 * _27) + _26 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224 len ceil32(32 * _27)] = mem[_26 + 224 len ceil32(32 * _27)]
    staticcall stor7.latestRoundData() with:
            gas gas_remaining wei
    mem[mem[64] len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _41 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 160
    require mem[_41] == mem[_41 + 22 len 10]
    require mem[_41 + 128] == mem[_41 + 150 len 10]
    sub_004c0978 = mem[_41 + 22 len 10]
    sub_1fcbc407 = 0
}

function sub_a1943bd1(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 100 > !block.timestamp:
        revert with 0, 17
    mem[96] = 2
    mem[128] = FIATAddress
    mem[160] = sub_6e41159cAddress
    mem[196] = this.address
    staticcall FIATAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 228] = 0
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = block.timestamp + 100
    call ROUTERAddress.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 100, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _30 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223 < ceil32(return_data.size) + return_data.size + 192
    _31 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = _31
    require (32 * _31) + _30 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 224 len ceil32(32 * _31)] = mem[ceil32(return_data.size) + _30 + 224 len ceil32(32 * _31)]
    staticcall stor7.latestRoundData() with:
            gas gas_remaining wei
    mem[mem[64] len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _45 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 160
    require mem[_45] == mem[_45 + 22 len 10]
    require mem[_45 + 128] == mem[_45 + 150 len 10]
    sub_004c0978 = mem[_45 + 22 len 10]
    sub_1fcbc407 = 1
}

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
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

function sub_c63f959e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_1fcbc407 > 1:
        revert with 0, 33
    if sub_1fcbc407:
        FIATAddress = address(arg1)
        call FIATAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args ROUTERAddress, 10000000 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if 100 > !block.timestamp:
            revert with 0, 17
        mem[96] = 2
        mem[128] = FIATAddress
        mem[160] = address(arg1)
        mem[196] = this.address
        staticcall FIATAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 228] = 0
        mem[ceil32(return_data.size) + 260] = 160
        mem[ceil32(return_data.size) + 356] = 2
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 292] = this.address
        mem[ceil32(return_data.size) + 324] = block.timestamp + 100
        call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 100, 2, mem[ceil32(return_data.size) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _30 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223 < ceil32(return_data.size) + return_data.size + 192
        _31 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _31
        require (32 * _31) + _30 + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 224 len ceil32(32 * _31)] = mem[ceil32(return_data.size) + _30 + 224 len ceil32(32 * _31)]
        FIATAddress = address(arg1)
        mem[mem[64] + 4] = ROUTERAddress
        mem[mem[64] + 36] = 10000000 * 10^18
        call FIATAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args ROUTERAddress, 10000000 * 10^18
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _41 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_41] == bool(mem[_41])
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        if sub_1fcbc407 > 1:
            revert with 0, 33
        if not sub_1fcbc407:
            if 100 > !block.timestamp:
                revert with 0, 17
            mem[160] = sub_6e41159cAddress
            mem[192] = FIATAddress
            if eth.balance(this.address) < 10^17:
                revert with 0, 17
            mem[224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[228] = 0
            mem[260] = 128
            mem[356] = 2
            idx = 0
            s = 160
            t = 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[292] = this.address
            mem[324] = block.timestamp + 100
            call ROUTERAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value eth.balance(this.address) - 10^17 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp + 100, 2, mem[388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            require mem[224 len 4], 0 <= test266151307()
            require mem[224 len 4], 0 + 255 < return_data.size + 224
            if mem[mem[224 len 4], 0 + 224] > test266151307():
                revert with 0, 65
            if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                revert with 0, 65
            require (32 * mem[mem[224 len 4], 0 + 224]) + mem[224 len 4], 0 + 32 <= return_data.size
    else:
        if unknown_0x70a08231(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x313ce567(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x18160ddd(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x004c0978(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_004c0978
                    if uint32(call.func_hash) >> 224 != name():
                        require approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224
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
                    if bool(stor3.length):
                        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                            revert with 0, 34
                        if bool(stor3.length):
                            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor3.length):
                                if 31 < uint255(stor3.length) * 0.5:
                                    mem[160] = uint256(stor3.field_0)
                                    idx = 160
                                    s = 0
                                    while (uint255(stor3.length) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor3[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                                mem[160] = 256 * stor3.length.field_8
                        else:
                            if bool(stor3.length) == stor3.length.field_1 < 32:
                                revert with 0, 34
                            if stor3.length.field_1:
                                if 31 < stor3.length.field_1:
                                    mem[160] = uint256(stor3.field_0)
                                    idx = 160
                                    s = 0
                                    while stor3.length.field_1 + 128 > idx:
                                        mem[idx + 32] = stor3[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                                mem[160] = 256 * stor3.length.field_8
                        mem[ceil32(uint255(stor3.length) * 0.5) + 224 len ceil32(uint255(stor3.length) * 0.5)] = mem[160 len ceil32(uint255(stor3.length) * 0.5)]
                        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
                            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 224] = 0
                        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
                    if bool(stor3.length) == stor3.length.field_1 < 32:
                        revert with 0, 34
                    if bool(stor3.length):
                        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor3.length):
                            if 31 < uint255(stor3.length) * 0.5:
                                mem[160] = uint256(stor3.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor3.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor3[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                            mem[160] = 256 * stor3.length.field_8
                    else:
                        if bool(stor3.length) == stor3.length.field_1 < 32:
                            revert with 0, 34
                        if stor3.length.field_1:
                            if 31 < stor3.length.field_1:
                                mem[160] = uint256(stor3.field_0)
                                idx = 160
                                s = 0
                                while stor3.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor3[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                            mem[160] = 256 * stor3.length.field_8
                    mem[ceil32(stor3.length.field_1) + 224 len ceil32(stor3.length.field_1)] = mem[160 len ceil32(stor3.length.field_1)]
                    if ceil32(stor3.length.field_1) > stor3.length.field_1:
                        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 224] = 0
                    return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 224 len 2 * ceil32(stor3.length.field_1)]), 
                if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalSupply
                if unknown_0x1faf0d6a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return FIATAddress
                if unknown_0x1fcbc407(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if sub_1fcbc407 >= 2:
                        revert with 0, 33
                    return sub_1fcbc407
                require unknown_0x23b872dd(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 96
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                if not address(arg1):
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(arg2):
                    revert with 0, 'ERC20: transfer to the zero address'
                if stor0[address(arg1)] < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
                stor0[address(arg1)] -= arg3
                if stor0[address(arg2)] > !arg3:
                    revert with 0, 17
                stor0[address(arg2)] += arg3
                emit Transfer(arg3, address(arg1), address(arg2));
                if allowance[address(arg1)][msg.sender] < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                if not address(arg1):
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
                emit Approval((allowance[address(arg1)][msg.sender] - arg3), address(arg1), msg.sender);
                return 1
            if unknown_0x3ccfd60b(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 18
                if unknown_0x32fe7b26(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return ROUTERAddress
                require unknown_0x39509351(?????) == uint32(call.func_hash) >> 224
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
                return 1
            if unknown_0x3ccfd60b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not eth.balance(this.address):
                    revert with 0, 'Balance must be higher than zero'
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if uint32(call.func_hash) >> 224 != unknown_0x589a1fbf(?????):
                if uint32(call.func_hash) >> 224 != unknown_0x6769a17f(?????):
                    require unknown_0x6e41159c(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sub_6e41159cAddress
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                SPARE = arg1
            require not msg.value
            staticcall stor7.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            staticcall stor7.getRoundData(uint80 arg1) with:
                    gas gas_remaining wei
                   args Mask(80, 0, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if ext_call.return_data[96] <= 0:
                revert with 0, 'Round not complete'
            staticcall stor7.getRoundData(uint80 arg1) with:
                    gas gas_remaining wei
                   args sub_004c0978
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if ext_call.return_data[96] <= 0:
                revert with 0, 'Round not complete'
            return ext_call.return_data[32], ext_call.return_data[32]
        if unknown_0xa457c2d7(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x8da5cb5b(?????) > uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0x70a08231(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x715018a6(?????):
                        require unknown_0x856c1da1(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return SPARE
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    owner = 0
                    emit OwnershipTransferred(owner, 0);
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if address(arg1) != owner:
                    return 0
                if sub_1fcbc407 > 1:
                    revert with 0, 33
                if not sub_1fcbc407:
                    staticcall FIATAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                staticcall stor7.latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                staticcall stor7.getRoundData(uint80 arg1) with:
                        gas gas_remaining wei
                       args Mask(80, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                if ext_call.return_data[96] <= 0:
                    revert with 0, 'Round not complete'
                if eth.balance(this.address) / 10^18 and ext_call.return_data[32] / 100 * 10^6 > -1 / eth.balance(this.address) / 10^18:
                    revert with 0, 17
                if eth.balance(this.address) / 10^18 * ext_call.return_data[32] / 100 * 10^6 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                return (10^18 * eth.balance(this.address) / 10^18 * ext_call.return_data[32] / 100 * 10^6)
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224:
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
            if unknown_0x9f654fa4(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                staticcall FIATAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    call FIATAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args ROUTERAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    call FIATAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                require unknown_0xa1943bd1(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if 100 > !block.timestamp:
                    revert with 0, 17
                mem[128] = 2
                mem[160] = FIATAddress
                mem[192] = sub_6e41159cAddress
                mem[228] = this.address
                staticcall FIATAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 228] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 260] = 0
                mem[ceil32(return_data.size) + 292] = 160
                mem[ceil32(return_data.size) + 388] = 2
                idx = 0
                s = 160
                t = ceil32(return_data.size) + 420
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + 324] = this.address
                mem[ceil32(return_data.size) + 356] = block.timestamp + 100
                call ROUTERAddress.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 100, 2, mem[ceil32(return_data.size) + 420 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _495 = mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                require mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 255 < ceil32(return_data.size) + return_data.size + 224
                _507 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                    revert with 0, 65
                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                mem[(2 * ceil32(return_data.size)) + 224] = _507
                require (32 * _507) + _495 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 256 len ceil32(32 * _507)] = mem[ceil32(return_data.size) + _495 + 256 len ceil32(32 * _507)]
                staticcall stor7.latestRoundData() with:
                        gas gas_remaining wei
                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _580 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 160
                require mem[_580] == mem[_580 + 22 len 10]
                require mem[_580 + 128] == mem[_580 + 150 len 10]
                sub_004c0978 = mem[_580 + 22 len 10]
                sub_1fcbc407 = 1
        else:
            if unknown_0xd5132dd2(?????) <= uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0xd5132dd2(?????):
                    if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        return allowance[address(arg1)][address(arg2)]
                    if unknown_0xe3bb8e04(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        sub_6e41159cAddress = address(arg1)
                    else:
                        require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(arg1):
                            revert with 0, 'Ownable: new owner is the zero address'
                        owner = address(arg1)
                        emit OwnershipTransferred(owner, address(arg1));
                else:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if 100 > !block.timestamp:
                        revert with 0, 17
                    mem[128] = 2
                    mem[160] = sub_6e41159cAddress
                    mem[192] = FIATAddress
                    if eth.balance(this.address) < 10^17:
                        revert with 0, 17
                    mem[224] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                    mem[228] = 0
                    mem[260] = 128
                    mem[356] = 2
                    idx = 0
                    s = 160
                    t = 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[292] = this.address
                    mem[324] = block.timestamp + 100
                    call ROUTERAddress.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value eth.balance(this.address) - 10^17 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp + 100, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _497 = mem[224 len 4], 0
                    require mem[224 len 4], 0 <= test266151307()
                    require mem[224 len 4], 0 + 255 < return_data.size + 224
                    _509 = mem[mem[224 len 4], 0 + 224]
                    if mem[mem[224 len 4], 0 + 224] > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], 0 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], 0 + 224]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], 0 + 224]) + 225
                    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
                    require (32 * _509) + _497 + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 256 len ceil32(32 * _509)] = mem[_497 + 256 len ceil32(32 * _509)]
                    staticcall stor7.latestRoundData() with:
                            gas gas_remaining wei
                    mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _582 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 160
                    require mem[_582] == mem[_582 + 22 len 10]
                    require mem[_582 + 128] == mem[_582 + 150 len 10]
                    sub_004c0978 = mem[_582 + 22 len 10]
                    sub_1fcbc407 = 0
            else:
                if unknown_0xa457c2d7(?????) == uint32(call.func_hash) >> 224:
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
                if unknown_0xa9059cbb(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not address(arg1):
                        revert with 0, 'ERC20: transfer to the zero address'
                    if stor0[address(msg.sender)] < arg2:
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    stor0[address(msg.sender)] -= arg2
                    if stor0[address(arg1)] > !arg2:
                        revert with 0, 17
                    stor0[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, address(arg1));
                    return 1
                if unknown_0xc0d78655(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    ROUTERAddress = address(arg1)
                    call FIATAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args ROUTERAddress, 10000000 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    require unknown_0xc63f959e(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if sub_1fcbc407 > 1:
                        revert with 0, 33
                    if sub_1fcbc407:
                        FIATAddress = address(arg1)
                        call FIATAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args ROUTERAddress, 10000000 * 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if 100 > !block.timestamp:
                            revert with 0, 17
                        mem[128] = 2
                        mem[160] = FIATAddress
                        mem[192] = address(arg1)
                        mem[228] = this.address
                        staticcall FIATAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 228] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 260] = 0
                        mem[ceil32(return_data.size) + 292] = 160
                        mem[ceil32(return_data.size) + 388] = 2
                        idx = 0
                        s = 160
                        t = ceil32(return_data.size) + 420
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(return_data.size) + 324] = this.address
                        mem[ceil32(return_data.size) + 356] = block.timestamp + 100
                        call ROUTERAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 100, 2, mem[ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 224
                        require return_data.size >= 32
                        _496 = mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 255 < ceil32(return_data.size) + return_data.size + 224
                        _508 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
                            revert with 0, 65
                        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
                        mem[(2 * ceil32(return_data.size)) + 224] = _508
                        require (32 * _508) + _496 + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 256 len ceil32(32 * _508)] = mem[ceil32(return_data.size) + _496 + 256 len ceil32(32 * _508)]
                        FIATAddress = address(arg1)
                        mem[mem[64] + 4] = ROUTERAddress
                        mem[mem[64] + 36] = 10000000 * 10^18
                        call FIATAddress.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args ROUTERAddress, 10000000 * 10^18
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _581 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_581] == bool(mem[_581])
}



}
