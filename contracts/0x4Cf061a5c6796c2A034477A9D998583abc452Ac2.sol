contract main {




// =====================  Runtime code  =====================


#
#  - getPoolInfo(address arg1)
#
address owner;
address configAddress;

function config() payable {
    return configAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'FORBIDDEN'
    configAddress = arg1
}

function getBorrowInfo(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.borrows(address rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return arg2 << 192, ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128]
}

function queryMintToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(configAddress)
    staticcall configAddress.mint() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xcf675365 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddress)
    staticcall configAddress.params(bytes32 rg1) with:
            gas gas_remaining wei
           args ('7upMaxSupply' << 160)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).takeBorrowWithAddress(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).takeLendWithAddress(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
}

function getPoolConf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(configAddress)
    staticcall configAddress.poolParams(address rg1, bytes32 rg2) with:
            gas gas_remaining wei
           args address(arg1), 'baseInterests' << 152
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddress)
    staticcall configAddress.poolParams(address rg1, bytes32 rg2) with:
            gas gas_remaining wei
           args address(arg1), 'marketFrenzy' << 160
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddress)
    staticcall configAddress.poolParams(address rg1, bytes32 rg2) with:
            gas gas_remaining wei
           args address(arg1), 'pledgeRate' << 176
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddress)
    staticcall configAddress.poolParams(address rg1, bytes32 rg2) with:
            gas gas_remaining wei
           args address(arg1), 'pledgePrice' << 168
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddress)
    staticcall configAddress.poolParams(address rg1, bytes32 rg2) with:
            gas gas_remaining wei
           args address(arg1), 'liquidationRate' << 136
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function getSwapPairReserve(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    return address(ext_call.return_data[0]), 
           address(ext_call.return_data[0]),
           ext_call.return_data[0] << 248,
           ext_call.return_data[0] << 248,
           ext_call.return_data[0] << 144,
           Mask(112, 0, ext_call.return_data[32])
}

function queryUserLiquidationList(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[100] = arg2
    require ext_code.size(arg1)
    staticcall arg1.liquidationHistoryLength(address rg1) with:
            gas gas_remaining wei
           args arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 96] = 32
        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 160
        while idx < ext_call.return_data[0]:
            _44 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_44 + 32]
            mem[t + 64] = mem[_44 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return Array(len=ext_call.return_data[0], data=mem[ceil32(return_data.size) + 160 len 96 * ext_call.return_data[0]])
    require ext_call.return_data[0] <= test266151307()
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            require ext_code.size(arg1)
            staticcall arg1.liquidationHistory(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args address(arg2), idx
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _54 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _61 = mem[_54]
            _62 = mem[_54 + 32]
            _63 = mem[_54 + 64]
            _64 = mem[64]
            mem[64] = mem[64] + 96
            mem[_64] = _61
            mem[_64 + 32] = _62
            mem[_64 + 64] = _63
            require idx < mem[ceil32(return_data.size) + 96]
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _64
            idx = idx + 1
            continue 
        _51 = mem[64]
        mem[mem[64]] = 32
        _53 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _53:
            _81 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_81 + 32]
            mem[t + 64] = mem[_81 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _51 + (96 * _53) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 0
    mem[var25001] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    s = var25001
    idx = var25002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 0
        mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(arg1)
        staticcall arg1.liquidationHistory(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args address(arg2), idx
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _105 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _111 = mem[_105]
        _112 = mem[_105 + 32]
        _113 = mem[_105 + 64]
        _114 = mem[64]
        mem[64] = mem[64] + 96
        mem[_114] = _111
        mem[_114 + 32] = _112
        mem[_114 + 64] = _113
        require idx < mem[ceil32(return_data.size) + 96]
        mem[(32 * idx) + ceil32(return_data.size) + 128] = _114
        idx = idx + 1
        continue 
    _102 = mem[64]
    mem[mem[64]] = 32
    _104 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _104:
        _116 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_116 + 32]
        mem[t + 64] = mem[_116 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _102 + (96 * _104) + -mem[64] + 64
}

function iterateBorrowInfo(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if arg2 > arg3:
        revert with 0, 'INVAID_PARAMTERS'
    require ext_code.size(arg1)
    staticcall arg1.numberBorrowers() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 <= ext_call.return_data[0]:
        require arg3 - arg2 <= test266151307()
        mem[ceil32(return_data.size) + 96] = arg3 - arg2
        mem[64] = ceil32(return_data.size) + (32 * arg3 - arg2) + 128
        if not arg3 - arg2:
            idx = arg2
            s = 0
            while idx < arg3:
                mem[mem[64] + 4] = idx
                require ext_code.size(arg1)
                staticcall arg1.borrowerList(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _118 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _135 = mem[_118]
                require mem[_118] == mem[_118 + 12 len 20]
                _161 = mem[64]
                mem[64] = mem[64] + 160
                mem[_161] = 0
                mem[_161 + 32] = 0
                mem[_161 + 64] = 0
                mem[_161 + 96] = 0
                mem[_161 + 128] = 0
                require ext_code.size(arg1)
                staticcall arg1.borrows(address rg1) with:
                        gas gas_remaining wei
                       args address(_135)
                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _167 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 160
                _174 = mem[_167 + 32]
                _175 = mem[_167 + 64]
                _176 = mem[_167 + 96]
                _177 = mem[_167 + 128]
                _183 = mem[64]
                mem[64] = mem[64] + 160
                mem[_183] = address(_135)
                mem[_183 + 32] = _174
                mem[_183 + 64] = _175
                mem[_183 + 96] = _176
                mem[_183 + 128] = _177
                require s < mem[ceil32(return_data.size) + 96]
                mem[(32 * s) + ceil32(return_data.size) + 128] = _183
                idx = idx + 1
                s = s + 1
                continue 
            _111 = mem[64]
            mem[mem[64]] = 32
            _113 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = mem[64] + 64
            t = ceil32(return_data.size) + 128
            while idx < _113:
                _207 = mem[t]
                mem[s] = mem[mem[t] + 12 len 20]
                mem[s + 32] = mem[_207 + 32]
                mem[s + 64] = mem[_207 + 64]
                mem[s + 96] = mem[_207 + 96]
                mem[s + 128] = mem[_207 + 128]
                idx = idx + 1
                s = s + 160
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _111 + (160 * _113) + -mem[64] + 64
        mem[64] = ceil32(return_data.size) + (32 * arg3 - arg2) + 288
        mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 128] = 0
        mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 160] = 0
        mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 192] = 0
        mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 224] = 0
        mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 256] = 0
        mem[var25001] = ceil32(return_data.size) + (32 * arg3 - arg2) + 128
        s = var25001
        idx = var25002
        while idx - 1:
            mem[64] = mem[64] + 160
            mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 128] = 0
            mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 160] = 0
            mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 192] = 0
            mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 224] = 0
            mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 256] = 0
            mem[s + 32] = ceil32(return_data.size) + (32 * arg3 - arg2) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = arg2
        s = 0
        while idx < arg3:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.borrowerList(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _278 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _293 = mem[_278]
            require mem[_278] == mem[_278 + 12 len 20]
            _295 = mem[64]
            mem[64] = mem[64] + 160
            mem[_295] = 0
            mem[_295 + 32] = 0
            mem[_295 + 64] = 0
            mem[_295 + 96] = 0
            mem[_295 + 128] = 0
            require ext_code.size(arg1)
            staticcall arg1.borrows(address rg1) with:
                    gas gas_remaining wei
                   args address(_293)
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _301 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            _304 = mem[_301 + 32]
            _305 = mem[_301 + 64]
            _306 = mem[_301 + 96]
            _307 = mem[_301 + 128]
            _313 = mem[64]
            mem[64] = mem[64] + 160
            mem[_313] = address(_293)
            mem[_313 + 32] = _304
            mem[_313 + 64] = _305
            mem[_313 + 96] = _306
            mem[_313 + 128] = _307
            require s < mem[ceil32(return_data.size) + 96]
            mem[(32 * s) + ceil32(return_data.size) + 128] = _313
            idx = idx + 1
            s = s + 1
            continue 
        _271 = mem[64]
        mem[mem[64]] = 32
        _273 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = mem[64] + 64
        t = ceil32(return_data.size) + 128
        while idx < _273:
            _317 = mem[t]
            mem[s] = mem[mem[t] + 12 len 20]
            mem[s + 32] = mem[_317 + 32]
            mem[s + 64] = mem[_317 + 64]
            mem[s + 96] = mem[_317 + 96]
            mem[s + 128] = mem[_317 + 128]
            idx = idx + 1
            s = s + 160
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _271 + (160 * _273) + -mem[64] + 64
    require ext_call.return_data[0] - arg2 <= test266151307()
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - arg2
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
    if not ext_call.return_data[0] - arg2:
        idx = arg2
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.borrowerList(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _120 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _137 = mem[_120]
            require mem[_120] == mem[_120 + 12 len 20]
            _162 = mem[64]
            mem[64] = mem[64] + 160
            mem[_162] = 0
            mem[_162 + 32] = 0
            mem[_162 + 64] = 0
            mem[_162 + 96] = 0
            mem[_162 + 128] = 0
            require ext_code.size(arg1)
            staticcall arg1.borrows(address rg1) with:
                    gas gas_remaining wei
                   args address(_137)
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _169 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            _179 = mem[_169 + 32]
            _180 = mem[_169 + 64]
            _181 = mem[_169 + 96]
            _182 = mem[_169 + 128]
            _185 = mem[64]
            mem[64] = mem[64] + 160
            mem[_185] = address(_137)
            mem[_185 + 32] = _179
            mem[_185 + 64] = _180
            mem[_185 + 96] = _181
            mem[_185 + 128] = _182
            require s < mem[ceil32(return_data.size) + 96]
            mem[(32 * s) + ceil32(return_data.size) + 128] = _185
            idx = idx + 1
            s = s + 1
            continue 
        _112 = mem[64]
        mem[mem[64]] = 32
        _115 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = mem[64] + 64
        t = ceil32(return_data.size) + 128
        while idx < _115:
            _208 = mem[t]
            mem[s] = mem[mem[t] + 12 len 20]
            mem[s + 32] = mem[_208 + 32]
            mem[s + 64] = mem[_208 + 64]
            mem[s + 96] = mem[_208 + 96]
            mem[s + 128] = mem[_208 + 128]
            idx = idx + 1
            s = s + 160
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _112 + (160 * _115) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 288
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 192] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 224] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 256] = 0
    mem[var26001] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
    s = var26001
    idx = var26002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 192] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 224] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 256] = 0
        mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = arg2
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(arg1)
        staticcall arg1.borrowerList(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _280 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _294 = mem[_280]
        require mem[_280] == mem[_280 + 12 len 20]
        _296 = mem[64]
        mem[64] = mem[64] + 160
        mem[_296] = 0
        mem[_296 + 32] = 0
        mem[_296 + 64] = 0
        mem[_296 + 96] = 0
        mem[_296 + 128] = 0
        require ext_code.size(arg1)
        staticcall arg1.borrows(address rg1) with:
                gas gas_remaining wei
               args address(_294)
        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _302 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 160
        _309 = mem[_302 + 32]
        _310 = mem[_302 + 64]
        _311 = mem[_302 + 96]
        _312 = mem[_302 + 128]
        _314 = mem[64]
        mem[64] = mem[64] + 160
        mem[_314] = address(_294)
        mem[_314 + 32] = _309
        mem[_314 + 64] = _310
        mem[_314 + 96] = _311
        mem[_314 + 128] = _312
        require s < mem[ceil32(return_data.size) + 96]
        mem[(32 * s) + ceil32(return_data.size) + 128] = _314
        idx = idx + 1
        s = s + 1
        continue 
    _272 = mem[64]
    mem[mem[64]] = 32
    _275 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = mem[64] + 64
    t = ceil32(return_data.size) + 128
    while idx < _275:
        _318 = mem[t]
        mem[s] = mem[mem[t] + 12 len 20]
        mem[s + 32] = mem[_318 + 32]
        mem[s + 64] = mem[_318 + 64]
        mem[s + 96] = mem[_318 + 96]
        mem[s + 128] = mem[_318 + 128]
        idx = idx + 1
        s = s + 160
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _272 + (160 * _275) + -mem[64] + 64
}

function getPoolInfoByTokens(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 96
    mem[448] = 96
    require ext_code.size(configAddress)
    staticcall configAddress.factory() with:
            gas gas_remaining wei
    mem[480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 484] = arg1
    mem[ceil32(return_data.size) + 516] = arg2
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPool(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    mem[ceil32(return_data.size) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 800] = 96
    mem[(2 * ceil32(return_data.size)) + 832] = 96
    require ext_code.size(configAddress)
    staticcall configAddress.factory() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 868] = address(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).isPool(address rg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        return '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 384, 416, 0, 0, None
    mem[(2 * ceil32(return_data.size)) + 480] = address(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).totalBorrow() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).totalPledge() with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).remainSupply() with:
            gas gas_remaining wei
    mem[(8 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getInterests() with:
            gas gas_remaining wei
    mem[(10 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).supplyToken() with:
            gas gas_remaining wei
    mem[(11 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 672] = ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).collateralToken() with:
            gas gas_remaining wei
    mem[(12 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
    require ext_code.size(mem[(2 * ceil32(return_data.size)) + 684 len 20])
    staticcall mem[(2 * ceil32(return_data.size)) + 684 len 20].0x313ce567 with:
            gas gas_remaining wei
    mem[(13 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[31 len 1]
    require ext_code.size(mem[(2 * ceil32(return_data.size)) + 716 len 20])
    staticcall mem[(2 * ceil32(return_data.size)) + 716 len 20].0x313ce567 with:
            gas gas_remaining wei
    mem[(14 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[(2 * ceil32(return_data.size)) + 768] = ext_call.return_data[31 len 1]
    mem[(15 * ceil32(return_data.size)) + 864] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(mem[(2 * ceil32(return_data.size)) + 684 len 20])
    staticcall mem[(2 * ceil32(return_data.size)) + 684 len 20].0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(15 * ceil32(return_data.size)) + 864 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (16 * ceil32(return_data.size)) + 864
    require return_data.size >= 32
    _81 = mem[(15 * ceil32(return_data.size)) + 864]
    require mem[(15 * ceil32(return_data.size)) + 864] <= test266151307()
    require (15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 864] + 895 < (15 * ceil32(return_data.size)) + return_data.size + 864
    _82 = mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 864] + 864]
    require mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 864] + 864] <= test266151307()
    require ceil32(mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 864] + 864]) + 32 >= 0 and (16 * ceil32(return_data.size)) + ceil32(mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 864] + 864]) + 896 <= test266151307()
    mem[64] = (16 * ceil32(return_data.size)) + ceil32(mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 864] + 864]) + 896
    mem[(16 * ceil32(return_data.size)) + 864] = _82
    require _81 + _82 + 32 <= return_data.size
    mem[(16 * ceil32(return_data.size)) + 896 len ceil32(_82)] = mem[(15 * ceil32(return_data.size)) + _81 + 896 len ceil32(_82)]
    if ceil32(_82) <= _82:
        mem[(2 * ceil32(return_data.size)) + 800] = (16 * ceil32(return_data.size)) + 864
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(ext_call.return_data[12 len 20]))
        staticcall address(ext_call.return_data[12 len 20]).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _324 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _327 = mem[_324]
        require mem[_324] <= test266151307()
        require _324 + mem[_324] + 31 < _324 + return_data.size
        _331 = mem[_324 + mem[_324]]
        require mem[_324 + mem[_324]] <= test266151307()
        require ceil32(mem[_324 + mem[_324]]) + 32 >= 0 and _324 + ceil32(return_data.size) + ceil32(mem[_324 + mem[_324]]) + 32 <= test266151307()
        mem[64] = _324 + ceil32(return_data.size) + ceil32(mem[_324 + mem[_324]]) + 32
        mem[_324 + ceil32(return_data.size)] = _331
        require _327 + _331 + 32 <= return_data.size
        mem[_324 + ceil32(return_data.size) + 32 len ceil32(_331)] = mem[_324 + _327 + 32 len ceil32(_331)]
        if ceil32(_331) > _331:
            mem[_324 + ceil32(return_data.size) + _331 + 32] = 0
        mem[(2 * ceil32(return_data.size)) + 832] = _324 + ceil32(return_data.size)
        if not uint255(ext_call.return_data[0]):
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint64(ext_call.return_data[0]) << 96
            mem[mem[64] + 64] = ext_call.return_data[0]
            mem[mem[64] + 96] = ext_call.return_data[0]
            mem[mem[64] + 128] = ext_call.return_data[0]
            mem[mem[64] + 160] = ext_call.return_data[0]
            mem[mem[64] + 192] = ext_call.return_data[0]
            mem[mem[64] + 224] = mem[(2 * ceil32(return_data.size)) + 684 len 20]
            mem[mem[64] + 256] = mem[(2 * ceil32(return_data.size)) + 716 len 20]
            mem[mem[64] + 288] = mem[(2 * ceil32(return_data.size)) + 767 len 1]
            mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 799 len 1]
            mem[mem[64] + 352] = 384
            mem[mem[64] + 416] = _82
            mem[mem[64] + 448 len ceil32(_82)] = mem[(16 * ceil32(return_data.size)) + 896 len ceil32(_82)]
            if ceil32(_82) > _82:
                mem[mem[64] + _82 + 448] = 0
            mem[mem[64] + 384] = ceil32(_82) + 416
            mem[ceil32(_82) + mem[64] + 448] = _331
            mem[ceil32(_82) + mem[64] + 480 len ceil32(_331)] = mem[_324 + ceil32(return_data.size) + 32 len ceil32(_331)]
            if ceil32(_331) > _331:
                mem[ceil32(_82) + mem[64] + _331 + 480] = 0
            return 32, ext_call.return_data[0] << 192, 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   mem[mem[64] + 224 len 128],
                   384,
                   ceil32(_82) + 416,
                   _82,
                   mem[mem[64] + 448 len ceil32(_331) + ceil32(_82) + 32]
        require 2 * ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint64(ext_call.return_data[0]) << 96
        mem[mem[64] + 64] = ext_call.return_data[0]
        mem[mem[64] + 96] = ext_call.return_data[0]
        mem[mem[64] + 128] = ext_call.return_data[0]
        mem[mem[64] + 160] = ext_call.return_data[0]
        mem[mem[64] + 192] = ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0]
        mem[mem[64] + 224] = mem[(2 * ceil32(return_data.size)) + 684 len 20]
        mem[mem[64] + 256] = mem[(2 * ceil32(return_data.size)) + 716 len 20]
        mem[mem[64] + 288] = mem[(2 * ceil32(return_data.size)) + 767 len 1]
        mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 799 len 1]
        mem[mem[64] + 352] = 384
        mem[mem[64] + 416] = _82
        mem[mem[64] + 448 len ceil32(_82)] = mem[(16 * ceil32(return_data.size)) + 896 len ceil32(_82)]
        if ceil32(_82) > _82:
            mem[mem[64] + _82 + 448] = 0
        mem[mem[64] + 384] = ceil32(_82) + 416
        mem[ceil32(_82) + mem[64] + 448] = _331
        mem[ceil32(_82) + mem[64] + 480 len ceil32(_331)] = mem[_324 + ceil32(return_data.size) + 32 len ceil32(_331)]
        if ceil32(_331) > _331:
            mem[ceil32(_82) + mem[64] + _331 + 480] = 0
        return 32, ext_call.return_data[0] << 192, 
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0],
               mem[mem[64] + 224 len 128],
               384,
               ceil32(_82) + 416,
               _82,
               mem[mem[64] + 448 len ceil32(_331) + ceil32(_82) + 32]
    mem[(16 * ceil32(return_data.size)) + _82 + 896] = 0
    mem[(2 * ceil32(return_data.size)) + 800] = (16 * ceil32(return_data.size)) + 864
    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[12 len 20]))
    staticcall address(ext_call.return_data[12 len 20]).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _326 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _329 = mem[_326]
    require mem[_326] <= test266151307()
    require _326 + mem[_326] + 31 < _326 + return_data.size
    _332 = mem[_326 + mem[_326]]
    require mem[_326 + mem[_326]] <= test266151307()
    require ceil32(mem[_326 + mem[_326]]) + 32 >= 0 and _326 + ceil32(return_data.size) + ceil32(mem[_326 + mem[_326]]) + 32 <= test266151307()
    mem[64] = _326 + ceil32(return_data.size) + ceil32(mem[_326 + mem[_326]]) + 32
    mem[_326 + ceil32(return_data.size)] = _332
    require _329 + _332 + 32 <= return_data.size
    mem[_326 + ceil32(return_data.size) + 32 len ceil32(_332)] = mem[_326 + _329 + 32 len ceil32(_332)]
    if ceil32(_332) > _332:
        mem[_326 + ceil32(return_data.size) + _332 + 32] = 0
    mem[(2 * ceil32(return_data.size)) + 832] = _326 + ceil32(return_data.size)
    if not uint255(ext_call.return_data[0]):
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint64(ext_call.return_data[0]) << 96
        mem[mem[64] + 64] = ext_call.return_data[0]
        mem[mem[64] + 96] = ext_call.return_data[0]
        mem[mem[64] + 128] = ext_call.return_data[0]
        mem[mem[64] + 160] = ext_call.return_data[0]
        mem[mem[64] + 192] = ext_call.return_data[0]
        mem[mem[64] + 224] = mem[(2 * ceil32(return_data.size)) + 684 len 20]
        mem[mem[64] + 256] = mem[(2 * ceil32(return_data.size)) + 716 len 20]
        mem[mem[64] + 288] = mem[(2 * ceil32(return_data.size)) + 767 len 1]
        mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 799 len 1]
        mem[mem[64] + 352] = 384
        mem[mem[64] + 416] = _82
        mem[mem[64] + 448 len ceil32(_82)] = mem[(16 * ceil32(return_data.size)) + 896 len ceil32(_82)]
        if ceil32(_82) > _82:
            mem[mem[64] + _82 + 448] = 0
        mem[mem[64] + 384] = ceil32(_82) + 416
        mem[ceil32(_82) + mem[64] + 448] = _332
        mem[ceil32(_82) + mem[64] + 480 len ceil32(_332)] = mem[_326 + ceil32(return_data.size) + 32 len ceil32(_332)]
        if ceil32(_332) > _332:
            mem[ceil32(_82) + mem[64] + _332 + 480] = 0
        return 32, ext_call.return_data[0] << 192, 
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               mem[mem[64] + 224 len 128],
               384,
               ceil32(_82) + 416,
               _82,
               mem[mem[64] + 448 len ceil32(_332) + ceil32(_82) + 32]
    require 2 * ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = uint64(ext_call.return_data[0]) << 96
    mem[mem[64] + 64] = ext_call.return_data[0]
    mem[mem[64] + 96] = ext_call.return_data[0]
    mem[mem[64] + 128] = ext_call.return_data[0]
    mem[mem[64] + 160] = ext_call.return_data[0]
    mem[mem[64] + 192] = ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0]
    mem[mem[64] + 224] = mem[(2 * ceil32(return_data.size)) + 684 len 20]
    mem[mem[64] + 256] = mem[(2 * ceil32(return_data.size)) + 716 len 20]
    mem[mem[64] + 288] = mem[(2 * ceil32(return_data.size)) + 767 len 1]
    mem[mem[64] + 320] = mem[(2 * ceil32(return_data.size)) + 799 len 1]
    mem[mem[64] + 352] = 384
    mem[mem[64] + 416] = _82
    mem[mem[64] + 448 len ceil32(_82)] = mem[(16 * ceil32(return_data.size)) + 896 len ceil32(_82)]
    if ceil32(_82) > _82:
        mem[mem[64] + _82 + 448] = 0
    mem[mem[64] + 384] = ceil32(_82) + 416
    mem[ceil32(_82) + mem[64] + 448] = _332
    mem[ceil32(_82) + mem[64] + 480 len ceil32(_332)] = mem[_326 + ceil32(return_data.size) + 32 len ceil32(_332)]
    if ceil32(_332) > _332:
        mem[ceil32(_82) + mem[64] + _332 + 480] = 0
    return 32, ext_call.return_data[0] << 192, 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0],
           mem[mem[64] + 224 len 128],
           384,
           ceil32(_82) + 416,
           _82,
           mem[mem[64] + 448 len ceil32(_332) + ceil32(_82) + 32]
}

function getPoolInfoByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 96
    mem[448] = 96
    require ext_code.size(configAddress)
    staticcall configAddress.factory() with:
            gas gas_remaining wei
    mem[480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).countPools() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        return '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 384, 416, 0, 0, None
    if not ext_call.return_data[0]:
        return '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 384, 416, 0, 0, None
    require ext_code.size(configAddress)
    staticcall configAddress.factory() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 484] = arg1
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).allPools(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    mem[(4 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(6 * ceil32(return_data.size)) + 800] = 96
    mem[(6 * ceil32(return_data.size)) + 832] = 96
    require ext_code.size(configAddress)
    staticcall configAddress.factory() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(7 * ceil32(return_data.size)) + 868] = address(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).isPool(address rg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    mem[(7 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        return '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 384, 416, 0, 0, None
    mem[(6 * ceil32(return_data.size)) + 480] = address(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).totalBorrow() with:
            gas gas_remaining wei
    mem[(8 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).totalPledge() with:
            gas gas_remaining wei
    mem[(10 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).remainSupply() with:
            gas gas_remaining wei
    mem[(11 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getInterests() with:
            gas gas_remaining wei
    mem[(12 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).supplyToken() with:
            gas gas_remaining wei
    mem[(13 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(6 * ceil32(return_data.size)) + 672] = ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).collateralToken() with:
            gas gas_remaining wei
    mem[(14 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(6 * ceil32(return_data.size)) + 704] = ext_call.return_data[12 len 20]
    require ext_code.size(mem[(6 * ceil32(return_data.size)) + 684 len 20])
    staticcall mem[(6 * ceil32(return_data.size)) + 684 len 20].0x313ce567 with:
            gas gas_remaining wei
    mem[(15 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[(6 * ceil32(return_data.size)) + 736] = ext_call.return_data[31 len 1]
    mem[(16 * ceil32(return_data.size)) + 864] = 0x313ce56700000000000000000000000000000000000000000000000000000000
    require ext_code.size(mem[(6 * ceil32(return_data.size)) + 716 len 20])
    staticcall mem[(6 * ceil32(return_data.size)) + 716 len 20].0x313ce567 with:
            gas gas_remaining wei
    mem[(16 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[(6 * ceil32(return_data.size)) + 768] = ext_call.return_data[31 len 1]
    mem[(18 * ceil32(return_data.size)) + 864] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(mem[(6 * ceil32(return_data.size)) + 684 len 20])
    staticcall mem[(6 * ceil32(return_data.size)) + 684 len 20].0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(18 * ceil32(return_data.size)) + 864 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (19 * ceil32(return_data.size)) + 864
    require return_data.size >= 32
    _137 = mem[(18 * ceil32(return_data.size)) + 864]
    require mem[(18 * ceil32(return_data.size)) + 864] <= test266151307()
    require (18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 864] + 895 < (18 * ceil32(return_data.size)) + return_data.size + 864
    _138 = mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 864] + 864]
    require mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 864] + 864] <= test266151307()
    require ceil32(mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 864] + 864]) + 32 >= 0 and (19 * ceil32(return_data.size)) + ceil32(mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 864] + 864]) + 896 <= test266151307()
    mem[64] = (19 * ceil32(return_data.size)) + ceil32(mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 864] + 864]) + 896
    mem[(19 * ceil32(return_data.size)) + 864] = _138
    require _137 + _138 + 32 <= return_data.size
    mem[(19 * ceil32(return_data.size)) + 896 len ceil32(_138)] = mem[(18 * ceil32(return_data.size)) + _137 + 896 len ceil32(_138)]
    if ceil32(_138) <= _138:
        mem[(6 * ceil32(return_data.size)) + 800] = (19 * ceil32(return_data.size)) + 864
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(ext_call.return_data[12 len 20]))
        staticcall address(ext_call.return_data[12 len 20]).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _389 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _394 = mem[_389]
        require mem[_389] <= test266151307()
        require _389 + mem[_389] + 31 < _389 + return_data.size
        _401 = mem[_389 + mem[_389]]
        require mem[_389 + mem[_389]] <= test266151307()
        require ceil32(mem[_389 + mem[_389]]) + 32 >= 0 and _389 + ceil32(return_data.size) + ceil32(mem[_389 + mem[_389]]) + 32 <= test266151307()
        mem[64] = _389 + ceil32(return_data.size) + ceil32(mem[_389 + mem[_389]]) + 32
        mem[_389 + ceil32(return_data.size)] = _401
        require _394 + _401 + 32 <= return_data.size
        mem[_389 + ceil32(return_data.size) + 32 len ceil32(_401)] = mem[_389 + _394 + 32 len ceil32(_401)]
        if ceil32(_401) > _401:
            mem[_389 + ceil32(return_data.size) + _401 + 32] = 0
        mem[(6 * ceil32(return_data.size)) + 832] = _389 + ceil32(return_data.size)
        if not uint255(ext_call.return_data[0]):
            mem[mem[64]] = 32
            mem[mem[64] + 32] = uint64(ext_call.return_data[0]) << 96
            mem[mem[64] + 64] = ext_call.return_data[0]
            mem[mem[64] + 96] = ext_call.return_data[0]
            mem[mem[64] + 128] = ext_call.return_data[0]
            mem[mem[64] + 160] = ext_call.return_data[0]
            mem[mem[64] + 192] = ext_call.return_data[0]
            mem[mem[64] + 224] = mem[(6 * ceil32(return_data.size)) + 684 len 20]
            mem[mem[64] + 256] = mem[(6 * ceil32(return_data.size)) + 716 len 20]
            mem[mem[64] + 288] = mem[(6 * ceil32(return_data.size)) + 767 len 1]
            mem[mem[64] + 320] = mem[(6 * ceil32(return_data.size)) + 799 len 1]
            mem[mem[64] + 352] = 384
            mem[mem[64] + 416] = _138
            mem[mem[64] + 448 len ceil32(_138)] = mem[(19 * ceil32(return_data.size)) + 896 len ceil32(_138)]
            if ceil32(_138) > _138:
                mem[mem[64] + _138 + 448] = 0
            mem[mem[64] + 384] = ceil32(_138) + 416
            mem[ceil32(_138) + mem[64] + 448] = _401
            mem[ceil32(_138) + mem[64] + 480 len ceil32(_401)] = mem[_389 + ceil32(return_data.size) + 32 len ceil32(_401)]
            if ceil32(_401) > _401:
                mem[ceil32(_138) + mem[64] + _401 + 480] = 0
            return 32, ext_call.return_data[0] << 192, 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   mem[mem[64] + 224 len 128],
                   384,
                   ceil32(_138) + 416,
                   _138,
                   mem[mem[64] + 448 len ceil32(_401) + ceil32(_138) + 32]
        require 2 * ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint64(ext_call.return_data[0]) << 96
        mem[mem[64] + 64] = ext_call.return_data[0]
        mem[mem[64] + 96] = ext_call.return_data[0]
        mem[mem[64] + 128] = ext_call.return_data[0]
        mem[mem[64] + 160] = ext_call.return_data[0]
        mem[mem[64] + 192] = ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0]
        mem[mem[64] + 224] = mem[(6 * ceil32(return_data.size)) + 684 len 20]
        mem[mem[64] + 256] = mem[(6 * ceil32(return_data.size)) + 716 len 20]
        mem[mem[64] + 288] = mem[(6 * ceil32(return_data.size)) + 767 len 1]
        mem[mem[64] + 320] = mem[(6 * ceil32(return_data.size)) + 799 len 1]
        mem[mem[64] + 352] = 384
        mem[mem[64] + 416] = _138
        mem[mem[64] + 448 len ceil32(_138)] = mem[(19 * ceil32(return_data.size)) + 896 len ceil32(_138)]
        if ceil32(_138) > _138:
            mem[mem[64] + _138 + 448] = 0
        mem[mem[64] + 384] = ceil32(_138) + 416
        mem[ceil32(_138) + mem[64] + 448] = _401
        mem[ceil32(_138) + mem[64] + 480 len ceil32(_401)] = mem[_389 + ceil32(return_data.size) + 32 len ceil32(_401)]
        if ceil32(_401) > _401:
            mem[ceil32(_138) + mem[64] + _401 + 480] = 0
        return 32, ext_call.return_data[0] << 192, 
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0],
               mem[mem[64] + 224 len 128],
               384,
               ceil32(_138) + 416,
               _138,
               mem[mem[64] + 448 len ceil32(_401) + ceil32(_138) + 32]
    mem[(19 * ceil32(return_data.size)) + _138 + 896] = 0
    mem[(6 * ceil32(return_data.size)) + 800] = (19 * ceil32(return_data.size)) + 864
    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[12 len 20]))
    staticcall address(ext_call.return_data[12 len 20]).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _392 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _398 = mem[_392]
    require mem[_392] <= test266151307()
    require _392 + mem[_392] + 31 < _392 + return_data.size
    _402 = mem[_392 + mem[_392]]
    require mem[_392 + mem[_392]] <= test266151307()
    require ceil32(mem[_392 + mem[_392]]) + 32 >= 0 and _392 + ceil32(return_data.size) + ceil32(mem[_392 + mem[_392]]) + 32 <= test266151307()
    mem[64] = _392 + ceil32(return_data.size) + ceil32(mem[_392 + mem[_392]]) + 32
    mem[_392 + ceil32(return_data.size)] = _402
    require _398 + _402 + 32 <= return_data.size
    mem[_392 + ceil32(return_data.size) + 32 len ceil32(_402)] = mem[_392 + _398 + 32 len ceil32(_402)]
    if ceil32(_402) > _402:
        mem[_392 + ceil32(return_data.size) + _402 + 32] = 0
    mem[(6 * ceil32(return_data.size)) + 832] = _392 + ceil32(return_data.size)
    if not uint255(ext_call.return_data[0]):
        mem[mem[64]] = 32
        mem[mem[64] + 32] = uint64(ext_call.return_data[0]) << 96
        mem[mem[64] + 64] = ext_call.return_data[0]
        mem[mem[64] + 96] = ext_call.return_data[0]
        mem[mem[64] + 128] = ext_call.return_data[0]
        mem[mem[64] + 160] = ext_call.return_data[0]
        mem[mem[64] + 192] = ext_call.return_data[0]
        mem[mem[64] + 224] = mem[(6 * ceil32(return_data.size)) + 684 len 20]
        mem[mem[64] + 256] = mem[(6 * ceil32(return_data.size)) + 716 len 20]
        mem[mem[64] + 288] = mem[(6 * ceil32(return_data.size)) + 767 len 1]
        mem[mem[64] + 320] = mem[(6 * ceil32(return_data.size)) + 799 len 1]
        mem[mem[64] + 352] = 384
        mem[mem[64] + 416] = _138
        mem[mem[64] + 448 len ceil32(_138)] = mem[(19 * ceil32(return_data.size)) + 896 len ceil32(_138)]
        if ceil32(_138) > _138:
            mem[mem[64] + _138 + 448] = 0
        mem[mem[64] + 384] = ceil32(_138) + 416
        mem[ceil32(_138) + mem[64] + 448] = _402
        mem[ceil32(_138) + mem[64] + 480 len ceil32(_402)] = mem[_392 + ceil32(return_data.size) + 32 len ceil32(_402)]
        if ceil32(_402) > _402:
            mem[ceil32(_138) + mem[64] + _402 + 480] = 0
        return 32, ext_call.return_data[0] << 192, 
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               mem[mem[64] + 224 len 128],
               384,
               ceil32(_138) + 416,
               _138,
               mem[mem[64] + 448 len ceil32(_402) + ceil32(_138) + 32]
    require 2 * ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 640] = ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = uint64(ext_call.return_data[0]) << 96
    mem[mem[64] + 64] = ext_call.return_data[0]
    mem[mem[64] + 96] = ext_call.return_data[0]
    mem[mem[64] + 128] = ext_call.return_data[0]
    mem[mem[64] + 160] = ext_call.return_data[0]
    mem[mem[64] + 192] = ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0]
    mem[mem[64] + 224] = mem[(6 * ceil32(return_data.size)) + 684 len 20]
    mem[mem[64] + 256] = mem[(6 * ceil32(return_data.size)) + 716 len 20]
    mem[mem[64] + 288] = mem[(6 * ceil32(return_data.size)) + 767 len 1]
    mem[mem[64] + 320] = mem[(6 * ceil32(return_data.size)) + 799 len 1]
    mem[mem[64] + 352] = 384
    mem[mem[64] + 416] = _138
    mem[mem[64] + 448 len ceil32(_138)] = mem[(19 * ceil32(return_data.size)) + 896 len ceil32(_138)]
    if ceil32(_138) > _138:
        mem[mem[64] + _138 + 448] = 0
    mem[mem[64] + 384] = ceil32(_138) + 416
    mem[ceil32(_138) + mem[64] + 448] = _402
    mem[ceil32(_138) + mem[64] + 480 len ceil32(_402)] = mem[_392 + ceil32(return_data.size) + 32 len ceil32(_402)]
    if ceil32(_402) > _402:
        mem[ceil32(_138) + mem[64] + _402 + 480] = 0
    return 32, ext_call.return_data[0] << 192, 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0] * ext_call.return_data[0] / 2 * ext_call.return_data[0],
           mem[mem[64] + 224 len 128],
           384,
           ceil32(_138) + 416,
           _138,
           mem[mem[64] + 448 len ceil32(_402) + ceil32(_138) + 32]
}

function sub_7dad12b5(?) payable {
    require calldata.size - 4 >= 96
    if arg3 >= 30:
        revert with 0, 'EXCEEDING MAX ALLOWED'
    require arg3 <= test266151307()
    mem[96] = arg3
    if not arg3:
        require ext_code.size(configAddress)
        staticcall configAddress.factory() with:
                gas gas_remaining wei
        mem[(32 * arg3) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).countPools() with:
                gas gas_remaining wei
        mem[(32 * arg3) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg3) + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        if arg1 >= ext_call.return_data[0]:
            revert with 0, 'INVALID POOL INDEX'
        idx = arg1
        s = 0
        t = 0
        u = 0
        while idx < ext_call.return_data[0]:
            require ext_code.size(configAddress)
            staticcall configAddress.factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _434 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _438 = mem[_434]
            require mem[_434] == mem[_434 + 12 len 20]
            mem[mem[64] + 4] = idx
            require ext_code.size(address(_438))
            staticcall address(_438).allPools(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _452 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _454 = mem[_452]
            require mem[_452] == mem[_452 + 12 len 20]
            mem[mem[64] + 4] = mem[_452 + 12 len 20]
            mem[mem[64] + 36] = 'liquidationRate' << 136
            require ext_code.size(configAddress)
            staticcall configAddress.poolParams(address rg1, bytes32 rg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], 'liquidationRate'
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _463 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _465 = mem[_463]
            mem[mem[64] + 4] = address(_454)
            mem[mem[64] + 36] = 'pledgePrice' << 168
            require ext_code.size(configAddress)
            staticcall configAddress.poolParams(address rg1, bytes32 rg2) with:
                    gas gas_remaining wei
                   args address(_454), 'pledgePrice' << 168
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _470 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _472 = mem[_470]
            require ext_code.size(address(_454))
            staticcall address(_454).numberBorrowers() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _476 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _477 = mem[_476]
            if arg2 >= mem[_476]:
                revert with 0, 'INVALID START INDEX'
            t = arg2
            v = s
            w = u
            while t < _477:
                mem[mem[64] + 4] = t
                require ext_code.size(address(_454))
                staticcall address(_454).borrowerList(uint256 rg1) with:
                        gas gas_remaining wei
                       args t
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _669 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _671 = mem[_669]
                require mem[_669] == mem[_669 + 12 len 20]
                require ext_code.size(address(_454))
                staticcall address(_454).borrows(address rg1) with:
                        gas gas_remaining wei
                       args address(mem[_669])
                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _677 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 160
                _680 = mem[_677 + 32]
                mem[mem[64] + 4] = mem[_677 + 32]
                mem[mem[64] + 36] = address(_671)
                require ext_code.size(address(_454))
                staticcall address(_454).getRepayAmount(uint256 rg1, address rg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_671)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _693 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _695 = mem[_693]
                if not _680:
                    _699 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_699] = 26
                    mem[_699 + 32] = 'SafeMath: division by zero'
                    _706 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_706] = 26
                    mem[_706 + 32] = 'SafeMath: division by zero'
                    if _695 <= 0:
                        t = t + 1
                        v = t + 1
                        w = w
                        continue 
                    require w < mem[96]
                    mem[mem[(32 * w) + 128] + 32] = address(_671)
                    require w < mem[96]
                    mem[mem[(32 * w) + 128]] = address(_454)
                    require w < mem[96]
                    mem[mem[(32 * w) + 128] + 64] = _680
                    require w < mem[96]
                    mem[mem[(32 * w) + 128] + 96] = _695
                    require w < mem[96]
                    mem[mem[(32 * w) + 128] + 128] = _465
                    if w + 1 != arg3:
                        t = t + 1
                        v = t + 1
                        w = w + 1
                        continue 
                    _775 = mem[64]
                    mem[mem[64]] = 128
                    _780 = mem[96]
                    mem[mem[64] + 128] = mem[96]
                    s = 0
                    u = 128
                    v = mem[64] + 160
                    while s < _780:
                        _841 = mem[u]
                        mem[v] = mem[mem[u] + 12 len 20]
                        mem[v + 32] = mem[_841 + 44 len 20]
                        mem[v + 64] = mem[_841 + 64]
                        mem[v + 96] = mem[_841 + 96]
                        mem[v + 128] = mem[_841 + 128]
                        s = s + 1
                        u = u + 32
                        v = v + 160
                        continue 
                    mem[_775 + 32] = w + 1
                    mem[_775 + 64] = idx
                    mem[_775 + 96] = t + 1
                    return memory
                      from mem[64]
                       len _775 + (160 * _780) + -mem[64] + 160
                if _472 * _680 / _680 != _472:
                    revert with 0, 'SafeMath: multiplication overflow'
                _701 = mem[64]
                mem[64] = mem[64] + 64
                mem[_701] = 26
                mem[_701 + 32] = 'SafeMath: division by zero'
                if not _472 * _680 / 10^18:
                    _709 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_709] = 26
                    mem[_709 + 32] = 'SafeMath: division by zero'
                    if _695 <= 0:
                        t = t + 1
                        v = t + 1
                        w = w
                        continue 
                    require w < mem[96]
                    mem[mem[(32 * w) + 128] + 32] = address(_671)
                    require w < mem[96]
                    mem[mem[(32 * w) + 128]] = address(_454)
                    require w < mem[96]
                    mem[mem[(32 * w) + 128] + 64] = _680
                    require w < mem[96]
                    mem[mem[(32 * w) + 128] + 96] = _695
                    require w < mem[96]
                    mem[mem[(32 * w) + 128] + 128] = _465
                    if w + 1 != arg3:
                        t = t + 1
                        v = t + 1
                        w = w + 1
                        continue 
                    _777 = mem[64]
                    mem[mem[64]] = 128
                    _783 = mem[96]
                    mem[mem[64] + 128] = mem[96]
                    s = 0
                    u = 128
                    v = mem[64] + 160
                    while s < _783:
                        _835 = mem[u]
                        mem[v] = mem[mem[u] + 12 len 20]
                        mem[v + 32] = mem[_835 + 44 len 20]
                        mem[v + 64] = mem[_835 + 64]
                        mem[v + 96] = mem[_835 + 96]
                        mem[v + 128] = mem[_835 + 128]
                        s = s + 1
                        u = u + 32
                        v = v + 160
                        continue 
                    mem[_777 + 32] = w + 1
                    mem[_777 + 64] = idx
                    mem[_777 + 96] = t + 1
                    return memory
                      from mem[64]
                       len _777 + (160 * _783) + -mem[64] + 160
                if _465 * _472 * _680 / 10^18 / _472 * _680 / 10^18 != _465:
                    revert with 0, 'SafeMath: multiplication overflow'
                _711 = mem[64]
                mem[64] = mem[64] + 64
                mem[_711] = 26
                mem[_711 + 32] = 'SafeMath: division by zero'
                if _695 <= _465 * _472 * _680 / 10^18 / 10^18:
                    t = t + 1
                    v = t + 1
                    w = w
                    continue 
                require w < mem[96]
                mem[mem[(32 * w) + 128] + 32] = address(_671)
                require w < mem[96]
                mem[mem[(32 * w) + 128]] = address(_454)
                require w < mem[96]
                mem[mem[(32 * w) + 128] + 64] = _680
                require w < mem[96]
                mem[mem[(32 * w) + 128] + 96] = _695
                require w < mem[96]
                mem[mem[(32 * w) + 128] + 128] = _465
                if w + 1 != arg3:
                    t = t + 1
                    v = t + 1
                    w = w + 1
                    continue 
                _779 = mem[64]
                mem[mem[64]] = 128
                _785 = mem[96]
                mem[mem[64] + 128] = mem[96]
                s = 0
                u = 128
                v = mem[64] + 160
                while s < _785:
                    _829 = mem[u]
                    mem[v] = mem[mem[u] + 12 len 20]
                    mem[v + 32] = mem[_829 + 44 len 20]
                    mem[v + 64] = mem[_829 + 64]
                    mem[v + 96] = mem[_829 + 96]
                    mem[v + 128] = mem[_829 + 128]
                    s = s + 1
                    u = u + 32
                    v = v + 160
                    continue 
                mem[_779 + 32] = w + 1
                mem[_779 + 64] = idx
                mem[_779 + 96] = t + 1
                return memory
                  from mem[64]
                   len _779 + (160 * _785) + -mem[64] + 160
            idx = idx + 1
            s = v
            t = idx
            u = w
            continue 
        _433 = mem[64]
        mem[mem[64]] = 128
        _437 = mem[96]
        mem[mem[64] + 128] = mem[96]
        idx = 0
        v = 128
        w = mem[64] + 160
        while idx < _437:
            _658 = mem[v]
            mem[w] = mem[mem[v] + 12 len 20]
            mem[w + 32] = mem[_658 + 44 len 20]
            mem[w + 64] = mem[_658 + 64]
            mem[w + 96] = mem[_658 + 96]
            mem[w + 128] = mem[_658 + 128]
            idx = idx + 1
            v = v + 32
            w = w + 160
            continue 
        mem[_433 + 32] = u
        mem[_433 + 64] = t
        mem[_433 + 96] = s
        return memory
          from mem[64]
           len _433 + (160 * _437) + -mem[64] + 160
    mem[64] = (32 * arg3) + 288
    mem[(32 * arg3) + 128] = 0
    mem[(32 * arg3) + 160] = 0
    mem[(32 * arg3) + 192] = 0
    mem[(32 * arg3) + 224] = 0
    mem[(32 * arg3) + 256] = 0
    mem[var12001] = (32 * arg3) + 128
    s = var12001
    idx = var12002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[(32 * arg3) + 128] = 0
        mem[(32 * arg3) + 160] = 0
        mem[(32 * arg3) + 192] = 0
        mem[(32 * arg3) + 224] = 0
        mem[(32 * arg3) + 256] = 0
        mem[s + 32] = (32 * arg3) + 128
        s = s + 32
        idx = idx - 1
        continue 
    require ext_code.size(configAddress)
    staticcall configAddress.factory() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _439 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_439] == mem[_439 + 12 len 20]
    require ext_code.size(mem[_439 + 12 len 20])
    staticcall mem[_439 + 12 len 20].countPools() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _453 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _455 = mem[_453]
    if arg1 >= mem[_453]:
        revert with 0, 'INVALID POOL INDEX'
    idx = arg1
    s = 0
    t = 0
    u = 0
    while idx < _455:
        require ext_code.size(configAddress)
        staticcall configAddress.factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _853 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _855 = mem[_853]
        require mem[_853] == mem[_853 + 12 len 20]
        mem[mem[64] + 4] = idx
        require ext_code.size(address(_855))
        staticcall address(_855).allPools(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _865 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _866 = mem[_865]
        require mem[_865] == mem[_865 + 12 len 20]
        mem[mem[64] + 4] = mem[_865 + 12 len 20]
        mem[mem[64] + 36] = 'liquidationRate' << 136
        require ext_code.size(configAddress)
        staticcall configAddress.poolParams(address rg1, bytes32 rg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], 'liquidationRate'
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _869 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _870 = mem[_869]
        mem[mem[64] + 4] = address(_866)
        mem[mem[64] + 36] = 'pledgePrice' << 168
        require ext_code.size(configAddress)
        staticcall configAddress.poolParams(address rg1, bytes32 rg2) with:
                gas gas_remaining wei
               args address(_866), 'pledgePrice' << 168
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _873 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _874 = mem[_873]
        require ext_code.size(address(_866))
        staticcall address(_866).numberBorrowers() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _877 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _878 = mem[_877]
        if arg2 >= mem[_877]:
            revert with 0, 'INVALID START INDEX'
        t = arg2
        v = s
        w = u
        while t < _878:
            mem[mem[64] + 4] = t
            require ext_code.size(address(_866))
            staticcall address(_866).borrowerList(uint256 rg1) with:
                    gas gas_remaining wei
                   args t
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _972 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _973 = mem[_972]
            require mem[_972] == mem[_972 + 12 len 20]
            require ext_code.size(address(_866))
            staticcall address(_866).borrows(address rg1) with:
                    gas gas_remaining wei
                   args address(mem[_972])
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _976 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            _978 = mem[_976 + 32]
            mem[mem[64] + 4] = mem[_976 + 32]
            mem[mem[64] + 36] = address(_973)
            require ext_code.size(address(_866))
            staticcall address(_866).getRepayAmount(uint256 rg1, address rg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], address(_973)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _984 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _985 = mem[_984]
            if not _978:
                _987 = mem[64]
                mem[64] = mem[64] + 64
                mem[_987] = 26
                mem[_987 + 32] = 'SafeMath: division by zero'
                _991 = mem[64]
                mem[64] = mem[64] + 64
                mem[_991] = 26
                mem[_991 + 32] = 'SafeMath: division by zero'
                if _985 <= 0:
                    t = t + 1
                    v = t + 1
                    w = w
                    continue 
                require w < mem[96]
                mem[mem[(32 * w) + 128] + 32] = address(_973)
                require w < mem[96]
                mem[mem[(32 * w) + 128]] = address(_866)
                require w < mem[96]
                mem[mem[(32 * w) + 128] + 64] = _978
                require w < mem[96]
                mem[mem[(32 * w) + 128] + 96] = _985
                require w < mem[96]
                mem[mem[(32 * w) + 128] + 128] = _870
                if w + 1 != arg3:
                    t = t + 1
                    v = t + 1
                    w = w + 1
                    continue 
                _1025 = mem[64]
                mem[mem[64]] = 128
                _1028 = mem[96]
                mem[mem[64] + 128] = mem[96]
                s = 0
                u = 128
                v = mem[64] + 160
                while s < _1028:
                    _1064 = mem[u]
                    mem[v] = mem[mem[u] + 12 len 20]
                    mem[v + 32] = mem[_1064 + 44 len 20]
                    mem[v + 64] = mem[_1064 + 64]
                    mem[v + 96] = mem[_1064 + 96]
                    mem[v + 128] = mem[_1064 + 128]
                    s = s + 1
                    u = u + 32
                    v = v + 160
                    continue 
                mem[_1025 + 32] = w + 1
                mem[_1025 + 64] = idx
                mem[_1025 + 96] = t + 1
                return memory
                  from mem[64]
                   len _1025 + (160 * _1028) + -mem[64] + 160
            if _874 * _978 / _978 != _874:
                revert with 0, 'SafeMath: multiplication overflow'
            _988 = mem[64]
            mem[64] = mem[64] + 64
            mem[_988] = 26
            mem[_988 + 32] = 'SafeMath: division by zero'
            if not _874 * _978 / 10^18:
                _992 = mem[64]
                mem[64] = mem[64] + 64
                mem[_992] = 26
                mem[_992 + 32] = 'SafeMath: division by zero'
                if _985 <= 0:
                    t = t + 1
                    v = t + 1
                    w = w
                    continue 
                require w < mem[96]
                mem[mem[(32 * w) + 128] + 32] = address(_973)
                require w < mem[96]
                mem[mem[(32 * w) + 128]] = address(_866)
                require w < mem[96]
                mem[mem[(32 * w) + 128] + 64] = _978
                require w < mem[96]
                mem[mem[(32 * w) + 128] + 96] = _985
                require w < mem[96]
                mem[mem[(32 * w) + 128] + 128] = _870
                if w + 1 != arg3:
                    t = t + 1
                    v = t + 1
                    w = w + 1
                    continue 
                _1026 = mem[64]
                mem[mem[64]] = 128
                _1029 = mem[96]
                mem[mem[64] + 128] = mem[96]
                s = 0
                u = 128
                v = mem[64] + 160
                while s < _1029:
                    _1058 = mem[u]
                    mem[v] = mem[mem[u] + 12 len 20]
                    mem[v + 32] = mem[_1058 + 44 len 20]
                    mem[v + 64] = mem[_1058 + 64]
                    mem[v + 96] = mem[_1058 + 96]
                    mem[v + 128] = mem[_1058 + 128]
                    s = s + 1
                    u = u + 32
                    v = v + 160
                    continue 
                mem[_1026 + 32] = w + 1
                mem[_1026 + 64] = idx
                mem[_1026 + 96] = t + 1
                return memory
                  from mem[64]
                   len _1026 + (160 * _1029) + -mem[64] + 160
            if _870 * _874 * _978 / 10^18 / _874 * _978 / 10^18 != _870:
                revert with 0, 'SafeMath: multiplication overflow'
            _993 = mem[64]
            mem[64] = mem[64] + 64
            mem[_993] = 26
            mem[_993 + 32] = 'SafeMath: division by zero'
            if _985 <= _870 * _874 * _978 / 10^18 / 10^18:
                t = t + 1
                v = t + 1
                w = w
                continue 
            require w < mem[96]
            mem[mem[(32 * w) + 128] + 32] = address(_973)
            require w < mem[96]
            mem[mem[(32 * w) + 128]] = address(_866)
            require w < mem[96]
            mem[mem[(32 * w) + 128] + 64] = _978
            require w < mem[96]
            mem[mem[(32 * w) + 128] + 96] = _985
            require w < mem[96]
            mem[mem[(32 * w) + 128] + 128] = _870
            if w + 1 != arg3:
                t = t + 1
                v = t + 1
                w = w + 1
                continue 
            _1027 = mem[64]
            mem[mem[64]] = 128
            _1030 = mem[96]
            mem[mem[64] + 128] = mem[96]
            s = 0
            u = 128
            v = mem[64] + 160
            while s < _1030:
                _1052 = mem[u]
                mem[v] = mem[mem[u] + 12 len 20]
                mem[v + 32] = mem[_1052 + 44 len 20]
                mem[v + 64] = mem[_1052 + 64]
                mem[v + 96] = mem[_1052 + 96]
                mem[v + 128] = mem[_1052 + 128]
                s = s + 1
                u = u + 32
                v = v + 160
                continue 
            mem[_1027 + 32] = w + 1
            mem[_1027 + 64] = idx
            mem[_1027 + 96] = t + 1
            return memory
              from mem[64]
               len _1027 + (160 * _1030) + -mem[64] + 160
        idx = idx + 1
        s = v
        t = idx
        u = w
        continue 
    _852 = mem[64]
    mem[mem[64]] = 128
    _854 = mem[96]
    mem[mem[64] + 128] = mem[96]
    idx = 0
    v = 128
    w = mem[64] + 160
    while idx < _854:
        _963 = mem[v]
        mem[w] = mem[mem[v] + 12 len 20]
        mem[w + 32] = mem[_963 + 44 len 20]
        mem[w + 64] = mem[_963 + 64]
        mem[w + 96] = mem[_963 + 96]
        mem[w + 128] = mem[_963 + 128]
        idx = idx + 1
        v = v + 32
        w = w + 160
        continue 
    mem[_852 + 32] = u
    mem[_852 + 64] = t
    mem[_852 + 96] = s
    return memory
      from mem[64]
       len _852 + (160 * _854) + -mem[64] + 160
}

function queryToken(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    mem[128] = 96
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg3)
    staticcall arg3.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _5 = mem[288]
    require mem[288] <= test266151307()
    require mem[288] + 319 < return_data.size + 288
    _6 = mem[mem[288] + 288]
    require mem[mem[288] + 288] <= test266151307()
    require ceil32(mem[mem[288] + 288]) + 32 >= 0 and ceil32(return_data.size) + ceil32(mem[mem[288] + 288]) + 320 <= test266151307()
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[288] + 288]) + 320
    mem[ceil32(return_data.size) + 288] = mem[mem[288] + 288]
    require _5 + _6 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 320 len ceil32(_6)] = mem[_5 + 320 len ceil32(_6)]
    if ceil32(_6) <= _6:
        mem[96] = ceil32(return_data.size) + 288
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg3)
        staticcall arg3.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _332 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _334 = mem[_332]
        require mem[_332] <= test266151307()
        require _332 + mem[_332] + 31 < _332 + return_data.size
        _336 = mem[_332 + mem[_332]]
        require mem[_332 + mem[_332]] <= test266151307()
        require ceil32(mem[_332 + mem[_332]]) + 32 >= 0 and _332 + ceil32(return_data.size) + ceil32(mem[_332 + mem[_332]]) + 32 <= test266151307()
        mem[64] = _332 + ceil32(return_data.size) + ceil32(mem[_332 + mem[_332]]) + 32
        mem[_332 + ceil32(return_data.size)] = _336
        require _334 + _336 + 32 <= return_data.size
        mem[_332 + ceil32(return_data.size) + 32 len ceil32(_336)] = mem[_332 + _334 + 32 len ceil32(_336)]
        if ceil32(_336) <= _336:
            mem[128] = _332 + ceil32(return_data.size)
            require ext_code.size(arg3)
            staticcall arg3.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _656 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_656] == mem[_656 + 31 len 1]
            mem[160] = mem[_656 + 31 len 1]
            mem[mem[64] + 4] = arg1
            require ext_code.size(arg3)
            staticcall arg3.0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _672 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[192] = mem[_672]
            require ext_code.size(arg3)
            staticcall arg3.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _688 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[224] = mem[_688]
            if arg1 == arg2:
                _698 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = 192
                _710 = mem[ceil32(return_data.size) + 288]
                mem[mem[64] + 224] = mem[ceil32(return_data.size) + 288]
                mem[mem[64] + 256 len ceil32(_710)] = mem[ceil32(return_data.size) + 320 len ceil32(_710)]
                if ceil32(_710) <= _710:
                    mem[mem[64] + 64] = ceil32(_710) + 224
                    mem[ceil32(_710) + mem[64] + 256] = _336
                    mem[ceil32(_710) + mem[64] + 288 len ceil32(_336)] = mem[_332 + ceil32(return_data.size) + 32 len ceil32(_336)]
                    if ceil32(_336) > _336:
                        mem[ceil32(_710) + mem[64] + _336 + 288] = 0
                    mem[mem[64] + 96] = mem[191 len 1]
                    mem[mem[64] + 128] = mem[192]
                    mem[mem[64] + 192] = 0
                    return 32, 192, 
                           ceil32(_710) + 224,
                           mem[mem[64] + 96],
                           mem[192],
                           mem[224],
                           0,
                           mem[mem[64] + 224 len ceil32(_710) + 32],
                           _336,
                           mem[mem[64] + ceil32(_710) + 288 len ceil32(_336)]
                mem[mem[64] + _710 + 256] = 0
                mem[mem[64] + 64] = ceil32(_710) + 224
                mem[ceil32(_710) + _698 + 256] = _336
                mem[ceil32(_710) + _698 + 288 len ceil32(_336)] = mem[_332 + ceil32(return_data.size) + 32 len ceil32(_336)]
                if ceil32(_336) > _336:
                    mem[ceil32(_710) + _698 + _336 + 288] = 0
                mem[_698 + 96] = mem[191 len 1]
                mem[_698 + 128] = mem[192]
                mem[_698 + 160] = mem[224]
                mem[_698 + 192] = 0
                return memory
                  from mem[64]
                   len ceil32(_336) + ceil32(_710) + _698 + -mem[64] + 288
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = arg2
            require ext_code.size(arg3)
            staticcall arg3.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(arg1), arg2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _711 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[256] = mem[_711]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 192
            _743 = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + 224] = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + 256 len ceil32(_743)] = mem[ceil32(return_data.size) + 320 len ceil32(_743)]
            if ceil32(_743) <= _743:
                mem[mem[64] + 64] = ceil32(_743) + 224
                mem[ceil32(_743) + mem[64] + 256] = _336
                mem[ceil32(_743) + mem[64] + 288 len ceil32(_336)] = mem[_332 + ceil32(return_data.size) + 32 len ceil32(_336)]
                if ceil32(_336) > _336:
                    mem[ceil32(_743) + mem[64] + _336 + 288] = 0
                mem[mem[64] + 96] = mem[191 len 1]
                mem[mem[64] + 128] = mem[192]
                mem[mem[64] + 160] = mem[224]
                mem[mem[64] + 192] = mem[256]
                return 32, 192, 
                       ceil32(_743) + 224,
                       mem[mem[64] + 96],
                       mem[192],
                       mem[224],
                       mem[256],
                       mem[mem[64] + 224 len ceil32(_743) + 32],
                       _336,
                       mem[mem[64] + ceil32(_743) + 288 len ceil32(_336)]
            mem[mem[64] + _743 + 256] = 0
            mem[mem[64] + 64] = ceil32(_743) + 224
            mem[ceil32(_743) + mem[64] + 256] = _336
            mem[ceil32(_743) + mem[64] + 288 len ceil32(_336)] = mem[_332 + ceil32(return_data.size) + 32 len ceil32(_336)]
            if ceil32(_336) > _336:
                mem[ceil32(_743) + mem[64] + _336 + 288] = 0
            mem[mem[64] + 96] = mem[191 len 1]
            mem[mem[64] + 128] = mem[192]
            mem[mem[64] + 160] = mem[224]
            mem[mem[64] + 192] = mem[256]
            return 32, 192, 
                   ceil32(_743) + 224,
                   mem[mem[64] + 96],
                   mem[192],
                   mem[224],
                   mem[256],
                   mem[mem[64] + 224 len _743 + 32],
                   0,
                   mem[mem[64] + _743 + 288 len ceil32(_336) + ceil32(_743) - _743]
        mem[_332 + ceil32(return_data.size) + _336 + 32] = 0
        mem[128] = _332 + ceil32(return_data.size)
        require ext_code.size(arg3)
        staticcall arg3.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _658 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_658] == mem[_658 + 31 len 1]
        mem[160] = mem[_658 + 31 len 1]
        mem[mem[64] + 4] = arg1
        require ext_code.size(arg3)
        staticcall arg3.0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _674 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[192] = mem[_674]
        require ext_code.size(arg3)
        staticcall arg3.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _690 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[224] = mem[_690]
        if arg1 == arg2:
            _703 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 192
            _716 = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + 224] = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + 256 len ceil32(_716)] = mem[ceil32(return_data.size) + 320 len ceil32(_716)]
            if ceil32(_716) <= _716:
                mem[mem[64] + 64] = ceil32(_716) + 224
                mem[ceil32(_716) + mem[64] + 256] = _336
                mem[ceil32(_716) + mem[64] + 288 len ceil32(_336)] = mem[_332 + ceil32(return_data.size) + 32 len ceil32(_336)]
                if ceil32(_336) > _336:
                    mem[ceil32(_716) + mem[64] + _336 + 288] = 0
                mem[mem[64] + 96] = mem[191 len 1]
                mem[mem[64] + 128] = mem[192]
                mem[mem[64] + 192] = 0
                return 32, 192, 
                       ceil32(_716) + 224,
                       mem[mem[64] + 96],
                       mem[192],
                       mem[224],
                       0,
                       mem[mem[64] + 224 len ceil32(_716) + 32],
                       _336,
                       mem[mem[64] + ceil32(_716) + 288 len ceil32(_336)]
            mem[mem[64] + _716 + 256] = 0
            mem[mem[64] + 64] = ceil32(_716) + 224
            mem[ceil32(_716) + _703 + 256] = _336
            mem[ceil32(_716) + _703 + 288 len ceil32(_336)] = mem[_332 + ceil32(return_data.size) + 32 len ceil32(_336)]
            if ceil32(_336) > _336:
                mem[ceil32(_716) + _703 + _336 + 288] = 0
            mem[_703 + 96] = mem[191 len 1]
            mem[_703 + 128] = mem[192]
            mem[_703 + 160] = mem[224]
            mem[_703 + 192] = 0
            return memory
              from mem[64]
               len ceil32(_336) + ceil32(_716) + _703 + -mem[64] + 288
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = arg2
        require ext_code.size(arg3)
        staticcall arg3.0xdd62ed3e with:
                gas gas_remaining wei
               args address(arg1), arg2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _717 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[256] = mem[_717]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 192
        _753 = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 224] = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 256 len ceil32(_753)] = mem[ceil32(return_data.size) + 320 len ceil32(_753)]
        if ceil32(_753) <= _753:
            mem[mem[64] + 64] = ceil32(_753) + 224
            mem[ceil32(_753) + mem[64] + 256] = _336
            mem[ceil32(_753) + mem[64] + 288 len ceil32(_336)] = mem[_332 + ceil32(return_data.size) + 32 len ceil32(_336)]
            if ceil32(_336) > _336:
                mem[ceil32(_753) + mem[64] + _336 + 288] = 0
            mem[mem[64] + 96] = mem[191 len 1]
            mem[mem[64] + 128] = mem[192]
            mem[mem[64] + 160] = mem[224]
            mem[mem[64] + 192] = mem[256]
            return 32, 192, 
                   ceil32(_753) + 224,
                   mem[mem[64] + 96],
                   mem[192],
                   mem[224],
                   mem[256],
                   mem[mem[64] + 224 len ceil32(_753) + 32],
                   _336,
                   mem[mem[64] + ceil32(_753) + 288 len ceil32(_336)]
        mem[mem[64] + _753 + 256] = 0
        mem[mem[64] + 64] = ceil32(_753) + 224
        mem[ceil32(_753) + mem[64] + 256] = _336
        mem[ceil32(_753) + mem[64] + 288 len ceil32(_336)] = mem[_332 + ceil32(return_data.size) + 32 len ceil32(_336)]
        if ceil32(_336) > _336:
            mem[ceil32(_753) + mem[64] + _336 + 288] = 0
        mem[mem[64] + 96] = mem[191 len 1]
        mem[mem[64] + 128] = mem[192]
        mem[mem[64] + 160] = mem[224]
        mem[mem[64] + 192] = mem[256]
        return 32, 192, 
               ceil32(_753) + 224,
               mem[mem[64] + 96],
               mem[192],
               mem[224],
               mem[256],
               mem[mem[64] + 224 len _753 + 32],
               0,
               mem[mem[64] + _753 + 288 len ceil32(_336) + ceil32(_753) - _753]
    mem[ceil32(return_data.size) + _6 + 320] = 0
    mem[96] = ceil32(return_data.size) + 288
    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg3)
    staticcall arg3.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _333 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _335 = mem[_333]
    require mem[_333] <= test266151307()
    require _333 + mem[_333] + 31 < _333 + return_data.size
    _337 = mem[_333 + mem[_333]]
    require mem[_333 + mem[_333]] <= test266151307()
    require ceil32(mem[_333 + mem[_333]]) + 32 >= 0 and _333 + ceil32(return_data.size) + ceil32(mem[_333 + mem[_333]]) + 32 <= test266151307()
    mem[64] = _333 + ceil32(return_data.size) + ceil32(mem[_333 + mem[_333]]) + 32
    mem[_333 + ceil32(return_data.size)] = _337
    require _335 + _337 + 32 <= return_data.size
    mem[_333 + ceil32(return_data.size) + 32 len ceil32(_337)] = mem[_333 + _335 + 32 len ceil32(_337)]
    if ceil32(_337) <= _337:
        mem[128] = _333 + ceil32(return_data.size)
        require ext_code.size(arg3)
        staticcall arg3.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _657 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_657] == mem[_657 + 31 len 1]
        mem[160] = mem[_657 + 31 len 1]
        mem[mem[64] + 4] = arg1
        require ext_code.size(arg3)
        staticcall arg3.0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _673 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[192] = mem[_673]
        require ext_code.size(arg3)
        staticcall arg3.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _689 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[224] = mem[_689]
        if arg1 == arg2:
            _700 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 192
            _713 = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + 224] = mem[ceil32(return_data.size) + 288]
            mem[mem[64] + 256 len ceil32(_713)] = mem[ceil32(return_data.size) + 320 len ceil32(_713)]
            if ceil32(_713) <= _713:
                mem[mem[64] + 64] = ceil32(_713) + 224
                mem[ceil32(_713) + mem[64] + 256] = _337
                mem[ceil32(_713) + mem[64] + 288 len ceil32(_337)] = mem[_333 + ceil32(return_data.size) + 32 len ceil32(_337)]
                if ceil32(_337) > _337:
                    mem[ceil32(_713) + mem[64] + _337 + 288] = 0
                mem[mem[64] + 96] = mem[191 len 1]
                mem[mem[64] + 128] = mem[192]
                mem[mem[64] + 192] = 0
                return 32, 192, 
                       ceil32(_713) + 224,
                       mem[mem[64] + 96],
                       mem[192],
                       mem[224],
                       0,
                       mem[mem[64] + 224 len ceil32(_713) + 32],
                       _337,
                       mem[mem[64] + ceil32(_713) + 288 len ceil32(_337)]
            mem[mem[64] + _713 + 256] = 0
            mem[mem[64] + 64] = ceil32(_713) + 224
            mem[ceil32(_713) + _700 + 256] = _337
            mem[ceil32(_713) + _700 + 288 len ceil32(_337)] = mem[_333 + ceil32(return_data.size) + 32 len ceil32(_337)]
            if ceil32(_337) > _337:
                mem[ceil32(_713) + _700 + _337 + 288] = 0
            mem[_700 + 96] = mem[191 len 1]
            mem[_700 + 128] = mem[192]
            mem[_700 + 160] = mem[224]
            mem[_700 + 192] = 0
            return memory
              from mem[64]
               len ceil32(_337) + ceil32(_713) + _700 + -mem[64] + 288
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = arg2
        require ext_code.size(arg3)
        staticcall arg3.0xdd62ed3e with:
                gas gas_remaining wei
               args address(arg1), arg2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _714 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[256] = mem[_714]
        _729 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 192
        _748 = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 224] = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 256 len ceil32(_748)] = mem[ceil32(return_data.size) + 320 len ceil32(_748)]
        if ceil32(_748) <= _748:
            mem[mem[64] + 64] = ceil32(_748) + 224
            mem[ceil32(_748) + mem[64] + 256] = _337
            mem[ceil32(_748) + mem[64] + 288 len ceil32(_337)] = mem[_333 + ceil32(return_data.size) + 32 len ceil32(_337)]
            if ceil32(_337) > _337:
                mem[ceil32(_748) + mem[64] + _337 + 288] = 0
            mem[mem[64] + 96] = mem[191 len 1]
            mem[mem[64] + 128] = mem[192]
            mem[mem[64] + 160] = mem[224]
            mem[mem[64] + 192] = mem[256]
            return 32, 192, 
                   ceil32(_748) + 224,
                   mem[mem[64] + 96],
                   mem[192],
                   mem[224],
                   mem[256],
                   mem[mem[64] + 224 len ceil32(_748) + 32],
                   _337,
                   mem[mem[64] + ceil32(_748) + 288 len ceil32(_337)]
        mem[mem[64] + _748 + 256] = 0
        mem[mem[64] + 64] = ceil32(_748) + 224
        mem[ceil32(_748) + _729 + 256] = _337
        mem[ceil32(_748) + _729 + 288 len ceil32(_337)] = mem[_333 + ceil32(return_data.size) + 32 len ceil32(_337)]
        if ceil32(_337) > _337:
            mem[ceil32(_748) + _729 + _337 + 288] = 0
        mem[_729 + 96] = mem[191 len 1]
        mem[_729 + 128] = mem[192]
        mem[_729 + 160] = mem[224]
        mem[_729 + 192] = mem[256]
        return memory
          from mem[64]
           len ceil32(_337) + ceil32(_748) + _729 + -mem[64] + 288
    mem[_333 + ceil32(return_data.size) + _337 + 32] = 0
    mem[128] = _333 + ceil32(return_data.size)
    require ext_code.size(arg3)
    staticcall arg3.0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _659 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_659] == mem[_659 + 31 len 1]
    mem[160] = mem[_659 + 31 len 1]
    mem[mem[64] + 4] = arg1
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _675 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[192] = mem[_675]
    require ext_code.size(arg3)
    staticcall arg3.0x18160ddd with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _691 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[224] = mem[_691]
    if arg1 == arg2:
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 192
        _718 = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 224] = mem[ceil32(return_data.size) + 288]
        mem[mem[64] + 256 len ceil32(_718)] = mem[ceil32(return_data.size) + 320 len ceil32(_718)]
        if ceil32(_718) <= _718:
            mem[mem[64] + 64] = ceil32(_718) + 224
            mem[ceil32(_718) + mem[64] + 256] = _337
            mem[ceil32(_718) + mem[64] + 288 len ceil32(_337)] = mem[_333 + ceil32(return_data.size) + 32 len ceil32(_337)]
            if ceil32(_337) > _337:
                mem[ceil32(_718) + mem[64] + _337 + 288] = 0
            mem[mem[64] + 96] = mem[191 len 1]
            mem[mem[64] + 128] = mem[192]
            mem[mem[64] + 192] = 0
            return 32, 192, 
                   ceil32(_718) + 224,
                   mem[mem[64] + 96],
                   mem[192],
                   mem[224],
                   0,
                   mem[mem[64] + 224 len ceil32(_718) + 32],
                   _337,
                   mem[mem[64] + ceil32(_718) + 288 len ceil32(_337)]
        mem[mem[64] + _718 + 256] = 0
        mem[mem[64] + 64] = ceil32(_718) + 224
        mem[ceil32(_718) + mem[64] + 256] = _337
        mem[ceil32(_718) + mem[64] + 288 len ceil32(_337)] = mem[_333 + ceil32(return_data.size) + 32 len ceil32(_337)]
        if ceil32(_337) > _337:
            mem[ceil32(_718) + mem[64] + _337 + 288] = 0
        mem[mem[64] + 96] = mem[191 len 1]
        mem[mem[64] + 128] = mem[192]
        mem[mem[64] + 192] = 0
        return 32, 192, 
               ceil32(_718) + 224,
               mem[mem[64] + 96],
               mem[192],
               mem[224],
               0,
               mem[mem[64] + 224 len _718 + 32],
               0,
               mem[mem[64] + _718 + 288 len ceil32(_337) + ceil32(_718) - _718]
    mem[mem[64] + 4] = arg1
    mem[mem[64] + 36] = arg2
    require ext_code.size(arg3)
    staticcall arg3.0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg1), arg2
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _719 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[256] = mem[_719]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 192
    _755 = mem[ceil32(return_data.size) + 288]
    mem[mem[64] + 224] = mem[ceil32(return_data.size) + 288]
    mem[mem[64] + 256 len ceil32(_755)] = mem[ceil32(return_data.size) + 320 len ceil32(_755)]
    if ceil32(_755) <= _755:
        mem[mem[64] + 64] = ceil32(_755) + 224
        mem[ceil32(_755) + mem[64] + 256] = _337
        mem[ceil32(_755) + mem[64] + 288 len ceil32(_337)] = mem[_333 + ceil32(return_data.size) + 32 len ceil32(_337)]
        if ceil32(_337) > _337:
            mem[ceil32(_755) + mem[64] + _337 + 288] = 0
        mem[mem[64] + 96] = mem[191 len 1]
        mem[mem[64] + 128] = mem[192]
        mem[mem[64] + 160] = mem[224]
        mem[mem[64] + 192] = mem[256]
        return 32, 192, 
               ceil32(_755) + 224,
               mem[mem[64] + 96],
               mem[192],
               mem[224],
               mem[256],
               mem[mem[64] + 224 len ceil32(_755) + 32],
               _337,
               mem[mem[64] + ceil32(_755) + 288 len ceil32(_337)]
    mem[mem[64] + _755 + 256] = 0
    mem[mem[64] + 64] = ceil32(_755) + 224
    mem[ceil32(_755) + mem[64] + 256] = _337
    mem[ceil32(_755) + mem[64] + 288 len ceil32(_337)] = mem[_333 + ceil32(return_data.size) + 32 len ceil32(_337)]
    if ceil32(_337) > _337:
        mem[ceil32(_755) + mem[64] + _337 + 288] = 0
    mem[mem[64] + 96] = mem[191 len 1]
    mem[mem[64] + 128] = mem[192]
    mem[mem[64] + 160] = mem[224]
    mem[mem[64] + 192] = mem[256]
    return 32, 192, 
           ceil32(_755) + 224,
           mem[mem[64] + 96],
           mem[192],
           mem[224],
           mem[256],
           mem[mem[64] + 224 len _755 + 32],
           0,
           mem[mem[64] + _755 + 288 len ceil32(_337) + ceil32(_755) - _755]
}

function iteratePairLiquidationInfo(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if arg2 > arg3:
        revert with 0, 'INVAID_PARAMTERS'
    require ext_code.size(arg1)
    staticcall arg1.numberBorrowers() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = arg1
    mem[ceil32(return_data.size) + 132] = 'liquidationRate' << 136
    require ext_code.size(configAddress)
    staticcall configAddress.poolParams(address rg1, bytes32 rg2) with:
            gas gas_remaining wei
           args address(arg1), 'liquidationRate' << 136
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = arg1
    mem[(2 * ceil32(return_data.size)) + 132] = 'pledgePrice' << 168
    require ext_code.size(configAddress)
    staticcall configAddress.poolParams(address rg1, bytes32 rg2) with:
            gas gas_remaining wei
           args address(arg1), 'pledgePrice' << 168
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    if arg3 <= ext_call.return_data[0]:
        idx = arg2
        s = 0
        while idx < arg3:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.borrowerList(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _211 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _218 = mem[_211]
            require mem[_211] == mem[_211 + 12 len 20]
            require ext_code.size(arg1)
            staticcall arg1.borrows(address rg1) with:
                    gas gas_remaining wei
                   args address(mem[_211])
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _262 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            _276 = mem[_262 + 32]
            mem[mem[64] + 4] = mem[_262 + 32]
            mem[mem[64] + 36] = address(_218)
            require ext_code.size(arg1)
            staticcall arg1.getRepayAmount(uint256 rg1, address rg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], address(_218)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _307 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _313 = mem[_307]
            if not _276:
                _337 = mem[64]
                mem[64] = mem[64] + 64
                mem[_337] = 26
                mem[_337 + 32] = 'SafeMath: division by zero'
                _359 = mem[64]
                mem[64] = mem[64] + 64
                mem[_359] = 26
                mem[_359 + 32] = 'SafeMath: division by zero'
                if _313 <= 0:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if ext_call.return_data[0] * _276 / _276 != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _340 = mem[64]
                mem[64] = mem[64] + 64
                mem[_340] = 26
                mem[_340 + 32] = 'SafeMath: division by zero'
                if not ext_call.return_data[0] * _276 / 10^18:
                    _365 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_365] = 26
                    mem[_365 + 32] = 'SafeMath: division by zero'
                    if _313 <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] * _276 / 10^18 / ext_call.return_data[0] * _276 / 10^18 != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _369 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_369] = 26
                    mem[_369 + 32] = 'SafeMath: division by zero'
                    if _313 <= ext_call.return_data[0] * ext_call.return_data[0] * _276 / 10^18 / 10^18:
                        idx = idx + 1
                        s = s
                        continue 
            idx = idx + 1
            s = s + 1
            continue 
        require s <= test266151307()
        _205 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + (32 * s) + 32
        if not s:
            idx = arg2
            s = 0
            while idx < arg3:
                mem[mem[64] + 4] = idx
                require ext_code.size(arg1)
                staticcall arg1.borrowerList(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _523 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _539 = mem[_523]
                require mem[_523] == mem[_523 + 12 len 20]
                require ext_code.size(arg1)
                staticcall arg1.borrows(address rg1) with:
                        gas gas_remaining wei
                       args address(mem[_523])
                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _571 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 160
                _576 = mem[_571 + 32]
                mem[mem[64] + 4] = mem[_571 + 32]
                mem[mem[64] + 36] = address(_539)
                require ext_code.size(arg1)
                staticcall arg1.getRepayAmount(uint256 rg1, address rg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_539)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _593 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _607 = mem[_593]
                if not _576:
                    _617 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_617] = 26
                    mem[_617 + 32] = 'SafeMath: division by zero'
                    _632 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_632] = 26
                    mem[_632 + 32] = 'SafeMath: division by zero'
                    if _607 <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if ext_call.return_data[0] * _576 / _576 != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _619 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_619] = 26
                    mem[_619 + 32] = 'SafeMath: division by zero'
                    if not ext_call.return_data[0] * _576 / 10^18:
                        _635 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_635] = 26
                        mem[_635 + 32] = 'SafeMath: division by zero'
                        if _607 <= 0:
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] * _576 / 10^18 / ext_call.return_data[0] * _576 / 10^18 != ext_call.return_data[0]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _637 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_637] = 26
                        mem[_637 + 32] = 'SafeMath: division by zero'
                        if _607 <= ext_call.return_data[0] * ext_call.return_data[0] * _576 / 10^18 / 10^18:
                            idx = idx + 1
                            s = s
                            continue 
                require s < mem[_205]
                mem[mem[(32 * s) + _205 + 32] + 32] = address(_539)
                require s < mem[_205]
                mem[mem[(32 * s) + _205 + 32]] = arg1
                require s < mem[_205]
                mem[mem[(32 * s) + _205 + 32] + 64] = _576
                require s < mem[_205]
                mem[mem[(32 * s) + _205 + 32] + 96] = _607
                require s < mem[_205]
                mem[mem[(32 * s) + _205 + 32] + 128] = ext_call.return_data[0]
                idx = idx + 1
                s = s + 1
                continue 
            _517 = mem[64]
            mem[mem[64]] = 32
            _521 = mem[_205]
            mem[mem[64] + 32] = mem[_205]
            idx = 0
            s = _205 + 32
            t = mem[64] + 64
            while idx < _521:
                _773 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_773 + 44 len 20]
                mem[t + 64] = mem[_773 + 64]
                mem[t + 96] = mem[_773 + 96]
                mem[t + 128] = mem[_773 + 128]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            return memory
              from mem[64]
               len _517 + (160 * _521) + -mem[64] + 64
        mem[64] = _205 + (32 * s) + 192
        mem[_205 + (32 * s) + 32] = 0
        mem[_205 + (32 * s) + 64] = 0
        mem[_205 + (32 * s) + 96] = 0
        mem[_205 + (32 * s) + 128] = 0
        mem[_205 + (32 * s) + 160] = 0
        mem[var42001] = _205 + (32 * s) + 32
        t = var42001
        idx = var42002
        while idx - 1:
            mem[64] = mem[64] + 160
            mem[_205 + (32 * s) + 32] = 0
            mem[_205 + (32 * s) + 64] = 0
            mem[_205 + (32 * s) + 96] = 0
            mem[_205 + (32 * s) + 128] = 0
            mem[_205 + (32 * s) + 160] = 0
            mem[t + 32] = _205 + (32 * s) + 32
            t = t + 32
            idx = idx - 1
            continue 
        idx = arg2
        s = 0
        while idx < arg3:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.borrowerList(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _923 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _937 = mem[_923]
            require mem[_923] == mem[_923 + 12 len 20]
            require ext_code.size(arg1)
            staticcall arg1.borrows(address rg1) with:
                    gas gas_remaining wei
                   args address(mem[_923])
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _945 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            _948 = mem[_945 + 32]
            mem[mem[64] + 4] = mem[_945 + 32]
            mem[mem[64] + 36] = address(_937)
            require ext_code.size(arg1)
            staticcall arg1.getRepayAmount(uint256 rg1, address rg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], address(_937)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _961 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _963 = mem[_961]
            if not _948:
                _967 = mem[64]
                mem[64] = mem[64] + 64
                mem[_967] = 26
                mem[_967 + 32] = 'SafeMath: division by zero'
                _974 = mem[64]
                mem[64] = mem[64] + 64
                mem[_974] = 26
                mem[_974 + 32] = 'SafeMath: division by zero'
                if _963 <= 0:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if ext_call.return_data[0] * _948 / _948 != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _969 = mem[64]
                mem[64] = mem[64] + 64
                mem[_969] = 26
                mem[_969 + 32] = 'SafeMath: division by zero'
                if not ext_call.return_data[0] * _948 / 10^18:
                    _977 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_977] = 26
                    mem[_977 + 32] = 'SafeMath: division by zero'
                    if _963 <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] * _948 / 10^18 / ext_call.return_data[0] * _948 / 10^18 != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _979 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_979] = 26
                    mem[_979 + 32] = 'SafeMath: division by zero'
                    if _963 <= ext_call.return_data[0] * ext_call.return_data[0] * _948 / 10^18 / 10^18:
                        idx = idx + 1
                        s = s
                        continue 
            require s < mem[_205]
            mem[mem[(32 * s) + _205 + 32] + 32] = address(_937)
            require s < mem[_205]
            mem[mem[(32 * s) + _205 + 32]] = arg1
            require s < mem[_205]
            mem[mem[(32 * s) + _205 + 32] + 64] = _948
            require s < mem[_205]
            mem[mem[(32 * s) + _205 + 32] + 96] = _963
            require s < mem[_205]
            mem[mem[(32 * s) + _205 + 32] + 128] = ext_call.return_data[0]
            idx = idx + 1
            s = s + 1
            continue 
        _917 = mem[64]
        mem[mem[64]] = 32
        _921 = mem[_205]
        mem[mem[64] + 32] = mem[_205]
        idx = 0
        s = _205 + 32
        t = mem[64] + 64
        while idx < _921:
            _1043 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1043 + 44 len 20]
            mem[t + 64] = mem[_1043 + 64]
            mem[t + 96] = mem[_1043 + 96]
            mem[t + 128] = mem[_1043 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _917 + (160 * _921) + -mem[64] + 64
    idx = arg2
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(arg1)
        staticcall arg1.borrowerList(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _214 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _220 = mem[_214]
        require mem[_214] == mem[_214 + 12 len 20]
        require ext_code.size(arg1)
        staticcall arg1.borrows(address rg1) with:
                gas gas_remaining wei
               args address(mem[_214])
        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _270 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 160
        _283 = mem[_270 + 32]
        mem[mem[64] + 4] = mem[_270 + 32]
        mem[mem[64] + 36] = address(_220)
        require ext_code.size(arg1)
        staticcall arg1.getRepayAmount(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(_220)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _310 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _316 = mem[_310]
        if not _283:
            _338 = mem[64]
            mem[64] = mem[64] + 64
            mem[_338] = 26
            mem[_338 + 32] = 'SafeMath: division by zero'
            _362 = mem[64]
            mem[64] = mem[64] + 64
            mem[_362] = 26
            mem[_362 + 32] = 'SafeMath: division by zero'
            if _316 <= 0:
                idx = idx + 1
                s = s
                continue 
        else:
            if ext_call.return_data[0] * _283 / _283 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            _343 = mem[64]
            mem[64] = mem[64] + 64
            mem[_343] = 26
            mem[_343 + 32] = 'SafeMath: division by zero'
            if not ext_call.return_data[0] * _283 / 10^18:
                _368 = mem[64]
                mem[64] = mem[64] + 64
                mem[_368] = 26
                mem[_368 + 32] = 'SafeMath: division by zero'
                if _316 <= 0:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] * _283 / 10^18 / ext_call.return_data[0] * _283 / 10^18 != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _371 = mem[64]
                mem[64] = mem[64] + 64
                mem[_371] = 26
                mem[_371 + 32] = 'SafeMath: division by zero'
                if _316 <= ext_call.return_data[0] * ext_call.return_data[0] * _283 / 10^18 / 10^18:
                    idx = idx + 1
                    s = s
                    continue 
        idx = idx + 1
        s = s + 1
        continue 
    require s <= test266151307()
    _206 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        idx = arg2
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.borrowerList(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _524 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _541 = mem[_524]
            require mem[_524] == mem[_524 + 12 len 20]
            require ext_code.size(arg1)
            staticcall arg1.borrows(address rg1) with:
                    gas gas_remaining wei
                   args address(mem[_524])
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _572 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            _581 = mem[_572 + 32]
            mem[mem[64] + 4] = mem[_572 + 32]
            mem[mem[64] + 36] = address(_541)
            require ext_code.size(arg1)
            staticcall arg1.getRepayAmount(uint256 rg1, address rg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], address(_541)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _599 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _608 = mem[_599]
            if not _581:
                _618 = mem[64]
                mem[64] = mem[64] + 64
                mem[_618] = 26
                mem[_618 + 32] = 'SafeMath: division by zero'
                _634 = mem[64]
                mem[64] = mem[64] + 64
                mem[_634] = 26
                mem[_634 + 32] = 'SafeMath: division by zero'
                if _608 <= 0:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if ext_call.return_data[0] * _581 / _581 != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _621 = mem[64]
                mem[64] = mem[64] + 64
                mem[_621] = 26
                mem[_621 + 32] = 'SafeMath: division by zero'
                if not ext_call.return_data[0] * _581 / 10^18:
                    _636 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_636] = 26
                    mem[_636 + 32] = 'SafeMath: division by zero'
                    if _608 <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] * _581 / 10^18 / ext_call.return_data[0] * _581 / 10^18 != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _639 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_639] = 26
                    mem[_639 + 32] = 'SafeMath: division by zero'
                    if _608 <= ext_call.return_data[0] * ext_call.return_data[0] * _581 / 10^18 / 10^18:
                        idx = idx + 1
                        s = s
                        continue 
            require s < mem[_206]
            mem[mem[(32 * s) + _206 + 32] + 32] = address(_541)
            require s < mem[_206]
            mem[mem[(32 * s) + _206 + 32]] = arg1
            require s < mem[_206]
            mem[mem[(32 * s) + _206 + 32] + 64] = _581
            require s < mem[_206]
            mem[mem[(32 * s) + _206 + 32] + 96] = _608
            require s < mem[_206]
            mem[mem[(32 * s) + _206 + 32] + 128] = ext_call.return_data[0]
            idx = idx + 1
            s = s + 1
            continue 
        _518 = mem[64]
        mem[mem[64]] = 32
        _522 = mem[_206]
        mem[mem[64] + 32] = mem[_206]
        idx = 0
        s = _206 + 32
        t = mem[64] + 64
        while idx < _522:
            _779 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_779 + 44 len 20]
            mem[t + 64] = mem[_779 + 64]
            mem[t + 96] = mem[_779 + 96]
            mem[t + 128] = mem[_779 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _518 + (160 * _522) + -mem[64] + 64
    mem[64] = _206 + (32 * s) + 192
    mem[_206 + (32 * s) + 32] = 0
    mem[_206 + (32 * s) + 64] = 0
    mem[_206 + (32 * s) + 96] = 0
    mem[_206 + (32 * s) + 128] = 0
    mem[_206 + (32 * s) + 160] = 0
    mem[var43001] = _206 + (32 * s) + 32
    t = var43001
    idx = var43002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[_206 + (32 * s) + 32] = 0
        mem[_206 + (32 * s) + 64] = 0
        mem[_206 + (32 * s) + 96] = 0
        mem[_206 + (32 * s) + 128] = 0
        mem[_206 + (32 * s) + 160] = 0
        mem[t + 32] = _206 + (32 * s) + 32
        t = t + 32
        idx = idx - 1
        continue 
    idx = arg2
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(arg1)
        staticcall arg1.borrowerList(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _924 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _938 = mem[_924]
        require mem[_924] == mem[_924 + 12 len 20]
        require ext_code.size(arg1)
        staticcall arg1.borrows(address rg1) with:
                gas gas_remaining wei
               args address(mem[_924])
        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _946 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 160
        _953 = mem[_946 + 32]
        mem[mem[64] + 4] = mem[_946 + 32]
        mem[mem[64] + 36] = address(_938)
        require ext_code.size(arg1)
        staticcall arg1.getRepayAmount(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(_938)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _962 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _964 = mem[_962]
        if not _953:
            _968 = mem[64]
            mem[64] = mem[64] + 64
            mem[_968] = 26
            mem[_968 + 32] = 'SafeMath: division by zero'
            _976 = mem[64]
            mem[64] = mem[64] + 64
            mem[_976] = 26
            mem[_976 + 32] = 'SafeMath: division by zero'
            if _964 <= 0:
                idx = idx + 1
                s = s
                continue 
        else:
            if ext_call.return_data[0] * _953 / _953 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            _971 = mem[64]
            mem[64] = mem[64] + 64
            mem[_971] = 26
            mem[_971 + 32] = 'SafeMath: division by zero'
            if not ext_call.return_data[0] * _953 / 10^18:
                _978 = mem[64]
                mem[64] = mem[64] + 64
                mem[_978] = 26
                mem[_978 + 32] = 'SafeMath: division by zero'
                if _964 <= 0:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] * _953 / 10^18 / ext_call.return_data[0] * _953 / 10^18 != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _981 = mem[64]
                mem[64] = mem[64] + 64
                mem[_981] = 26
                mem[_981 + 32] = 'SafeMath: division by zero'
                if _964 <= ext_call.return_data[0] * ext_call.return_data[0] * _953 / 10^18 / 10^18:
                    idx = idx + 1
                    s = s
                    continue 
        require s < mem[_206]
        mem[mem[(32 * s) + _206 + 32] + 32] = address(_938)
        require s < mem[_206]
        mem[mem[(32 * s) + _206 + 32]] = arg1
        require s < mem[_206]
        mem[mem[(32 * s) + _206 + 32] + 64] = _953
        require s < mem[_206]
        mem[mem[(32 * s) + _206 + 32] + 96] = _964
        require s < mem[_206]
        mem[mem[(32 * s) + _206 + 32] + 128] = ext_call.return_data[0]
        idx = idx + 1
        s = s + 1
        continue 
    _918 = mem[64]
    mem[mem[64]] = 32
    _922 = mem[_206]
    mem[mem[64] + 32] = mem[_206]
    idx = 0
    s = _206 + 32
    t = mem[64] + 64
    while idx < _922:
        _1049 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_1049 + 44 len 20]
        mem[t + 64] = mem[_1049 + 64]
        mem[t + 96] = mem[_1049 + 96]
        mem[t + 128] = mem[_1049 + 128]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _918 + (160 * _922) + -mem[64] + 64
}

function queryTokenList(address arg1, address arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require (32 * arg3.length) + 128 >= 96 and (32 * arg3.length) + 128 <= test266151307()
    mem[64] = (32 * arg3.length) + 128
    mem[96] = arg3.length
    require calldata.size >= arg3 + (32 * arg3.length) + 36
    s = arg3 + 36
    t = 128
    idx = 0
    while idx < arg3.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not arg3.length:
        mem[(32 * arg3.length) + 128] = 32
        mem[(32 * arg3.length) + 160] = arg3.length
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < arg3.length:
            mem[t] = u + -(32 * arg3.length) - 192
            _566 = mem[s]
            _570 = mem[mem[s]]
            mem[u] = 192
            _572 = mem[_570]
            mem[u + 192] = mem[_570]
            v = 0
            while v < _572:
                mem[v + u + 224] = mem[v + _570 + 32]
                v = v + 32
                continue 
            if ceil32(_572) <= _572:
                _851 = mem[_566 + 32]
                mem[u + 32] = ceil32(_572) + 224
                _854 = mem[_851]
                mem[ceil32(_572) + u + 224] = mem[_851]
                v = 0
                while v < _854:
                    mem[v + ceil32(_572) + u + 256] = mem[v + _851 + 32]
                    v = v + 32
                    continue 
                if ceil32(_854) > _854:
                    mem[ceil32(_572) + u + _854 + 256] = 0
                mem[u + 64] = mem[_566 + 95 len 1]
                mem[u + 96] = mem[_566 + 96]
                mem[u + 128] = mem[_566 + 128]
                mem[u + 160] = mem[_566 + 160]
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_854) + ceil32(_572) + u + 256
                continue 
            mem[u + _572 + 224] = 0
            _855 = mem[_566 + 32]
            mem[u + 32] = ceil32(_572) + 224
            _859 = mem[_855]
            mem[ceil32(_572) + u + 224] = mem[_855]
            v = 0
            while v < _859:
                mem[v + ceil32(_572) + u + 256] = mem[v + _855 + 32]
                v = v + 32
                continue 
            if ceil32(_859) > _859:
                mem[ceil32(_572) + u + _859 + 256] = 0
            mem[u + 64] = mem[_566 + 95 len 1]
            mem[u + 96] = mem[_566 + 96]
            mem[u + 128] = mem[_566 + 128]
            mem[u + 160] = mem[_566 + 160]
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_859) + ceil32(_572) + u + 256
            continue 
    else:
        require arg3.length <= test266151307()
        mem[(32 * arg3.length) + 128] = arg3.length
        mem[64] = (64 * arg3.length) + 160
        if not arg3.length:
            idx = 0
            while idx < arg3.length:
                require idx < mem[96]
                _571 = mem[(32 * idx) + 128]
                _575 = mem[64]
                mem[64] = mem[64] + 192
                mem[_575] = 96
                mem[_575 + 32] = 96
                mem[_575 + 64] = 0
                mem[_575 + 96] = 0
                mem[_575 + 128] = 0
                mem[_575 + 160] = 0
                mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_571))
                staticcall address(_571).name() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _583 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _588 = mem[_583]
                require mem[_583] <= test266151307()
                require _583 + mem[_583] + 31 < _583 + return_data.size
                _597 = mem[_583 + mem[_583]]
                require mem[_583 + mem[_583]] <= test266151307()
                require ceil32(mem[_583 + mem[_583]]) + 32 >= 0 and _583 + ceil32(return_data.size) + ceil32(mem[_583 + mem[_583]]) + 32 <= test266151307()
                mem[64] = _583 + ceil32(return_data.size) + ceil32(mem[_583 + mem[_583]]) + 32
                mem[_583 + ceil32(return_data.size)] = _597
                require _588 + _597 + 32 <= return_data.size
                s = 0
                while s < _597:
                    mem[s + _583 + ceil32(return_data.size) + 32] = mem[s + _583 + _588 + 32]
                    s = s + 32
                    continue 
                if ceil32(_597) <= _597:
                    mem[_575] = _583 + ceil32(return_data.size)
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_571))
                    staticcall address(_571).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _861 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _866 = mem[_861]
                    require mem[_861] <= test266151307()
                    require _861 + mem[_861] + 31 < _861 + return_data.size
                    _876 = mem[_861 + mem[_861]]
                    require mem[_861 + mem[_861]] <= test266151307()
                    require ceil32(mem[_861 + mem[_861]]) + 32 >= 0 and _861 + ceil32(return_data.size) + ceil32(mem[_861 + mem[_861]]) + 32 <= test266151307()
                    mem[64] = _861 + ceil32(return_data.size) + ceil32(mem[_861 + mem[_861]]) + 32
                    mem[_861 + ceil32(return_data.size)] = _876
                    require _866 + _876 + 32 <= return_data.size
                    s = 0
                    while s < _876:
                        mem[s + _861 + ceil32(return_data.size) + 32] = mem[s + _861 + _866 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_876) <= _876:
                        mem[_575 + 32] = _861 + ceil32(return_data.size)
                        require ext_code.size(address(_571))
                        staticcall address(_571).0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1147 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1147] == mem[_1147 + 31 len 1]
                        mem[_575 + 64] = mem[_1147 + 31 len 1]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(_571))
                        staticcall address(_571).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1190 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_575 + 96] = mem[_1190]
                        require ext_code.size(address(_571))
                        staticcall address(_571).0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1211 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_575 + 128] = mem[_1211]
                        if arg1 != arg2:
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            require ext_code.size(address(_571))
                            staticcall address(_571).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(arg1), arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1256 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_575 + 160] = mem[_1256]
                    else:
                        mem[_861 + ceil32(return_data.size) + _876 + 32] = 0
                        mem[_575 + 32] = _861 + ceil32(return_data.size)
                        require ext_code.size(address(_571))
                        staticcall address(_571).0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1150 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1150] == mem[_1150 + 31 len 1]
                        mem[_575 + 64] = mem[_1150 + 31 len 1]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(_571))
                        staticcall address(_571).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1193 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_575 + 96] = mem[_1193]
                        require ext_code.size(address(_571))
                        staticcall address(_571).0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1215 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_575 + 128] = mem[_1215]
                        if arg1 != arg2:
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            require ext_code.size(address(_571))
                            staticcall address(_571).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(arg1), arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1259 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_575 + 160] = mem[_1259]
                else:
                    mem[_583 + ceil32(return_data.size) + _597 + 32] = 0
                    mem[_575] = _583 + ceil32(return_data.size)
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_571))
                    staticcall address(_571).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _863 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _871 = mem[_863]
                    require mem[_863] <= test266151307()
                    require _863 + mem[_863] + 31 < _863 + return_data.size
                    _883 = mem[_863 + mem[_863]]
                    require mem[_863 + mem[_863]] <= test266151307()
                    require ceil32(mem[_863 + mem[_863]]) + 32 >= 0 and _863 + ceil32(return_data.size) + ceil32(mem[_863 + mem[_863]]) + 32 <= test266151307()
                    mem[64] = _863 + ceil32(return_data.size) + ceil32(mem[_863 + mem[_863]]) + 32
                    mem[_863 + ceil32(return_data.size)] = _883
                    require _871 + _883 + 32 <= return_data.size
                    s = 0
                    while s < _883:
                        mem[s + _863 + ceil32(return_data.size) + 32] = mem[s + _863 + _871 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_883) <= _883:
                        mem[_575 + 32] = _863 + ceil32(return_data.size)
                        require ext_code.size(address(_571))
                        staticcall address(_571).0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1148 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1148] == mem[_1148 + 31 len 1]
                        mem[_575 + 64] = mem[_1148 + 31 len 1]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(_571))
                        staticcall address(_571).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1191 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_575 + 96] = mem[_1191]
                        require ext_code.size(address(_571))
                        staticcall address(_571).0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1212 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_575 + 128] = mem[_1212]
                        if arg1 != arg2:
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            require ext_code.size(address(_571))
                            staticcall address(_571).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(arg1), arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1257 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_575 + 160] = mem[_1257]
                    else:
                        mem[_863 + ceil32(return_data.size) + _883 + 32] = 0
                        mem[_575 + 32] = _863 + ceil32(return_data.size)
                        require ext_code.size(address(_571))
                        staticcall address(_571).0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1151 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1151] == mem[_1151 + 31 len 1]
                        mem[_575 + 64] = mem[_1151 + 31 len 1]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(_571))
                        staticcall address(_571).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1194 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_575 + 96] = mem[_1194]
                        require ext_code.size(address(_571))
                        staticcall address(_571).0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1216 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_575 + 128] = mem[_1216]
                        if arg1 != arg2:
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            require ext_code.size(address(_571))
                            staticcall address(_571).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(arg1), arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1260 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_575 + 160] = mem[_1260]
                require idx < mem[(32 * arg3.length) + 128]
                mem[(32 * idx) + (32 * arg3.length) + 160] = _575
                idx = idx + 1
                continue 
            _573 = mem[64]
            mem[mem[64]] = 32
            _574 = mem[(32 * arg3.length) + 128]
            mem[mem[64] + 32] = mem[(32 * arg3.length) + 128]
            idx = 0
            s = (32 * arg3.length) + 160
            t = mem[64] + 64
            u = mem[64] + (32 * _574) + 64
            while idx < _574:
                mem[t] = u + -_573 - 64
                _846 = mem[s]
                _849 = mem[mem[s]]
                mem[u] = 192
                _850 = mem[_849]
                mem[u + 192] = mem[_849]
                v = 0
                while v < _850:
                    mem[v + u + 224] = mem[v + _849 + 32]
                    v = v + 32
                    continue 
                if ceil32(_850) <= _850:
                    _1123 = mem[_846 + 32]
                    mem[u + 32] = ceil32(_850) + 224
                    _1138 = mem[_1123]
                    mem[ceil32(_850) + u + 224] = mem[_1123]
                    v = 0
                    while v < _1138:
                        mem[v + ceil32(_850) + u + 256] = mem[v + _1123 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1138) > _1138:
                        mem[ceil32(_850) + u + _1138 + 256] = 0
                    mem[u + 64] = mem[_846 + 95 len 1]
                    mem[u + 96] = mem[_846 + 96]
                    mem[u + 128] = mem[_846 + 128]
                    mem[u + 160] = mem[_846 + 160]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_1138) + ceil32(_850) + u + 256
                    continue 
                mem[u + _850 + 224] = 0
                _1139 = mem[_846 + 32]
                mem[u + 32] = ceil32(_850) + 224
                _1146 = mem[_1139]
                mem[ceil32(_850) + u + 224] = mem[_1139]
                v = 0
                while v < _1146:
                    mem[v + ceil32(_850) + u + 256] = mem[v + _1139 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1146) > _1146:
                    mem[ceil32(_850) + u + _1146 + 256] = 0
                mem[u + 64] = mem[_846 + 95 len 1]
                mem[u + 96] = mem[_846 + 96]
                mem[u + 128] = mem[_846 + 128]
                mem[u + 160] = mem[_846 + 160]
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_1146) + ceil32(_850) + u + 256
                continue 
        else:
            mem[64] = (64 * arg3.length) + 352
            mem[(64 * arg3.length) + 160] = 96
            mem[(64 * arg3.length) + 192] = 96
            mem[(64 * arg3.length) + 224] = 0
            mem[(64 * arg3.length) + 256] = 0
            mem[(64 * arg3.length) + 288] = 0
            mem[(64 * arg3.length) + 320] = 0
            mem[var30001] = (64 * arg3.length) + 160
            s = var30001
            idx = var30002
            while idx - 1:
                mem[64] = mem[64] + 192
                mem[(64 * arg3.length) + 160] = 96
                mem[(64 * arg3.length) + 192] = 96
                mem[(64 * arg3.length) + 224] = 0
                mem[(64 * arg3.length) + 256] = 0
                mem[(64 * arg3.length) + 288] = 0
                mem[(64 * arg3.length) + 320] = 0
                mem[s + 32] = (64 * arg3.length) + 160
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < arg3.length:
                require idx < mem[96]
                _1113 = mem[(32 * idx) + 128]
                _1129 = mem[64]
                mem[64] = mem[64] + 192
                mem[_1129] = 96
                mem[_1129 + 32] = 96
                mem[_1129 + 64] = 0
                mem[_1129 + 96] = 0
                mem[_1129 + 128] = 0
                mem[_1129 + 160] = 0
                mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1113))
                staticcall address(_1113).name() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1154 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1162 = mem[_1154]
                require mem[_1154] <= test266151307()
                require _1154 + mem[_1154] + 31 < _1154 + return_data.size
                _1172 = mem[_1154 + mem[_1154]]
                require mem[_1154 + mem[_1154]] <= test266151307()
                require ceil32(mem[_1154 + mem[_1154]]) + 32 >= 0 and _1154 + ceil32(return_data.size) + ceil32(mem[_1154 + mem[_1154]]) + 32 <= test266151307()
                mem[64] = _1154 + ceil32(return_data.size) + ceil32(mem[_1154 + mem[_1154]]) + 32
                mem[_1154 + ceil32(return_data.size)] = _1172
                require _1162 + _1172 + 32 <= return_data.size
                s = 0
                while s < _1172:
                    mem[s + _1154 + ceil32(return_data.size) + 32] = mem[s + _1154 + _1162 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1172) <= _1172:
                    mem[_1129] = _1154 + ceil32(return_data.size)
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_1113))
                    staticcall address(_1113).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1375 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1377 = mem[_1375]
                    require mem[_1375] <= test266151307()
                    require _1375 + mem[_1375] + 31 < _1375 + return_data.size
                    _1382 = mem[_1375 + mem[_1375]]
                    require mem[_1375 + mem[_1375]] <= test266151307()
                    require ceil32(mem[_1375 + mem[_1375]]) + 32 >= 0 and _1375 + ceil32(return_data.size) + ceil32(mem[_1375 + mem[_1375]]) + 32 <= test266151307()
                    mem[64] = _1375 + ceil32(return_data.size) + ceil32(mem[_1375 + mem[_1375]]) + 32
                    mem[_1375 + ceil32(return_data.size)] = _1382
                    require _1377 + _1382 + 32 <= return_data.size
                    s = 0
                    while s < _1382:
                        mem[s + _1375 + ceil32(return_data.size) + 32] = mem[s + _1375 + _1377 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1382) <= _1382:
                        mem[_1129 + 32] = _1375 + ceil32(return_data.size)
                        require ext_code.size(address(_1113))
                        staticcall address(_1113).0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1494 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1494] == mem[_1494 + 31 len 1]
                        mem[_1129 + 64] = mem[_1494 + 31 len 1]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(_1113))
                        staticcall address(_1113).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1528 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1129 + 96] = mem[_1528]
                        require ext_code.size(address(_1113))
                        staticcall address(_1113).0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1544 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1129 + 128] = mem[_1544]
                        if arg1 != arg2:
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            require ext_code.size(address(_1113))
                            staticcall address(_1113).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(arg1), arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1564 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1129 + 160] = mem[_1564]
                    else:
                        mem[_1375 + ceil32(return_data.size) + _1382 + 32] = 0
                        mem[_1129 + 32] = _1375 + ceil32(return_data.size)
                        require ext_code.size(address(_1113))
                        staticcall address(_1113).0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1496 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1496] == mem[_1496 + 31 len 1]
                        mem[_1129 + 64] = mem[_1496 + 31 len 1]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(_1113))
                        staticcall address(_1113).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1530 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1129 + 96] = mem[_1530]
                        require ext_code.size(address(_1113))
                        staticcall address(_1113).0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1546 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1129 + 128] = mem[_1546]
                        if arg1 != arg2:
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            require ext_code.size(address(_1113))
                            staticcall address(_1113).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(arg1), arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1566 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1129 + 160] = mem[_1566]
                else:
                    mem[_1154 + ceil32(return_data.size) + _1172 + 32] = 0
                    mem[_1129] = _1154 + ceil32(return_data.size)
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_1113))
                    staticcall address(_1113).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1376 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1379 = mem[_1376]
                    require mem[_1376] <= test266151307()
                    require _1376 + mem[_1376] + 31 < _1376 + return_data.size
                    _1384 = mem[_1376 + mem[_1376]]
                    require mem[_1376 + mem[_1376]] <= test266151307()
                    require ceil32(mem[_1376 + mem[_1376]]) + 32 >= 0 and _1376 + ceil32(return_data.size) + ceil32(mem[_1376 + mem[_1376]]) + 32 <= test266151307()
                    mem[64] = _1376 + ceil32(return_data.size) + ceil32(mem[_1376 + mem[_1376]]) + 32
                    mem[_1376 + ceil32(return_data.size)] = _1384
                    require _1379 + _1384 + 32 <= return_data.size
                    s = 0
                    while s < _1384:
                        mem[s + _1376 + ceil32(return_data.size) + 32] = mem[s + _1376 + _1379 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1384) <= _1384:
                        mem[_1129 + 32] = _1376 + ceil32(return_data.size)
                        require ext_code.size(address(_1113))
                        staticcall address(_1113).0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1495 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1495] == mem[_1495 + 31 len 1]
                        mem[_1129 + 64] = mem[_1495 + 31 len 1]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(_1113))
                        staticcall address(_1113).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1529 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1129 + 96] = mem[_1529]
                        require ext_code.size(address(_1113))
                        staticcall address(_1113).0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1545 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1129 + 128] = mem[_1545]
                        if arg1 != arg2:
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            require ext_code.size(address(_1113))
                            staticcall address(_1113).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(arg1), arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1565 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1129 + 160] = mem[_1565]
                    else:
                        mem[_1376 + ceil32(return_data.size) + _1384 + 32] = 0
                        mem[_1129 + 32] = _1376 + ceil32(return_data.size)
                        require ext_code.size(address(_1113))
                        staticcall address(_1113).0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1497 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1497] == mem[_1497 + 31 len 1]
                        mem[_1129 + 64] = mem[_1497 + 31 len 1]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(_1113))
                        staticcall address(_1113).0x70a08231 with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1531 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1129 + 96] = mem[_1531]
                        require ext_code.size(address(_1113))
                        staticcall address(_1113).0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1547 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1129 + 128] = mem[_1547]
                        if arg1 != arg2:
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            require ext_code.size(address(_1113))
                            staticcall address(_1113).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args address(arg1), arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1567 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1129 + 160] = mem[_1567]
                require idx < mem[(32 * arg3.length) + 128]
                mem[(32 * idx) + (32 * arg3.length) + 160] = _1129
                idx = idx + 1
                continue 
            _1114 = mem[64]
            mem[mem[64]] = 32
            _1128 = mem[(32 * arg3.length) + 128]
            mem[mem[64] + 32] = mem[(32 * arg3.length) + 128]
            idx = 0
            s = (32 * arg3.length) + 160
            t = mem[64] + 64
            u = mem[64] + (32 * _1128) + 64
            while idx < _1128:
                mem[t] = u + -_1114 - 64
                _1349 = mem[s]
                _1352 = mem[mem[s]]
                mem[u] = 192
                _1353 = mem[_1352]
                mem[u + 192] = mem[_1352]
                v = 0
                while v < _1353:
                    mem[v + u + 224] = mem[v + _1352 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1353) <= _1353:
                    _1482 = mem[_1349 + 32]
                    mem[u + 32] = ceil32(_1353) + 224
                    _1487 = mem[_1482]
                    mem[ceil32(_1353) + u + 224] = mem[_1482]
                    v = 0
                    while v < _1487:
                        mem[v + ceil32(_1353) + u + 256] = mem[v + _1482 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1487) > _1487:
                        mem[ceil32(_1353) + u + _1487 + 256] = 0
                    mem[u + 64] = mem[_1349 + 95 len 1]
                    mem[u + 96] = mem[_1349 + 96]
                    mem[u + 128] = mem[_1349 + 128]
                    mem[u + 160] = mem[_1349 + 160]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_1487) + ceil32(_1353) + u + 256
                    continue 
                mem[u + _1353 + 224] = 0
                _1488 = mem[_1349 + 32]
                mem[u + 32] = ceil32(_1353) + 224
                _1493 = mem[_1488]
                mem[ceil32(_1353) + u + 224] = mem[_1488]
                v = 0
                while v < _1493:
                    mem[v + ceil32(_1353) + u + 256] = mem[v + _1488 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1493) > _1493:
                    mem[ceil32(_1353) + u + _1493 + 256] = 0
                mem[u + 64] = mem[_1349 + 95 len 1]
                mem[u + 96] = mem[_1349 + 96]
                mem[u + 128] = mem[_1349 + 128]
                mem[u + 160] = mem[_1349 + 160]
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_1493) + ceil32(_1353) + u + 256
                continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function queryPoolList() payable {
    require ext_code.size(configAddress)
    staticcall configAddress.factory() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).countPools() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + 96] = 32
        mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        idx = 0
        s = 128
        t = (2 * ceil32(return_data.size)) + 160
        u = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160
        while idx < ext_call.return_data[0]:
            mem[t] = u + -(2 * ceil32(return_data.size)) - 160
            _310 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            mem[u + 32] = mem[_310 + 32]
            mem[u + 64] = mem[_310 + 64]
            mem[u + 96] = mem[_310 + 96]
            mem[u + 128] = mem[_310 + 128]
            mem[u + 160] = mem[_310 + 160]
            mem[u + 192] = mem[_310 + 204 len 20]
            mem[u + 224] = mem[_310 + 236 len 20]
            mem[u + 256] = mem[_310 + 287 len 1]
            mem[u + 288] = mem[_310 + 319 len 1]
            _347 = mem[_310 + 320]
            mem[u + 320] = 384
            _352 = mem[_347]
            mem[u + 384] = mem[_347]
            v = 0
            while v < _352:
                mem[v + u + 416] = mem[v + _347 + 32]
                v = v + 32
                continue 
            if ceil32(_352) <= _352:
                _614 = mem[_310 + 352]
                mem[u + 352] = ceil32(_352) + 416
                _624 = mem[_614]
                mem[ceil32(_352) + u + 416] = mem[_614]
                v = 0
                while v < _624:
                    mem[v + ceil32(_352) + u + 448] = mem[v + _614 + 32]
                    v = v + 32
                    continue 
                if ceil32(_624) > _624:
                    mem[ceil32(_352) + u + _624 + 448] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_624) + ceil32(_352) + u + 448
                continue 
            mem[u + _352 + 416] = 0
            _625 = mem[_310 + 352]
            mem[u + 352] = ceil32(_352) + 416
            _629 = mem[_625]
            mem[ceil32(_352) + u + 416] = mem[_625]
            v = 0
            while v < _629:
                mem[v + ceil32(_352) + u + 448] = mem[v + _625 + 32]
                v = v + 32
                continue 
            if ceil32(_629) > _629:
                mem[ceil32(_352) + u + _629 + 448] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_629) + ceil32(_352) + u + 448
            continue 
        return memory
          from mem[64]
           len u - mem[64]
    require ext_call.return_data[0] <= test266151307()
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    mem[64] = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            _315 = mem[64]
            mem[64] = mem[64] + 384
            mem[_315] = 0
            mem[_315 + 32] = 0
            mem[_315 + 64] = 0
            mem[_315 + 96] = 0
            mem[_315 + 128] = 0
            mem[_315 + 160] = 0
            mem[_315 + 192] = 0
            mem[_315 + 224] = 0
            mem[_315 + 256] = 0
            mem[_315 + 288] = 0
            mem[_315 + 320] = 96
            mem[_315 + 352] = 96
            require ext_code.size(configAddress)
            staticcall configAddress.factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _327 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_327] == mem[_327 + 12 len 20]
            require ext_code.size(mem[_327 + 12 len 20])
            staticcall mem[_327 + 12 len 20].countPools() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _355 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[_355]:
                require idx < mem[(2 * ceil32(return_data.size)) + 96]
                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = _315
            else:
                if not mem[_355]:
                    require idx < mem[(2 * ceil32(return_data.size)) + 96]
                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = _315
                else:
                    require ext_code.size(configAddress)
                    staticcall configAddress.factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _382 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _389 = mem[_382]
                    require mem[_382] == mem[_382 + 12 len 20]
                    mem[mem[64] + 4] = idx
                    require ext_code.size(address(_389))
                    staticcall address(_389).allPools(uint256 rg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _408 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _411 = mem[_408]
                    require mem[_408] == mem[_408 + 12 len 20]
                    _416 = mem[64]
                    mem[64] = mem[64] + 384
                    mem[_416] = 0
                    mem[_416 + 32] = 0
                    mem[_416 + 64] = 0
                    mem[_416 + 96] = 0
                    mem[_416 + 128] = 0
                    mem[_416 + 160] = 0
                    mem[_416 + 192] = 0
                    mem[_416 + 224] = 0
                    mem[_416 + 256] = 0
                    mem[_416 + 288] = 0
                    mem[_416 + 320] = 96
                    mem[_416 + 352] = 96
                    require ext_code.size(configAddress)
                    staticcall configAddress.factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _419 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _420 = mem[_419]
                    require mem[_419] == mem[_419 + 12 len 20]
                    mem[mem[64] + 4] = address(_411)
                    require ext_code.size(address(_420))
                    staticcall address(_420).isPool(address rg1) with:
                            gas gas_remaining wei
                           args address(_411)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _428 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_428] == bool(mem[_428])
                    if mem[_428]:
                        mem[_416] = address(_411)
                        require ext_code.size(address(_411))
                        staticcall address(_411).totalBorrow() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _435 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_416 + 32] = mem[_435]
                        require ext_code.size(address(_411))
                        staticcall address(_411).totalPledge() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _443 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_416 + 64] = mem[_443]
                        require ext_code.size(address(_411))
                        staticcall address(_411).remainSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _452 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_416 + 96] = mem[_452]
                        require ext_code.size(address(_411))
                        staticcall address(_411).getInterests() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _460 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _462 = mem[_460]
                        mem[_416 + 128] = mem[_460]
                        mem[_416 + 160] = _462
                        require ext_code.size(address(_411))
                        staticcall address(_411).supplyToken() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _468 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_468] == mem[_468 + 12 len 20]
                        mem[_416 + 192] = mem[_468 + 12 len 20]
                        require ext_code.size(address(_411))
                        staticcall address(_411).collateralToken() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _478 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_478] == mem[_478 + 12 len 20]
                        mem[_416 + 224] = mem[_478 + 12 len 20]
                        require ext_code.size(mem[_416 + 204 len 20])
                        staticcall mem[_416 + 204 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _487 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_487] == mem[_487 + 31 len 1]
                        mem[_416 + 256] = mem[_487 + 31 len 1]
                        require ext_code.size(mem[_416 + 236 len 20])
                        staticcall mem[_416 + 236 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _496 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_496] == mem[_496 + 31 len 1]
                        mem[_416 + 288] = mem[_496 + 31 len 1]
                        _502 = mem[_416 + 192]
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_502))
                        staticcall address(_502).0x95d89b41 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _506 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _508 = mem[_506]
                        require mem[_506] <= test266151307()
                        require _506 + mem[_506] + 31 < _506 + return_data.size
                        _512 = mem[_506 + mem[_506]]
                        require mem[_506 + mem[_506]] <= test266151307()
                        require ceil32(mem[_506 + mem[_506]]) + 32 >= 0 and _506 + ceil32(return_data.size) + ceil32(mem[_506 + mem[_506]]) + 32 <= test266151307()
                        mem[64] = _506 + ceil32(return_data.size) + ceil32(mem[_506 + mem[_506]]) + 32
                        mem[_506 + ceil32(return_data.size)] = _512
                        require _508 + _512 + 32 <= return_data.size
                        s = 0
                        while s < _512:
                            mem[s + _506 + ceil32(return_data.size) + 32] = mem[s + _506 + _508 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_512) <= _512:
                            mem[_416 + 320] = _506 + ceil32(return_data.size)
                            _621 = mem[_416 + 224]
                            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_621))
                            staticcall address(_621).0x95d89b41 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _631 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _637 = mem[_631]
                            require mem[_631] <= test266151307()
                            require _631 + mem[_631] + 31 < _631 + return_data.size
                            _644 = mem[_631 + mem[_631]]
                            require mem[_631 + mem[_631]] <= test266151307()
                            require ceil32(mem[_631 + mem[_631]]) + 32 >= 0 and _631 + ceil32(return_data.size) + ceil32(mem[_631 + mem[_631]]) + 32 <= test266151307()
                            mem[64] = _631 + ceil32(return_data.size) + ceil32(mem[_631 + mem[_631]]) + 32
                            mem[_631 + ceil32(return_data.size)] = _644
                            require _637 + _644 + 32 <= return_data.size
                            s = 0
                            while s < _644:
                                mem[s + _631 + ceil32(return_data.size) + 32] = mem[s + _631 + _637 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_644) > _644:
                                mem[_631 + ceil32(return_data.size) + _644 + 32] = 0
                            mem[_416 + 352] = _631 + ceil32(return_data.size)
                        else:
                            mem[_506 + ceil32(return_data.size) + _512 + 32] = 0
                            mem[_416 + 320] = _506 + ceil32(return_data.size)
                            _626 = mem[_416 + 224]
                            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_626))
                            staticcall address(_626).0x95d89b41 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _632 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _642 = mem[_632]
                            require mem[_632] <= test266151307()
                            require _632 + mem[_632] + 31 < _632 + return_data.size
                            _647 = mem[_632 + mem[_632]]
                            require mem[_632 + mem[_632]] <= test266151307()
                            require ceil32(mem[_632 + mem[_632]]) + 32 >= 0 and _632 + ceil32(return_data.size) + ceil32(mem[_632 + mem[_632]]) + 32 <= test266151307()
                            mem[64] = _632 + ceil32(return_data.size) + ceil32(mem[_632 + mem[_632]]) + 32
                            mem[_632 + ceil32(return_data.size)] = _647
                            require _642 + _647 + 32 <= return_data.size
                            s = 0
                            while s < _647:
                                mem[s + _632 + ceil32(return_data.size) + 32] = mem[s + _632 + _642 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_647) > _647:
                                mem[_632 + ceil32(return_data.size) + _647 + 32] = 0
                            mem[_416 + 352] = _632 + ceil32(return_data.size)
                        if mem[_416 + 32] + mem[_416 + 96]:
                            require mem[_416 + 32] + mem[_416 + 96]
                            mem[_416 + 160] = mem[_416 + 128] * mem[_416 + 32] / mem[_416 + 32] + mem[_416 + 96]
                    require idx < mem[(2 * ceil32(return_data.size)) + 96]
                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = _416
            idx = idx + 1
            continue 
        _314 = mem[64]
        mem[mem[64]] = 32
        _322 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
        s = 0
        t = (2 * ceil32(return_data.size)) + 128
        u = mem[64] + 64
        v = mem[64] + (32 * _322) + 64
        while s < _322:
            mem[u] = v + -_314 - 64
            _610 = mem[t]
            mem[v] = mem[mem[t] + 12 len 20]
            mem[v + 32] = mem[_610 + 32]
            mem[v + 64] = mem[_610 + 64]
            mem[v + 96] = mem[_610 + 96]
            mem[v + 128] = mem[_610 + 128]
            mem[v + 160] = mem[_610 + 160]
            mem[v + 192] = mem[_610 + 204 len 20]
            mem[v + 224] = mem[_610 + 236 len 20]
            mem[v + 256] = mem[_610 + 287 len 1]
            mem[v + 288] = mem[_610 + 319 len 1]
            _650 = mem[_610 + 320]
            mem[v + 320] = 384
            _653 = mem[_650]
            mem[v + 384] = mem[_650]
            w = 0
            while w < _653:
                mem[w + v + 416] = mem[w + _650 + 32]
                w = w + 32
                continue 
            if ceil32(_653) <= _653:
                _827 = mem[_610 + 352]
                mem[v + 352] = ceil32(_653) + 416
                _835 = mem[_827]
                mem[ceil32(_653) + v + 416] = mem[_827]
                idx = 0
                while idx < _835:
                    mem[idx + ceil32(_653) + v + 448] = mem[idx + _827 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_835) > _835:
                    mem[ceil32(_653) + v + _835 + 448] = 0
                s = s + 1
                t = t + 32
                u = u + 32
                v = ceil32(_835) + ceil32(_653) + v + 448
                continue 
            mem[v + _653 + 416] = 0
            _836 = mem[_610 + 352]
            mem[v + 352] = ceil32(_653) + 416
            _847 = mem[_836]
            mem[ceil32(_653) + v + 416] = mem[_836]
            idx = 0
            while idx < _847:
                mem[idx + ceil32(_653) + v + 448] = mem[idx + _836 + 32]
                idx = idx + 32
                continue 
            if ceil32(_847) > _847:
                mem[ceil32(_653) + v + _847 + 448] = 0
            s = s + 1
            t = t + 32
            u = u + 32
            v = ceil32(_847) + ceil32(_653) + v + 448
            continue 
    else:
        mem[64] = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 512
        mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 192] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 224] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 256] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 288] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 320] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 352] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 384] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 416] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 448] = 96
        mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 480] = 96
        mem[var22001] = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128
        s = var22001
        idx = var22002
        while idx - 1:
            mem[64] = mem[64] + 384
            mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128] = 0
            mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] = 0
            mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 192] = 0
            mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 224] = 0
            mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 256] = 0
            mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 288] = 0
            mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 320] = 0
            mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 352] = 0
            mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 384] = 0
            mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 416] = 0
            mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 448] = 96
            mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 480] = 96
            mem[s + 32] = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ext_call.return_data[0]:
            _826 = mem[64]
            mem[64] = mem[64] + 384
            mem[_826] = 0
            mem[_826 + 32] = 0
            mem[_826 + 64] = 0
            mem[_826 + 96] = 0
            mem[_826 + 128] = 0
            mem[_826 + 160] = 0
            mem[_826 + 192] = 0
            mem[_826 + 224] = 0
            mem[_826 + 256] = 0
            mem[_826 + 288] = 0
            mem[_826 + 320] = 96
            mem[_826 + 352] = 96
            require ext_code.size(configAddress)
            staticcall configAddress.factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _855 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_855] == mem[_855 + 12 len 20]
            require ext_code.size(mem[_855 + 12 len 20])
            staticcall mem[_855 + 12 len 20].countPools() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _879 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[_879]:
                require idx < mem[(2 * ceil32(return_data.size)) + 96]
                mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = _826
            else:
                if not mem[_879]:
                    require idx < mem[(2 * ceil32(return_data.size)) + 96]
                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = _826
                else:
                    require ext_code.size(configAddress)
                    staticcall configAddress.factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _888 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _891 = mem[_888]
                    require mem[_888] == mem[_888 + 12 len 20]
                    mem[mem[64] + 4] = idx
                    require ext_code.size(address(_891))
                    staticcall address(_891).allPools(uint256 rg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _899 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _900 = mem[_899]
                    require mem[_899] == mem[_899 + 12 len 20]
                    _901 = mem[64]
                    mem[64] = mem[64] + 384
                    mem[_901] = 0
                    mem[_901 + 32] = 0
                    mem[_901 + 64] = 0
                    mem[_901 + 96] = 0
                    mem[_901 + 128] = 0
                    mem[_901 + 160] = 0
                    mem[_901 + 192] = 0
                    mem[_901 + 224] = 0
                    mem[_901 + 256] = 0
                    mem[_901 + 288] = 0
                    mem[_901 + 320] = 96
                    mem[_901 + 352] = 96
                    require ext_code.size(configAddress)
                    staticcall configAddress.factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _904 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _905 = mem[_904]
                    require mem[_904] == mem[_904 + 12 len 20]
                    mem[mem[64] + 4] = address(_900)
                    require ext_code.size(address(_905))
                    staticcall address(_905).isPool(address rg1) with:
                            gas gas_remaining wei
                           args address(_900)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _908 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_908] == bool(mem[_908])
                    if mem[_908]:
                        mem[_901] = address(_900)
                        require ext_code.size(address(_900))
                        staticcall address(_900).totalBorrow() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _912 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_901 + 32] = mem[_912]
                        require ext_code.size(address(_900))
                        staticcall address(_900).totalPledge() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _917 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_901 + 64] = mem[_917]
                        require ext_code.size(address(_900))
                        staticcall address(_900).remainSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _921 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_901 + 96] = mem[_921]
                        require ext_code.size(address(_900))
                        staticcall address(_900).getInterests() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _925 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _926 = mem[_925]
                        mem[_901 + 128] = mem[_925]
                        mem[_901 + 160] = _926
                        require ext_code.size(address(_900))
                        staticcall address(_900).supplyToken() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _929 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_929] == mem[_929 + 12 len 20]
                        mem[_901 + 192] = mem[_929 + 12 len 20]
                        require ext_code.size(address(_900))
                        staticcall address(_900).collateralToken() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _933 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_933] == mem[_933 + 12 len 20]
                        mem[_901 + 224] = mem[_933 + 12 len 20]
                        require ext_code.size(mem[_901 + 204 len 20])
                        staticcall mem[_901 + 204 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _938 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_938] == mem[_938 + 31 len 1]
                        mem[_901 + 256] = mem[_938 + 31 len 1]
                        require ext_code.size(mem[_901 + 236 len 20])
                        staticcall mem[_901 + 236 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _943 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_943] == mem[_943 + 31 len 1]
                        mem[_901 + 288] = mem[_943 + 31 len 1]
                        _945 = mem[_901 + 192]
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_945))
                        staticcall address(_945).0x95d89b41 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _948 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _949 = mem[_948]
                        require mem[_948] <= test266151307()
                        require _948 + mem[_948] + 31 < _948 + return_data.size
                        _950 = mem[_948 + mem[_948]]
                        require mem[_948 + mem[_948]] <= test266151307()
                        require ceil32(mem[_948 + mem[_948]]) + 32 >= 0 and _948 + ceil32(return_data.size) + ceil32(mem[_948 + mem[_948]]) + 32 <= test266151307()
                        mem[64] = _948 + ceil32(return_data.size) + ceil32(mem[_948 + mem[_948]]) + 32
                        mem[_948 + ceil32(return_data.size)] = _950
                        require _949 + _950 + 32 <= return_data.size
                        s = 0
                        while s < _950:
                            mem[s + _948 + ceil32(return_data.size) + 32] = mem[s + _948 + _949 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_950) <= _950:
                            mem[_901 + 320] = _948 + ceil32(return_data.size)
                            _1009 = mem[_901 + 224]
                            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1009))
                            staticcall address(_1009).0x95d89b41 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1016 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1019 = mem[_1016]
                            require mem[_1016] <= test266151307()
                            require _1016 + mem[_1016] + 31 < _1016 + return_data.size
                            _1022 = mem[_1016 + mem[_1016]]
                            require mem[_1016 + mem[_1016]] <= test266151307()
                            require ceil32(mem[_1016 + mem[_1016]]) + 32 >= 0 and _1016 + ceil32(return_data.size) + ceil32(mem[_1016 + mem[_1016]]) + 32 <= test266151307()
                            mem[64] = _1016 + ceil32(return_data.size) + ceil32(mem[_1016 + mem[_1016]]) + 32
                            mem[_1016 + ceil32(return_data.size)] = _1022
                            require _1019 + _1022 + 32 <= return_data.size
                            s = 0
                            while s < _1022:
                                mem[s + _1016 + ceil32(return_data.size) + 32] = mem[s + _1016 + _1019 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1022) > _1022:
                                mem[_1016 + ceil32(return_data.size) + _1022 + 32] = 0
                            mem[_901 + 352] = _1016 + ceil32(return_data.size)
                        else:
                            mem[_948 + ceil32(return_data.size) + _950 + 32] = 0
                            mem[_901 + 320] = _948 + ceil32(return_data.size)
                            _1012 = mem[_901 + 224]
                            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_1012))
                            staticcall address(_1012).0x95d89b41 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1017 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1020 = mem[_1017]
                            require mem[_1017] <= test266151307()
                            require _1017 + mem[_1017] + 31 < _1017 + return_data.size
                            _1023 = mem[_1017 + mem[_1017]]
                            require mem[_1017 + mem[_1017]] <= test266151307()
                            require ceil32(mem[_1017 + mem[_1017]]) + 32 >= 0 and _1017 + ceil32(return_data.size) + ceil32(mem[_1017 + mem[_1017]]) + 32 <= test266151307()
                            mem[64] = _1017 + ceil32(return_data.size) + ceil32(mem[_1017 + mem[_1017]]) + 32
                            mem[_1017 + ceil32(return_data.size)] = _1023
                            require _1020 + _1023 + 32 <= return_data.size
                            s = 0
                            while s < _1023:
                                mem[s + _1017 + ceil32(return_data.size) + 32] = mem[s + _1017 + _1020 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1023) > _1023:
                                mem[_1017 + ceil32(return_data.size) + _1023 + 32] = 0
                            mem[_901 + 352] = _1017 + ceil32(return_data.size)
                        if mem[_901 + 32] + mem[_901 + 96]:
                            require mem[_901 + 32] + mem[_901 + 96]
                            mem[_901 + 160] = mem[_901 + 128] * mem[_901 + 32] / mem[_901 + 32] + mem[_901 + 96]
                    require idx < mem[(2 * ceil32(return_data.size)) + 96]
                    mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128] = _901
            idx = idx + 1
            continue 
        _825 = mem[64]
        mem[mem[64]] = 32
        _832 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
        s = 0
        t = (2 * ceil32(return_data.size)) + 128
        u = mem[64] + 64
        v = mem[64] + (32 * _832) + 64
        while s < _832:
            mem[u] = v + -_825 - 64
            _999 = mem[t]
            mem[v] = mem[mem[t] + 12 len 20]
            mem[v + 32] = mem[_999 + 32]
            mem[v + 64] = mem[_999 + 64]
            mem[v + 96] = mem[_999 + 96]
            mem[v + 128] = mem[_999 + 128]
            mem[v + 160] = mem[_999 + 160]
            mem[v + 192] = mem[_999 + 204 len 20]
            mem[v + 224] = mem[_999 + 236 len 20]
            mem[v + 256] = mem[_999 + 287 len 1]
            mem[v + 288] = mem[_999 + 319 len 1]
            _1024 = mem[_999 + 320]
            mem[v + 320] = 384
            _1026 = mem[_1024]
            mem[v + 384] = mem[_1024]
            w = 0
            while w < _1026:
                mem[w + v + 416] = mem[w + _1024 + 32]
                w = w + 32
                continue 
            if ceil32(_1026) <= _1026:
                _1068 = mem[_999 + 352]
                mem[v + 352] = ceil32(_1026) + 416
                _1073 = mem[_1068]
                mem[ceil32(_1026) + v + 416] = mem[_1068]
                idx = 0
                while idx < _1073:
                    mem[idx + ceil32(_1026) + v + 448] = mem[idx + _1068 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1073) > _1073:
                    mem[ceil32(_1026) + v + _1073 + 448] = 0
                s = s + 1
                t = t + 32
                u = u + 32
                v = ceil32(_1073) + ceil32(_1026) + v + 448
                continue 
            mem[v + _1026 + 416] = 0
            _1074 = mem[_999 + 352]
            mem[v + 352] = ceil32(_1026) + 416
            _1085 = mem[_1074]
            mem[ceil32(_1026) + v + 416] = mem[_1074]
            idx = 0
            while idx < _1085:
                mem[idx + ceil32(_1026) + v + 448] = mem[idx + _1074 + 32]
                idx = idx + 32
                continue 
            if ceil32(_1085) > _1085:
                mem[ceil32(_1026) + v + _1085 + 448] = 0
            s = s + 1
            t = t + 32
            u = u + 32
            v = ceil32(_1085) + ceil32(_1026) + v + 448
            continue 
    return memory
      from mem[64]
       len v - mem[64]
}



}
