contract main {




// =====================  Runtime code  =====================


#
#  - zapInToken(address arg1, uint256 arg2, address arg3)
#  - zapOut(address arg1, uint256 arg2)
#
address owner;
mapping of uint8 stor1;
array of address tokens;

function tokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokens.length
    return tokens[arg1]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isFlip(address arg1) {
    require calldata.size - 4 >= 32
    return not bool(stor1[address(arg1)])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setNotFlip(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor1[address(arg1)] = 1
    if not stor1[address(arg1)]:
        tokens.length++
        tokens[tokens.length] = arg1
}

function removeToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require arg1 < tokens.length
    stor1[stor2[arg1]] = 0
    require tokens.length - 1 < tokens.length
    require arg1 < tokens.length
    tokens[arg1] = tokens[tokens.length]
    require tokens.length
    tokens[tokens.length] = 0
    tokens.length--
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x5c4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
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
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sweep() payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    idx = 0
    while idx < tokens.length:
        mem[0] = 2
        if not tokens[idx]:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(tokens[idx])
        staticcall tokens[idx].0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            idx = idx + 1
            continue 
        _33 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_33]
        mem[_33 + 32] = tokens[idx]
        mem[0] = 2
        require 1 < mem[_33]
        mem[_33 + 64] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09
        mem[_33 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[_33 + 100] = ext_call.return_data[0]
        mem[_33 + 132] = 0
        mem[_33 + 196] = owner
        mem[_33 + 228] = block.timestamp
        mem[_33 + 164] = 160
        mem[_33 + 260] = mem[_33]
        s = 0
        while s < 32 * mem[_33]:
            mem[s + _33 + 292] = mem[s + _33 + 32]
            s = s + 32
            continue 
        require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
        call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, owner, block.timestamp, mem[_33 + 260 len (32 * mem[_33]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_33 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _33 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        _54 = mem[_33 + 96 len 4], ext_call.return_data[0 len 28]
        require mem[_33 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[_33 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[_33 + mem[_33 + 96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[_33 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[_33 + mem[_33 + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
        mem[_33 + ceil32(return_data.size) + 96] = mem[_33 + mem[_33 + 96 len 4], ext_call.return_data[0 len 28] + 96]
        _57 = mem[_33 + _54 + 96]
        s = 0
        while s < 32 * _57:
            mem[s + _33 + ceil32(return_data.size) + 128] = mem[s + _33 + _54 + 128]
            s = s + 32
            continue 
        mem[64] = (32 * _57) + _33 + ceil32(return_data.size) + 128
        if 1 < mem[_33 + ceil32(return_data.size) + 96]:
            idx = idx + 1
            continue 
        revert
}

function zapIn(address arg1) payable {
    require calldata.size - 4 >= 32
    mem[32] = 1
    if stor1[address(arg1)]:
        mem[160] = arg1
        mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[196] = 0
        mem[260] = msg.sender
        mem[292] = block.timestamp
        mem[228] = 128
        mem[324] = 2
        mem[356 len 0] = None
        require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
        call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value msg.value wei
             gas gas_remaining wei
            args 0, 128, msg.sender, block.timestamp, 2, mem[356 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        require mem[192 len 4], 0 <= 4294967296
        require mem[192 len 4], 0 + 32 <= return_data.size
        require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
        require 1 < mem[ceil32(return_data.size) + 192]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    mem[160] = 2
    if 0x64000000000000000000000000bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09 == address(ext_call.return_data[0]):
        mem[0] = arg1
        mem[192] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09
        mem[224] = address(ext_call.return_data[0])
        mem[256] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[260] = 0
        mem[324] = this.address
        mem[356] = block.timestamp
        mem[292] = 128
        mem[388] = 2
        mem[420 len 0] = None
        require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
        call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value msg.value / 2 wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp, 2, mem[420 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 256
        require return_data.size >= 32
        if 0x64000000000000000000000000bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09 == address(ext_call.return_data[0]):
            _1164 = mem[256 len 4], 0
            require mem[256 len 4], 0 <= 4294967296
            require mem[256 len 4], 0 + 32 <= return_data.size
            require mem[mem[256 len 4], 0 + 256] <= 4294967296 and mem[256 len 4], 0 + (32 * mem[mem[256 len 4], 0 + 256]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 256] = mem[mem[256 len 4], 0 + 256]
            _1182 = mem[_1164 + 256]
            mem[ceil32(return_data.size) + 288 len floor32(mem[_1164 + 256])] = mem[_1164 + 288 len floor32(mem[_1164 + 256])]
            require 1 < mem[ceil32(return_data.size) + 256]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, 0x5ff2b0db69458a0750badebc4f9e13add608c7f
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, 0x5ff2b0db69458a0750badebc4f9e13add608c7f
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x735361666542455032303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[(32 * _1182) + ceil32(return_data.size) + 410 len 10]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1182) + ceil32(return_data.size) + 452 len 64] = approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call address(ext_call.return_data[0]).0xdd608c7f with:
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[(32 * _1182) + ceil32(return_data.size) + 516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[(32 * _1182) + ceil32(return_data.size) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _1182) + ceil32(return_data.size) + 484]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _1182) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 22]
        else:
            _1166 = mem[256 len 4], 0
            require mem[256 len 4], 0 <= 4294967296
            require mem[256 len 4], 0 + 32 <= return_data.size
            require mem[mem[256 len 4], 0 + 256] <= 4294967296 and mem[256 len 4], 0 + (32 * mem[mem[256 len 4], 0 + 256]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 256] = mem[mem[256 len 4], 0 + 256]
            _1183 = mem[_1166 + 256]
            mem[ceil32(return_data.size) + 288 len floor32(mem[_1166 + 256])] = mem[_1166 + 288 len floor32(mem[_1166 + 256])]
            require 1 < mem[ceil32(return_data.size) + 256]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, 0x5ff2b0db69458a0750badebc4f9e13add608c7f
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, 0x5ff2b0db69458a0750badebc4f9e13add608c7f
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x735361666542455032303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[(32 * _1183) + ceil32(return_data.size) + 410 len 10]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1183) + ceil32(return_data.size) + 452 len 64] = approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[(32 * _1183) + ceil32(return_data.size) + 516 len 0] = 0
                call address(ext_call.return_data[0]).0xdd608c7f with:
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _1183) + ceil32(return_data.size) + 516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[(32 * _1183) + ceil32(return_data.size) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _1183) + ceil32(return_data.size) + 484]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _1183) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 22]
        if msg.value / 2 > msg.value:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
        call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
           value msg.value - (msg.value / 2) wei
             gas gas_remaining wei
            args address(ext_call.return_data[0]), mem[ceil32(return_data.size) + 320], 0, 0, msg.sender, block.timestamp
    else:
        if 0x64000000000000000000000000bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09 == address(ext_call.return_data[0]):
            mem[0] = arg1
            mem[192] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09
            mem[224] = address(ext_call.return_data[0])
            mem[256] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[260] = 0
            mem[324] = this.address
            mem[356] = block.timestamp
            mem[292] = 128
            mem[388] = 2
            mem[420 len 0] = None
            require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
            call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value msg.value / 2 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, 2, mem[420 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 256
            require return_data.size >= 32
            if 0x64000000000000000000000000bb4cdb9cbd36b01bd1cbaebf2de08d9173bc09 == address(ext_call.return_data[0]):
                _1170 = mem[256 len 4], 0
                require mem[256 len 4], 0 <= 4294967296
                require mem[256 len 4], 0 + 32 <= return_data.size
                require mem[mem[256 len 4], 0 + 256] <= 4294967296 and mem[256 len 4], 0 + (32 * mem[mem[256 len 4], 0 + 256]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 256] = mem[mem[256 len 4], 0 + 256]
                _1185 = mem[_1170 + 256]
                mem[ceil32(return_data.size) + 288 len floor32(mem[_1170 + 256])] = mem[_1170 + 288 len floor32(mem[_1170 + 256])]
                require 1 < mem[ceil32(return_data.size) + 256]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, 0x5ff2b0db69458a0750badebc4f9e13add608c7f
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, 0x5ff2b0db69458a0750badebc4f9e13add608c7f
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x735361666542455032303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[(32 * _1185) + ceil32(return_data.size) + 410 len 10]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _1185) + ceil32(return_data.size) + 452 len 64] = approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(32 * _1185) + ceil32(return_data.size) + 516 len 0] = 0
                    call address(ext_call.return_data[0]).0xdd608c7f with:
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _1185) + ceil32(return_data.size) + 516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[(32 * _1185) + ceil32(return_data.size) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _1185) + ceil32(return_data.size) + 484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1185) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 22]
            else:
                _1172 = mem[256 len 4], 0
                require mem[256 len 4], 0 <= 4294967296
                require mem[256 len 4], 0 + 32 <= return_data.size
                require mem[mem[256 len 4], 0 + 256] <= 4294967296 and mem[256 len 4], 0 + (32 * mem[mem[256 len 4], 0 + 256]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 256] = mem[mem[256 len 4], 0 + 256]
                _1186 = mem[_1172 + 256]
                mem[ceil32(return_data.size) + 288 len floor32(mem[_1172 + 256])] = mem[_1172 + 288 len floor32(mem[_1172 + 256])]
                require 1 < mem[ceil32(return_data.size) + 256]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, 0x5ff2b0db69458a0750badebc4f9e13add608c7f
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, 0x5ff2b0db69458a0750badebc4f9e13add608c7f
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x735361666542455032303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[(32 * _1186) + ceil32(return_data.size) + 410 len 10]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _1186) + ceil32(return_data.size) + 452 len 64] = approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(32 * _1186) + ceil32(return_data.size) + 516 len 0] = 0
                    call address(ext_call.return_data[0]).0xdd608c7f with:
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _1186) + ceil32(return_data.size) + 516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[(32 * _1186) + ceil32(return_data.size) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _1186) + ceil32(return_data.size) + 484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1186) + ceil32(return_data.size) + ceil32(return_data.size) + 563 len 22]
            if msg.value / 2 > msg.value:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
            call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
               value msg.value - (msg.value / 2) wei
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), mem[ceil32(return_data.size) + 320], 0, 0, msg.sender, block.timestamp
        else:
            mem[192] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09
            mem[224] = address(ext_call.return_data[0])
            mem[256] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[260] = 0
            mem[324] = this.address
            mem[356] = block.timestamp
            mem[292] = 128
            mem[388] = 2
            mem[420 len 0] = None
            require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
            call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value msg.value / 2 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, 2, mem[420 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 256
            require return_data.size >= 32
            _1168 = mem[256 len 4], 0
            require mem[256 len 4], 0 <= 4294967296
            require mem[256 len 4], 0 + 32 <= return_data.size
            require mem[mem[256 len 4], 0 + 256] <= 4294967296 and mem[256 len 4], 0 + (32 * mem[mem[256 len 4], 0 + 256]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 256] = mem[mem[256 len 4], 0 + 256]
            _1184 = mem[_1168 + 256]
            mem[ceil32(return_data.size) + 288 len floor32(mem[_1168 + 256])] = mem[_1168 + 288 len floor32(mem[_1168 + 256])]
            require 1 < mem[ceil32(return_data.size) + 256]
            _2235 = mem[ceil32(return_data.size) + 320]
            mem[(32 * _1184) + ceil32(return_data.size) + 288] = 30
            mem[(32 * _1184) + ceil32(return_data.size) + 320] = 'SafeMath: subtraction overflow'
            if msg.value / 2 > msg.value:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[(32 * _1184) + ceil32(return_data.size) + 352] = 2
            mem[0] = arg1
            mem[(32 * _1184) + ceil32(return_data.size) + 384] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc09
            mem[(32 * _1184) + ceil32(return_data.size) + 416] = address(ext_call.return_data[0])
            mem[(32 * _1184) + ceil32(return_data.size) + 448] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[(32 * _1184) + ceil32(return_data.size) + 452] = 0
            mem[(32 * _1184) + ceil32(return_data.size) + 516] = this.address
            mem[(32 * _1184) + ceil32(return_data.size) + 548] = block.timestamp
            mem[(32 * _1184) + ceil32(return_data.size) + 484] = 128
            mem[(32 * _1184) + ceil32(return_data.size) + 580] = 2
            mem[(32 * _1184) + ceil32(return_data.size) + 612 len 0] = None
            require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
            call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value msg.value - (msg.value / 2) wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, 2, mem[(32 * _1184) + ceil32(return_data.size) + 612 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1184) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1184) + (2 * ceil32(return_data.size)) + 448
            require return_data.size >= 32
            _3301 = mem[(32 * _1184) + ceil32(return_data.size) + 448 len 4], 0
            require mem[(32 * _1184) + ceil32(return_data.size) + 448 len 4], 0 <= 4294967296
            require mem[(32 * _1184) + ceil32(return_data.size) + 448 len 4], 0 + 32 <= return_data.size
            require mem[(32 * _1184) + ceil32(return_data.size) + mem[(32 * _1184) + ceil32(return_data.size) + 448 len 4], 0 + 448] <= 4294967296 and mem[(32 * _1184) + ceil32(return_data.size) + 448 len 4], 0 + (32 * mem[(32 * _1184) + ceil32(return_data.size) + mem[(32 * _1184) + ceil32(return_data.size) + 448 len 4], 0 + 448]) + 32 <= return_data.size
            mem[(32 * _1184) + (2 * ceil32(return_data.size)) + 448] = mem[(32 * _1184) + ceil32(return_data.size) + mem[(32 * _1184) + ceil32(return_data.size) + 448 len 4], 0 + 448]
            _3360 = mem[(32 * _1184) + ceil32(return_data.size) + _3301 + 448]
            mem[(32 * _1184) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[(32 * _1184) + ceil32(return_data.size) + _3301 + 448])] = mem[(32 * _1184) + ceil32(return_data.size) + _3301 + 480 len floor32(mem[(32 * _1184) + ceil32(return_data.size) + _3301 + 448])]
            require 1 < mem[(32 * _1184) + (2 * ceil32(return_data.size)) + 448]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, 0x5ff2b0db69458a0750badebc4f9e13add608c7f
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, 0x5ff2b0db69458a0750badebc4f9e13add608c7f
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, 0x5ff2b0db69458a0750badebc4f9e13add608c7f
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x735361666542455032303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[(32 * _3360) + (32 * _1184) + (2 * ceil32(return_data.size)) + 602 len 10]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _3360) + (32 * _1184) + (2 * ceil32(return_data.size)) + 644 len 64] = approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(32 * _3360) + (32 * _1184) + (2 * ceil32(return_data.size)) + 708 len 0] = 0
                    call address(ext_call.return_data[0]).0xdd608c7f with:
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _3360) + (32 * _1184) + (2 * ceil32(return_data.size)) + 708 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[(32 * _3360) + (32 * _1184) + (2 * ceil32(return_data.size)) + 676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _3360) + (32 * _1184) + (2 * ceil32(return_data.size)) + 676]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _3360) + (32 * _1184) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 22]
                require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _2235, mem[(32 * _1184) + (2 * ceil32(return_data.size)) + 512], 0, 0, msg.sender, block.timestamp
            else:
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x735361666542455032303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[(32 * _3360) + (32 * _1184) + (2 * ceil32(return_data.size)) + 602 len 10]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _3360) + (32 * _1184) + (2 * ceil32(return_data.size)) + 644 len 64] = approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call address(ext_call.return_data[0]).0xdd608c7f with:
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[(32 * _3360) + (32 * _1184) + (2 * ceil32(return_data.size)) + 708 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[(32 * _3360) + (32 * _1184) + (2 * ceil32(return_data.size)) + 676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _3360) + (32 * _1184) + (2 * ceil32(return_data.size)) + 676]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _3360) + (32 * _1184) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 22]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, 0x5ff2b0db69458a0750badebc4f9e13add608c7f
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                    call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _2235, mem[(32 * _1184) + (2 * ceil32(return_data.size)) + 512], 0, 0, msg.sender, block.timestamp
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, 0x5ff2b0db69458a0750badebc4f9e13add608c7f
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x735361666542455032303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[(32 * _3360) + (32 * _1184) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 767 len 10]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _3360) + (32 * _1184) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 809 len 64] = approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(32 * _3360) + (32 * _1184) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 901 len 4] = 0
                    call address(ext_call.return_data[0]).0xdd608c7f with:
                         gas gas_remaining wei
                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[(32 * _3360) + (32 * _1184) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 873 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[(32 * _3360) + (32 * _1184) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 809] = return_data.size
                    mem[(32 * _3360) + (32 * _1184) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 841 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _3360) + (32 * _1184) + (4 * ceil32(return_data.size)) + 810] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3360) + (32 * _1184) + (4 * ceil32(return_data.size)) + 814] = 32
                        mem[(32 * _3360) + (32 * _1184) + (4 * ceil32(return_data.size)) + 846] = 32
                        mem[(32 * _3360) + (32 * _1184) + (4 * ceil32(return_data.size)) + 878] = 'SafeBEP20: low-level call failed'
                        mem[(32 * _3360) + (32 * _1184) + (4 * ceil32(return_data.size)) + 910 len 0] = None
                        revert with memory
                          from (32 * _3360) + (32 * _1184) + (4 * ceil32(return_data.size)) + 810
                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _3360) + (32 * _1184) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 841]:
                            mem[(32 * _3360) + (32 * _1184) + (4 * ceil32(return_data.size)) + 810] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3360) + (32 * _1184) + (4 * ceil32(return_data.size)) + 814] = 32
                            mem[(32 * _3360) + (32 * _1184) + (4 * ceil32(return_data.size)) + 846] = 42
                            mem[(32 * _3360) + (32 * _1184) + (4 * ceil32(return_data.size)) + 878 len 42] = 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565
                            revert with memory
                              from (32 * _3360) + (32 * _1184) + (4 * ceil32(return_data.size)) + 810
                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    mem[(32 * _3360) + (32 * _1184) + (4 * ceil32(return_data.size)) + 814] = address(ext_call.return_data[0])
                    mem[(32 * _3360) + (32 * _1184) + (4 * ceil32(return_data.size)) + 846] = address(ext_call.return_data[0])
                    mem[(32 * _3360) + (32 * _1184) + (4 * ceil32(return_data.size)) + 878] = _2235
                    mem[(32 * _3360) + (32 * _1184) + (4 * ceil32(return_data.size)) + 910] = mem[(32 * _1184) + (2 * ceil32(return_data.size)) + 512]
                    mem[(32 * _3360) + (32 * _1184) + (4 * ceil32(return_data.size)) + 942] = 0
                    mem[(32 * _3360) + (32 * _1184) + (4 * ceil32(return_data.size)) + 974] = 0
                    mem[(32 * _3360) + (32 * _1184) + (4 * ceil32(return_data.size)) + 1006] = msg.sender
                    mem[(32 * _3360) + (32 * _1184) + (4 * ceil32(return_data.size)) + 1038] = block.timestamp
                    require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                    call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[(32 * _3360) + (32 * _1184) + (4 * ceil32(return_data.size)) + 814 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}



}
