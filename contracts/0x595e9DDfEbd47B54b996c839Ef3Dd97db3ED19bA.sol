contract main {




// =====================  Runtime code  =====================


#
#  - sub_aa5dbd23(?)
#
function _fallback() payable {
    revert
}

function sub_7c84e3b3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).comptroller() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).oracle() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address rg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return address(arg1), ext_call.return_data[0]
}

function sub_f40c2777(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 292] = address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getCurrentVotes(address rg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[20 len 12]
    mem[(2 * ceil32(return_data.size)) + 292] = address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).delegates(address rg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[256] = ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 320] = ext_call.return_data[20 len 12]
    mem[(4 * ceil32(return_data.size)) + 352] = mem[268 len 20]
    return ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + 320 len 64]
}

function getXVSBalanceMetadataExt(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.claimVenus(address rg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg2)
    staticcall arg2.venusAccrued(address rg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, '', 0
    if ext_call.return_data[0] > 2 * ext_call.return_data[0]:
        revert with 0, '', 0
    mem[(4 * ceil32(return_data.size)) + 484] = arg3
    require ext_code.size(arg1)
    staticcall arg1.getCurrentVotes(address rg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[20 len 12]
    require ext_code.size(arg1)
    staticcall arg1.delegates(address rg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 416] = ext_call.return_data[12 len 20]
    mem[(7 * ceil32(return_data.size)) + 512] = ext_call.return_data[20 len 12]
    mem[(7 * ceil32(return_data.size)) + 544] = mem[(4 * ceil32(return_data.size)) + 428 len 20]
    return ext_call.return_data[0], mem[(7 * ceil32(return_data.size)) + 512 len 64], ext_call.return_data[0]
}

function getAccountLimits(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[96] = 96
    mem[128] = 0
    mem[160] = 0
    require ext_code.size(arg1)
    staticcall arg1.getAccountLiquidity(address rg1) with:
            gas gas_remaining wei
           args arg2
    mem[192 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    if ext_call.return_data[0] != 0:
        revert with 0, 'account liquidity error'
    mem[ceil32(return_data.size) + 288] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 292] = arg2
    require ext_code.size(arg1)
    staticcall arg1.getAssetsIn(address rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    _13 = mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64
    require mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64 + 319 < ceil32(return_data.size) + return_data.size + 288
    _14 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64 + 288]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64 + 288] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64 + 288]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64 + 288]) + 320 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64 + 288]) + 320
    mem[(2 * ceil32(return_data.size)) + 288] = _14
    require _13 + (32 * _14) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _13 + 320
    t = (2 * ceil32(return_data.size)) + 320
    while idx < _14:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 192] = (2 * ceil32(return_data.size)) + 288
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[32]
    mem[ceil32(return_data.size) + 256] = ext_call.return_data[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 96
    mem[mem[64] + 128] = _14
    idx = 0
    s = (2 * ceil32(return_data.size)) + 320
    t = mem[64] + 160
    while idx < _14:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 224]
    mem[mem[64] + 96] = mem[ceil32(return_data.size) + 256]
    return 32, 96, mem[mem[64] + 64 len 64], _14, mem[mem[64] + 160 len 32 * _14]
}

function sub_fbd88b46(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    mem[96] = ('cd', 68).length
    mem[64] = (32 * ('cd', 68).length) + 128
    if not ('cd', 68).length:
        idx = 0
        while idx < ('cd', 68).length:
            _27 = mem[64]
            mem[64] = mem[64] + 64
            require cd[((32 * idx) + cd[68] + 36)] == uint32(cd[((32 * idx) + cd[68] + 36)])
            mem[_27] = uint32(cd[((32 * idx) + cd[68] + 36)])
            require idx < ('cd', 68).length
            require cd[((32 * idx) + cd[68] + 36)] == uint32(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 4] = address(cd[36])
            mem[mem[64] + 36] = uint32(cd[((32 * idx) + cd[68] + 36)])
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getPriorVotes(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args address(cd[36]), uint32(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _45 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_45] == mem[_45 + 20 len 12]
            mem[_27 + 32] = mem[_45 + 20 len 12]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _27
            idx = idx + 1
            continue 
        _29 = mem[64]
        mem[mem[64]] = 32
        _30 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _30:
            _53 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_53 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _29 + (64 * _30) + -mem[64] + 64
    mem[64] = (32 * ('cd', 68).length) + 192
    mem[(32 * ('cd', 68).length) + 128] = 0
    mem[(32 * ('cd', 68).length) + 160] = 0
    mem[var36001] = (32 * ('cd', 68).length) + 128
    s = var36001
    idx = var36002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * ('cd', 68).length) + 128] = 0
        mem[(32 * ('cd', 68).length) + 160] = 0
        mem[s + 32] = (32 * ('cd', 68).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 68).length:
        _69 = mem[64]
        mem[64] = mem[64] + 64
        require cd[((32 * idx) + cd[68] + 36)] == uint32(cd[((32 * idx) + cd[68] + 36)])
        mem[_69] = uint32(cd[((32 * idx) + cd[68] + 36)])
        require idx < ('cd', 68).length
        require cd[((32 * idx) + cd[68] + 36)] == uint32(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64] + 4] = address(cd[36])
        mem[mem[64] + 36] = uint32(cd[((32 * idx) + cd[68] + 36)])
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).getPriorVotes(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args address(cd[36]), uint32(cd[((32 * idx) + cd[68] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _78 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_78] == mem[_78 + 20 len 12]
        mem[_69 + 32] = mem[_78 + 20 len 12]
        require idx < mem[96]
        mem[(32 * idx) + 128] = _69
        idx = idx + 1
        continue 
    _70 = mem[64]
    mem[mem[64]] = 32
    _71 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _71:
        _81 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_81 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _70 + (64 * _71) + -mem[64] + 64
}

function getGovReceipts(address arg1, address arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require (32 * arg3.length) + 128 >= 96 and (32 * arg3.length) + 128 <= test266151307()
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * arg3.length) + 128] = arg3.length
    mem[64] = (64 * arg3.length) + 160
    if not arg3.length:
        idx = 0
        while idx < arg3.length:
            _109 = mem[64]
            mem[64] = mem[64] + 96
            mem[_109] = 0
            mem[_109 + 32] = 0
            mem[_109 + 64] = 0
            require idx < mem[96]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(arg1)
            staticcall arg1.getReceipt(uint256 rg1, address rg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], address(arg2)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _125 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _132 = mem[64]
            require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
            mem[64] = mem[64] + 96
            require mem[_125] == bool(mem[_125])
            mem[_132] = mem[_125]
            require mem[_125 + 32] == bool(mem[_125 + 32])
            mem[_132 + 32] = mem[_125 + 32]
            require mem[_125 + 64] == mem[_125 + 84 len 12]
            mem[_132 + 64] = mem[_125 + 64]
            _145 = mem[64]
            mem[64] = mem[64] + 128
            require idx < mem[96]
            mem[_145] = mem[(32 * idx) + 128]
            mem[_145 + 32] = bool(mem[_132])
            mem[_145 + 64] = bool(mem[_132 + 32])
            mem[_145 + 96] = mem[_132 + 84 len 12]
            require idx < mem[(32 * arg3.length) + 128]
            mem[(32 * idx) + (32 * arg3.length) + 160] = _145
            idx = idx + 1
            continue 
        _110 = mem[64]
        mem[mem[64]] = 32
        _114 = mem[(32 * arg3.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg3.length) + 128]
        idx = 0
        s = (32 * arg3.length) + 160
        t = mem[64] + 64
        while idx < _114:
            _160 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = bool(mem[_160 + 32])
            mem[t + 64] = bool(mem[_160 + 64])
            mem[t + 96] = mem[_160 + 116 len 12]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _110 + (128 * _114) + -mem[64] + 64
    mem[64] = (64 * arg3.length) + 288
    mem[(64 * arg3.length) + 160] = 0
    mem[(64 * arg3.length) + 192] = 0
    mem[(64 * arg3.length) + 224] = 0
    mem[(64 * arg3.length) + 256] = 0
    mem[var44001] = (64 * arg3.length) + 160
    s = var44001
    idx = var44002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[(64 * arg3.length) + 160] = 0
        mem[(64 * arg3.length) + 192] = 0
        mem[(64 * arg3.length) + 224] = 0
        mem[(64 * arg3.length) + 256] = 0
        mem[s + 32] = (64 * arg3.length) + 160
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg3.length:
        _191 = mem[64]
        mem[64] = mem[64] + 96
        mem[_191] = 0
        mem[_191 + 32] = 0
        mem[_191 + 64] = 0
        require idx < mem[96]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(arg1)
        staticcall arg1.getReceipt(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(arg2)
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _201 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _204 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        require mem[_201] == bool(mem[_201])
        mem[_204] = mem[_201]
        require mem[_201 + 32] == bool(mem[_201 + 32])
        mem[_204 + 32] = mem[_201 + 32]
        require mem[_201 + 64] == mem[_201 + 84 len 12]
        mem[_204 + 64] = mem[_201 + 64]
        _209 = mem[64]
        mem[64] = mem[64] + 128
        require idx < mem[96]
        mem[_209] = mem[(32 * idx) + 128]
        mem[_209 + 32] = bool(mem[_204])
        mem[_209 + 64] = bool(mem[_204 + 32])
        mem[_209 + 96] = mem[_204 + 84 len 12]
        require idx < mem[(32 * arg3.length) + 128]
        mem[(32 * idx) + (32 * arg3.length) + 160] = _209
        idx = idx + 1
        continue 
    _192 = mem[64]
    mem[mem[64]] = 32
    _196 = mem[(32 * arg3.length) + 128]
    mem[mem[64] + 32] = mem[(32 * arg3.length) + 128]
    idx = 0
    s = (32 * arg3.length) + 160
    t = mem[64] + 64
    while idx < _196:
        _216 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = bool(mem[_216 + 32])
        mem[t + 64] = bool(mem[_216 + 64])
        mem[t + 96] = mem[_216 + 116 len 12]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _192 + (128 * _196) + -mem[64] + 64
}

function sub_1f884fdf(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            _53 = mem[64]
            mem[64] = mem[64] + 64
            mem[_53] = 0
            mem[_53 + 32] = 0
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).comptroller() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _60 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_60] == mem[_60 + 12 len 20]
            require ext_code.size(mem[_60 + 12 len 20])
            staticcall mem[_60 + 12 len 20].oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _70 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _71 = mem[_70]
            require mem[_70] == mem[_70 + 12 len 20]
            _76 = mem[64]
            mem[64] = mem[64] + 64
            mem[_76] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(_71))
            staticcall address(_71).getUnderlyingPrice(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _81 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_81] == mem[_81]
            mem[_76 + 32] = mem[_81]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _76
            idx = idx + 1
            continue 
        _46 = mem[64]
        mem[mem[64]] = 32
        _47 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _47:
            _89 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_89 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _46 + (64 * _47) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 192
    mem[(32 * ('cd', 4).length) + 128] = 0
    mem[(32 * ('cd', 4).length) + 160] = 0
    mem[var16001] = (32 * ('cd', 4).length) + 128
    s = var16001
    idx = var16002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[s + 32] = (32 * ('cd', 4).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        _119 = mem[64]
        mem[64] = mem[64] + 64
        mem[_119] = 0
        mem[_119 + 32] = 0
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).comptroller() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _123 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_123] == mem[_123 + 12 len 20]
        require ext_code.size(mem[_123 + 12 len 20])
        staticcall mem[_123 + 12 len 20].oracle() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _127 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _128 = mem[_127]
        require mem[_127] == mem[_127 + 12 len 20]
        _129 = mem[64]
        mem[64] = mem[64] + 64
        mem[_129] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(address(_128))
        staticcall address(_128).getUnderlyingPrice(address rg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _132 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_132] == mem[_132]
        mem[_129 + 32] = mem[_132]
        require idx < mem[96]
        mem[(32 * idx) + 128] = _129
        idx = idx + 1
        continue 
    _114 = mem[64]
    mem[mem[64]] = 32
    _115 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _115:
        _135 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_135 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _114 + (64 * _115) + -mem[64] + 64
}

function sub_b3124239(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[292] = address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    mem[288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 292] = address(arg2)
    require ext_code.size(address(arg1))
    call address(arg1).borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args address(arg2)
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 292] = address(arg2)
    require ext_code.size(address(arg1))
    call address(arg1).balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args address(arg2)
    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 288] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    _17 = mem[(4 * ceil32(return_data.size)) + 288]
    require mem[(4 * ceil32(return_data.size)) + 288] <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288] + 319 < (4 * ceil32(return_data.size)) + return_data.size + 288
    _18 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288] + 288]
    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288] + 288] <= test266151307()
    require ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288] + 288]) + 32 >= 0 and (6 * ceil32(return_data.size)) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288] + 288]) + 320 <= test266151307()
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288] + 288]) + 320
    mem[(6 * ceil32(return_data.size)) + 288] = _18
    require _17 + _18 + 32 <= return_data.size
    mem[(6 * ceil32(return_data.size)) + 320 len ceil32(_18)] = mem[(4 * ceil32(return_data.size)) + _17 + 320 len ceil32(_18)]
    if ceil32(_18) <= _18:
        _222 = mem[64]
        mem[64] = mem[64] + 64
        mem[_222] = 4
        mem[_222 + 32] = 0x76424e4200000000000000000000000000000000000000000000000000000000
        _224 = mem[64]
        mem[mem[64] + 32] = 0x76424e4200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 36] = 0
        _524 = mem[64]
        mem[mem[64]] = 4
        mem[64] = mem[64] + 36
        _526 = sha3(mem[_524 + 32 len mem[_524]])
        mem[_224 + 68 len ceil32(_18)] = mem[(6 * ceil32(return_data.size)) + 320 len ceil32(_18)]
        if ceil32(_18) > _18:
            mem[_18 + _224 + 68] = 0
        mem[64] = _18 + _224 + 68
        if sha3(mem[_224 + 68 len _18]) == _526:
            return arg1 << 192, 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   eth.balance(arg2),
                   eth.balance(arg2)
    else:
        mem[_18 + (6 * ceil32(return_data.size)) + 320] = 0
        _223 = mem[64]
        mem[64] = mem[64] + 64
        mem[_223] = 4
        mem[_223 + 32] = 0x76424e4200000000000000000000000000000000000000000000000000000000
        _225 = mem[64]
        mem[mem[64] + 32] = 0x76424e4200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 36] = 0
        _532 = mem[64]
        mem[mem[64]] = 4
        mem[64] = mem[64] + 36
        _534 = sha3(mem[_532 + 32 len mem[_532]])
        mem[_225 + 68 len ceil32(_18)] = mem[(6 * ceil32(return_data.size)) + 320 len ceil32(_18)]
        if ceil32(_18) > _18:
            mem[_18 + _225 + 68] = 0
        mem[64] = _18 + _225 + 68
        if sha3(mem[_225 + 68 len _18]) == _534:
            return arg1 << 192, 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   eth.balance(arg2),
                   eth.balance(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg2), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return arg1 << 192, 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function getGovProposals(address arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[64] = (32 * arg2.length) + 128
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            mem[mem[64]] = 0x328dd98200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + arg2 + 36)]
            require ext_code.size(arg1)
            staticcall arg1.getActions(uint256 rg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + arg2 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _150 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _153 = mem[_150]
            require mem[_150] <= test266151307()
            require _150 + mem[_150] + 31 < _150 + return_data.size
            _157 = mem[_150 + mem[_150]]
            require mem[_150 + mem[_150]] <= test266151307()
            require (32 * mem[_150 + mem[_150]]) + 32 >= 0 and _150 + ceil32(return_data.size) + (32 * mem[_150 + mem[_150]]) + 32 <= test266151307()
            mem[64] = _150 + ceil32(return_data.size) + (32 * mem[_150 + mem[_150]]) + 32
            mem[_150 + ceil32(return_data.size)] = _157
            require _153 + (32 * _157) + 32 <= return_data.size
            s = 0
            t = _150 + _153 + 32
            u = _150 + ceil32(return_data.size) + 32
            while s < _157:
                require mem[t] == mem[t + 12 len 20]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _286 = mem[_150 + 32]
            require mem[_150 + 32] <= test266151307()
            require _150 + mem[_150 + 32] + 31 < _150 + return_data.size
            _290 = mem[_150 + mem[_150 + 32]]
            require mem[_150 + mem[_150 + 32]] <= test266151307()
            _294 = mem[64]
            require mem[64] + (32 * mem[_150 + mem[_150 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_150 + mem[_150 + 32]]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * mem[_150 + mem[_150 + 32]]) + 32
            mem[_294] = _290
            require _286 + (32 * _290) + 32 <= return_data.size
            s = 0
            t = _150 + _286 + 32
            u = _294 + 32
            while s < _290:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _419 = mem[_150 + 64]
            require mem[_150 + 64] <= test266151307()
            require _150 + mem[_150 + 64] + 31 < _150 + return_data.size
            _424 = mem[_150 + mem[_150 + 64]]
            require mem[_150 + mem[_150 + 64]] <= test266151307()
            _427 = mem[64]
            require mem[64] + (32 * mem[_150 + mem[_150 + 64]]) + 32 >= mem[64] and mem[64] + (32 * mem[_150 + mem[_150 + 64]]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * mem[_150 + mem[_150 + 64]]) + 32
            mem[_427] = _424
            s = 0
            t = _150 + _419 + 32
            u = _427 + 32
            while s < _424:
                _539 = mem[t]
                require _150 + _419 + mem[t] + 63 < _150 + return_data.size
                _545 = mem[_150 + _419 + mem[t] + 32]
                require mem[_150 + _419 + mem[t] + 32] <= test266151307()
                _551 = mem[64]
                require mem[64] + ceil32(mem[_150 + _419 + mem[t] + 32]) + 32 >= mem[64] and mem[64] + ceil32(mem[_150 + _419 + mem[t] + 32]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[_150 + _419 + mem[t] + 32]) + 32
                mem[_551] = _545
                require _419 + _539 + _545 + 64 <= return_data.size
                idx = 0
                while idx < _545:
                    mem[idx + _551 + 32] = mem[idx + _150 + _419 + _539 + 64]
                    idx = idx + 32
                    continue 
                if ceil32(_545) > _545:
                    mem[_545 + _551 + 32] = 0
                mem[u] = _551
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _542 = mem[_150 + 96]
            require mem[_150 + 96] <= test266151307()
            require _150 + mem[_150 + 96] + 31 < _150 + return_data.size
            _549 = mem[_150 + mem[_150 + 96]]
            require mem[_150 + mem[_150 + 96]] <= test266151307()
            _553 = mem[64]
            require mem[64] + (32 * mem[_150 + mem[_150 + 96]]) + 32 >= mem[64] and mem[64] + (32 * mem[_150 + mem[_150 + 96]]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * mem[_150 + mem[_150 + 96]]) + 32
            mem[_553] = _549
            s = 0
            t = _150 + _542 + 32
            u = _553 + 32
            while s < _549:
                _645 = mem[t]
                require _150 + _542 + mem[t] + 63 < _150 + return_data.size
                _654 = mem[_150 + _542 + mem[t] + 32]
                require mem[_150 + _542 + mem[t] + 32] <= test266151307()
                _662 = mem[64]
                require mem[64] + ceil32(mem[_150 + _542 + mem[t] + 32]) + 32 >= mem[64] and mem[64] + ceil32(mem[_150 + _542 + mem[t] + 32]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[_150 + _542 + mem[t] + 32]) + 32
                mem[_662] = _654
                require _542 + _645 + _654 + 64 <= return_data.size
                idx = 0
                while idx < _654:
                    mem[idx + _662 + 32] = mem[idx + _150 + _542 + _645 + 64]
                    idx = idx + 32
                    continue 
                if ceil32(_654) > _654:
                    mem[_654 + _662 + 32] = 0
                mem[u] = _662
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _652 = mem[64]
            mem[64] = mem[64] + 416
            mem[_652] = 0
            mem[_652 + 32] = 0
            mem[_652 + 64] = 0
            mem[_652 + 96] = _150 + ceil32(return_data.size)
            mem[_652 + 128] = _294
            mem[_652 + 160] = _427
            mem[_652 + 192] = _553
            mem[_652 + 224] = 0
            mem[_652 + 256] = 0
            mem[_652 + 288] = 0
            mem[_652 + 320] = 0
            mem[_652 + 352] = 0
            mem[_652 + 384] = 0
            require idx < mem[96]
            mem[(32 * idx) + 128] = _652
            require idx < mem[96]
            require idx < arg2.length
            require ext_code.size(arg1)
            staticcall arg1.proposals(uint256 rg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + arg2 + 36)]
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _675 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            require mem[_675] == mem[_675]
            _689 = mem[_675 + 32]
            require mem[_675 + 32] == mem[_675 + 44 len 20]
            _704 = mem[_675 + 64]
            require mem[_675 + 64] == mem[_675 + 64]
            _712 = mem[_675 + 96]
            require mem[_675 + 96] == mem[_675 + 96]
            _715 = mem[_675 + 128]
            require mem[_675 + 128] == mem[_675 + 128]
            _719 = mem[_675 + 160]
            require mem[_675 + 160] == mem[_675 + 160]
            _721 = mem[_675 + 192]
            require mem[_675 + 192] == mem[_675 + 192]
            _723 = mem[_675 + 224]
            require mem[_675 + 224] == bool(mem[_675 + 224])
            _725 = mem[_675 + 256]
            require mem[_675 + 256] == bool(mem[_675 + 256])
            mem[_652] = cd[((32 * idx) + arg2 + 36)]
            mem[_652 + 32] = address(_689)
            mem[_652 + 64] = _704
            mem[_652 + 224] = _712
            mem[_652 + 256] = _715
            mem[_652 + 288] = _719
            mem[_652 + 320] = _721
            mem[_652 + 352] = bool(_723)
            mem[_652 + 384] = bool(_725)
            idx = idx + 1
            continue 
        _144 = mem[64]
        mem[mem[64]] = 32
        _146 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _146:
            mem[u] = t + -_144 - 64
            _285 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_285 + 44 len 20]
            mem[t + 64] = mem[_285 + 64]
            _303 = mem[_285 + 96]
            mem[t + 96] = 416
            _307 = mem[_303]
            mem[t + 416] = mem[_303]
            v = 0
            w = _303 + 32
            x = t + 448
            while v < _307:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _418 = mem[_285 + 128]
            mem[t + 128] = (32 * _307) + 448
            _423 = mem[_418]
            mem[t + (32 * _307) + 448] = mem[_418]
            v = 0
            w = _418 + 32
            x = t + (32 * _307) + 480
            while v < _423:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _541 = mem[_285 + 160]
            mem[t + 160] = (32 * _307) + (32 * _423) + 480
            _548 = mem[_541]
            mem[t + (32 * _307) + (32 * _423) + 480] = mem[_541]
            v = 0
            w = _541 + 32
            x = t + (32 * _307) + (32 * _423) + (32 * _548) + 512
            y = t + (32 * _307) + (32 * _423) + 512
            while v < _548:
                mem[y] = x + -t + -(32 * _307) + -(32 * _423) - 512
                _644 = mem[w]
                _656 = mem[mem[w]]
                mem[x] = mem[mem[w]]
                idx = 0
                while idx < _656:
                    mem[idx + x + 32] = mem[idx + _644 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_656) > _656:
                    mem[_656 + x + 32] = 0
                v = v + 1
                w = w + 32
                x = x + ceil32(_656) + 32
                y = y + 32
                continue 
            _648 = mem[_285 + 192]
            mem[t + 192] = x - t
            _655 = mem[_648]
            mem[x] = mem[_648]
            v = 0
            w = _648 + 32
            y = x + (32 * _655) + 32
            z = x + 32
            while v < _655:
                mem[z] = y + -x - 32
                _730 = mem[w]
                _739 = mem[mem[w]]
                mem[y] = mem[mem[w]]
                idx = 0
                while idx < _739:
                    mem[idx + y + 32] = mem[idx + _730 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_739) > _739:
                    mem[_739 + y + 32] = 0
                v = v + 1
                w = w + 32
                y = y + ceil32(_739) + 32
                z = z + 32
                continue 
            mem[t + 224] = mem[_285 + 224]
            mem[t + 256] = mem[_285 + 256]
            mem[t + 288] = mem[_285 + 288]
            mem[t + 320] = mem[_285 + 320]
            mem[t + 352] = bool(mem[_285 + 352])
            mem[t + 384] = bool(mem[_285 + 384])
            idx = idx + 1
            s = s + 32
            t = y
            u = u + 32
            continue 
    else:
        mem[64] = (32 * arg2.length) + 544
        mem[(32 * arg2.length) + 128] = 0
        mem[(32 * arg2.length) + 160] = 0
        mem[(32 * arg2.length) + 192] = 0
        mem[(32 * arg2.length) + 224] = 96
        mem[(32 * arg2.length) + 256] = 96
        mem[(32 * arg2.length) + 288] = 96
        mem[(32 * arg2.length) + 320] = 96
        mem[(32 * arg2.length) + 352] = 0
        mem[(32 * arg2.length) + 384] = 0
        mem[(32 * arg2.length) + 416] = 0
        mem[(32 * arg2.length) + 448] = 0
        mem[(32 * arg2.length) + 480] = 0
        mem[(32 * arg2.length) + 512] = 0
        mem[var27001] = (32 * arg2.length) + 128
        s = var27001
        idx = var27002
        while idx - 1:
            mem[64] = mem[64] + 416
            mem[(32 * arg2.length) + 128] = 0
            mem[(32 * arg2.length) + 160] = 0
            mem[(32 * arg2.length) + 192] = 0
            mem[(32 * arg2.length) + 224] = 96
            mem[(32 * arg2.length) + 256] = 96
            mem[(32 * arg2.length) + 288] = 96
            mem[(32 * arg2.length) + 320] = 96
            mem[(32 * arg2.length) + 352] = 0
            mem[(32 * arg2.length) + 384] = 0
            mem[(32 * arg2.length) + 416] = 0
            mem[(32 * arg2.length) + 448] = 0
            mem[(32 * arg2.length) + 480] = 0
            mem[(32 * arg2.length) + 512] = 0
            mem[s + 32] = (32 * arg2.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg2.length:
            mem[mem[64]] = 0x328dd98200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + arg2 + 36)]
            require ext_code.size(arg1)
            staticcall arg1.getActions(uint256 rg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + arg2 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _428 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _432 = mem[_428]
            require mem[_428] <= test266151307()
            require _428 + mem[_428] + 31 < _428 + return_data.size
            _439 = mem[_428 + mem[_428]]
            require mem[_428 + mem[_428]] <= test266151307()
            require (32 * mem[_428 + mem[_428]]) + 32 >= 0 and _428 + ceil32(return_data.size) + (32 * mem[_428 + mem[_428]]) + 32 <= test266151307()
            mem[64] = _428 + ceil32(return_data.size) + (32 * mem[_428 + mem[_428]]) + 32
            mem[_428 + ceil32(return_data.size)] = _439
            require _432 + (32 * _439) + 32 <= return_data.size
            s = 0
            t = _428 + _432 + 32
            u = _428 + ceil32(return_data.size) + 32
            while s < _439:
                require mem[t] == mem[t + 12 len 20]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _543 = mem[_428 + 32]
            require mem[_428 + 32] <= test266151307()
            require _428 + mem[_428 + 32] + 31 < _428 + return_data.size
            _550 = mem[_428 + mem[_428 + 32]]
            require mem[_428 + mem[_428 + 32]] <= test266151307()
            _554 = mem[64]
            require mem[64] + (32 * mem[_428 + mem[_428 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_428 + mem[_428 + 32]]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * mem[_428 + mem[_428 + 32]]) + 32
            mem[_554] = _550
            require _543 + (32 * _550) + 32 <= return_data.size
            s = 0
            t = _428 + _543 + 32
            u = _554 + 32
            while s < _550:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _650 = mem[_428 + 64]
            require mem[_428 + 64] <= test266151307()
            require _428 + mem[_428 + 64] + 31 < _428 + return_data.size
            _660 = mem[_428 + mem[_428 + 64]]
            require mem[_428 + mem[_428 + 64]] <= test266151307()
            _663 = mem[64]
            require mem[64] + (32 * mem[_428 + mem[_428 + 64]]) + 32 >= mem[64] and mem[64] + (32 * mem[_428 + mem[_428 + 64]]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * mem[_428 + mem[_428 + 64]]) + 32
            mem[_663] = _660
            s = 0
            t = _428 + _650 + 32
            u = _663 + 32
            while s < _660:
                _734 = mem[t]
                require _428 + _650 + mem[t] + 63 < _428 + return_data.size
                _738 = mem[_428 + _650 + mem[t] + 32]
                require mem[_428 + _650 + mem[t] + 32] <= test266151307()
                _743 = mem[64]
                require mem[64] + ceil32(mem[_428 + _650 + mem[t] + 32]) + 32 >= mem[64] and mem[64] + ceil32(mem[_428 + _650 + mem[t] + 32]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[_428 + _650 + mem[t] + 32]) + 32
                mem[_743] = _738
                require _650 + _734 + _738 + 64 <= return_data.size
                idx = 0
                while idx < _738:
                    mem[idx + _743 + 32] = mem[idx + _428 + _650 + _734 + 64]
                    idx = idx + 32
                    continue 
                if ceil32(_738) > _738:
                    mem[_738 + _743 + 32] = 0
                mem[u] = _743
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _737 = mem[_428 + 96]
            require mem[_428 + 96] <= test266151307()
            require _428 + mem[_428 + 96] + 31 < _428 + return_data.size
            _741 = mem[_428 + mem[_428 + 96]]
            require mem[_428 + mem[_428 + 96]] <= test266151307()
            _744 = mem[64]
            require mem[64] + (32 * mem[_428 + mem[_428 + 96]]) + 32 >= mem[64] and mem[64] + (32 * mem[_428 + mem[_428 + 96]]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * mem[_428 + mem[_428 + 96]]) + 32
            mem[_744] = _741
            s = 0
            t = _428 + _737 + 32
            u = _744 + 32
            while s < _741:
                _787 = mem[t]
                require _428 + _737 + mem[t] + 63 < _428 + return_data.size
                _792 = mem[_428 + _737 + mem[t] + 32]
                require mem[_428 + _737 + mem[t] + 32] <= test266151307()
                _798 = mem[64]
                require mem[64] + ceil32(mem[_428 + _737 + mem[t] + 32]) + 32 >= mem[64] and mem[64] + ceil32(mem[_428 + _737 + mem[t] + 32]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[_428 + _737 + mem[t] + 32]) + 32
                mem[_798] = _792
                require _737 + _787 + _792 + 64 <= return_data.size
                idx = 0
                while idx < _792:
                    mem[idx + _798 + 32] = mem[idx + _428 + _737 + _787 + 64]
                    idx = idx + 32
                    continue 
                if ceil32(_792) > _792:
                    mem[_792 + _798 + 32] = 0
                mem[u] = _798
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _790 = mem[64]
            mem[64] = mem[64] + 416
            mem[_790] = 0
            mem[_790 + 32] = 0
            mem[_790 + 64] = 0
            mem[_790 + 96] = _428 + ceil32(return_data.size)
            mem[_790 + 128] = _554
            mem[_790 + 160] = _663
            mem[_790 + 192] = _744
            mem[_790 + 224] = 0
            mem[_790 + 256] = 0
            mem[_790 + 288] = 0
            mem[_790 + 320] = 0
            mem[_790 + 352] = 0
            mem[_790 + 384] = 0
            require idx < mem[96]
            mem[(32 * idx) + 128] = _790
            require idx < mem[96]
            require idx < arg2.length
            require ext_code.size(arg1)
            staticcall arg1.proposals(uint256 rg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + arg2 + 36)]
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _805 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            require mem[_805] == mem[_805]
            _811 = mem[_805 + 32]
            require mem[_805 + 32] == mem[_805 + 44 len 20]
            _814 = mem[_805 + 64]
            require mem[_805 + 64] == mem[_805 + 64]
            _815 = mem[_805 + 96]
            require mem[_805 + 96] == mem[_805 + 96]
            _816 = mem[_805 + 128]
            require mem[_805 + 128] == mem[_805 + 128]
            _817 = mem[_805 + 160]
            require mem[_805 + 160] == mem[_805 + 160]
            _818 = mem[_805 + 192]
            require mem[_805 + 192] == mem[_805 + 192]
            _819 = mem[_805 + 224]
            require mem[_805 + 224] == bool(mem[_805 + 224])
            _820 = mem[_805 + 256]
            require mem[_805 + 256] == bool(mem[_805 + 256])
            mem[_790] = cd[((32 * idx) + arg2 + 36)]
            mem[_790 + 32] = address(_811)
            mem[_790 + 64] = _814
            mem[_790 + 224] = _815
            mem[_790 + 256] = _816
            mem[_790 + 288] = _817
            mem[_790 + 320] = _818
            mem[_790 + 352] = bool(_819)
            mem[_790 + 384] = bool(_820)
            idx = idx + 1
            continue 
        _421 = mem[64]
        mem[mem[64]] = 32
        _425 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _425:
            mem[u] = t + -_421 - 64
            _540 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_540 + 44 len 20]
            mem[t + 64] = mem[_540 + 64]
            _569 = mem[_540 + 96]
            mem[t + 96] = 416
            _573 = mem[_569]
            mem[t + 416] = mem[_569]
            v = 0
            w = _569 + 32
            x = t + 448
            while v < _573:
                mem[x] = mem[w + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _649 = mem[_540 + 128]
            mem[t + 128] = (32 * _573) + 448
            _658 = mem[_649]
            mem[t + (32 * _573) + 448] = mem[_649]
            v = 0
            w = _649 + 32
            x = t + (32 * _573) + 480
            while v < _658:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            _736 = mem[_540 + 160]
            mem[t + 160] = (32 * _573) + (32 * _658) + 480
            _740 = mem[_736]
            mem[t + (32 * _573) + (32 * _658) + 480] = mem[_736]
            v = 0
            w = _736 + 32
            x = t + (32 * _573) + (32 * _658) + (32 * _740) + 512
            y = t + (32 * _573) + (32 * _658) + 512
            while v < _740:
                mem[y] = x + -t + -(32 * _573) + -(32 * _658) - 512
                _786 = mem[w]
                _794 = mem[mem[w]]
                mem[x] = mem[mem[w]]
                idx = 0
                while idx < _794:
                    mem[idx + x + 32] = mem[idx + _786 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_794) > _794:
                    mem[_794 + x + 32] = 0
                v = v + 1
                w = w + 32
                x = x + ceil32(_794) + 32
                y = y + 32
                continue 
            _789 = mem[_540 + 192]
            mem[t + 192] = x - t
            _793 = mem[_789]
            mem[x] = mem[_789]
            v = 0
            w = _789 + 32
            y = x + (32 * _793) + 32
            z = x + 32
            while v < _793:
                mem[z] = y + -x - 32
                _821 = mem[w]
                _825 = mem[mem[w]]
                mem[y] = mem[mem[w]]
                idx = 0
                while idx < _825:
                    mem[idx + y + 32] = mem[idx + _821 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_825) > _825:
                    mem[_825 + y + 32] = 0
                v = v + 1
                w = w + 32
                y = y + ceil32(_825) + 32
                z = z + 32
                continue 
            mem[t + 224] = mem[_540 + 224]
            mem[t + 256] = mem[_540 + 256]
            mem[t + 288] = mem[_540 + 288]
            mem[t + 320] = mem[_540 + 320]
            mem[t + 352] = bool(mem[_540 + 352])
            mem[t + 384] = bool(mem[_540 + 384])
            idx = idx + 1
            s = s + 32
            t = y
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_7c51b642(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            _343 = mem[64]
            mem[64] = mem[64] + 192
            mem[_343] = 0
            mem[_343 + 32] = 0
            mem[_343 + 64] = 0
            mem[_343 + 96] = 0
            mem[_343 + 128] = 0
            mem[_343 + 160] = 0
            mem[mem[64] + 4] = address(cd[36])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[36])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _357 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _359 = mem[_357]
            require mem[_357] == mem[_357]
            mem[mem[64] + 4] = address(cd[36])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            call address(cd[((32 * idx) + cd[4] + 36)]).borrowBalanceCurrent(address rg1) with:
                 gas gas_remaining wei
                args address(cd[36])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _369 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _370 = mem[_369]
            require mem[_369] == mem[_369]
            mem[mem[64] + 4] = address(cd[36])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            call address(cd[((32 * idx) + cd[4] + 36)]).balanceOfUnderlying(address rg1) with:
                 gas gas_remaining wei
                args address(cd[36])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _377 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _378 = mem[_377]
            require mem[_377] == mem[_377]
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _384 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _385 = mem[_384]
            require mem[_384] <= test266151307()
            require _384 + mem[_384] + 31 < _384 + return_data.size
            _388 = mem[_384 + mem[_384]]
            require mem[_384 + mem[_384]] <= test266151307()
            require ceil32(mem[_384 + mem[_384]]) + 32 >= 0 and _384 + ceil32(return_data.size) + ceil32(mem[_384 + mem[_384]]) + 32 <= test266151307()
            mem[64] = _384 + ceil32(return_data.size) + ceil32(mem[_384 + mem[_384]]) + 32
            mem[_384 + ceil32(return_data.size)] = _388
            require _385 + _388 + 32 <= return_data.size
            s = 0
            while s < _388:
                mem[s + _384 + ceil32(return_data.size) + 32] = mem[s + _384 + _385 + 32]
                s = s + 32
                continue 
            if ceil32(_388) <= _388:
                _705 = mem[64]
                mem[64] = mem[64] + 64
                mem[_705] = 4
                mem[_705 + 32] = 0x76424e4200000000000000000000000000000000000000000000000000000000
                _707 = mem[64]
                s = 0
                while s < 4:
                    mem[s + _707 + 32] = mem[s + _705 + 32]
                    s = s + 32
                    continue 
                mem[_707 + 36] = 0
                _1075 = mem[64]
                mem[mem[64]] = _707 + -mem[64] + 4
                mem[64] = _707 + 36
                _1077 = sha3(mem[_1075 + 32 len mem[_1075]])
                _1089 = mem[_384 + ceil32(return_data.size)]
                s = 0
                while s < _1089:
                    mem[s + _707 + 68] = mem[s + _384 + ceil32(return_data.size) + 32]
                    s = s + 32
                    continue 
                if ceil32(_1089) <= _1089:
                    _1450 = mem[64]
                    mem[mem[64]] = _1089 + _707 + -mem[64] + 36
                    mem[64] = _1089 + _707 + 68
                    if sha3(mem[_1450 + 32 len mem[_1450]]) == _1077:
                        mem[64] = _1089 + _707 + 260
                        mem[_1089 + _707 + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_1089 + _707 + 100] = _359
                        mem[_1089 + _707 + 132] = _370
                        mem[_1089 + _707 + 164] = _378
                        mem[_1089 + _707 + 196] = eth.balance(cd[36])
                        mem[_1089 + _707 + 228] = eth.balance(cd[36])
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1089 + _707 + 68
                    else:
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_1089 + _707 + 68] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1089 + _707 + ceil32(return_data.size) + 68
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_1089 + _707 + ceil32(return_data.size) + 72] = address(cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(cd[36])
                        mem[_1089 + _707 + ceil32(return_data.size) + 68] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1089 + _707 + (2 * ceil32(return_data.size)) + 68
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_1089 + _707 + (2 * ceil32(return_data.size)) + 72] = address(cd[36])
                        mem[_1089 + _707 + (2 * ceil32(return_data.size)) + 104] = address(cd[((32 * idx) + cd[4] + 36)])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(cd[36]), address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_1089 + _707 + (2 * ceil32(return_data.size)) + 68] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[64] = _1089 + _707 + (4 * ceil32(return_data.size)) + 260
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 100] = _359
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 132] = _370
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 164] = _378
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1089 + _707 + (4 * ceil32(return_data.size)) + 68
                else:
                    mem[_1089 + _707 + 68] = 0
                    _1453 = mem[64]
                    mem[mem[64]] = _1089 + _707 + -mem[64] + 36
                    mem[64] = _1089 + _707 + 68
                    if sha3(mem[_1453 + 32 len mem[_1453]]) == _1077:
                        mem[64] = _1089 + _707 + 260
                        mem[_1089 + _707 + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_1089 + _707 + 100] = _359
                        mem[_1089 + _707 + 132] = _370
                        mem[_1089 + _707 + 164] = _378
                        mem[_1089 + _707 + 196] = eth.balance(cd[36])
                        mem[_1089 + _707 + 228] = eth.balance(cd[36])
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1089 + _707 + 68
                    else:
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_1089 + _707 + 68] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1089 + _707 + ceil32(return_data.size) + 68
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_1089 + _707 + ceil32(return_data.size) + 72] = address(cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(cd[36])
                        mem[_1089 + _707 + ceil32(return_data.size) + 68] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1089 + _707 + (2 * ceil32(return_data.size)) + 68
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_1089 + _707 + (2 * ceil32(return_data.size)) + 72] = address(cd[36])
                        mem[_1089 + _707 + (2 * ceil32(return_data.size)) + 104] = address(cd[((32 * idx) + cd[4] + 36)])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(cd[36]), address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_1089 + _707 + (2 * ceil32(return_data.size)) + 68] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[64] = _1089 + _707 + (4 * ceil32(return_data.size)) + 260
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 100] = _359
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 132] = _370
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 164] = _378
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                        mem[_1089 + _707 + (4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1089 + _707 + (4 * ceil32(return_data.size)) + 68
            else:
                mem[_388 + _384 + ceil32(return_data.size) + 32] = 0
                _706 = mem[64]
                mem[64] = mem[64] + 64
                mem[_706] = 4
                mem[_706 + 32] = 0x76424e4200000000000000000000000000000000000000000000000000000000
                _708 = mem[64]
                s = 0
                while s < 4:
                    mem[s + _708 + 32] = mem[s + _706 + 32]
                    s = s + 32
                    continue 
                mem[_708 + 36] = 0
                _1083 = mem[64]
                mem[mem[64]] = _708 + -mem[64] + 4
                mem[64] = _708 + 36
                _1085 = sha3(mem[_1083 + 32 len mem[_1083]])
                _1091 = mem[_384 + ceil32(return_data.size)]
                s = 0
                while s < _1091:
                    mem[s + _708 + 68] = mem[s + _384 + ceil32(return_data.size) + 32]
                    s = s + 32
                    continue 
                if ceil32(_1091) <= _1091:
                    _1462 = mem[64]
                    mem[mem[64]] = _1091 + _708 + -mem[64] + 36
                    mem[64] = _1091 + _708 + 68
                    if sha3(mem[_1462 + 32 len mem[_1462]]) == _1085:
                        mem[64] = _1091 + _708 + 260
                        mem[_1091 + _708 + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_1091 + _708 + 100] = _359
                        mem[_1091 + _708 + 132] = _370
                        mem[_1091 + _708 + 164] = _378
                        mem[_1091 + _708 + 196] = eth.balance(cd[36])
                        mem[_1091 + _708 + 228] = eth.balance(cd[36])
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1091 + _708 + 68
                    else:
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_1091 + _708 + 68] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1091 + _708 + ceil32(return_data.size) + 68
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_1091 + _708 + ceil32(return_data.size) + 72] = address(cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(cd[36])
                        mem[_1091 + _708 + ceil32(return_data.size) + 68] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1091 + _708 + (2 * ceil32(return_data.size)) + 68
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_1091 + _708 + (2 * ceil32(return_data.size)) + 72] = address(cd[36])
                        mem[_1091 + _708 + (2 * ceil32(return_data.size)) + 104] = address(cd[((32 * idx) + cd[4] + 36)])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(cd[36]), address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_1091 + _708 + (2 * ceil32(return_data.size)) + 68] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[64] = _1091 + _708 + (4 * ceil32(return_data.size)) + 260
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 100] = _359
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 132] = _370
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 164] = _378
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1091 + _708 + (4 * ceil32(return_data.size)) + 68
                else:
                    mem[_1091 + _708 + 68] = 0
                    _1465 = mem[64]
                    mem[mem[64]] = _1091 + _708 + -mem[64] + 36
                    mem[64] = _1091 + _708 + 68
                    if sha3(mem[_1465 + 32 len mem[_1465]]) == _1085:
                        mem[64] = _1091 + _708 + 260
                        mem[_1091 + _708 + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_1091 + _708 + 100] = _359
                        mem[_1091 + _708 + 132] = _370
                        mem[_1091 + _708 + 164] = _378
                        mem[_1091 + _708 + 196] = eth.balance(cd[36])
                        mem[_1091 + _708 + 228] = eth.balance(cd[36])
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1091 + _708 + 68
                    else:
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_1091 + _708 + 68] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1091 + _708 + ceil32(return_data.size) + 68
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_1091 + _708 + ceil32(return_data.size) + 72] = address(cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(cd[36])
                        mem[_1091 + _708 + ceil32(return_data.size) + 68] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1091 + _708 + (2 * ceil32(return_data.size)) + 68
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_1091 + _708 + (2 * ceil32(return_data.size)) + 72] = address(cd[36])
                        mem[_1091 + _708 + (2 * ceil32(return_data.size)) + 104] = address(cd[((32 * idx) + cd[4] + 36)])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(cd[36]), address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_1091 + _708 + (2 * ceil32(return_data.size)) + 68] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[64] = _1091 + _708 + (4 * ceil32(return_data.size)) + 260
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 100] = _359
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 132] = _370
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 164] = _378
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                        mem[_1091 + _708 + (4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1091 + _708 + (4 * ceil32(return_data.size)) + 68
            idx = idx + 1
            continue 
        _336 = mem[64]
        mem[mem[64]] = 32
        _337 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _337:
            _701 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_701 + 32]
            mem[t + 64] = mem[_701 + 64]
            mem[t + 96] = mem[_701 + 96]
            mem[t + 128] = mem[_701 + 128]
            mem[t + 160] = mem[_701 + 160]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        return memory
          from mem[64]
           len _336 + (192 * _337) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 320
    mem[(32 * ('cd', 4).length) + 128] = 0
    mem[(32 * ('cd', 4).length) + 160] = 0
    mem[(32 * ('cd', 4).length) + 192] = 0
    mem[(32 * ('cd', 4).length) + 224] = 0
    mem[(32 * ('cd', 4).length) + 256] = 0
    mem[(32 * ('cd', 4).length) + 288] = 0
    mem[var25001] = (32 * ('cd', 4).length) + 128
    s = var25001
    idx = var25002
    while idx - 1:
        mem[64] = mem[64] + 192
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[(32 * ('cd', 4).length) + 192] = 0
        mem[(32 * ('cd', 4).length) + 224] = 0
        mem[(32 * ('cd', 4).length) + 256] = 0
        mem[(32 * ('cd', 4).length) + 288] = 0
        mem[s + 32] = (32 * ('cd', 4).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        _1123 = mem[64]
        mem[64] = mem[64] + 192
        mem[_1123] = 0
        mem[_1123 + 32] = 0
        mem[_1123 + 64] = 0
        mem[_1123 + 96] = 0
        mem[_1123 + 128] = 0
        mem[_1123 + 160] = 0
        mem[mem[64] + 4] = address(cd[36])
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[36])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1178 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1187 = mem[_1178]
        require mem[_1178] == mem[_1178]
        mem[mem[64] + 4] = address(cd[36])
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).borrowBalanceCurrent(address rg1) with:
             gas gas_remaining wei
            args address(cd[36])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1215 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1224 = mem[_1215]
        require mem[_1215] == mem[_1215]
        mem[mem[64] + 4] = address(cd[36])
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).balanceOfUnderlying(address rg1) with:
             gas gas_remaining wei
            args address(cd[36])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1251 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1252 = mem[_1251]
        require mem[_1251] == mem[_1251]
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1271 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1272 = mem[_1271]
        require mem[_1271] <= test266151307()
        require _1271 + mem[_1271] + 31 < _1271 + return_data.size
        _1273 = mem[_1271 + mem[_1271]]
        require mem[_1271 + mem[_1271]] <= test266151307()
        require ceil32(mem[_1271 + mem[_1271]]) + 32 >= 0 and _1271 + ceil32(return_data.size) + ceil32(mem[_1271 + mem[_1271]]) + 32 <= test266151307()
        mem[64] = _1271 + ceil32(return_data.size) + ceil32(mem[_1271 + mem[_1271]]) + 32
        mem[_1271 + ceil32(return_data.size)] = _1273
        require _1272 + _1273 + 32 <= return_data.size
        s = 0
        while s < _1273:
            mem[s + _1271 + ceil32(return_data.size) + 32] = mem[s + _1271 + _1272 + 32]
            s = s + 32
            continue 
        if ceil32(_1273) <= _1273:
            _1468 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1468] = 4
            mem[_1468 + 32] = 0x76424e4200000000000000000000000000000000000000000000000000000000
            _1470 = mem[64]
            s = 0
            while s < 4:
                mem[s + _1470 + 32] = mem[s + _1468 + 32]
                s = s + 32
                continue 
            mem[_1470 + 36] = 0
            _1791 = mem[64]
            mem[mem[64]] = _1470 + -mem[64] + 4
            mem[64] = _1470 + 36
            _1793 = sha3(mem[_1791 + 32 len mem[_1791]])
            _1804 = mem[_1271 + ceil32(return_data.size)]
            s = 0
            while s < _1804:
                mem[s + _1470 + 68] = mem[s + _1271 + ceil32(return_data.size) + 32]
                s = s + 32
                continue 
            if ceil32(_1804) <= _1804:
                _1973 = mem[64]
                mem[mem[64]] = _1804 + _1470 + -mem[64] + 36
                mem[64] = _1804 + _1470 + 68
                if sha3(mem[_1973 + 32 len mem[_1973]]) == _1793:
                    mem[64] = _1804 + _1470 + 260
                    mem[_1804 + _1470 + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1804 + _1470 + 100] = _1187
                    mem[_1804 + _1470 + 132] = _1224
                    mem[_1804 + _1470 + 164] = _1252
                    mem[_1804 + _1470 + 196] = eth.balance(cd[36])
                    mem[_1804 + _1470 + 228] = eth.balance(cd[36])
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1804 + _1470 + 68
                else:
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_1804 + _1470 + 68] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1804 + _1470 + ceil32(return_data.size) + 68
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_1804 + _1470 + ceil32(return_data.size) + 72] = address(cd[36])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[_1804 + _1470 + ceil32(return_data.size) + 68] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1804 + _1470 + (2 * ceil32(return_data.size)) + 68
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_1804 + _1470 + (2 * ceil32(return_data.size)) + 72] = address(cd[36])
                    mem[_1804 + _1470 + (2 * ceil32(return_data.size)) + 104] = address(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(cd[36]), address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1804 + _1470 + (2 * ceil32(return_data.size)) + 68] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[64] = _1804 + _1470 + (4 * ceil32(return_data.size)) + 260
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 100] = _1187
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 132] = _1224
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 164] = _1252
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1804 + _1470 + (4 * ceil32(return_data.size)) + 68
            else:
                mem[_1804 + _1470 + 68] = 0
                _1976 = mem[64]
                mem[mem[64]] = _1804 + _1470 + -mem[64] + 36
                mem[64] = _1804 + _1470 + 68
                if sha3(mem[_1976 + 32 len mem[_1976]]) == _1793:
                    mem[64] = _1804 + _1470 + 260
                    mem[_1804 + _1470 + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1804 + _1470 + 100] = _1187
                    mem[_1804 + _1470 + 132] = _1224
                    mem[_1804 + _1470 + 164] = _1252
                    mem[_1804 + _1470 + 196] = eth.balance(cd[36])
                    mem[_1804 + _1470 + 228] = eth.balance(cd[36])
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1804 + _1470 + 68
                else:
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_1804 + _1470 + 68] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1804 + _1470 + ceil32(return_data.size) + 68
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_1804 + _1470 + ceil32(return_data.size) + 72] = address(cd[36])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[_1804 + _1470 + ceil32(return_data.size) + 68] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1804 + _1470 + (2 * ceil32(return_data.size)) + 68
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_1804 + _1470 + (2 * ceil32(return_data.size)) + 72] = address(cd[36])
                    mem[_1804 + _1470 + (2 * ceil32(return_data.size)) + 104] = address(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(cd[36]), address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1804 + _1470 + (2 * ceil32(return_data.size)) + 68] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[64] = _1804 + _1470 + (4 * ceil32(return_data.size)) + 260
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 100] = _1187
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 132] = _1224
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 164] = _1252
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    mem[_1804 + _1470 + (4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1804 + _1470 + (4 * ceil32(return_data.size)) + 68
        else:
            mem[_1273 + _1271 + ceil32(return_data.size) + 32] = 0
            _1469 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1469] = 4
            mem[_1469 + 32] = 0x76424e4200000000000000000000000000000000000000000000000000000000
            _1471 = mem[64]
            s = 0
            while s < 4:
                mem[s + _1471 + 32] = mem[s + _1469 + 32]
                s = s + 32
                continue 
            mem[_1471 + 36] = 0
            _1799 = mem[64]
            mem[mem[64]] = _1471 + -mem[64] + 4
            mem[64] = _1471 + 36
            _1801 = sha3(mem[_1799 + 32 len mem[_1799]])
            _1806 = mem[_1271 + ceil32(return_data.size)]
            s = 0
            while s < _1806:
                mem[s + _1471 + 68] = mem[s + _1271 + ceil32(return_data.size) + 32]
                s = s + 32
                continue 
            if ceil32(_1806) <= _1806:
                _1985 = mem[64]
                mem[mem[64]] = _1806 + _1471 + -mem[64] + 36
                mem[64] = _1806 + _1471 + 68
                if sha3(mem[_1985 + 32 len mem[_1985]]) == _1801:
                    mem[64] = _1806 + _1471 + 260
                    mem[_1806 + _1471 + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1806 + _1471 + 100] = _1187
                    mem[_1806 + _1471 + 132] = _1224
                    mem[_1806 + _1471 + 164] = _1252
                    mem[_1806 + _1471 + 196] = eth.balance(cd[36])
                    mem[_1806 + _1471 + 228] = eth.balance(cd[36])
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1806 + _1471 + 68
                else:
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_1806 + _1471 + 68] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1806 + _1471 + ceil32(return_data.size) + 68
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_1806 + _1471 + ceil32(return_data.size) + 72] = address(cd[36])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[_1806 + _1471 + ceil32(return_data.size) + 68] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1806 + _1471 + (2 * ceil32(return_data.size)) + 68
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_1806 + _1471 + (2 * ceil32(return_data.size)) + 72] = address(cd[36])
                    mem[_1806 + _1471 + (2 * ceil32(return_data.size)) + 104] = address(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(cd[36]), address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1806 + _1471 + (2 * ceil32(return_data.size)) + 68] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[64] = _1806 + _1471 + (4 * ceil32(return_data.size)) + 260
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 100] = _1187
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 132] = _1224
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 164] = _1252
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1806 + _1471 + (4 * ceil32(return_data.size)) + 68
            else:
                mem[_1806 + _1471 + 68] = 0
                _1988 = mem[64]
                mem[mem[64]] = _1806 + _1471 + -mem[64] + 36
                mem[64] = _1806 + _1471 + 68
                if sha3(mem[_1988 + 32 len mem[_1988]]) == _1801:
                    mem[64] = _1806 + _1471 + 260
                    mem[_1806 + _1471 + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1806 + _1471 + 100] = _1187
                    mem[_1806 + _1471 + 132] = _1224
                    mem[_1806 + _1471 + 164] = _1252
                    mem[_1806 + _1471 + 196] = eth.balance(cd[36])
                    mem[_1806 + _1471 + 228] = eth.balance(cd[36])
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1806 + _1471 + 68
                else:
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_1806 + _1471 + 68] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1806 + _1471 + ceil32(return_data.size) + 68
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_1806 + _1471 + ceil32(return_data.size) + 72] = address(cd[36])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[36])
                    mem[_1806 + _1471 + ceil32(return_data.size) + 68] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1806 + _1471 + (2 * ceil32(return_data.size)) + 68
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_1806 + _1471 + (2 * ceil32(return_data.size)) + 72] = address(cd[36])
                    mem[_1806 + _1471 + (2 * ceil32(return_data.size)) + 104] = address(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(cd[36]), address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1806 + _1471 + (2 * ceil32(return_data.size)) + 68] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[64] = _1806 + _1471 + (4 * ceil32(return_data.size)) + 260
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 100] = _1187
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 132] = _1224
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 164] = _1252
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    mem[_1806 + _1471 + (4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1806 + _1471 + (4 * ceil32(return_data.size)) + 68
        idx = idx + 1
        continue 
    _1070 = mem[64]
    mem[mem[64]] = 32
    _1087 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _1087:
        _1440 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_1440 + 32]
        mem[t + 64] = mem[_1440 + 64]
        mem[t + 96] = mem[_1440 + 96]
        mem[t + 128] = mem[_1440 + 128]
        mem[t + 160] = mem[_1440 + 160]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _1070 + (192 * _1087) + -mem[64] + 64
}

function sub_e0a67f11(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            _2107 = mem[64]
            mem[64] = mem[64] + 448
            mem[_2107] = 0
            mem[_2107 + 32] = 0
            mem[_2107 + 64] = 0
            mem[_2107 + 96] = 0
            mem[_2107 + 128] = 0
            mem[_2107 + 160] = 0
            mem[_2107 + 192] = 0
            mem[_2107 + 224] = 0
            mem[_2107 + 256] = 0
            mem[_2107 + 288] = 0
            mem[_2107 + 320] = 0
            mem[_2107 + 352] = 0
            mem[_2107 + 384] = 0
            mem[_2107 + 416] = 0
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            call address(cd[((32 * idx) + cd[4] + 36)]).exchangeRateCurrent() with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2113 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2117 = mem[_2113]
            require mem[_2113] == mem[_2113]
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).comptroller() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2127 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2127] == mem[_2127 + 12 len 20]
            require ext_code.size(mem[_2127 + 12 len 20])
            staticcall mem[_2127 + 12 len 20].markets(address rg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2148 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _2151 = mem[_2148]
            require mem[_2148] == bool(mem[_2148])
            _2158 = mem[_2148 + 32]
            require mem[_2148 + 32] == mem[_2148 + 32]
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2165 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2166 = mem[_2165]
            require mem[_2165] <= test266151307()
            require _2165 + mem[_2165] + 31 < _2165 + return_data.size
            _2170 = mem[_2165 + mem[_2165]]
            require mem[_2165 + mem[_2165]] <= test266151307()
            require ceil32(mem[_2165 + mem[_2165]]) + 32 >= 0 and _2165 + ceil32(return_data.size) + ceil32(mem[_2165 + mem[_2165]]) + 32 <= test266151307()
            mem[64] = _2165 + ceil32(return_data.size) + ceil32(mem[_2165 + mem[_2165]]) + 32
            mem[_2165 + ceil32(return_data.size)] = _2170
            require _2166 + _2170 + 32 <= return_data.size
            s = 0
            while s < _2170:
                mem[s + _2165 + ceil32(return_data.size) + 32] = mem[s + _2165 + _2166 + 32]
                s = s + 32
                continue 
            if ceil32(_2170) <= _2170:
                _3121 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3121] = 4
                mem[_3121 + 32] = 0x76424e4200000000000000000000000000000000000000000000000000000000
                _3125 = mem[64]
                s = 0
                while s < 4:
                    mem[s + _3125 + 32] = mem[s + _3121 + 32]
                    s = s + 32
                    continue 
                mem[_3125 + 36] = 0
                _4546 = mem[64]
                mem[mem[64]] = _3125 + -mem[64] + 4
                mem[64] = _3125 + 36
                _4548 = sha3(mem[_4546 + 32 len mem[_4546]])
                _4560 = mem[_2165 + ceil32(return_data.size)]
                s = 0
                while s < _4560:
                    mem[s + _3125 + 68] = mem[s + _2165 + ceil32(return_data.size) + 32]
                    s = s + 32
                    continue 
                if ceil32(_4560) <= _4560:
                    _5762 = mem[64]
                    mem[mem[64]] = _4560 + _3125 + -mem[64] + 36
                    mem[64] = _4560 + _3125 + 68
                    if sha3(mem[_5762 + 32 len mem[_5762]]) == _4548:
                        mem[64] = _4560 + _3125 + 516
                        mem[_4560 + _3125 + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_4560 + _3125 + 100] = _2117
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4560 + _3125 + 132] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + ceil32(return_data.size) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4560 + _3125 + 164] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (2 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4560 + _3125 + 196] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4560 + _3125 + 228] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (6 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4560 + _3125 + 260] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x18160ddd with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (7 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4560 + _3125 + 292] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (8 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4560 + _3125 + 324] = ext_call.return_data[0]
                        mem[_4560 + _3125 + 356] = bool(_2151)
                        mem[_4560 + _3125 + 388] = _2158
                        mem[_4560 + _3125 + 420] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (10 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _4560 + _3125 + (11 * ceil32(return_data.size)) + 516
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_4560 + _3125 + 452] = ext_call.return_data[31 len 1]
                        mem[_4560 + _3125 + 484] = 18
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _4560 + _3125 + 68
                    else:
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + 68] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _4560 + _3125 + ceil32(return_data.size) + 68
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + ceil32(return_data.size) + 68] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _4560 + _3125 + (2 * ceil32(return_data.size)) + 68
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (2 * ceil32(return_data.size)) + 68] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[64] = _4560 + _3125 + (4 * ceil32(return_data.size)) + 516
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 100] = _2117
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (6 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (7 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (8 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (10 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x18160ddd with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (11 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (12 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 356] = bool(_2151)
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 388] = _2158
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 420] = address(ext_call.return_data[0])
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (13 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _4560 + _3125 + (14 * ceil32(return_data.size)) + 516
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 452] = ext_call.return_data[31 len 1]
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 484] = uint8(ext_call.return_data[0])
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _4560 + _3125 + (4 * ceil32(return_data.size)) + 68
                else:
                    mem[_4560 + _3125 + 68] = 0
                    _5765 = mem[64]
                    mem[mem[64]] = _4560 + _3125 + -mem[64] + 36
                    mem[64] = _4560 + _3125 + 68
                    if sha3(mem[_5765 + 32 len mem[_5765]]) == _4548:
                        mem[64] = _4560 + _3125 + 516
                        mem[_4560 + _3125 + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_4560 + _3125 + 100] = _2117
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4560 + _3125 + 132] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + ceil32(return_data.size) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4560 + _3125 + 164] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (2 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4560 + _3125 + 196] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4560 + _3125 + 228] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (6 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4560 + _3125 + 260] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x18160ddd with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (7 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4560 + _3125 + 292] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (8 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4560 + _3125 + 324] = ext_call.return_data[0]
                        mem[_4560 + _3125 + 356] = bool(_2151)
                        mem[_4560 + _3125 + 388] = _2158
                        mem[_4560 + _3125 + 420] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (10 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _4560 + _3125 + (11 * ceil32(return_data.size)) + 516
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_4560 + _3125 + 452] = ext_call.return_data[31 len 1]
                        mem[_4560 + _3125 + 484] = 18
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _4560 + _3125 + 68
                    else:
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + 68] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _4560 + _3125 + ceil32(return_data.size) + 68
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + ceil32(return_data.size) + 68] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _4560 + _3125 + (2 * ceil32(return_data.size)) + 68
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (2 * ceil32(return_data.size)) + 68] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[64] = _4560 + _3125 + (4 * ceil32(return_data.size)) + 516
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 100] = _2117
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (6 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (7 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (8 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (10 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x18160ddd with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (11 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (12 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 356] = bool(_2151)
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 388] = _2158
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 420] = address(ext_call.return_data[0])
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                                gas gas_remaining wei
                        mem[_4560 + _3125 + (13 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _4560 + _3125 + (14 * ceil32(return_data.size)) + 516
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 452] = ext_call.return_data[31 len 1]
                        mem[_4560 + _3125 + (4 * ceil32(return_data.size)) + 484] = uint8(ext_call.return_data[0])
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _4560 + _3125 + (4 * ceil32(return_data.size)) + 68
            else:
                mem[_2170 + _2165 + ceil32(return_data.size) + 32] = 0
                _3122 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3122] = 4
                mem[_3122 + 32] = 0x76424e4200000000000000000000000000000000000000000000000000000000
                _3126 = mem[64]
                s = 0
                while s < 4:
                    mem[s + _3126 + 32] = mem[s + _3122 + 32]
                    s = s + 32
                    continue 
                mem[_3126 + 36] = 0
                _4554 = mem[64]
                mem[mem[64]] = _3126 + -mem[64] + 4
                mem[64] = _3126 + 36
                _4556 = sha3(mem[_4554 + 32 len mem[_4554]])
                _4562 = mem[_2165 + ceil32(return_data.size)]
                s = 0
                while s < _4562:
                    mem[s + _3126 + 68] = mem[s + _2165 + ceil32(return_data.size) + 32]
                    s = s + 32
                    continue 
                if ceil32(_4562) <= _4562:
                    _5774 = mem[64]
                    mem[mem[64]] = _4562 + _3126 + -mem[64] + 36
                    mem[64] = _4562 + _3126 + 68
                    if sha3(mem[_5774 + 32 len mem[_5774]]) == _4556:
                        mem[64] = _4562 + _3126 + 516
                        mem[_4562 + _3126 + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_4562 + _3126 + 100] = _2117
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4562 + _3126 + 132] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + ceil32(return_data.size) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4562 + _3126 + 164] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (2 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4562 + _3126 + 196] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4562 + _3126 + 228] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (6 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4562 + _3126 + 260] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x18160ddd with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (7 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4562 + _3126 + 292] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (8 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4562 + _3126 + 324] = ext_call.return_data[0]
                        mem[_4562 + _3126 + 356] = bool(_2151)
                        mem[_4562 + _3126 + 388] = _2158
                        mem[_4562 + _3126 + 420] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (10 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _4562 + _3126 + (11 * ceil32(return_data.size)) + 516
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_4562 + _3126 + 452] = ext_call.return_data[31 len 1]
                        mem[_4562 + _3126 + 484] = 18
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _4562 + _3126 + 68
                    else:
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + 68] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _4562 + _3126 + ceil32(return_data.size) + 68
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + ceil32(return_data.size) + 68] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _4562 + _3126 + (2 * ceil32(return_data.size)) + 68
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (2 * ceil32(return_data.size)) + 68] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[64] = _4562 + _3126 + (4 * ceil32(return_data.size)) + 516
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 100] = _2117
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (6 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (7 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (8 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (10 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x18160ddd with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (11 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (12 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 356] = bool(_2151)
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 388] = _2158
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 420] = address(ext_call.return_data[0])
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (13 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _4562 + _3126 + (14 * ceil32(return_data.size)) + 516
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 452] = ext_call.return_data[31 len 1]
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 484] = uint8(ext_call.return_data[0])
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _4562 + _3126 + (4 * ceil32(return_data.size)) + 68
                else:
                    mem[_4562 + _3126 + 68] = 0
                    _5777 = mem[64]
                    mem[mem[64]] = _4562 + _3126 + -mem[64] + 36
                    mem[64] = _4562 + _3126 + 68
                    if sha3(mem[_5777 + 32 len mem[_5777]]) == _4556:
                        mem[64] = _4562 + _3126 + 516
                        mem[_4562 + _3126 + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_4562 + _3126 + 100] = _2117
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4562 + _3126 + 132] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + ceil32(return_data.size) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4562 + _3126 + 164] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (2 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4562 + _3126 + 196] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4562 + _3126 + 228] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (6 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4562 + _3126 + 260] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x18160ddd with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (7 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4562 + _3126 + 292] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (8 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4562 + _3126 + 324] = ext_call.return_data[0]
                        mem[_4562 + _3126 + 356] = bool(_2151)
                        mem[_4562 + _3126 + 388] = _2158
                        mem[_4562 + _3126 + 420] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (10 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _4562 + _3126 + (11 * ceil32(return_data.size)) + 516
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_4562 + _3126 + 452] = ext_call.return_data[31 len 1]
                        mem[_4562 + _3126 + 484] = 18
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _4562 + _3126 + 68
                    else:
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + 68] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _4562 + _3126 + ceil32(return_data.size) + 68
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + ceil32(return_data.size) + 68] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _4562 + _3126 + (2 * ceil32(return_data.size)) + 68
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (2 * ceil32(return_data.size)) + 68] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[64] = _4562 + _3126 + (4 * ceil32(return_data.size)) + 516
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 100] = _2117
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).supplyRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).borrowRatePerBlock() with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (6 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).reserveFactorMantissa() with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (7 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalBorrows() with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (8 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalReserves() with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (10 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x18160ddd with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (11 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getCash() with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (12 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 356] = bool(_2151)
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 388] = _2158
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 420] = address(ext_call.return_data[0])
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                                gas gas_remaining wei
                        mem[_4562 + _3126 + (13 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _4562 + _3126 + (14 * ceil32(return_data.size)) + 516
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 452] = ext_call.return_data[31 len 1]
                        mem[_4562 + _3126 + (4 * ceil32(return_data.size)) + 484] = uint8(ext_call.return_data[0])
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _4562 + _3126 + (4 * ceil32(return_data.size)) + 68
            idx = idx + 1
            continue 
        _2099 = mem[64]
        mem[mem[64]] = 32
        _2100 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _2100:
            _3113 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_3113 + 32]
            mem[t + 64] = mem[_3113 + 64]
            mem[t + 96] = mem[_3113 + 96]
            mem[t + 128] = mem[_3113 + 128]
            mem[t + 160] = mem[_3113 + 160]
            mem[t + 192] = mem[_3113 + 192]
            mem[t + 224] = mem[_3113 + 224]
            mem[t + 256] = mem[_3113 + 256]
            mem[t + 288] = bool(mem[_3113 + 288])
            mem[t + 320] = mem[_3113 + 320]
            mem[t + 352] = mem[_3113 + 364 len 20]
            mem[t + 384] = mem[_3113 + 384]
            mem[t + 416] = mem[_3113 + 416]
            idx = idx + 1
            s = s + 32
            t = t + 448
            continue 
        return memory
          from mem[64]
           len _2099 + (448 * _2100) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 576
    mem[(32 * ('cd', 4).length) + 128] = 0
    mem[(32 * ('cd', 4).length) + 160] = 0
    mem[(32 * ('cd', 4).length) + 192] = 0
    mem[(32 * ('cd', 4).length) + 224] = 0
    mem[(32 * ('cd', 4).length) + 256] = 0
    mem[(32 * ('cd', 4).length) + 288] = 0
    mem[(32 * ('cd', 4).length) + 320] = 0
    mem[(32 * ('cd', 4).length) + 352] = 0
    mem[(32 * ('cd', 4).length) + 384] = 0
    mem[(32 * ('cd', 4).length) + 416] = 0
    mem[(32 * ('cd', 4).length) + 448] = 0
    mem[(32 * ('cd', 4).length) + 480] = 0
    mem[(32 * ('cd', 4).length) + 512] = 0
    mem[(32 * ('cd', 4).length) + 544] = 0
    mem[var16001] = (32 * ('cd', 4).length) + 128
    s = var16001
    idx = var16002
    while idx - 1:
        mem[64] = mem[64] + 448
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[(32 * ('cd', 4).length) + 192] = 0
        mem[(32 * ('cd', 4).length) + 224] = 0
        mem[(32 * ('cd', 4).length) + 256] = 0
        mem[(32 * ('cd', 4).length) + 288] = 0
        mem[(32 * ('cd', 4).length) + 320] = 0
        mem[(32 * ('cd', 4).length) + 352] = 0
        mem[(32 * ('cd', 4).length) + 384] = 0
        mem[(32 * ('cd', 4).length) + 416] = 0
        mem[(32 * ('cd', 4).length) + 448] = 0
        mem[(32 * ('cd', 4).length) + 480] = 0
        mem[(32 * ('cd', 4).length) + 512] = 0
        mem[(32 * ('cd', 4).length) + 544] = 0
        mem[s + 32] = (32 * ('cd', 4).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        _4594 = mem[64]
        mem[64] = mem[64] + 448
        mem[_4594] = 0
        mem[_4594 + 32] = 0
        mem[_4594 + 64] = 0
        mem[_4594 + 96] = 0
        mem[_4594 + 128] = 0
        mem[_4594 + 160] = 0
        mem[_4594 + 192] = 0
        mem[_4594 + 224] = 0
        mem[_4594 + 256] = 0
        mem[_4594 + 288] = 0
        mem[_4594 + 320] = 0
        mem[_4594 + 352] = 0
        mem[_4594 + 384] = 0
        mem[_4594 + 416] = 0
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).exchangeRateCurrent() with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4638 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4655 = mem[_4638]
        require mem[_4638] == mem[_4638]
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).comptroller() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4693 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_4693] == mem[_4693 + 12 len 20]
        require ext_code.size(mem[_4693 + 12 len 20])
        staticcall mem[_4693 + 12 len 20].markets(address rg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4831 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _4840 = mem[_4831]
        require mem[_4831] == bool(mem[_4831])
        _4891 = mem[_4831 + 32]
        require mem[_4831 + 32] == mem[_4831 + 32]
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4951 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4960 = mem[_4951]
        require mem[_4951] <= test266151307()
        require _4951 + mem[_4951] + 31 < _4951 + return_data.size
        _4977 = mem[_4951 + mem[_4951]]
        require mem[_4951 + mem[_4951]] <= test266151307()
        require ceil32(mem[_4951 + mem[_4951]]) + 32 >= 0 and _4951 + ceil32(return_data.size) + ceil32(mem[_4951 + mem[_4951]]) + 32 <= test266151307()
        mem[64] = _4951 + ceil32(return_data.size) + ceil32(mem[_4951 + mem[_4951]]) + 32
        mem[_4951 + ceil32(return_data.size)] = _4977
        require _4960 + _4977 + 32 <= return_data.size
        s = 0
        while s < _4977:
            mem[s + _4951 + ceil32(return_data.size) + 32] = mem[s + _4951 + _4960 + 32]
            s = s + 32
            continue 
        if ceil32(_4977) <= _4977:
            _5780 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5780] = 4
            mem[_5780 + 32] = 0x76424e4200000000000000000000000000000000000000000000000000000000
            _5782 = mem[64]
            s = 0
            while s < 4:
                mem[s + _5782 + 32] = mem[s + _5780 + 32]
                s = s + 32
                continue 
            mem[_5782 + 36] = 0
            _7135 = mem[64]
            mem[mem[64]] = _5782 + -mem[64] + 4
            mem[64] = _5782 + 36
            _7137 = sha3(mem[_7135 + 32 len mem[_7135]])
            _7148 = mem[_4951 + ceil32(return_data.size)]
            s = 0
            while s < _7148:
                mem[s + _5782 + 68] = mem[s + _4951 + ceil32(return_data.size) + 32]
                s = s + 32
                continue 
            if ceil32(_7148) <= _7148:
                _7829 = mem[64]
                mem[mem[64]] = _7148 + _5782 + -mem[64] + 36
                mem[64] = _7148 + _5782 + 68
                if sha3(mem[_7829 + 32 len mem[_7829]]) == _7137:
                    mem[64] = _7148 + _5782 + 516
                    mem[_7148 + _5782 + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_7148 + _5782 + 100] = _4655
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).supplyRatePerBlock() with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7148 + _5782 + 132] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).borrowRatePerBlock() with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + ceil32(return_data.size) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7148 + _5782 + 164] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).reserveFactorMantissa() with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (2 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7148 + _5782 + 196] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalBorrows() with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7148 + _5782 + 228] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalReserves() with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (6 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7148 + _5782 + 260] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x18160ddd with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (7 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7148 + _5782 + 292] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).getCash() with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (8 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7148 + _5782 + 324] = ext_call.return_data[0]
                    mem[_7148 + _5782 + 356] = bool(_4840)
                    mem[_7148 + _5782 + 388] = _4891
                    mem[_7148 + _5782 + 420] = 0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (10 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _7148 + _5782 + (11 * ceil32(return_data.size)) + 516
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    mem[_7148 + _5782 + 452] = ext_call.return_data[31 len 1]
                    mem[_7148 + _5782 + 484] = 18
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _7148 + _5782 + 68
                else:
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + 68] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _7148 + _5782 + ceil32(return_data.size) + 68
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + ceil32(return_data.size) + 68] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _7148 + _5782 + (2 * ceil32(return_data.size)) + 68
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (2 * ceil32(return_data.size)) + 68] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    mem[64] = _7148 + _5782 + (4 * ceil32(return_data.size)) + 516
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 100] = _4655
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).supplyRatePerBlock() with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).borrowRatePerBlock() with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (6 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).reserveFactorMantissa() with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (7 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalBorrows() with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (8 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalReserves() with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (10 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x18160ddd with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (11 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).getCash() with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (12 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 356] = bool(_4840)
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 388] = _4891
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 420] = address(ext_call.return_data[0])
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (13 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _7148 + _5782 + (14 * ceil32(return_data.size)) + 516
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 452] = ext_call.return_data[31 len 1]
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 484] = uint8(ext_call.return_data[0])
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _7148 + _5782 + (4 * ceil32(return_data.size)) + 68
            else:
                mem[_7148 + _5782 + 68] = 0
                _7832 = mem[64]
                mem[mem[64]] = _7148 + _5782 + -mem[64] + 36
                mem[64] = _7148 + _5782 + 68
                if sha3(mem[_7832 + 32 len mem[_7832]]) == _7137:
                    mem[64] = _7148 + _5782 + 516
                    mem[_7148 + _5782 + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_7148 + _5782 + 100] = _4655
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).supplyRatePerBlock() with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7148 + _5782 + 132] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).borrowRatePerBlock() with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + ceil32(return_data.size) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7148 + _5782 + 164] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).reserveFactorMantissa() with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (2 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7148 + _5782 + 196] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalBorrows() with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7148 + _5782 + 228] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalReserves() with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (6 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7148 + _5782 + 260] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x18160ddd with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (7 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7148 + _5782 + 292] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).getCash() with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (8 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7148 + _5782 + 324] = ext_call.return_data[0]
                    mem[_7148 + _5782 + 356] = bool(_4840)
                    mem[_7148 + _5782 + 388] = _4891
                    mem[_7148 + _5782 + 420] = 0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (10 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _7148 + _5782 + (11 * ceil32(return_data.size)) + 516
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    mem[_7148 + _5782 + 452] = ext_call.return_data[31 len 1]
                    mem[_7148 + _5782 + 484] = 18
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _7148 + _5782 + 68
                else:
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + 68] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _7148 + _5782 + ceil32(return_data.size) + 68
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + ceil32(return_data.size) + 68] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _7148 + _5782 + (2 * ceil32(return_data.size)) + 68
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (2 * ceil32(return_data.size)) + 68] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    mem[64] = _7148 + _5782 + (4 * ceil32(return_data.size)) + 516
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 100] = _4655
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).supplyRatePerBlock() with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).borrowRatePerBlock() with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (6 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).reserveFactorMantissa() with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (7 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalBorrows() with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (8 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalReserves() with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (10 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x18160ddd with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (11 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).getCash() with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (12 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 356] = bool(_4840)
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 388] = _4891
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 420] = address(ext_call.return_data[0])
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[_7148 + _5782 + (13 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _7148 + _5782 + (14 * ceil32(return_data.size)) + 516
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 452] = ext_call.return_data[31 len 1]
                    mem[_7148 + _5782 + (4 * ceil32(return_data.size)) + 484] = uint8(ext_call.return_data[0])
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _7148 + _5782 + (4 * ceil32(return_data.size)) + 68
        else:
            mem[_4977 + _4951 + ceil32(return_data.size) + 32] = 0
            _5781 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5781] = 4
            mem[_5781 + 32] = 0x76424e4200000000000000000000000000000000000000000000000000000000
            _5783 = mem[64]
            s = 0
            while s < 4:
                mem[s + _5783 + 32] = mem[s + _5781 + 32]
                s = s + 32
                continue 
            mem[_5783 + 36] = 0
            _7143 = mem[64]
            mem[mem[64]] = _5783 + -mem[64] + 4
            mem[64] = _5783 + 36
            _7145 = sha3(mem[_7143 + 32 len mem[_7143]])
            _7150 = mem[_4951 + ceil32(return_data.size)]
            s = 0
            while s < _7150:
                mem[s + _5783 + 68] = mem[s + _4951 + ceil32(return_data.size) + 32]
                s = s + 32
                continue 
            if ceil32(_7150) <= _7150:
                _7841 = mem[64]
                mem[mem[64]] = _7150 + _5783 + -mem[64] + 36
                mem[64] = _7150 + _5783 + 68
                if sha3(mem[_7841 + 32 len mem[_7841]]) == _7145:
                    mem[64] = _7150 + _5783 + 516
                    mem[_7150 + _5783 + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_7150 + _5783 + 100] = _4655
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).supplyRatePerBlock() with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7150 + _5783 + 132] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).borrowRatePerBlock() with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + ceil32(return_data.size) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7150 + _5783 + 164] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).reserveFactorMantissa() with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (2 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7150 + _5783 + 196] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalBorrows() with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7150 + _5783 + 228] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalReserves() with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (6 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7150 + _5783 + 260] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x18160ddd with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (7 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7150 + _5783 + 292] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).getCash() with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (8 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7150 + _5783 + 324] = ext_call.return_data[0]
                    mem[_7150 + _5783 + 356] = bool(_4840)
                    mem[_7150 + _5783 + 388] = _4891
                    mem[_7150 + _5783 + 420] = 0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (10 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _7150 + _5783 + (11 * ceil32(return_data.size)) + 516
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    mem[_7150 + _5783 + 452] = ext_call.return_data[31 len 1]
                    mem[_7150 + _5783 + 484] = 18
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _7150 + _5783 + 68
                else:
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + 68] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _7150 + _5783 + ceil32(return_data.size) + 68
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + ceil32(return_data.size) + 68] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _7150 + _5783 + (2 * ceil32(return_data.size)) + 68
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (2 * ceil32(return_data.size)) + 68] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    mem[64] = _7150 + _5783 + (4 * ceil32(return_data.size)) + 516
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 100] = _4655
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).supplyRatePerBlock() with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).borrowRatePerBlock() with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (6 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).reserveFactorMantissa() with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (7 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalBorrows() with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (8 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalReserves() with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (10 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x18160ddd with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (11 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).getCash() with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (12 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 356] = bool(_4840)
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 388] = _4891
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 420] = address(ext_call.return_data[0])
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (13 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _7150 + _5783 + (14 * ceil32(return_data.size)) + 516
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 452] = ext_call.return_data[31 len 1]
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 484] = uint8(ext_call.return_data[0])
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _7150 + _5783 + (4 * ceil32(return_data.size)) + 68
            else:
                mem[_7150 + _5783 + 68] = 0
                _7844 = mem[64]
                mem[mem[64]] = _7150 + _5783 + -mem[64] + 36
                mem[64] = _7150 + _5783 + 68
                if sha3(mem[_7844 + 32 len mem[_7844]]) == _7145:
                    mem[64] = _7150 + _5783 + 516
                    mem[_7150 + _5783 + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_7150 + _5783 + 100] = _4655
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).supplyRatePerBlock() with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7150 + _5783 + 132] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).borrowRatePerBlock() with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + ceil32(return_data.size) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7150 + _5783 + 164] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).reserveFactorMantissa() with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (2 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7150 + _5783 + 196] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalBorrows() with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7150 + _5783 + 228] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalReserves() with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (6 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7150 + _5783 + 260] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x18160ddd with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (7 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7150 + _5783 + 292] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).getCash() with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (8 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7150 + _5783 + 324] = ext_call.return_data[0]
                    mem[_7150 + _5783 + 356] = bool(_4840)
                    mem[_7150 + _5783 + 388] = _4891
                    mem[_7150 + _5783 + 420] = 0
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (10 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _7150 + _5783 + (11 * ceil32(return_data.size)) + 516
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    mem[_7150 + _5783 + 452] = ext_call.return_data[31 len 1]
                    mem[_7150 + _5783 + 484] = 18
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _7150 + _5783 + 68
                else:
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + 68] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _7150 + _5783 + ceil32(return_data.size) + 68
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).underlying() with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + ceil32(return_data.size) + 68] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _7150 + _5783 + (2 * ceil32(return_data.size)) + 68
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (2 * ceil32(return_data.size)) + 68] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    mem[64] = _7150 + _5783 + (4 * ceil32(return_data.size)) + 516
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 68] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 100] = _4655
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).supplyRatePerBlock() with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).borrowRatePerBlock() with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (6 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).reserveFactorMantissa() with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (7 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalBorrows() with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (8 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).totalReserves() with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (10 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x18160ddd with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (11 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).getCash() with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (12 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 356] = bool(_4840)
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 388] = _4891
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 420] = address(ext_call.return_data[0])
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[_7150 + _5783 + (13 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _7150 + _5783 + (14 * ceil32(return_data.size)) + 516
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 452] = ext_call.return_data[31 len 1]
                    mem[_7150 + _5783 + (4 * ceil32(return_data.size)) + 484] = uint8(ext_call.return_data[0])
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _7150 + _5783 + (4 * ceil32(return_data.size)) + 68
        idx = idx + 1
        continue 
    _4541 = mem[64]
    mem[mem[64]] = 32
    _4558 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _4558:
        _5752 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_5752 + 32]
        mem[t + 64] = mem[_5752 + 64]
        mem[t + 96] = mem[_5752 + 96]
        mem[t + 128] = mem[_5752 + 128]
        mem[t + 160] = mem[_5752 + 160]
        mem[t + 192] = mem[_5752 + 192]
        mem[t + 224] = mem[_5752 + 224]
        mem[t + 256] = mem[_5752 + 256]
        mem[t + 288] = bool(mem[_5752 + 288])
        mem[t + 320] = mem[_5752 + 320]
        mem[t + 352] = mem[_5752 + 364 len 20]
        mem[t + 384] = mem[_5752 + 384]
        mem[t + 416] = mem[_5752 + 416]
        idx = idx + 1
        s = s + 32
        t = t + 448
        continue 
    return memory
      from mem[64]
       len _4541 + (448 * _4558) + -mem[64] + 64
}



}
