contract main {




// =====================  Runtime code  =====================


#
#  - sub_1fcfb2b5(?)
#  - sub_3714131d(?)
#  - sub_900ff1e2(?)
#  - sub_bc4f2f09(?)
#
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_1b1e5b9e(?) payable {
  stop
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x294f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function show(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if arg1 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_ba5d9481(?) {
    require calldata.size - 4 >= 96
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[420 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[420 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 'show2(address,uint)'
    if ext_call.success:
    if return_data.size:
        revert with ext_call.return_data[0 len return_data.size]
    revert with 0, 32, 41, 0x29416464726573733a206c6f772d6c6576656c2063616c6c2077697468207661, mem[347 len 9]
}

function sub_f0a88d8d(?) {
    require calldata.size - 4 >= 96
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[420 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[420 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 'show2(address,uint256)'
    if ext_call.success:
    if return_data.size:
        revert with ext_call.return_data[0 len return_data.size]
    revert with 0, 32, 41, 0x29416464726573733a206c6f772d6c6576656c2063616c6c2077697468207661, mem[347 len 9]
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2945524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2945524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_40482946(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 32
    mem[(32 * arg3.length) + 160] = 'getAmountsOut(uint256,address[])'
    mem[(32 * arg3.length) + 228] = arg2
    mem[(32 * arg3.length) + 260] = 64
    mem[(32 * arg3.length) + 292] = arg3.length
    mem[(32 * arg3.length) + 324 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(32 * arg3.length) + 192] = (32 * arg3.length) + 100
    mem[(32 * arg3.length) + 228 len 28] = Mask(224, 32, arg2) >> 32
    mem[(32 * arg3.length) + 224 len 4] = getAmountsOut(uint256 rg1, address[] rg2)
    mem[(64 * arg3.length) + 324] = 30
    mem[(64 * arg3.length) + 356] = 'Address: low-level call failed'
    if not ext_code.size(arg1):
        mem[(64 * arg3.length) + 388] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg3.length) + 392] = 32
        mem[(64 * arg3.length) + 424] = 29
        mem[(64 * arg3.length) + 456] = 'Address: call to non-contract'
        revert with memory
          from (64 * arg3.length) + 388
           len (127 * arg3.length) + 100
    mem[(64 * arg3.length) + 388 len floor32((32 * arg3.length) + 100)] = getAmountsOut(uint256 rg1, address[] rg2), arg2, 64, mem[(32 * arg3.length) + 292 len floor32((32 * arg3.length) + 100) - 68]
    mem[(64 * arg3.length) + floor32((32 * arg3.length) + 100) + -((32 * arg3.length) + 100 % 32) + 420 len (32 * arg3.length) + 100 % 32] = mem[(32 * arg3.length) + floor32((32 * arg3.length) + 100) + -((32 * arg3.length) + 100 % 32) + 256 len (32 * arg3.length) + 100 % 32]
    call arg1.mem[(32 * arg3.length) + floor32((32 * arg3.length) + 100) + 192 len 4] with:
         gas gas_remaining wei
        args mem[(64 * arg3.length) + 392 len (32 * arg3.length) + 96]
    if not return_data.size:
        if not ext_call.success:
            if arg3.length:
                revert with memory
                  from 128
                   len arg3.length
            revert with 0, 'Address: low-level call failed'
        require arg3.length >= 32
        if arg3.length != 0:
            if not mem[128]:
                revert with 0, 'GAO_FAILED'
        require mem[128] <= 4294967296
        require mem[128] + 160 <= arg3.length + 128
        require mem[mem[128] + 128] <= 4294967296 and mem[128] + (32 * mem[mem[128] + 128]) + 160 <= arg3.length + 128
        mem[(64 * arg3.length) + 388] = mem[mem[128] + 128]
        if mem[(64 * arg3.length) + 388] - 1 < mem[(64 * arg3.length) + 388]:
    else:
        mem[64] = (64 * arg3.length) + ceil32(return_data.size) + 389
        mem[(64 * arg3.length) + 388] = return_data.size
        mem[(64 * arg3.length) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'Address: low-level call failed'
        require return_data.size >= 32
        if return_data.size != 0:
            if not mem[(64 * arg3.length) + 420]:
                revert with 0, 'GAO_FAILED'
        require mem[(64 * arg3.length) + 420] <= 4294967296
        require mem[(64 * arg3.length) + 420] + 64 <= return_data.size + 32
        require mem[(64 * arg3.length) + mem[(64 * arg3.length) + 420] + 420] <= 4294967296 and mem[(64 * arg3.length) + 420] + (32 * mem[(64 * arg3.length) + mem[(64 * arg3.length) + 420] + 420]) + 64 <= return_data.size + 32
        mem[(64 * arg3.length) + ceil32(return_data.size) + 389] = mem[(64 * arg3.length) + mem[(64 * arg3.length) + 420] + 420]
        if mem[(64 * arg3.length) + ceil32(return_data.size) + 389] - 1 < mem[(64 * arg3.length) + ceil32(return_data.size) + 389]:
    revert
}



}
