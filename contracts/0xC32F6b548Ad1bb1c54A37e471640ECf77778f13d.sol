contract main {




// =====================  Runtime code  =====================


#
#  - queryPairListInfo(address[] arg1)
#
const LIST_TOKEN_FAILURE_BURN_PRECENT = 'LIST_TOKEN_FAILURE_BURN_PRECENT'

const UNSTAKE_DURATION = 0x554e5354414b455f4455524154494f4e00000000000000000000000000000000

const VOTE_REWARD_PERCENT = 0x564f54455f5245574152445f50455243454e5400000000000000000000000000

const PAIR_SWITCH = 0x504149525f535749544348000000000000000000000000000000000000000000

const VOTE_DURATION = 0x564f54455f4455524154494f4e00000000000000000000000000000000000000

const LIST_DGAS_AMOUNT = 0x4c4953545f444741535f414d4f554e5400000000000000000000000000000000

const LIST_TOKEN_SUCCESS_BURN_PRECENT = 'LIST_TOKEN_SUCCESS_BURN_PRECENT'

const TOKEN_TO_DGAS_PAIR_MIN_PERCENT = 'TOKEN_TO_DGAS_PAIR_MIN_PERCENT'

const PRODUCE_DGAS_RATE = ('PRODUCE_DGAS_RATE' << 120)

const TOKEN_PENGDING_TIME = ('TOKEN_PENGDING_TIME' << 104)

const SWAP_FEE_PERCENT = 0x535741505f4645455f50455243454e5400000000000000000000000000000000

const TOKEN_PENGDING_SWITCH = 0x544f4b454e5f50454e4744494e475f5357495443480000000000000000000000

const REMOVE_LIQUIDITY_DURATION = 0x52454d4f56455f4c49515549444954595f4455524154494f4e00000000000000

const PROPOSAL_DGAS_AMOUNT = 0x50524f504f53414c5f444741535f414d4f554e54000000000000000000000000


address configAddr;
address platformAddress;
address factoryAddress;
address owner;
address governanceAddress;

function platform() payable {
    return platformAddress
}

function governance() payable {
    return governanceAddress
}

function configAddr() payable {
    return configAddr
}

function owner() payable {
    return owner
}

function factory() payable {
    return factoryAddress
}

function _fallback() payable {
    revert
}

function upgrade(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require msg.sender == owner
    configAddr = arg1
    platformAddress = arg2
    factoryAddress = arg3
    governanceAddress = arg4
}

function queryConfigInfo(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(configAddr)
    staticcall configAddr.0xce8f6078 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require bool(ceil32(return_data.size) + 416 <= test266151307())
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128]
}

function queryStakeInfo() payable {
    require ext_code.size(governanceAddress)
    staticcall governanceAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(governanceAddress)
    staticcall governanceAddress.0x3e5beab9 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0]
}

function queryCondition(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _26 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(platformAddress)
        staticcall platformAddress.0xddd377ac with:
                gas gas_remaining wei
               args address(_26)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _30 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_30] == bool(mem[_30])
        if mem[_30]:
            idx = idx + 1
            continue 
        return (idx + 1)
    return 0
}

function queryConfig() payable {
    require ext_code.size(configAddr)
    staticcall configAddr.0xc199de32 with:
            gas gas_remaining wei
           args 0x535741505f4645455f50455243454e5400000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddr)
    staticcall configAddr.0xc199de32 with:
            gas gas_remaining wei
           args 0x50524f504f53414c5f444741535f414d4f554e54000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddr)
    staticcall configAddr.0xc199de32 with:
            gas gas_remaining wei
           args 0x554e5354414b455f4455524154494f4e00000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddr)
    staticcall configAddr.0xc199de32 with:
            gas gas_remaining wei
           args 0x52454d4f56455f4c49515549444954595f4455524154494f4e00000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddr)
    staticcall configAddr.0xc199de32 with:
            gas gas_remaining wei
           args 0x4c4953545f444741535f414d4f554e5400000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function queryTokenItemInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    require mem[mem[96] + 96] <= test266151307()
    require ceil32(mem[mem[96] + 96]) + 32 >= 0 and ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _55 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _57 = mem[_55]
        require mem[_55] == mem[_55 + 31 len 1]
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _63 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _65 = mem[_63]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _71 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _73 = mem[_71]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = platformAddress
        require ext_code.size(arg1)
        staticcall arg1.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, platformAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _79 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _81 = mem[_79]
        mem[mem[64]] = 160
        mem[mem[64] + 160] = _5
        mem[mem[64] + 192 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) > _5:
            mem[mem[64] + _5 + 192] = 0
        mem[mem[64] + 64] = _65
        mem[mem[64] + 96] = _73
        return Array(len=_5, data=mem[mem[64] + 192 len ceil32(_5)]), _57 << 248, _65, _73, _81
    mem[ceil32(return_data.size) + _5 + 128] = 0
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _56 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _58 = mem[_56]
    require mem[_56] == mem[_56 + 31 len 1]
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _64 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _67 = mem[_64]
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _72 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _75 = mem[_72]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = platformAddress
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, platformAddress
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _80 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _82 = mem[_80]
    mem[mem[64]] = 160
    mem[mem[64] + 160] = _5
    mem[mem[64] + 192 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[mem[64] + _5 + 192] = 0
    mem[mem[64] + 64] = _67
    mem[mem[64] + 96] = _75
    return Array(len=_5, data=mem[mem[64] + 192 len ceil32(_5)]), _58 << 248, _67, _75, _82
}

function queryLiquidityList() payable {
    mem[100] = msg.sender
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.0x6c42fa66 with:
            gas gas_remaining wei
           args msg.sender
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
            _71 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_71 + 32]
            mem[t + 64] = mem[_71 + 64]
            mem[t + 96] = mem[_71 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return Array(len=ext_call.return_data[0], data=mem[ceil32(return_data.size) + 160 len 128 * ext_call.return_data[0]])
    require ext_call.return_data[0] <= test266151307()
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            _78 = mem[64]
            mem[64] = mem[64] + 128
            mem[_78] = 0
            mem[_78 + 32] = 0
            mem[_78 + 64] = 0
            mem[_78 + 96] = 0
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = idx
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.0xbf1512d3 with:
                    gas gas_remaining wei
                   args msg.sender, idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _89 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _93 = mem[_89]
            require mem[_89] == mem[_89 + 12 len 20]
            mem[_78] = mem[_89 + 12 len 20]
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(address(_93))
            staticcall address(_93).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _106 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_78 + 32] = mem[_106]
            require ext_code.size(mem[_78 + 12 len 20])
            staticcall mem[_78 + 12 len 20].0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _113 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_78 + 64] = mem[_113]
            _117 = mem[_78]
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(address(_117))
            staticcall address(_117).lastMintBlock(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_78 + 96] = mem[_124]
            require idx < mem[ceil32(return_data.size) + 96]
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _78
            idx = idx + 1
            continue 
        _79 = mem[64]
        mem[mem[64]] = 32
        _81 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _81:
            _135 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_135 + 32]
            mem[t + 64] = mem[_135 + 64]
            mem[t + 96] = mem[_135 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _79 + (128 * _81) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 0
    mem[var16001] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    s = var16001
    idx = var16002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 0
        mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ext_call.return_data[0]:
        _169 = mem[64]
        mem[64] = mem[64] + 128
        mem[_169] = 0
        mem[_169 + 32] = 0
        mem[_169 + 64] = 0
        mem[_169 + 96] = 0
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.0xbf1512d3 with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _180 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _181 = mem[_180]
        require mem[_180] == mem[_180 + 12 len 20]
        mem[_169] = mem[_180 + 12 len 20]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(address(_181))
        staticcall address(_181).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _184 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[_169 + 32] = mem[_184]
        require ext_code.size(mem[_169 + 12 len 20])
        staticcall mem[_169 + 12 len 20].0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _189 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[_169 + 64] = mem[_189]
        _191 = mem[_169]
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(address(_191))
        staticcall address(_191).lastMintBlock(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _194 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[_169 + 96] = mem[_194]
        require idx < mem[ceil32(return_data.size) + 96]
        mem[(32 * idx) + ceil32(return_data.size) + 128] = _169
        idx = idx + 1
        continue 
    _170 = mem[64]
    mem[mem[64]] = 32
    _172 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _172:
        _197 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_197 + 32]
        mem[t + 64] = mem[_197 + 64]
        mem[t + 96] = mem[_197 + 96]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _170 + (128 * _172) + -mem[64] + 64
}

function queryTokenList() payable {
    require ext_code.size(configAddr)
    staticcall configAddr.0x9f181b5e with:
            gas gas_remaining wei
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
        t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
        u = ceil32(return_data.size) + 160
        while idx < ext_call.return_data[0]:
            mem[u] = t + -ceil32(return_data.size) - 160
            _189 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _194 = mem[_189 + 32]
            mem[t + 32] = 224
            _197 = mem[_194]
            mem[t + 224] = mem[_194]
            v = 0
            while v < _197:
                mem[v + t + 256] = mem[v + _194 + 32]
                v = v + 32
                continue 
            if ceil32(_197) > _197:
                mem[t + _197 + 256] = 0
            mem[t + 64] = mem[_189 + 64]
            mem[t + 96] = mem[_189 + 96]
            mem[t + 128] = mem[_189 + 128]
            mem[t + 160] = mem[_189 + 160]
            mem[t + 192] = mem[_189 + 192]
            idx = idx + 1
            s = s + 32
            t = ceil32(_197) + t + 256
            u = u + 32
            continue 
    else:
        require ext_call.return_data[0] <= test266151307()
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
        if not ext_call.return_data[0]:
            idx = 0
            while idx < ext_call.return_data[0]:
                _193 = mem[64]
                mem[64] = mem[64] + 224
                mem[_193] = 0
                mem[_193 + 32] = 96
                mem[_193 + 64] = 0
                mem[_193 + 96] = 0
                mem[_193 + 128] = 0
                mem[_193 + 160] = 0
                mem[_193 + 192] = 0
                mem[mem[64] + 4] = idx
                require ext_code.size(configAddr)
                staticcall configAddr.0x9ead7222 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _204 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _210 = mem[_204]
                require mem[_204] == mem[_204 + 12 len 20]
                mem[_193] = mem[_204 + 12 len 20]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_210))
                staticcall address(_210).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _238 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _244 = mem[_238]
                require mem[_238] <= test266151307()
                require _238 + mem[_238] + 31 < _238 + return_data.size
                _248 = mem[_238 + mem[_238]]
                require mem[_238 + mem[_238]] <= test266151307()
                require ceil32(mem[_238 + mem[_238]]) + 32 >= 0 and _238 + ceil32(return_data.size) + ceil32(mem[_238 + mem[_238]]) + 32 <= test266151307()
                mem[64] = _238 + ceil32(return_data.size) + ceil32(mem[_238 + mem[_238]]) + 32
                mem[_238 + ceil32(return_data.size)] = _248
                require _244 + _248 + 32 <= return_data.size
                s = 0
                while s < _248:
                    mem[s + _238 + ceil32(return_data.size) + 32] = mem[s + _238 + _244 + 32]
                    s = s + 32
                    continue 
                if ceil32(_248) <= _248:
                    mem[_193 + 32] = _238 + ceil32(return_data.size)
                    require ext_code.size(mem[_193 + 12 len 20])
                    staticcall mem[_193 + 12 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _394 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_394] == mem[_394 + 31 len 1]
                    mem[_193 + 64] = mem[_394 + 31 len 1]
                    _409 = mem[_193]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(_409))
                    staticcall address(_409).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _427 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_193 + 96] = mem[_427]
                    _431 = mem[_193]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = platformAddress
                    require ext_code.size(address(_431))
                    staticcall address(_431).0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, platformAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _451 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_193 + 128] = mem[_451]
                    _456 = mem[_193]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = governanceAddress
                    require ext_code.size(address(_456))
                    staticcall address(_456).0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, governanceAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _464 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_193 + 160] = mem[_464]
                    _467 = mem[_193]
                    mem[mem[64] + 4] = mem[_193 + 12 len 20]
                    require ext_code.size(configAddr)
                    staticcall configAddr.tokenStatus(address rg1) with:
                            gas gas_remaining wei
                           args address(_467)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _478 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_193 + 192] = mem[_478]
                else:
                    mem[_238 + ceil32(return_data.size) + _248 + 32] = 0
                    mem[_193 + 32] = _238 + ceil32(return_data.size)
                    require ext_code.size(mem[_193 + 12 len 20])
                    staticcall mem[_193 + 12 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _397 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_397] == mem[_397 + 31 len 1]
                    mem[_193 + 64] = mem[_397 + 31 len 1]
                    _418 = mem[_193]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(_418))
                    staticcall address(_418).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _428 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_193 + 96] = mem[_428]
                    _436 = mem[_193]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = platformAddress
                    require ext_code.size(address(_436))
                    staticcall address(_436).0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, platformAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _453 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_193 + 128] = mem[_453]
                    _459 = mem[_193]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = governanceAddress
                    require ext_code.size(address(_459))
                    staticcall address(_459).0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, governanceAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _465 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_193 + 160] = mem[_465]
                    _471 = mem[_193]
                    mem[mem[64] + 4] = mem[_193 + 12 len 20]
                    require ext_code.size(configAddr)
                    staticcall configAddr.tokenStatus(address rg1) with:
                            gas gas_remaining wei
                           args address(_471)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _482 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_193 + 192] = mem[_482]
                require idx < mem[ceil32(return_data.size) + 96]
                mem[(32 * idx) + ceil32(return_data.size) + 128] = _193
                idx = idx + 1
                continue 
            _195 = mem[64]
            mem[mem[64]] = 32
            _198 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + (32 * _198) + 64
            u = mem[64] + 64
            while idx < _198:
                mem[u] = t + -_195 - 64
                _372 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                _376 = mem[_372 + 32]
                mem[t + 32] = 224
                _382 = mem[_376]
                mem[t + 224] = mem[_376]
                v = 0
                while v < _382:
                    mem[v + t + 256] = mem[v + _376 + 32]
                    v = v + 32
                    continue 
                if ceil32(_382) > _382:
                    mem[t + _382 + 256] = 0
                mem[t + 64] = mem[_372 + 64]
                mem[t + 96] = mem[_372 + 96]
                mem[t + 128] = mem[_372 + 128]
                mem[t + 160] = mem[_372 + 160]
                mem[t + 192] = mem[_372 + 192]
                idx = idx + 1
                s = s + 32
                t = ceil32(_382) + t + 256
                u = u + 32
                continue 
        else:
            mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 352
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 96
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 288] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 320] = 0
            mem[var14001] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
            s = var14001
            idx = var14002
            while idx - 1:
                mem[64] = mem[64] + 224
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 96
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 0
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 0
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256] = 0
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 288] = 0
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 320] = 0
                mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < ext_call.return_data[0]:
                _534 = mem[64]
                mem[64] = mem[64] + 224
                mem[_534] = 0
                mem[_534 + 32] = 96
                mem[_534 + 64] = 0
                mem[_534 + 96] = 0
                mem[_534 + 128] = 0
                mem[_534 + 160] = 0
                mem[_534 + 192] = 0
                mem[mem[64] + 4] = idx
                require ext_code.size(configAddr)
                staticcall configAddr.0x9ead7222 with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _552 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _555 = mem[_552]
                require mem[_552] == mem[_552 + 12 len 20]
                mem[_534] = mem[_552 + 12 len 20]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_555))
                staticcall address(_555).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _564 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _570 = mem[_564]
                require mem[_564] <= test266151307()
                require _564 + mem[_564] + 31 < _564 + return_data.size
                _571 = mem[_564 + mem[_564]]
                require mem[_564 + mem[_564]] <= test266151307()
                require ceil32(mem[_564 + mem[_564]]) + 32 >= 0 and _564 + ceil32(return_data.size) + ceil32(mem[_564 + mem[_564]]) + 32 <= test266151307()
                mem[64] = _564 + ceil32(return_data.size) + ceil32(mem[_564 + mem[_564]]) + 32
                mem[_564 + ceil32(return_data.size)] = _571
                require _570 + _571 + 32 <= return_data.size
                s = 0
                while s < _571:
                    mem[s + _564 + ceil32(return_data.size) + 32] = mem[s + _564 + _570 + 32]
                    s = s + 32
                    continue 
                if ceil32(_571) <= _571:
                    mem[_534 + 32] = _564 + ceil32(return_data.size)
                    require ext_code.size(mem[_534 + 12 len 20])
                    staticcall mem[_534 + 12 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _638 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_638] == mem[_638 + 31 len 1]
                    mem[_534 + 64] = mem[_638 + 31 len 1]
                    _648 = mem[_534]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(_648))
                    staticcall address(_648).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _659 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_534 + 96] = mem[_659]
                    _662 = mem[_534]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = platformAddress
                    require ext_code.size(address(_662))
                    staticcall address(_662).0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, platformAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _669 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_534 + 128] = mem[_669]
                    _672 = mem[_534]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = governanceAddress
                    require ext_code.size(address(_672))
                    staticcall address(_672).0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, governanceAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _679 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_534 + 160] = mem[_679]
                    _682 = mem[_534]
                    mem[mem[64] + 4] = mem[_534 + 12 len 20]
                    require ext_code.size(configAddr)
                    staticcall configAddr.tokenStatus(address rg1) with:
                            gas gas_remaining wei
                           args address(_682)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _689 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_534 + 192] = mem[_689]
                else:
                    mem[_564 + ceil32(return_data.size) + _571 + 32] = 0
                    mem[_534 + 32] = _564 + ceil32(return_data.size)
                    require ext_code.size(mem[_534 + 12 len 20])
                    staticcall mem[_534 + 12 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _640 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_640] == mem[_640 + 31 len 1]
                    mem[_534 + 64] = mem[_640 + 31 len 1]
                    _655 = mem[_534]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(_655))
                    staticcall address(_655).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _660 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_534 + 96] = mem[_660]
                    _665 = mem[_534]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = platformAddress
                    require ext_code.size(address(_665))
                    staticcall address(_665).0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, platformAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _670 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_534 + 128] = mem[_670]
                    _675 = mem[_534]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = governanceAddress
                    require ext_code.size(address(_675))
                    staticcall address(_675).0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, governanceAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _680 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_534 + 160] = mem[_680]
                    _685 = mem[_534]
                    mem[mem[64] + 4] = mem[_534 + 12 len 20]
                    require ext_code.size(configAddr)
                    staticcall configAddr.tokenStatus(address rg1) with:
                            gas gas_remaining wei
                           args address(_685)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _690 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_534 + 192] = mem[_690]
                require idx < mem[ceil32(return_data.size) + 96]
                mem[(32 * idx) + ceil32(return_data.size) + 128] = _534
                idx = idx + 1
                continue 
            _535 = mem[64]
            mem[mem[64]] = 32
            _542 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + (32 * _542) + 64
            u = mem[64] + 64
            while idx < _542:
                mem[u] = t + -_535 - 64
                _626 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                _630 = mem[_626 + 32]
                mem[t + 32] = 224
                _631 = mem[_630]
                mem[t + 224] = mem[_630]
                v = 0
                while v < _631:
                    mem[v + t + 256] = mem[v + _630 + 32]
                    v = v + 32
                    continue 
                if ceil32(_631) > _631:
                    mem[t + _631 + 256] = 0
                mem[t + 64] = mem[_626 + 64]
                mem[t + 96] = mem[_626 + 96]
                mem[t + 128] = mem[_626 + 128]
                mem[t + 160] = mem[_626 + 160]
                mem[t + 192] = mem[_626 + 192]
                idx = idx + 1
                s = s + 32
                t = ceil32(_631) + t + 256
                u = u + 32
                continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function queryPairReserve(address[] arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 160 >= 128 and (32 * arg1.length) + (32 * arg2.length) + 160 <= test266151307()
    mem[(32 * arg1.length) + 128] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    idx = 0
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not arg1.length:
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 96
        mem[(32 * arg1.length) + (32 * arg2.length) + 256] = arg1.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 288 len 32 * arg1.length] = mem[128 len 32 * arg1.length]
        mem[(32 * arg1.length) + (32 * arg2.length) + 192] = (32 * arg1.length) + 128
        mem[(64 * arg1.length) + (32 * arg2.length) + 288] = arg1.length
        mem[(64 * arg1.length) + (32 * arg2.length) + 320 len 32 * arg1.length] = mem[128 len 32 * arg1.length]
        mem[(32 * arg1.length) + (32 * arg2.length) + 224] = (64 * arg1.length) + 160
        mem[(3 * 32 * arg1.length) + (32 * arg2.length) + 320] = arg1.length
        idx = 0
        s = 128
        t = (3 * 32 * arg1.length) + (32 * arg2.length) + 352
        while idx < arg1.length:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * arg1.length) + (32 * arg2.length) + 160
           len (160 * arg1.length) + 192
    require arg1.length <= test266151307()
    if not arg1.length:
        require arg1.length <= test266151307()
        mem[(64 * arg1.length) + (32 * arg2.length) + 192] = arg1.length
        if not arg1.length:
            require arg1.length <= test266151307()
            mem[(98 * arg1.length) + (32 * arg2.length) + 224] = arg1.length
            mem[64] = (131 * arg1.length) + (32 * arg2.length) + 256
            if not arg1.length:
                idx = 0
                while idx < arg1.length:
                    require idx < mem[96]
                    require idx < mem[(32 * arg1.length) + 128]
                    _775 = mem[(32 * idx) + (32 * arg1.length) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    mem[mem[64] + 36] = address(_775)
                    require ext_code.size(platformAddress)
                    staticcall platformAddress.0xc2ceddfa with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_775)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _817 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_817] == bool(mem[_817])
                    if not mem[_817]:
                        require idx < mem[(98 * arg1.length) + (32 * arg2.length) + 224]
                        mem[(32 * idx) + (98 * arg1.length) + (32 * arg2.length) + 256] = 0
                    else:
                        require idx < mem[96]
                        require idx < mem[(32 * arg1.length) + 128]
                        _899 = mem[(32 * idx) + (32 * arg1.length) + 160]
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        mem[mem[64] + 36] = address(_899)
                        require ext_code.size(platformAddress)
                        staticcall platformAddress.0xd52bb6f4 with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_899)
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _938 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _946 = mem[_938]
                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                        require idx < mem[(64 * arg1.length) + (32 * arg2.length) + 192]
                        mem[(32 * idx) + (64 * arg1.length) + (32 * arg2.length) + 224] = mem[_938 + 32]
                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = _946
                        require idx < mem[(98 * arg1.length) + (32 * arg2.length) + 224]
                        mem[(32 * idx) + (98 * arg1.length) + (32 * arg2.length) + 256] = 1
                    idx = idx + 1
                    continue 
                _774 = mem[64]
                mem[mem[64]] = 96
                _799 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                mem[mem[64] + 96] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                mem[mem[64] + 128 len 32 * _799] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * _799]
                mem[mem[64] + 32] = (32 * _799) + 128
                _996 = mem[(64 * arg1.length) + (32 * arg2.length) + 192]
                mem[_774 + (32 * _799) + 128] = mem[(64 * arg1.length) + (32 * arg2.length) + 192]
                mem[_774 + (32 * _799) + 160 len 32 * _996] = mem[(64 * arg1.length) + (32 * arg2.length) + 224 len 32 * _996]
                mem[_774 + 64] = (32 * _799) + (32 * _996) + 160
                _1048 = mem[(98 * arg1.length) + (32 * arg2.length) + 224]
                mem[_774 + (32 * _799) + (32 * _996) + 160] = mem[(98 * arg1.length) + (32 * arg2.length) + 224]
                idx = 0
                s = (98 * arg1.length) + (32 * arg2.length) + 256
                t = _774 + (32 * _799) + (32 * _996) + 192
                while idx < _1048:
                    mem[t] = bool(mem[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _774 + (32 * _799) + (32 * _996) + (32 * _1048) + -mem[64] + 192
            mem[(98 * arg1.length) + (32 * arg2.length) + 256 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                require idx < mem[(32 * arg1.length) + 128]
                _778 = mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 36] = address(_778)
                require ext_code.size(platformAddress)
                staticcall platformAddress.0xc2ceddfa with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_778)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _819 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_819] == bool(mem[_819])
                if not mem[_819]:
                    require idx < mem[(98 * arg1.length) + (32 * arg2.length) + 224]
                    mem[(32 * idx) + (98 * arg1.length) + (32 * arg2.length) + 256] = 0
                else:
                    require idx < mem[96]
                    require idx < mem[(32 * arg1.length) + 128]
                    _902 = mem[(32 * idx) + (32 * arg1.length) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    mem[mem[64] + 36] = address(_902)
                    require ext_code.size(platformAddress)
                    staticcall platformAddress.0xd52bb6f4 with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_902)
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _939 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _948 = mem[_939]
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    require idx < mem[(64 * arg1.length) + (32 * arg2.length) + 192]
                    mem[(32 * idx) + (64 * arg1.length) + (32 * arg2.length) + 224] = mem[_939 + 32]
                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = _948
                    require idx < mem[(98 * arg1.length) + (32 * arg2.length) + 224]
                    mem[(32 * idx) + (98 * arg1.length) + (32 * arg2.length) + 256] = 1
                idx = idx + 1
                continue 
            _777 = mem[64]
            mem[mem[64]] = 96
            _801 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            mem[mem[64] + 96] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            mem[mem[64] + 128 len 32 * _801] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * _801]
            mem[_777 + 32] = (32 * _801) + 128
            _997 = mem[(64 * arg1.length) + (32 * arg2.length) + 192]
            mem[_777 + (32 * _801) + 128] = mem[(64 * arg1.length) + (32 * arg2.length) + 192]
            mem[_777 + (32 * _801) + 160 len 32 * _997] = mem[(64 * arg1.length) + (32 * arg2.length) + 224 len 32 * _997]
            mem[_777 + 64] = (32 * _801) + (32 * _997) + 160
            _1049 = mem[(98 * arg1.length) + (32 * arg2.length) + 224]
            mem[_777 + (32 * _801) + (32 * _997) + 160] = mem[(98 * arg1.length) + (32 * arg2.length) + 224]
            idx = 0
            s = (98 * arg1.length) + (32 * arg2.length) + 256
            t = _777 + (32 * _801) + (32 * _997) + 192
            while idx < _1049:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _777 + (32 * _801) + (32 * _997) + (32 * _1049) + -mem[64] + 192
        mem[(64 * arg1.length) + (32 * arg2.length) + 224 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        require arg1.length <= test266151307()
        mem[(98 * arg1.length) + (32 * arg2.length) + 224] = arg1.length
        mem[64] = (131 * arg1.length) + (32 * arg2.length) + 256
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                require idx < mem[(32 * arg1.length) + 128]
                _781 = mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 36] = address(_781)
                require ext_code.size(platformAddress)
                staticcall platformAddress.0xc2ceddfa with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_781)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _821 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_821] == bool(mem[_821])
                if not mem[_821]:
                    require idx < mem[(98 * arg1.length) + (32 * arg2.length) + 224]
                    mem[(32 * idx) + (98 * arg1.length) + (32 * arg2.length) + 256] = 0
                else:
                    require idx < mem[96]
                    require idx < mem[(32 * arg1.length) + 128]
                    _905 = mem[(32 * idx) + (32 * arg1.length) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    mem[mem[64] + 36] = address(_905)
                    require ext_code.size(platformAddress)
                    staticcall platformAddress.0xd52bb6f4 with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_905)
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _940 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _950 = mem[_940]
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    require idx < mem[(64 * arg1.length) + (32 * arg2.length) + 192]
                    mem[(32 * idx) + (64 * arg1.length) + (32 * arg2.length) + 224] = mem[_940 + 32]
                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = _950
                    require idx < mem[(98 * arg1.length) + (32 * arg2.length) + 224]
                    mem[(32 * idx) + (98 * arg1.length) + (32 * arg2.length) + 256] = 1
                idx = idx + 1
                continue 
            _780 = mem[64]
            mem[mem[64]] = 96
            _803 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            mem[mem[64] + 96] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            mem[mem[64] + 128 len 32 * _803] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * _803]
            mem[mem[64] + 32] = (32 * _803) + 128
            _998 = mem[(64 * arg1.length) + (32 * arg2.length) + 192]
            mem[_780 + (32 * _803) + 128] = mem[(64 * arg1.length) + (32 * arg2.length) + 192]
            mem[_780 + (32 * _803) + 160 len 32 * _998] = mem[(64 * arg1.length) + (32 * arg2.length) + 224 len 32 * _998]
            mem[_780 + 64] = (32 * _803) + (32 * _998) + 160
            _1050 = mem[(98 * arg1.length) + (32 * arg2.length) + 224]
            mem[_780 + (32 * _803) + (32 * _998) + 160] = mem[(98 * arg1.length) + (32 * arg2.length) + 224]
            idx = 0
            s = (98 * arg1.length) + (32 * arg2.length) + 256
            t = _780 + (32 * _803) + (32 * _998) + 192
            while idx < _1050:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _780 + (32 * _803) + (32 * _998) + (32 * _1050) + -mem[64] + 192
        mem[(98 * arg1.length) + (32 * arg2.length) + 256 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            require idx < mem[(32 * arg1.length) + 128]
            _784 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 36] = address(_784)
            require ext_code.size(platformAddress)
            staticcall platformAddress.0xc2ceddfa with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], address(_784)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _823 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_823] == bool(mem[_823])
            if not mem[_823]:
                require idx < mem[(98 * arg1.length) + (32 * arg2.length) + 224]
                mem[(32 * idx) + (98 * arg1.length) + (32 * arg2.length) + 256] = 0
            else:
                require idx < mem[96]
                require idx < mem[(32 * arg1.length) + 128]
                _908 = mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 36] = address(_908)
                require ext_code.size(platformAddress)
                staticcall platformAddress.0xd52bb6f4 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_908)
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _941 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _952 = mem[_941]
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                require idx < mem[(64 * arg1.length) + (32 * arg2.length) + 192]
                mem[(32 * idx) + (64 * arg1.length) + (32 * arg2.length) + 224] = mem[_941 + 32]
                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = _952
                require idx < mem[(98 * arg1.length) + (32 * arg2.length) + 224]
                mem[(32 * idx) + (98 * arg1.length) + (32 * arg2.length) + 256] = 1
            idx = idx + 1
            continue 
        _783 = mem[64]
        mem[mem[64]] = 96
        _805 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        mem[mem[64] + 96] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        mem[mem[64] + 128 len 32 * _805] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * _805]
        mem[mem[64] + 32] = (32 * _805) + 128
        _999 = mem[(64 * arg1.length) + (32 * arg2.length) + 192]
        mem[_783 + (32 * _805) + 128] = mem[(64 * arg1.length) + (32 * arg2.length) + 192]
        mem[_783 + (32 * _805) + 160 len 32 * _999] = mem[(64 * arg1.length) + (32 * arg2.length) + 224 len 32 * _999]
        mem[_783 + 64] = (32 * _805) + (32 * _999) + 160
        _1051 = mem[(98 * arg1.length) + (32 * arg2.length) + 224]
        mem[_783 + (32 * _805) + (32 * _999) + 160] = mem[(98 * arg1.length) + (32 * arg2.length) + 224]
        idx = 0
        s = (98 * arg1.length) + (32 * arg2.length) + 256
        t = _783 + (32 * _805) + (32 * _999) + 192
        while idx < _1051:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _783 + (32 * _805) + (32 * _999) + (32 * _1051) + -mem[64] + 192
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    require arg1.length <= test266151307()
    mem[(64 * arg1.length) + (32 * arg2.length) + 192] = arg1.length
    if not arg1.length:
        require arg1.length <= test266151307()
        mem[(98 * arg1.length) + (32 * arg2.length) + 224] = arg1.length
        mem[64] = (131 * arg1.length) + (32 * arg2.length) + 256
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                require idx < mem[(32 * arg1.length) + 128]
                _787 = mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 36] = address(_787)
                require ext_code.size(platformAddress)
                staticcall platformAddress.0xc2ceddfa with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_787)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _825 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_825] == bool(mem[_825])
                if not mem[_825]:
                    require idx < mem[(98 * arg1.length) + (32 * arg2.length) + 224]
                    mem[(32 * idx) + (98 * arg1.length) + (32 * arg2.length) + 256] = 0
                else:
                    require idx < mem[96]
                    require idx < mem[(32 * arg1.length) + 128]
                    _911 = mem[(32 * idx) + (32 * arg1.length) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    mem[mem[64] + 36] = address(_911)
                    require ext_code.size(platformAddress)
                    staticcall platformAddress.0xd52bb6f4 with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_911)
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _942 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _954 = mem[_942]
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    require idx < mem[(64 * arg1.length) + (32 * arg2.length) + 192]
                    mem[(32 * idx) + (64 * arg1.length) + (32 * arg2.length) + 224] = mem[_942 + 32]
                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = _954
                    require idx < mem[(98 * arg1.length) + (32 * arg2.length) + 224]
                    mem[(32 * idx) + (98 * arg1.length) + (32 * arg2.length) + 256] = 1
                idx = idx + 1
                continue 
            _786 = mem[64]
            mem[mem[64]] = 96
            _807 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            mem[mem[64] + 96] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            mem[mem[64] + 128 len 32 * _807] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * _807]
            mem[mem[64] + 32] = (32 * _807) + 128
            _1000 = mem[(64 * arg1.length) + (32 * arg2.length) + 192]
            mem[_786 + (32 * _807) + 128] = mem[(64 * arg1.length) + (32 * arg2.length) + 192]
            mem[_786 + (32 * _807) + 160 len 32 * _1000] = mem[(64 * arg1.length) + (32 * arg2.length) + 224 len 32 * _1000]
            mem[_786 + 64] = (32 * _807) + (32 * _1000) + 160
            _1052 = mem[(98 * arg1.length) + (32 * arg2.length) + 224]
            mem[_786 + (32 * _807) + (32 * _1000) + 160] = mem[(98 * arg1.length) + (32 * arg2.length) + 224]
            idx = 0
            s = (98 * arg1.length) + (32 * arg2.length) + 256
            t = _786 + (32 * _807) + (32 * _1000) + 192
            while idx < _1052:
                mem[t] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _786 + (32 * _807) + (32 * _1000) + (32 * _1052) + -mem[64] + 192
        mem[(98 * arg1.length) + (32 * arg2.length) + 256 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            require idx < mem[(32 * arg1.length) + 128]
            _790 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 36] = address(_790)
            require ext_code.size(platformAddress)
            staticcall platformAddress.0xc2ceddfa with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], address(_790)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _827 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_827] == bool(mem[_827])
            if not mem[_827]:
                require idx < mem[(98 * arg1.length) + (32 * arg2.length) + 224]
                mem[(32 * idx) + (98 * arg1.length) + (32 * arg2.length) + 256] = 0
            else:
                require idx < mem[96]
                require idx < mem[(32 * arg1.length) + 128]
                _914 = mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 36] = address(_914)
                require ext_code.size(platformAddress)
                staticcall platformAddress.0xd52bb6f4 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_914)
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _943 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _956 = mem[_943]
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                require idx < mem[(64 * arg1.length) + (32 * arg2.length) + 192]
                mem[(32 * idx) + (64 * arg1.length) + (32 * arg2.length) + 224] = mem[_943 + 32]
                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = _956
                require idx < mem[(98 * arg1.length) + (32 * arg2.length) + 224]
                mem[(32 * idx) + (98 * arg1.length) + (32 * arg2.length) + 256] = 1
            idx = idx + 1
            continue 
        _789 = mem[64]
        mem[mem[64]] = 96
        _809 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        mem[mem[64] + 96] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        mem[mem[64] + 128 len 32 * _809] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * _809]
        mem[_789 + 32] = (32 * _809) + 128
        _1001 = mem[(64 * arg1.length) + (32 * arg2.length) + 192]
        mem[_789 + (32 * _809) + 128] = mem[(64 * arg1.length) + (32 * arg2.length) + 192]
        mem[_789 + (32 * _809) + 160 len 32 * _1001] = mem[(64 * arg1.length) + (32 * arg2.length) + 224 len 32 * _1001]
        mem[_789 + 64] = (32 * _809) + (32 * _1001) + 160
        _1053 = mem[(98 * arg1.length) + (32 * arg2.length) + 224]
        mem[_789 + (32 * _809) + (32 * _1001) + 160] = mem[(98 * arg1.length) + (32 * arg2.length) + 224]
        idx = 0
        s = (98 * arg1.length) + (32 * arg2.length) + 256
        t = _789 + (32 * _809) + (32 * _1001) + 192
        while idx < _1053:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _789 + (32 * _809) + (32 * _1001) + (32 * _1053) + -mem[64] + 192
    mem[(64 * arg1.length) + (32 * arg2.length) + 224 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    require arg1.length <= test266151307()
    mem[(98 * arg1.length) + (32 * arg2.length) + 224] = arg1.length
    mem[64] = (131 * arg1.length) + (32 * arg2.length) + 256
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            require idx < mem[(32 * arg1.length) + 128]
            _793 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 36] = address(_793)
            require ext_code.size(platformAddress)
            staticcall platformAddress.0xc2ceddfa with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], address(_793)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _829 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_829] == bool(mem[_829])
            if not mem[_829]:
                require idx < mem[(98 * arg1.length) + (32 * arg2.length) + 224]
                mem[(32 * idx) + (98 * arg1.length) + (32 * arg2.length) + 256] = 0
            else:
                require idx < mem[96]
                require idx < mem[(32 * arg1.length) + 128]
                _917 = mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 36] = address(_917)
                require ext_code.size(platformAddress)
                staticcall platformAddress.0xd52bb6f4 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_917)
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _944 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _958 = mem[_944]
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                require idx < mem[(64 * arg1.length) + (32 * arg2.length) + 192]
                mem[(32 * idx) + (64 * arg1.length) + (32 * arg2.length) + 224] = mem[_944 + 32]
                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = _958
                require idx < mem[(98 * arg1.length) + (32 * arg2.length) + 224]
                mem[(32 * idx) + (98 * arg1.length) + (32 * arg2.length) + 256] = 1
            idx = idx + 1
            continue 
        _792 = mem[64]
        mem[mem[64]] = 96
        _811 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        mem[mem[64] + 96] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        mem[mem[64] + 128 len 32 * _811] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * _811]
        mem[_792 + 32] = (32 * _811) + 128
        _1002 = mem[(64 * arg1.length) + (32 * arg2.length) + 192]
        mem[_792 + (32 * _811) + 128] = mem[(64 * arg1.length) + (32 * arg2.length) + 192]
        mem[_792 + (32 * _811) + 160 len 32 * _1002] = mem[(64 * arg1.length) + (32 * arg2.length) + 224 len 32 * _1002]
        mem[_792 + 64] = (32 * _811) + (32 * _1002) + 160
        _1054 = mem[(98 * arg1.length) + (32 * arg2.length) + 224]
        mem[_792 + (32 * _811) + (32 * _1002) + 160] = mem[(98 * arg1.length) + (32 * arg2.length) + 224]
        idx = 0
        s = (98 * arg1.length) + (32 * arg2.length) + 256
        t = _792 + (32 * _811) + (32 * _1002) + 192
        while idx < _1054:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _792 + (32 * _811) + (32 * _1002) + (32 * _1054) + -mem[64] + 192
    mem[(98 * arg1.length) + (32 * arg2.length) + 256 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        require idx < mem[(32 * arg1.length) + 128]
        _796 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = address(_796)
        require ext_code.size(platformAddress)
        staticcall platformAddress.0xc2ceddfa with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(_796)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _831 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_831] == bool(mem[_831])
        if not mem[_831]:
            require idx < mem[(98 * arg1.length) + (32 * arg2.length) + 224]
            mem[(32 * idx) + (98 * arg1.length) + (32 * arg2.length) + 256] = 0
        else:
            require idx < mem[96]
            require idx < mem[(32 * arg1.length) + 128]
            _920 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 36] = address(_920)
            require ext_code.size(platformAddress)
            staticcall platformAddress.0xd52bb6f4 with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], address(_920)
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _945 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _960 = mem[_945]
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            require idx < mem[(64 * arg1.length) + (32 * arg2.length) + 192]
            mem[(32 * idx) + (64 * arg1.length) + (32 * arg2.length) + 224] = mem[_945 + 32]
            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = _960
            require idx < mem[(98 * arg1.length) + (32 * arg2.length) + 224]
            mem[(32 * idx) + (98 * arg1.length) + (32 * arg2.length) + 256] = 1
        idx = idx + 1
        continue 
    _795 = mem[64]
    mem[mem[64]] = 96
    _813 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
    mem[mem[64] + 96] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
    mem[mem[64] + 128 len 32 * _813] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * _813]
    mem[_795 + 32] = (32 * _813) + 128
    _1003 = mem[(64 * arg1.length) + (32 * arg2.length) + 192]
    mem[_795 + (32 * _813) + 128] = mem[(64 * arg1.length) + (32 * arg2.length) + 192]
    mem[_795 + (32 * _813) + 160 len 32 * _1003] = mem[(64 * arg1.length) + (32 * arg2.length) + 224 len 32 * _1003]
    mem[_795 + 64] = (32 * _813) + (32 * _1003) + 160
    _1055 = mem[(98 * arg1.length) + (32 * arg2.length) + 224]
    mem[_795 + (32 * _813) + (32 * _1003) + 160] = mem[(98 * arg1.length) + (32 * arg2.length) + 224]
    idx = 0
    s = (98 * arg1.length) + (32 * arg2.length) + 256
    t = _795 + (32 * _813) + (32 * _1003) + 192
    while idx < _1055:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _795 + (32 * _813) + (32 * _1003) + (32 * _1055) + -mem[64] + 192
}

function generateProposal(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0
    mem[128] = 0
    mem[192] = 96
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[672] = 0xa59a98c00000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.subject() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[672 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _5 = mem[672]
    require mem[672] <= test266151307()
    require mem[672] + 703 < return_data.size + 672
    _6 = mem[mem[672] + 672]
    require mem[mem[672] + 672] <= test266151307()
    require ceil32(mem[mem[672] + 672]) + 32 >= 0 and ceil32(return_data.size) + ceil32(mem[mem[672] + 672]) + 704 <= test266151307()
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[672] + 672]) + 704
    mem[ceil32(return_data.size) + 672] = mem[mem[672] + 672]
    require _5 + _6 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 704 len ceil32(_6)] = mem[_5 + 704 len ceil32(_6)]
    if ceil32(_6) <= _6:
        mem[160] = ceil32(return_data.size) + 672
        mem[mem[64]] = 0x8a4d5a6700000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.content() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1714 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1716 = mem[_1714]
        require mem[_1714] <= test266151307()
        require _1714 + mem[_1714] + 31 < _1714 + return_data.size
        _1718 = mem[_1714 + mem[_1714]]
        require mem[_1714 + mem[_1714]] <= test266151307()
        require ceil32(mem[_1714 + mem[_1714]]) + 32 >= 0 and _1714 + ceil32(return_data.size) + ceil32(mem[_1714 + mem[_1714]]) + 32 <= test266151307()
        mem[64] = _1714 + ceil32(return_data.size) + ceil32(mem[_1714 + mem[_1714]]) + 32
        mem[_1714 + ceil32(return_data.size)] = _1718
        require _1716 + _1718 + 32 <= return_data.size
        mem[_1714 + ceil32(return_data.size) + 32 len ceil32(_1718)] = mem[_1714 + _1716 + 32 len ceil32(_1718)]
        if ceil32(_1718) <= _1718:
            mem[192] = _1714 + ceil32(return_data.size)
            require ext_code.size(arg1)
            staticcall arg1.createTime() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3446 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[224] = mem[_3446]
            require ext_code.size(arg1)
            staticcall arg1.endBlockNumber() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3462 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[256] = mem[_3462]
            require ext_code.size(arg1)
            staticcall arg1.endBlockNumber() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3478 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if block.number > mem[_3478]:
                mem[288] = 1
                require ext_code.size(arg1)
                staticcall arg1.ended() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3502 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3502] == bool(mem[_3502])
                mem[576] = bool(mem[_3502])
                mem[mem[64] + 4] = 1
                require ext_code.size(arg1)
                staticcall arg1.proposals(uint256 rg1) with:
                        gas gas_remaining wei
                       args 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3534 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[320] = mem[_3534]
                mem[mem[64] + 4] = 2
                require ext_code.size(arg1)
                staticcall arg1.proposals(uint256 rg1) with:
                        gas gas_remaining wei
                       args 2
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3566 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[352] = mem[_3566]
                mem[mem[64] + 4] = arg1
                require ext_code.size(governanceAddress)
                staticcall governanceAddress.0x1d62ebd9 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3598 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[384] = mem[_3598]
                mem[96] = arg1
                require ext_code.size(arg1)
                staticcall arg1.voters(address rg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3630 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _3638 = mem[64]
                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                mem[64] = mem[64] + 128
                mem[_3638] = mem[_3630]
                require mem[_3630 + 32] == bool(mem[_3630 + 32])
                mem[_3638 + 32] = mem[_3630 + 32]
                require mem[_3630 + 64] == mem[_3630 + 76 len 20]
                mem[_3638 + 64] = mem[_3630 + 64]
                mem[_3638 + 96] = mem[_3630 + 96]
                mem[512] = bool(mem[_3638 + 32])
                require ext_code.size(arg1)
                staticcall arg1.voters(address rg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3702 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _3710 = mem[64]
                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                mem[64] = mem[64] + 128
                mem[_3710] = mem[_3702]
                require mem[_3702 + 32] == bool(mem[_3702 + 32])
                mem[_3710 + 32] = mem[_3702 + 32]
                require mem[_3702 + 64] == mem[_3702 + 76 len 20]
                mem[_3710 + 64] = mem[_3702 + 64]
                mem[_3710 + 96] = mem[_3702 + 96]
                mem[544] = mem[_3710 + 96]
                require ext_code.size(arg1)
                staticcall arg1.voters(address rg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3774 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _3782 = mem[64]
                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                mem[64] = mem[64] + 128
                mem[_3782] = mem[_3774]
                require mem[_3774 + 32] == bool(mem[_3774 + 32])
                mem[_3782 + 32] = mem[_3774 + 32]
                require mem[_3774 + 64] == mem[_3774 + 76 len 20]
                mem[_3782 + 64] = mem[_3774 + 64]
                mem[_3782 + 96] = mem[_3774 + 96]
                mem[448] = mem[_3782]
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = msg.sender
                require ext_code.size(governanceAddress)
                staticcall governanceAddress.0x2d65f489 with:
                        gas gas_remaining wei
                       args address(arg1), msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3846 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[480] = 1 == mem[_3846]
                mem[mem[64] + 4] = arg1
                require ext_code.size(governanceAddress)
                staticcall governanceAddress.0x5a8e1ca9 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3878 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[416] = mem[_3878]
                mem[mem[64] + 4] = arg1
                require ext_code.size(governanceAddress)
                staticcall governanceAddress.0xc25d0bab with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3910 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3910] == mem[_3910 + 12 len 20]
                mem[128] = mem[_3910 + 12 len 20]
                require ext_code.size(arg1)
                staticcall arg1.value() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3942 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[608] = mem[_3942]
                if mem[416] != 1:
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = arg1
                    mem[mem[64] + 64] = mem[140 len 20]
                    mem[mem[64] + 96] = 576
                    _4026 = mem[ceil32(return_data.size) + 672]
                    mem[mem[64] + 608] = mem[ceil32(return_data.size) + 672]
                    mem[mem[64] + 640 len ceil32(_4026)] = mem[ceil32(return_data.size) + 704 len ceil32(_4026)]
                    if ceil32(_4026) <= _4026:
                        mem[mem[64] + 128] = ceil32(_4026) + 608
                        mem[ceil32(_4026) + mem[64] + 640] = _1718
                        mem[ceil32(_4026) + mem[64] + 672 len ceil32(_1718)] = mem[_1714 + ceil32(return_data.size) + 32 len ceil32(_1718)]
                        if ceil32(_1718) > _1718:
                            mem[ceil32(_4026) + mem[64] + _1718 + 672] = 0
                        mem[mem[64] + 160] = mem[224]
                        mem[mem[64] + 192] = mem[256]
                        mem[mem[64] + 224] = 1
                        mem[mem[64] + 256] = mem[320]
                        mem[mem[64] + 288] = mem[352]
                        mem[mem[64] + 320] = mem[384]
                        mem[mem[64] + 352] = mem[416]
                        mem[mem[64] + 384] = mem[448]
                        mem[mem[64] + 416] = bool(mem[480])
                        mem[mem[64] + 448] = bool(mem[512])
                        mem[mem[64] + 480] = mem[544]
                        mem[mem[64] + 512] = bool(mem[576])
                        mem[mem[64] + 576] = 0
                        return 32, address(arg1), 
                               mem[mem[64] + 64],
                               576,
                               ceil32(_4026) + 608,
                               mem[mem[64] + 160 len 64],
                               1,
                               mem[mem[64] + 256 len 192],
                               bool(mem[512]),
                               mem[mem[64] + 480],
                               bool(mem[576]),
                               mem[608],
                               0,
                               mem[mem[64] + 608 len ceil32(_4026) + 32],
                               _1718,
                               mem[mem[64] + ceil32(_4026) + 672 len ceil32(_1718)]
                    mem[mem[64] + _4026 + 640] = 0
                    mem[mem[64] + 128] = ceil32(_4026) + 608
                    mem[ceil32(_4026) + mem[64] + 640] = _1718
                    mem[ceil32(_4026) + mem[64] + 672 len ceil32(_1718)] = mem[_1714 + ceil32(return_data.size) + 32 len ceil32(_1718)]
                    if ceil32(_1718) > _1718:
                        mem[ceil32(_4026) + mem[64] + _1718 + 672] = 0
                    mem[mem[64] + 160] = mem[224]
                    mem[mem[64] + 192] = mem[256]
                    mem[mem[64] + 224] = 1
                    mem[mem[64] + 256] = mem[320]
                    mem[mem[64] + 288] = mem[352]
                    mem[mem[64] + 320] = mem[384]
                    mem[mem[64] + 352] = mem[416]
                    mem[mem[64] + 384] = mem[448]
                    mem[mem[64] + 416] = bool(mem[480])
                    mem[mem[64] + 448] = bool(mem[512])
                    mem[mem[64] + 480] = mem[544]
                    mem[mem[64] + 512] = bool(mem[576])
                    mem[mem[64] + 576] = 0
                    return 32, address(arg1), 
                           mem[mem[64] + 64],
                           576,
                           ceil32(_4026) + 608,
                           mem[mem[64] + 160 len 64],
                           1,
                           mem[mem[64] + 256 len 192],
                           bool(mem[512]),
                           mem[mem[64] + 480],
                           bool(mem[576]),
                           mem[608],
                           0,
                           mem[mem[64] + 608 len _4026 + 32],
                           0,
                           mem[mem[64] + _4026 + 672 len ceil32(_1718) + ceil32(_4026) - _4026]
                mem[mem[64] + 4] = arg1
                require ext_code.size(governanceAddress)
                staticcall governanceAddress.0x739a8827 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3994 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[640] = mem[_3994]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = arg1
                mem[mem[64] + 64] = mem[140 len 20]
                mem[mem[64] + 96] = 576
                _4091 = mem[ceil32(return_data.size) + 672]
                mem[mem[64] + 608] = mem[ceil32(return_data.size) + 672]
                mem[mem[64] + 640 len ceil32(_4091)] = mem[ceil32(return_data.size) + 704 len ceil32(_4091)]
                if ceil32(_4091) <= _4091:
                    mem[mem[64] + 128] = ceil32(_4091) + 608
                    mem[ceil32(_4091) + mem[64] + 640] = _1718
                    mem[ceil32(_4091) + mem[64] + 672 len ceil32(_1718)] = mem[_1714 + ceil32(return_data.size) + 32 len ceil32(_1718)]
                    if ceil32(_1718) > _1718:
                        mem[ceil32(_4091) + mem[64] + _1718 + 672] = 0
                    mem[mem[64] + 160] = mem[224]
                    mem[mem[64] + 192] = mem[256]
                    mem[mem[64] + 224] = 1
                    mem[mem[64] + 256] = mem[320]
                    mem[mem[64] + 288] = mem[352]
                    mem[mem[64] + 320] = mem[384]
                    mem[mem[64] + 352] = mem[416]
                    mem[mem[64] + 384] = mem[448]
                    mem[mem[64] + 416] = bool(mem[480])
                    mem[mem[64] + 448] = bool(mem[512])
                    mem[mem[64] + 480] = mem[544]
                    mem[mem[64] + 512] = bool(mem[576])
                    mem[mem[64] + 544] = mem[608]
                    mem[mem[64] + 576] = mem[640]
                    return 32, address(arg1), 
                           mem[mem[64] + 64],
                           576,
                           ceil32(_4091) + 608,
                           mem[mem[64] + 160 len 64],
                           1,
                           mem[mem[64] + 256 len 256],
                           bool(mem[576]),
                           mem[608],
                           mem[640],
                           mem[mem[64] + 608 len ceil32(_4091) + 32],
                           _1718,
                           mem[mem[64] + ceil32(_4091) + 672 len ceil32(_1718)]
                mem[mem[64] + _4091 + 640] = 0
                mem[mem[64] + 128] = ceil32(_4091) + 608
                mem[ceil32(_4091) + mem[64] + 640] = _1718
                mem[ceil32(_4091) + mem[64] + 672 len ceil32(_1718)] = mem[_1714 + ceil32(return_data.size) + 32 len ceil32(_1718)]
                if ceil32(_1718) > _1718:
                    mem[ceil32(_4091) + mem[64] + _1718 + 672] = 0
                mem[mem[64] + 160] = mem[224]
                mem[mem[64] + 192] = mem[256]
                mem[mem[64] + 224] = 1
                mem[mem[64] + 256] = mem[320]
                mem[mem[64] + 288] = mem[352]
                mem[mem[64] + 320] = mem[384]
                mem[mem[64] + 352] = mem[416]
                mem[mem[64] + 384] = mem[448]
                mem[mem[64] + 416] = bool(mem[480])
                mem[mem[64] + 448] = bool(mem[512])
                mem[mem[64] + 480] = mem[544]
                mem[mem[64] + 512] = bool(mem[576])
                mem[mem[64] + 544] = mem[608]
                mem[mem[64] + 576] = mem[640]
                return 32, address(arg1), 
                       mem[mem[64] + 64],
                       576,
                       ceil32(_4091) + 608,
                       mem[mem[64] + 160 len 64],
                       1,
                       mem[mem[64] + 256 len 256],
                       bool(mem[576]),
                       mem[608],
                       mem[640],
                       mem[mem[64] + 608 len _4091 + 32],
                       0,
                       mem[mem[64] + _4091 + 672 len ceil32(_1718) + ceil32(_4091) - _4091]
            mem[288] = 0
            require ext_code.size(arg1)
            staticcall arg1.ended() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3503 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3503] == bool(mem[_3503])
            mem[576] = bool(mem[_3503])
            mem[mem[64] + 4] = 1
            require ext_code.size(arg1)
            staticcall arg1.proposals(uint256 rg1) with:
                    gas gas_remaining wei
                   args 1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3535 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[320] = mem[_3535]
            mem[mem[64] + 4] = 2
            require ext_code.size(arg1)
            staticcall arg1.proposals(uint256 rg1) with:
                    gas gas_remaining wei
                   args 2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3567 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[352] = mem[_3567]
            mem[mem[64] + 4] = arg1
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.0x1d62ebd9 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3599 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[384] = mem[_3599]
            mem[96] = arg1
            require ext_code.size(arg1)
            staticcall arg1.voters(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3631 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _3639 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            mem[_3639] = mem[_3631]
            require mem[_3631 + 32] == bool(mem[_3631 + 32])
            mem[_3639 + 32] = mem[_3631 + 32]
            require mem[_3631 + 64] == mem[_3631 + 76 len 20]
            mem[_3639 + 64] = mem[_3631 + 64]
            mem[_3639 + 96] = mem[_3631 + 96]
            mem[512] = bool(mem[_3639 + 32])
            require ext_code.size(arg1)
            staticcall arg1.voters(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3703 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _3711 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            mem[_3711] = mem[_3703]
            require mem[_3703 + 32] == bool(mem[_3703 + 32])
            mem[_3711 + 32] = mem[_3703 + 32]
            require mem[_3703 + 64] == mem[_3703 + 76 len 20]
            mem[_3711 + 64] = mem[_3703 + 64]
            mem[_3711 + 96] = mem[_3703 + 96]
            mem[544] = mem[_3711 + 96]
            require ext_code.size(arg1)
            staticcall arg1.voters(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3775 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _3783 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            mem[_3783] = mem[_3775]
            require mem[_3775 + 32] == bool(mem[_3775 + 32])
            mem[_3783 + 32] = mem[_3775 + 32]
            require mem[_3775 + 64] == mem[_3775 + 76 len 20]
            mem[_3783 + 64] = mem[_3775 + 64]
            mem[_3783 + 96] = mem[_3775 + 96]
            mem[448] = mem[_3783]
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = msg.sender
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.0x2d65f489 with:
                    gas gas_remaining wei
                   args address(arg1), msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3847 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[480] = 1 == mem[_3847]
            mem[mem[64] + 4] = arg1
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.0x5a8e1ca9 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3879 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[416] = mem[_3879]
            mem[mem[64] + 4] = arg1
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.0xc25d0bab with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3911 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3911] == mem[_3911 + 12 len 20]
            mem[128] = mem[_3911 + 12 len 20]
            require ext_code.size(arg1)
            staticcall arg1.value() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3943 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[608] = mem[_3943]
            if mem[416] != 1:
                mem[mem[64]] = 32
                mem[mem[64] + 32] = arg1
                mem[mem[64] + 64] = mem[140 len 20]
                mem[mem[64] + 96] = 576
                _4027 = mem[ceil32(return_data.size) + 672]
                mem[mem[64] + 608] = mem[ceil32(return_data.size) + 672]
                mem[mem[64] + 640 len ceil32(_4027)] = mem[ceil32(return_data.size) + 704 len ceil32(_4027)]
                if ceil32(_4027) <= _4027:
                    mem[mem[64] + 128] = ceil32(_4027) + 608
                    mem[ceil32(_4027) + mem[64] + 640] = _1718
                    mem[ceil32(_4027) + mem[64] + 672 len ceil32(_1718)] = mem[_1714 + ceil32(return_data.size) + 32 len ceil32(_1718)]
                    if ceil32(_1718) > _1718:
                        mem[ceil32(_4027) + mem[64] + _1718 + 672] = 0
                    mem[mem[64] + 160] = mem[224]
                    mem[mem[64] + 192] = mem[256]
                    mem[mem[64] + 224] = 0
                    mem[mem[64] + 256] = mem[320]
                    mem[mem[64] + 288] = mem[352]
                    mem[mem[64] + 320] = mem[384]
                    mem[mem[64] + 352] = mem[416]
                    mem[mem[64] + 384] = mem[448]
                    mem[mem[64] + 416] = bool(mem[480])
                    mem[mem[64] + 448] = bool(mem[512])
                    mem[mem[64] + 480] = mem[544]
                    mem[mem[64] + 512] = bool(mem[576])
                    mem[mem[64] + 576] = 0
                    return 32, address(arg1), 
                           mem[mem[64] + 64],
                           576,
                           ceil32(_4027) + 608,
                           mem[mem[64] + 160 len 64],
                           0,
                           mem[mem[64] + 256 len 192],
                           bool(mem[512]),
                           mem[mem[64] + 480],
                           bool(mem[576]),
                           mem[608],
                           0,
                           mem[mem[64] + 608 len ceil32(_4027) + 32],
                           _1718,
                           mem[mem[64] + ceil32(_4027) + 672 len ceil32(_1718)]
                mem[mem[64] + _4027 + 640] = 0
                mem[mem[64] + 128] = ceil32(_4027) + 608
                mem[ceil32(_4027) + mem[64] + 640] = _1718
                mem[ceil32(_4027) + mem[64] + 672 len ceil32(_1718)] = mem[_1714 + ceil32(return_data.size) + 32 len ceil32(_1718)]
                if ceil32(_1718) > _1718:
                    mem[ceil32(_4027) + mem[64] + _1718 + 672] = 0
                mem[mem[64] + 160] = mem[224]
                mem[mem[64] + 192] = mem[256]
                mem[mem[64] + 224] = 0
                mem[mem[64] + 256] = mem[320]
                mem[mem[64] + 288] = mem[352]
                mem[mem[64] + 320] = mem[384]
                mem[mem[64] + 352] = mem[416]
                mem[mem[64] + 384] = mem[448]
                mem[mem[64] + 416] = bool(mem[480])
                mem[mem[64] + 448] = bool(mem[512])
                mem[mem[64] + 480] = mem[544]
                mem[mem[64] + 512] = bool(mem[576])
                mem[mem[64] + 576] = 0
                return 32, address(arg1), 
                       mem[mem[64] + 64],
                       576,
                       ceil32(_4027) + 608,
                       mem[mem[64] + 160 len 64],
                       0,
                       mem[mem[64] + 256 len 192],
                       bool(mem[512]),
                       mem[mem[64] + 480],
                       bool(mem[576]),
                       mem[608],
                       0,
                       mem[mem[64] + 608 len _4027 + 32],
                       0,
                       mem[mem[64] + _4027 + 672 len ceil32(_1718) + ceil32(_4027) - _4027]
            mem[mem[64] + 4] = arg1
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.0x739a8827 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3995 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[640] = mem[_3995]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = mem[140 len 20]
            mem[mem[64] + 96] = 576
            _4093 = mem[ceil32(return_data.size) + 672]
            mem[mem[64] + 608] = mem[ceil32(return_data.size) + 672]
            mem[mem[64] + 640 len ceil32(_4093)] = mem[ceil32(return_data.size) + 704 len ceil32(_4093)]
            if ceil32(_4093) <= _4093:
                mem[mem[64] + 128] = ceil32(_4093) + 608
                mem[ceil32(_4093) + mem[64] + 640] = _1718
                mem[ceil32(_4093) + mem[64] + 672 len ceil32(_1718)] = mem[_1714 + ceil32(return_data.size) + 32 len ceil32(_1718)]
                if ceil32(_1718) > _1718:
                    mem[ceil32(_4093) + mem[64] + _1718 + 672] = 0
                mem[mem[64] + 160] = mem[224]
                mem[mem[64] + 192] = mem[256]
                mem[mem[64] + 224] = 0
                mem[mem[64] + 256] = mem[320]
                mem[mem[64] + 288] = mem[352]
                mem[mem[64] + 320] = mem[384]
                mem[mem[64] + 352] = mem[416]
                mem[mem[64] + 384] = mem[448]
                mem[mem[64] + 416] = bool(mem[480])
                mem[mem[64] + 448] = bool(mem[512])
                mem[mem[64] + 480] = mem[544]
                mem[mem[64] + 512] = bool(mem[576])
                mem[mem[64] + 544] = mem[608]
                mem[mem[64] + 576] = mem[640]
                return 32, address(arg1), 
                       mem[mem[64] + 64],
                       576,
                       ceil32(_4093) + 608,
                       mem[mem[64] + 160 len 64],
                       0,
                       mem[mem[64] + 256 len 256],
                       bool(mem[576]),
                       mem[608],
                       mem[640],
                       mem[mem[64] + 608 len ceil32(_4093) + 32],
                       _1718,
                       mem[mem[64] + ceil32(_4093) + 672 len ceil32(_1718)]
            mem[mem[64] + _4093 + 640] = 0
            mem[mem[64] + 128] = ceil32(_4093) + 608
            mem[ceil32(_4093) + mem[64] + 640] = _1718
            mem[ceil32(_4093) + mem[64] + 672 len ceil32(_1718)] = mem[_1714 + ceil32(return_data.size) + 32 len ceil32(_1718)]
            if ceil32(_1718) > _1718:
                mem[ceil32(_4093) + mem[64] + _1718 + 672] = 0
            mem[mem[64] + 160] = mem[224]
            mem[mem[64] + 192] = mem[256]
            mem[mem[64] + 224] = 0
            mem[mem[64] + 256] = mem[320]
            mem[mem[64] + 288] = mem[352]
            mem[mem[64] + 320] = mem[384]
            mem[mem[64] + 352] = mem[416]
            mem[mem[64] + 384] = mem[448]
            mem[mem[64] + 416] = bool(mem[480])
            mem[mem[64] + 448] = bool(mem[512])
            mem[mem[64] + 480] = mem[544]
            mem[mem[64] + 512] = bool(mem[576])
            mem[mem[64] + 544] = mem[608]
            mem[mem[64] + 576] = mem[640]
            return 32, address(arg1), 
                   mem[mem[64] + 64],
                   576,
                   ceil32(_4093) + 608,
                   mem[mem[64] + 160 len 64],
                   0,
                   mem[mem[64] + 256 len 256],
                   bool(mem[576]),
                   mem[608],
                   mem[640],
                   mem[mem[64] + 608 len _4093 + 32],
                   0,
                   mem[mem[64] + _4093 + 672 len ceil32(_1718) + ceil32(_4093) - _4093]
        mem[_1714 + ceil32(return_data.size) + _1718 + 32] = 0
        mem[192] = _1714 + ceil32(return_data.size)
        require ext_code.size(arg1)
        staticcall arg1.createTime() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3448 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[224] = mem[_3448]
        require ext_code.size(arg1)
        staticcall arg1.endBlockNumber() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3464 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[256] = mem[_3464]
        require ext_code.size(arg1)
        staticcall arg1.endBlockNumber() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3480 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.number > mem[_3480]:
            mem[288] = 1
            require ext_code.size(arg1)
            staticcall arg1.ended() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3506 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3506] == bool(mem[_3506])
            mem[576] = bool(mem[_3506])
            mem[mem[64] + 4] = 1
            require ext_code.size(arg1)
            staticcall arg1.proposals(uint256 rg1) with:
                    gas gas_remaining wei
                   args 1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3538 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[320] = mem[_3538]
            mem[mem[64] + 4] = 2
            require ext_code.size(arg1)
            staticcall arg1.proposals(uint256 rg1) with:
                    gas gas_remaining wei
                   args 2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3570 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[352] = mem[_3570]
            mem[mem[64] + 4] = arg1
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.0x1d62ebd9 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3602 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[384] = mem[_3602]
            mem[96] = arg1
            require ext_code.size(arg1)
            staticcall arg1.voters(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3634 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _3642 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            mem[_3642] = mem[_3634]
            require mem[_3634 + 32] == bool(mem[_3634 + 32])
            mem[_3642 + 32] = mem[_3634 + 32]
            require mem[_3634 + 64] == mem[_3634 + 76 len 20]
            mem[_3642 + 64] = mem[_3634 + 64]
            mem[_3642 + 96] = mem[_3634 + 96]
            mem[512] = bool(mem[_3642 + 32])
            require ext_code.size(arg1)
            staticcall arg1.voters(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3706 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _3714 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            mem[_3714] = mem[_3706]
            require mem[_3706 + 32] == bool(mem[_3706 + 32])
            mem[_3714 + 32] = mem[_3706 + 32]
            require mem[_3706 + 64] == mem[_3706 + 76 len 20]
            mem[_3714 + 64] = mem[_3706 + 64]
            mem[_3714 + 96] = mem[_3706 + 96]
            mem[544] = mem[_3714 + 96]
            require ext_code.size(arg1)
            staticcall arg1.voters(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3778 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _3786 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            mem[_3786] = mem[_3778]
            require mem[_3778 + 32] == bool(mem[_3778 + 32])
            mem[_3786 + 32] = mem[_3778 + 32]
            require mem[_3778 + 64] == mem[_3778 + 76 len 20]
            mem[_3786 + 64] = mem[_3778 + 64]
            mem[_3786 + 96] = mem[_3778 + 96]
            mem[448] = mem[_3786]
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = msg.sender
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.0x2d65f489 with:
                    gas gas_remaining wei
                   args address(arg1), msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3850 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[480] = 1 == mem[_3850]
            mem[mem[64] + 4] = arg1
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.0x5a8e1ca9 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3882 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[416] = mem[_3882]
            mem[mem[64] + 4] = arg1
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.0xc25d0bab with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3914 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3914] == mem[_3914 + 12 len 20]
            mem[128] = mem[_3914 + 12 len 20]
            require ext_code.size(arg1)
            staticcall arg1.value() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3946 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[608] = mem[_3946]
            if mem[416] != 1:
                mem[mem[64]] = 32
                mem[mem[64] + 32] = arg1
                mem[mem[64] + 64] = mem[140 len 20]
                mem[mem[64] + 96] = 576
                _4036 = mem[ceil32(return_data.size) + 672]
                mem[mem[64] + 608] = mem[ceil32(return_data.size) + 672]
                mem[mem[64] + 640 len ceil32(_4036)] = mem[ceil32(return_data.size) + 704 len ceil32(_4036)]
                if ceil32(_4036) <= _4036:
                    mem[mem[64] + 128] = ceil32(_4036) + 608
                    mem[ceil32(_4036) + mem[64] + 640] = _1718
                    mem[ceil32(_4036) + mem[64] + 672 len ceil32(_1718)] = mem[_1714 + ceil32(return_data.size) + 32 len ceil32(_1718)]
                    if ceil32(_1718) > _1718:
                        mem[ceil32(_4036) + mem[64] + _1718 + 672] = 0
                    mem[mem[64] + 160] = mem[224]
                    mem[mem[64] + 192] = mem[256]
                    mem[mem[64] + 224] = 1
                    mem[mem[64] + 256] = mem[320]
                    mem[mem[64] + 288] = mem[352]
                    mem[mem[64] + 320] = mem[384]
                    mem[mem[64] + 352] = mem[416]
                    mem[mem[64] + 384] = mem[448]
                    mem[mem[64] + 416] = bool(mem[480])
                    mem[mem[64] + 448] = bool(mem[512])
                    mem[mem[64] + 480] = mem[544]
                    mem[mem[64] + 512] = bool(mem[576])
                    mem[mem[64] + 576] = 0
                    return 32, address(arg1), 
                           mem[mem[64] + 64],
                           576,
                           ceil32(_4036) + 608,
                           mem[mem[64] + 160 len 64],
                           1,
                           mem[mem[64] + 256 len 192],
                           bool(mem[512]),
                           mem[mem[64] + 480],
                           bool(mem[576]),
                           mem[608],
                           0,
                           mem[mem[64] + 608 len ceil32(_4036) + 32],
                           _1718,
                           mem[mem[64] + ceil32(_4036) + 672 len ceil32(_1718)]
                mem[mem[64] + _4036 + 640] = 0
                mem[mem[64] + 128] = ceil32(_4036) + 608
                mem[ceil32(_4036) + mem[64] + 640] = _1718
                mem[ceil32(_4036) + mem[64] + 672 len ceil32(_1718)] = mem[_1714 + ceil32(return_data.size) + 32 len ceil32(_1718)]
                if ceil32(_1718) > _1718:
                    mem[ceil32(_4036) + mem[64] + _1718 + 672] = 0
                mem[mem[64] + 160] = mem[224]
                mem[mem[64] + 192] = mem[256]
                mem[mem[64] + 224] = 1
                mem[mem[64] + 256] = mem[320]
                mem[mem[64] + 288] = mem[352]
                mem[mem[64] + 320] = mem[384]
                mem[mem[64] + 352] = mem[416]
                mem[mem[64] + 384] = mem[448]
                mem[mem[64] + 416] = bool(mem[480])
                mem[mem[64] + 448] = bool(mem[512])
                mem[mem[64] + 480] = mem[544]
                mem[mem[64] + 512] = bool(mem[576])
                mem[mem[64] + 576] = 0
                return 32, address(arg1), 
                       mem[mem[64] + 64],
                       576,
                       ceil32(_4036) + 608,
                       mem[mem[64] + 160 len 64],
                       1,
                       mem[mem[64] + 256 len 192],
                       bool(mem[512]),
                       mem[mem[64] + 480],
                       bool(mem[576]),
                       mem[608],
                       0,
                       mem[mem[64] + 608 len _4036 + 32],
                       0,
                       mem[mem[64] + _4036 + 672 len ceil32(_1718) + ceil32(_4036) - _4036]
            mem[mem[64] + 4] = arg1
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.0x739a8827 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4004 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[640] = mem[_4004]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = mem[140 len 20]
            mem[mem[64] + 96] = 576
            _4111 = mem[ceil32(return_data.size) + 672]
            mem[mem[64] + 608] = mem[ceil32(return_data.size) + 672]
            mem[mem[64] + 640 len ceil32(_4111)] = mem[ceil32(return_data.size) + 704 len ceil32(_4111)]
            if ceil32(_4111) <= _4111:
                mem[mem[64] + 128] = ceil32(_4111) + 608
                mem[ceil32(_4111) + mem[64] + 640] = _1718
                mem[ceil32(_4111) + mem[64] + 672 len ceil32(_1718)] = mem[_1714 + ceil32(return_data.size) + 32 len ceil32(_1718)]
                if ceil32(_1718) > _1718:
                    mem[ceil32(_4111) + mem[64] + _1718 + 672] = 0
                mem[mem[64] + 160] = mem[224]
                mem[mem[64] + 192] = mem[256]
                mem[mem[64] + 224] = 1
                mem[mem[64] + 256] = mem[320]
                mem[mem[64] + 288] = mem[352]
                mem[mem[64] + 320] = mem[384]
                mem[mem[64] + 352] = mem[416]
                mem[mem[64] + 384] = mem[448]
                mem[mem[64] + 416] = bool(mem[480])
                mem[mem[64] + 448] = bool(mem[512])
                mem[mem[64] + 480] = mem[544]
                mem[mem[64] + 512] = bool(mem[576])
                mem[mem[64] + 544] = mem[608]
                mem[mem[64] + 576] = mem[640]
                return 32, address(arg1), 
                       mem[mem[64] + 64],
                       576,
                       ceil32(_4111) + 608,
                       mem[mem[64] + 160 len 64],
                       1,
                       mem[mem[64] + 256 len 256],
                       bool(mem[576]),
                       mem[608],
                       mem[640],
                       mem[mem[64] + 608 len ceil32(_4111) + 32],
                       _1718,
                       mem[mem[64] + ceil32(_4111) + 672 len ceil32(_1718)]
            mem[mem[64] + _4111 + 640] = 0
            mem[mem[64] + 128] = ceil32(_4111) + 608
            mem[ceil32(_4111) + mem[64] + 640] = _1718
            mem[ceil32(_4111) + mem[64] + 672 len ceil32(_1718)] = mem[_1714 + ceil32(return_data.size) + 32 len ceil32(_1718)]
            if ceil32(_1718) > _1718:
                mem[ceil32(_4111) + mem[64] + _1718 + 672] = 0
            mem[mem[64] + 160] = mem[224]
            mem[mem[64] + 192] = mem[256]
            mem[mem[64] + 224] = 1
            mem[mem[64] + 256] = mem[320]
            mem[mem[64] + 288] = mem[352]
            mem[mem[64] + 320] = mem[384]
            mem[mem[64] + 352] = mem[416]
            mem[mem[64] + 384] = mem[448]
            mem[mem[64] + 416] = bool(mem[480])
            mem[mem[64] + 448] = bool(mem[512])
            mem[mem[64] + 480] = mem[544]
            mem[mem[64] + 512] = bool(mem[576])
            mem[mem[64] + 544] = mem[608]
            mem[mem[64] + 576] = mem[640]
            return 32, address(arg1), 
                   mem[mem[64] + 64],
                   576,
                   ceil32(_4111) + 608,
                   mem[mem[64] + 160 len 64],
                   1,
                   mem[mem[64] + 256 len 256],
                   bool(mem[576]),
                   mem[608],
                   mem[640],
                   mem[mem[64] + 608 len _4111 + 32],
                   0,
                   mem[mem[64] + _4111 + 672 len ceil32(_1718) + ceil32(_4111) - _4111]
        mem[288] = 0
        require ext_code.size(arg1)
        staticcall arg1.ended() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3507 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_3507] == bool(mem[_3507])
        mem[576] = bool(mem[_3507])
        mem[mem[64] + 4] = 1
        require ext_code.size(arg1)
        staticcall arg1.proposals(uint256 rg1) with:
                gas gas_remaining wei
               args 1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3539 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[320] = mem[_3539]
        mem[mem[64] + 4] = 2
        require ext_code.size(arg1)
        staticcall arg1.proposals(uint256 rg1) with:
                gas gas_remaining wei
               args 2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3571 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[352] = mem[_3571]
        mem[mem[64] + 4] = arg1
        require ext_code.size(governanceAddress)
        staticcall governanceAddress.0x1d62ebd9 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3603 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[384] = mem[_3603]
        mem[96] = arg1
        require ext_code.size(arg1)
        staticcall arg1.voters(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3635 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _3643 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        mem[_3643] = mem[_3635]
        require mem[_3635 + 32] == bool(mem[_3635 + 32])
        mem[_3643 + 32] = mem[_3635 + 32]
        require mem[_3635 + 64] == mem[_3635 + 76 len 20]
        mem[_3643 + 64] = mem[_3635 + 64]
        mem[_3643 + 96] = mem[_3635 + 96]
        mem[512] = bool(mem[_3643 + 32])
        require ext_code.size(arg1)
        staticcall arg1.voters(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3707 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _3715 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        mem[_3715] = mem[_3707]
        require mem[_3707 + 32] == bool(mem[_3707 + 32])
        mem[_3715 + 32] = mem[_3707 + 32]
        require mem[_3707 + 64] == mem[_3707 + 76 len 20]
        mem[_3715 + 64] = mem[_3707 + 64]
        mem[_3715 + 96] = mem[_3707 + 96]
        mem[544] = mem[_3715 + 96]
        require ext_code.size(arg1)
        staticcall arg1.voters(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3779 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _3787 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        mem[_3787] = mem[_3779]
        require mem[_3779 + 32] == bool(mem[_3779 + 32])
        mem[_3787 + 32] = mem[_3779 + 32]
        require mem[_3779 + 64] == mem[_3779 + 76 len 20]
        mem[_3787 + 64] = mem[_3779 + 64]
        mem[_3787 + 96] = mem[_3779 + 96]
        mem[448] = mem[_3787]
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = msg.sender
        require ext_code.size(governanceAddress)
        staticcall governanceAddress.0x2d65f489 with:
                gas gas_remaining wei
               args address(arg1), msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3851 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[480] = 1 == mem[_3851]
        mem[mem[64] + 4] = arg1
        require ext_code.size(governanceAddress)
        staticcall governanceAddress.0x5a8e1ca9 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3883 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[416] = mem[_3883]
        mem[mem[64] + 4] = arg1
        require ext_code.size(governanceAddress)
        staticcall governanceAddress.0xc25d0bab with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3915 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_3915] == mem[_3915 + 12 len 20]
        mem[128] = mem[_3915 + 12 len 20]
        require ext_code.size(arg1)
        staticcall arg1.value() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3947 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[608] = mem[_3947]
        if mem[416] != 1:
            mem[mem[64]] = 32
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = mem[140 len 20]
            mem[mem[64] + 96] = 576
            _4037 = mem[ceil32(return_data.size) + 672]
            mem[mem[64] + 608] = mem[ceil32(return_data.size) + 672]
            mem[mem[64] + 640 len ceil32(_4037)] = mem[ceil32(return_data.size) + 704 len ceil32(_4037)]
            if ceil32(_4037) <= _4037:
                mem[mem[64] + 128] = ceil32(_4037) + 608
                mem[ceil32(_4037) + mem[64] + 640] = _1718
                mem[ceil32(_4037) + mem[64] + 672 len ceil32(_1718)] = mem[_1714 + ceil32(return_data.size) + 32 len ceil32(_1718)]
                if ceil32(_1718) > _1718:
                    mem[ceil32(_4037) + mem[64] + _1718 + 672] = 0
                mem[mem[64] + 160] = mem[224]
                mem[mem[64] + 192] = mem[256]
                mem[mem[64] + 224] = 0
                mem[mem[64] + 256] = mem[320]
                mem[mem[64] + 288] = mem[352]
                mem[mem[64] + 320] = mem[384]
                mem[mem[64] + 352] = mem[416]
                mem[mem[64] + 384] = mem[448]
                mem[mem[64] + 416] = bool(mem[480])
                mem[mem[64] + 448] = bool(mem[512])
                mem[mem[64] + 480] = mem[544]
                mem[mem[64] + 512] = bool(mem[576])
                mem[mem[64] + 576] = 0
                return 32, address(arg1), 
                       mem[mem[64] + 64],
                       576,
                       ceil32(_4037) + 608,
                       mem[mem[64] + 160 len 64],
                       0,
                       mem[mem[64] + 256 len 192],
                       bool(mem[512]),
                       mem[mem[64] + 480],
                       bool(mem[576]),
                       mem[608],
                       0,
                       mem[mem[64] + 608 len ceil32(_4037) + 32],
                       _1718,
                       mem[mem[64] + ceil32(_4037) + 672 len ceil32(_1718)]
            mem[mem[64] + _4037 + 640] = 0
            mem[mem[64] + 128] = ceil32(_4037) + 608
            mem[ceil32(_4037) + mem[64] + 640] = _1718
            mem[ceil32(_4037) + mem[64] + 672 len ceil32(_1718)] = mem[_1714 + ceil32(return_data.size) + 32 len ceil32(_1718)]
            if ceil32(_1718) > _1718:
                mem[ceil32(_4037) + mem[64] + _1718 + 672] = 0
            mem[mem[64] + 160] = mem[224]
            mem[mem[64] + 192] = mem[256]
            mem[mem[64] + 224] = 0
            mem[mem[64] + 256] = mem[320]
            mem[mem[64] + 288] = mem[352]
            mem[mem[64] + 320] = mem[384]
            mem[mem[64] + 352] = mem[416]
            mem[mem[64] + 384] = mem[448]
            mem[mem[64] + 416] = bool(mem[480])
            mem[mem[64] + 448] = bool(mem[512])
            mem[mem[64] + 480] = mem[544]
            mem[mem[64] + 512] = bool(mem[576])
            mem[mem[64] + 576] = 0
            return 32, address(arg1), 
                   mem[mem[64] + 64],
                   576,
                   ceil32(_4037) + 608,
                   mem[mem[64] + 160 len 64],
                   0,
                   mem[mem[64] + 256 len 192],
                   bool(mem[512]),
                   mem[mem[64] + 480],
                   bool(mem[576]),
                   mem[608],
                   0,
                   mem[mem[64] + 608 len _4037 + 32],
                   0,
                   mem[mem[64] + _4037 + 672 len ceil32(_1718) + ceil32(_4037) - _4037]
        mem[mem[64] + 4] = arg1
        require ext_code.size(governanceAddress)
        staticcall governanceAddress.0x739a8827 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4005 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[640] = mem[_4005]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = arg1
        mem[mem[64] + 64] = mem[140 len 20]
        mem[mem[64] + 96] = 576
        _4113 = mem[ceil32(return_data.size) + 672]
        mem[mem[64] + 608] = mem[ceil32(return_data.size) + 672]
        mem[mem[64] + 640 len ceil32(_4113)] = mem[ceil32(return_data.size) + 704 len ceil32(_4113)]
        if ceil32(_4113) <= _4113:
            mem[mem[64] + 128] = ceil32(_4113) + 608
            mem[ceil32(_4113) + mem[64] + 640] = _1718
            mem[ceil32(_4113) + mem[64] + 672 len ceil32(_1718)] = mem[_1714 + ceil32(return_data.size) + 32 len ceil32(_1718)]
            if ceil32(_1718) > _1718:
                mem[ceil32(_4113) + mem[64] + _1718 + 672] = 0
            mem[mem[64] + 160] = mem[224]
            mem[mem[64] + 192] = mem[256]
            mem[mem[64] + 224] = 0
            mem[mem[64] + 256] = mem[320]
            mem[mem[64] + 288] = mem[352]
            mem[mem[64] + 320] = mem[384]
            mem[mem[64] + 352] = mem[416]
            mem[mem[64] + 384] = mem[448]
            mem[mem[64] + 416] = bool(mem[480])
            mem[mem[64] + 448] = bool(mem[512])
            mem[mem[64] + 480] = mem[544]
            mem[mem[64] + 512] = bool(mem[576])
            mem[mem[64] + 544] = mem[608]
            mem[mem[64] + 576] = mem[640]
            return 32, address(arg1), 
                   mem[mem[64] + 64],
                   576,
                   ceil32(_4113) + 608,
                   mem[mem[64] + 160 len 64],
                   0,
                   mem[mem[64] + 256 len 256],
                   bool(mem[576]),
                   mem[608],
                   mem[640],
                   mem[mem[64] + 608 len ceil32(_4113) + 32],
                   _1718,
                   mem[mem[64] + ceil32(_4113) + 672 len ceil32(_1718)]
        mem[mem[64] + _4113 + 640] = 0
        mem[mem[64] + 128] = ceil32(_4113) + 608
        mem[ceil32(_4113) + mem[64] + 640] = _1718
        mem[ceil32(_4113) + mem[64] + 672 len ceil32(_1718)] = mem[_1714 + ceil32(return_data.size) + 32 len ceil32(_1718)]
        if ceil32(_1718) > _1718:
            mem[ceil32(_4113) + mem[64] + _1718 + 672] = 0
        mem[mem[64] + 160] = mem[224]
        mem[mem[64] + 192] = mem[256]
        mem[mem[64] + 224] = 0
        mem[mem[64] + 256] = mem[320]
        mem[mem[64] + 288] = mem[352]
        mem[mem[64] + 320] = mem[384]
        mem[mem[64] + 352] = mem[416]
        mem[mem[64] + 384] = mem[448]
        mem[mem[64] + 416] = bool(mem[480])
        mem[mem[64] + 448] = bool(mem[512])
        mem[mem[64] + 480] = mem[544]
        mem[mem[64] + 512] = bool(mem[576])
        mem[mem[64] + 544] = mem[608]
        mem[mem[64] + 576] = mem[640]
        return 32, address(arg1), 
               mem[mem[64] + 64],
               576,
               ceil32(_4113) + 608,
               mem[mem[64] + 160 len 64],
               0,
               mem[mem[64] + 256 len 256],
               bool(mem[576]),
               mem[608],
               mem[640],
               mem[mem[64] + 608 len _4113 + 32],
               0,
               mem[mem[64] + _4113 + 672 len ceil32(_1718) + ceil32(_4113) - _4113]
    mem[ceil32(return_data.size) + _6 + 704] = 0
    mem[160] = ceil32(return_data.size) + 672
    mem[mem[64]] = 0x8a4d5a6700000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.content() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1715 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1717 = mem[_1715]
    require mem[_1715] <= test266151307()
    require _1715 + mem[_1715] + 31 < _1715 + return_data.size
    _1719 = mem[_1715 + mem[_1715]]
    require mem[_1715 + mem[_1715]] <= test266151307()
    require ceil32(mem[_1715 + mem[_1715]]) + 32 >= 0 and _1715 + ceil32(return_data.size) + ceil32(mem[_1715 + mem[_1715]]) + 32 <= test266151307()
    mem[64] = _1715 + ceil32(return_data.size) + ceil32(mem[_1715 + mem[_1715]]) + 32
    mem[_1715 + ceil32(return_data.size)] = _1719
    require _1717 + _1719 + 32 <= return_data.size
    mem[_1715 + ceil32(return_data.size) + 32 len ceil32(_1719)] = mem[_1715 + _1717 + 32 len ceil32(_1719)]
    if ceil32(_1719) <= _1719:
        mem[192] = _1715 + ceil32(return_data.size)
        require ext_code.size(arg1)
        staticcall arg1.createTime() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3447 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[224] = mem[_3447]
        require ext_code.size(arg1)
        staticcall arg1.endBlockNumber() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3463 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[256] = mem[_3463]
        require ext_code.size(arg1)
        staticcall arg1.endBlockNumber() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3479 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.number > mem[_3479]:
            mem[288] = 1
            require ext_code.size(arg1)
            staticcall arg1.ended() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3504 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3504] == bool(mem[_3504])
            mem[576] = bool(mem[_3504])
            mem[mem[64] + 4] = 1
            require ext_code.size(arg1)
            staticcall arg1.proposals(uint256 rg1) with:
                    gas gas_remaining wei
                   args 1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3536 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[320] = mem[_3536]
            mem[mem[64] + 4] = 2
            require ext_code.size(arg1)
            staticcall arg1.proposals(uint256 rg1) with:
                    gas gas_remaining wei
                   args 2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3568 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[352] = mem[_3568]
            mem[mem[64] + 4] = arg1
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.0x1d62ebd9 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3600 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[384] = mem[_3600]
            mem[96] = arg1
            require ext_code.size(arg1)
            staticcall arg1.voters(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3632 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _3640 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            mem[_3640] = mem[_3632]
            require mem[_3632 + 32] == bool(mem[_3632 + 32])
            mem[_3640 + 32] = mem[_3632 + 32]
            require mem[_3632 + 64] == mem[_3632 + 76 len 20]
            mem[_3640 + 64] = mem[_3632 + 64]
            mem[_3640 + 96] = mem[_3632 + 96]
            mem[512] = bool(mem[_3640 + 32])
            require ext_code.size(arg1)
            staticcall arg1.voters(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3704 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _3712 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            mem[_3712] = mem[_3704]
            require mem[_3704 + 32] == bool(mem[_3704 + 32])
            mem[_3712 + 32] = mem[_3704 + 32]
            require mem[_3704 + 64] == mem[_3704 + 76 len 20]
            mem[_3712 + 64] = mem[_3704 + 64]
            mem[_3712 + 96] = mem[_3704 + 96]
            mem[544] = mem[_3712 + 96]
            require ext_code.size(arg1)
            staticcall arg1.voters(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3776 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _3784 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            mem[_3784] = mem[_3776]
            require mem[_3776 + 32] == bool(mem[_3776 + 32])
            mem[_3784 + 32] = mem[_3776 + 32]
            require mem[_3776 + 64] == mem[_3776 + 76 len 20]
            mem[_3784 + 64] = mem[_3776 + 64]
            mem[_3784 + 96] = mem[_3776 + 96]
            mem[448] = mem[_3784]
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = msg.sender
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.0x2d65f489 with:
                    gas gas_remaining wei
                   args address(arg1), msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3848 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[480] = 1 == mem[_3848]
            mem[mem[64] + 4] = arg1
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.0x5a8e1ca9 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3880 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[416] = mem[_3880]
            mem[mem[64] + 4] = arg1
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.0xc25d0bab with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3912 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3912] == mem[_3912 + 12 len 20]
            mem[128] = mem[_3912 + 12 len 20]
            require ext_code.size(arg1)
            staticcall arg1.value() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3944 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[608] = mem[_3944]
            if mem[416] != 1:
                mem[mem[64]] = 32
                mem[mem[64] + 32] = arg1
                mem[mem[64] + 64] = mem[140 len 20]
                mem[mem[64] + 96] = 576
                _4030 = mem[ceil32(return_data.size) + 672]
                mem[mem[64] + 608] = mem[ceil32(return_data.size) + 672]
                mem[mem[64] + 640 len ceil32(_4030)] = mem[ceil32(return_data.size) + 704 len ceil32(_4030)]
                if ceil32(_4030) <= _4030:
                    mem[mem[64] + 128] = ceil32(_4030) + 608
                    mem[ceil32(_4030) + mem[64] + 640] = _1719
                    mem[ceil32(_4030) + mem[64] + 672 len ceil32(_1719)] = mem[_1715 + ceil32(return_data.size) + 32 len ceil32(_1719)]
                    if ceil32(_1719) > _1719:
                        mem[ceil32(_4030) + mem[64] + _1719 + 672] = 0
                    mem[mem[64] + 160] = mem[224]
                    mem[mem[64] + 192] = mem[256]
                    mem[mem[64] + 224] = 1
                    mem[mem[64] + 256] = mem[320]
                    mem[mem[64] + 288] = mem[352]
                    mem[mem[64] + 320] = mem[384]
                    mem[mem[64] + 352] = mem[416]
                    mem[mem[64] + 384] = mem[448]
                    mem[mem[64] + 416] = bool(mem[480])
                    mem[mem[64] + 448] = bool(mem[512])
                    mem[mem[64] + 480] = mem[544]
                    mem[mem[64] + 512] = bool(mem[576])
                    mem[mem[64] + 576] = 0
                    return 32, address(arg1), 
                           mem[mem[64] + 64],
                           576,
                           ceil32(_4030) + 608,
                           mem[mem[64] + 160 len 64],
                           1,
                           mem[mem[64] + 256 len 192],
                           bool(mem[512]),
                           mem[mem[64] + 480],
                           bool(mem[576]),
                           mem[608],
                           0,
                           mem[mem[64] + 608 len ceil32(_4030) + 32],
                           _1719,
                           mem[mem[64] + ceil32(_4030) + 672 len ceil32(_1719)]
                mem[mem[64] + _4030 + 640] = 0
                mem[mem[64] + 128] = ceil32(_4030) + 608
                mem[ceil32(_4030) + mem[64] + 640] = _1719
                mem[ceil32(_4030) + mem[64] + 672 len ceil32(_1719)] = mem[_1715 + ceil32(return_data.size) + 32 len ceil32(_1719)]
                if ceil32(_1719) > _1719:
                    mem[ceil32(_4030) + mem[64] + _1719 + 672] = 0
                mem[mem[64] + 160] = mem[224]
                mem[mem[64] + 192] = mem[256]
                mem[mem[64] + 224] = 1
                mem[mem[64] + 256] = mem[320]
                mem[mem[64] + 288] = mem[352]
                mem[mem[64] + 320] = mem[384]
                mem[mem[64] + 352] = mem[416]
                mem[mem[64] + 384] = mem[448]
                mem[mem[64] + 416] = bool(mem[480])
                mem[mem[64] + 448] = bool(mem[512])
                mem[mem[64] + 480] = mem[544]
                mem[mem[64] + 512] = bool(mem[576])
                mem[mem[64] + 576] = 0
                return 32, address(arg1), 
                       mem[mem[64] + 64],
                       576,
                       ceil32(_4030) + 608,
                       mem[mem[64] + 160 len 64],
                       1,
                       mem[mem[64] + 256 len 192],
                       bool(mem[512]),
                       mem[mem[64] + 480],
                       bool(mem[576]),
                       mem[608],
                       0,
                       mem[mem[64] + 608 len _4030 + 32],
                       0,
                       mem[mem[64] + _4030 + 672 len ceil32(_1719) + ceil32(_4030) - _4030]
            mem[mem[64] + 4] = arg1
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.0x739a8827 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3998 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[640] = mem[_3998]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = mem[140 len 20]
            mem[mem[64] + 96] = 576
            _4101 = mem[ceil32(return_data.size) + 672]
            mem[mem[64] + 608] = mem[ceil32(return_data.size) + 672]
            mem[mem[64] + 640 len ceil32(_4101)] = mem[ceil32(return_data.size) + 704 len ceil32(_4101)]
            if ceil32(_4101) <= _4101:
                mem[mem[64] + 128] = ceil32(_4101) + 608
                mem[ceil32(_4101) + mem[64] + 640] = _1719
                mem[ceil32(_4101) + mem[64] + 672 len ceil32(_1719)] = mem[_1715 + ceil32(return_data.size) + 32 len ceil32(_1719)]
                if ceil32(_1719) > _1719:
                    mem[ceil32(_4101) + mem[64] + _1719 + 672] = 0
                mem[mem[64] + 160] = mem[224]
                mem[mem[64] + 192] = mem[256]
                mem[mem[64] + 224] = 1
                mem[mem[64] + 256] = mem[320]
                mem[mem[64] + 288] = mem[352]
                mem[mem[64] + 320] = mem[384]
                mem[mem[64] + 352] = mem[416]
                mem[mem[64] + 384] = mem[448]
                mem[mem[64] + 416] = bool(mem[480])
                mem[mem[64] + 448] = bool(mem[512])
                mem[mem[64] + 480] = mem[544]
                mem[mem[64] + 512] = bool(mem[576])
                mem[mem[64] + 544] = mem[608]
                mem[mem[64] + 576] = mem[640]
                return 32, address(arg1), 
                       mem[mem[64] + 64],
                       576,
                       ceil32(_4101) + 608,
                       mem[mem[64] + 160 len 64],
                       1,
                       mem[mem[64] + 256 len 256],
                       bool(mem[576]),
                       mem[608],
                       mem[640],
                       mem[mem[64] + 608 len ceil32(_4101) + 32],
                       _1719,
                       mem[mem[64] + ceil32(_4101) + 672 len ceil32(_1719)]
            mem[mem[64] + _4101 + 640] = 0
            mem[mem[64] + 128] = ceil32(_4101) + 608
            mem[ceil32(_4101) + mem[64] + 640] = _1719
            mem[ceil32(_4101) + mem[64] + 672 len ceil32(_1719)] = mem[_1715 + ceil32(return_data.size) + 32 len ceil32(_1719)]
            if ceil32(_1719) > _1719:
                mem[ceil32(_4101) + mem[64] + _1719 + 672] = 0
            mem[mem[64] + 160] = mem[224]
            mem[mem[64] + 192] = mem[256]
            mem[mem[64] + 224] = 1
            mem[mem[64] + 256] = mem[320]
            mem[mem[64] + 288] = mem[352]
            mem[mem[64] + 320] = mem[384]
            mem[mem[64] + 352] = mem[416]
            mem[mem[64] + 384] = mem[448]
            mem[mem[64] + 416] = bool(mem[480])
            mem[mem[64] + 448] = bool(mem[512])
            mem[mem[64] + 480] = mem[544]
            mem[mem[64] + 512] = bool(mem[576])
            mem[mem[64] + 544] = mem[608]
            mem[mem[64] + 576] = mem[640]
            return 32, address(arg1), 
                   mem[mem[64] + 64],
                   576,
                   ceil32(_4101) + 608,
                   mem[mem[64] + 160 len 64],
                   1,
                   mem[mem[64] + 256 len 256],
                   bool(mem[576]),
                   mem[608],
                   mem[640],
                   mem[mem[64] + 608 len _4101 + 32],
                   0,
                   mem[mem[64] + _4101 + 672 len ceil32(_1719) + ceil32(_4101) - _4101]
        mem[288] = 0
        require ext_code.size(arg1)
        staticcall arg1.ended() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3505 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_3505] == bool(mem[_3505])
        mem[576] = bool(mem[_3505])
        mem[mem[64] + 4] = 1
        require ext_code.size(arg1)
        staticcall arg1.proposals(uint256 rg1) with:
                gas gas_remaining wei
               args 1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3537 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[320] = mem[_3537]
        mem[mem[64] + 4] = 2
        require ext_code.size(arg1)
        staticcall arg1.proposals(uint256 rg1) with:
                gas gas_remaining wei
               args 2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3569 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[352] = mem[_3569]
        mem[mem[64] + 4] = arg1
        require ext_code.size(governanceAddress)
        staticcall governanceAddress.0x1d62ebd9 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3601 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[384] = mem[_3601]
        mem[96] = arg1
        require ext_code.size(arg1)
        staticcall arg1.voters(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3633 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _3641 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        mem[_3641] = mem[_3633]
        require mem[_3633 + 32] == bool(mem[_3633 + 32])
        mem[_3641 + 32] = mem[_3633 + 32]
        require mem[_3633 + 64] == mem[_3633 + 76 len 20]
        mem[_3641 + 64] = mem[_3633 + 64]
        mem[_3641 + 96] = mem[_3633 + 96]
        mem[512] = bool(mem[_3641 + 32])
        require ext_code.size(arg1)
        staticcall arg1.voters(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3705 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _3713 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        mem[_3713] = mem[_3705]
        require mem[_3705 + 32] == bool(mem[_3705 + 32])
        mem[_3713 + 32] = mem[_3705 + 32]
        require mem[_3705 + 64] == mem[_3705 + 76 len 20]
        mem[_3713 + 64] = mem[_3705 + 64]
        mem[_3713 + 96] = mem[_3705 + 96]
        mem[544] = mem[_3713 + 96]
        require ext_code.size(arg1)
        staticcall arg1.voters(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3777 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _3785 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        mem[_3785] = mem[_3777]
        require mem[_3777 + 32] == bool(mem[_3777 + 32])
        mem[_3785 + 32] = mem[_3777 + 32]
        require mem[_3777 + 64] == mem[_3777 + 76 len 20]
        mem[_3785 + 64] = mem[_3777 + 64]
        mem[_3785 + 96] = mem[_3777 + 96]
        mem[448] = mem[_3785]
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = msg.sender
        require ext_code.size(governanceAddress)
        staticcall governanceAddress.0x2d65f489 with:
                gas gas_remaining wei
               args address(arg1), msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3849 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[480] = 1 == mem[_3849]
        mem[mem[64] + 4] = arg1
        require ext_code.size(governanceAddress)
        staticcall governanceAddress.0x5a8e1ca9 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3881 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[416] = mem[_3881]
        mem[mem[64] + 4] = arg1
        require ext_code.size(governanceAddress)
        staticcall governanceAddress.0xc25d0bab with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3913 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_3913] == mem[_3913 + 12 len 20]
        mem[128] = mem[_3913 + 12 len 20]
        require ext_code.size(arg1)
        staticcall arg1.value() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3945 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[608] = mem[_3945]
        if mem[416] != 1:
            mem[mem[64]] = 32
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = mem[140 len 20]
            mem[mem[64] + 96] = 576
            _4031 = mem[ceil32(return_data.size) + 672]
            mem[mem[64] + 608] = mem[ceil32(return_data.size) + 672]
            mem[mem[64] + 640 len ceil32(_4031)] = mem[ceil32(return_data.size) + 704 len ceil32(_4031)]
            if ceil32(_4031) <= _4031:
                mem[mem[64] + 128] = ceil32(_4031) + 608
                mem[ceil32(_4031) + mem[64] + 640] = _1719
                mem[ceil32(_4031) + mem[64] + 672 len ceil32(_1719)] = mem[_1715 + ceil32(return_data.size) + 32 len ceil32(_1719)]
                if ceil32(_1719) > _1719:
                    mem[ceil32(_4031) + mem[64] + _1719 + 672] = 0
                mem[mem[64] + 160] = mem[224]
                mem[mem[64] + 192] = mem[256]
                mem[mem[64] + 224] = 0
                mem[mem[64] + 256] = mem[320]
                mem[mem[64] + 288] = mem[352]
                mem[mem[64] + 320] = mem[384]
                mem[mem[64] + 352] = mem[416]
                mem[mem[64] + 384] = mem[448]
                mem[mem[64] + 416] = bool(mem[480])
                mem[mem[64] + 448] = bool(mem[512])
                mem[mem[64] + 480] = mem[544]
                mem[mem[64] + 512] = bool(mem[576])
                mem[mem[64] + 576] = 0
                return 32, address(arg1), 
                       mem[mem[64] + 64],
                       576,
                       ceil32(_4031) + 608,
                       mem[mem[64] + 160 len 64],
                       0,
                       mem[mem[64] + 256 len 192],
                       bool(mem[512]),
                       mem[mem[64] + 480],
                       bool(mem[576]),
                       mem[608],
                       0,
                       mem[mem[64] + 608 len ceil32(_4031) + 32],
                       _1719,
                       mem[mem[64] + ceil32(_4031) + 672 len ceil32(_1719)]
            mem[mem[64] + _4031 + 640] = 0
            mem[mem[64] + 128] = ceil32(_4031) + 608
            mem[ceil32(_4031) + mem[64] + 640] = _1719
            mem[ceil32(_4031) + mem[64] + 672 len ceil32(_1719)] = mem[_1715 + ceil32(return_data.size) + 32 len ceil32(_1719)]
            if ceil32(_1719) > _1719:
                mem[ceil32(_4031) + mem[64] + _1719 + 672] = 0
            mem[mem[64] + 160] = mem[224]
            mem[mem[64] + 192] = mem[256]
            mem[mem[64] + 224] = 0
            mem[mem[64] + 256] = mem[320]
            mem[mem[64] + 288] = mem[352]
            mem[mem[64] + 320] = mem[384]
            mem[mem[64] + 352] = mem[416]
            mem[mem[64] + 384] = mem[448]
            mem[mem[64] + 416] = bool(mem[480])
            mem[mem[64] + 448] = bool(mem[512])
            mem[mem[64] + 480] = mem[544]
            mem[mem[64] + 512] = bool(mem[576])
            mem[mem[64] + 576] = 0
            return 32, address(arg1), 
                   mem[mem[64] + 64],
                   576,
                   ceil32(_4031) + 608,
                   mem[mem[64] + 160 len 64],
                   0,
                   mem[mem[64] + 256 len 192],
                   bool(mem[512]),
                   mem[mem[64] + 480],
                   bool(mem[576]),
                   mem[608],
                   0,
                   mem[mem[64] + 608 len _4031 + 32],
                   0,
                   mem[mem[64] + _4031 + 672 len ceil32(_1719) + ceil32(_4031) - _4031]
        mem[mem[64] + 4] = arg1
        require ext_code.size(governanceAddress)
        staticcall governanceAddress.0x739a8827 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3999 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[640] = mem[_3999]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = arg1
        mem[mem[64] + 64] = mem[140 len 20]
        mem[mem[64] + 96] = 576
        _4103 = mem[ceil32(return_data.size) + 672]
        mem[mem[64] + 608] = mem[ceil32(return_data.size) + 672]
        mem[mem[64] + 640 len ceil32(_4103)] = mem[ceil32(return_data.size) + 704 len ceil32(_4103)]
        if ceil32(_4103) <= _4103:
            mem[mem[64] + 128] = ceil32(_4103) + 608
            mem[ceil32(_4103) + mem[64] + 640] = _1719
            mem[ceil32(_4103) + mem[64] + 672 len ceil32(_1719)] = mem[_1715 + ceil32(return_data.size) + 32 len ceil32(_1719)]
            if ceil32(_1719) > _1719:
                mem[ceil32(_4103) + mem[64] + _1719 + 672] = 0
            mem[mem[64] + 160] = mem[224]
            mem[mem[64] + 192] = mem[256]
            mem[mem[64] + 224] = 0
            mem[mem[64] + 256] = mem[320]
            mem[mem[64] + 288] = mem[352]
            mem[mem[64] + 320] = mem[384]
            mem[mem[64] + 352] = mem[416]
            mem[mem[64] + 384] = mem[448]
            mem[mem[64] + 416] = bool(mem[480])
            mem[mem[64] + 448] = bool(mem[512])
            mem[mem[64] + 480] = mem[544]
            mem[mem[64] + 512] = bool(mem[576])
            mem[mem[64] + 544] = mem[608]
            mem[mem[64] + 576] = mem[640]
            return 32, address(arg1), 
                   mem[mem[64] + 64],
                   576,
                   ceil32(_4103) + 608,
                   mem[mem[64] + 160 len 64],
                   0,
                   mem[mem[64] + 256 len 256],
                   bool(mem[576]),
                   mem[608],
                   mem[640],
                   mem[mem[64] + 608 len ceil32(_4103) + 32],
                   _1719,
                   mem[mem[64] + ceil32(_4103) + 672 len ceil32(_1719)]
        mem[mem[64] + _4103 + 640] = 0
        mem[mem[64] + 128] = ceil32(_4103) + 608
        mem[ceil32(_4103) + mem[64] + 640] = _1719
        mem[ceil32(_4103) + mem[64] + 672 len ceil32(_1719)] = mem[_1715 + ceil32(return_data.size) + 32 len ceil32(_1719)]
        if ceil32(_1719) > _1719:
            mem[ceil32(_4103) + mem[64] + _1719 + 672] = 0
        mem[mem[64] + 160] = mem[224]
        mem[mem[64] + 192] = mem[256]
        mem[mem[64] + 224] = 0
        mem[mem[64] + 256] = mem[320]
        mem[mem[64] + 288] = mem[352]
        mem[mem[64] + 320] = mem[384]
        mem[mem[64] + 352] = mem[416]
        mem[mem[64] + 384] = mem[448]
        mem[mem[64] + 416] = bool(mem[480])
        mem[mem[64] + 448] = bool(mem[512])
        mem[mem[64] + 480] = mem[544]
        mem[mem[64] + 512] = bool(mem[576])
        mem[mem[64] + 544] = mem[608]
        mem[mem[64] + 576] = mem[640]
        return 32, address(arg1), 
               mem[mem[64] + 64],
               576,
               ceil32(_4103) + 608,
               mem[mem[64] + 160 len 64],
               0,
               mem[mem[64] + 256 len 256],
               bool(mem[576]),
               mem[608],
               mem[640],
               mem[mem[64] + 608 len _4103 + 32],
               0,
               mem[mem[64] + _4103 + 672 len ceil32(_1719) + ceil32(_4103) - _4103]
    mem[_1715 + ceil32(return_data.size) + _1719 + 32] = 0
    mem[192] = _1715 + ceil32(return_data.size)
    require ext_code.size(arg1)
    staticcall arg1.createTime() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3449 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[224] = mem[_3449]
    require ext_code.size(arg1)
    staticcall arg1.endBlockNumber() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3465 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[256] = mem[_3465]
    require ext_code.size(arg1)
    staticcall arg1.endBlockNumber() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3481 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if block.number > mem[_3481]:
        mem[288] = 1
        require ext_code.size(arg1)
        staticcall arg1.ended() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3508 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_3508] == bool(mem[_3508])
        mem[576] = bool(mem[_3508])
        mem[mem[64] + 4] = 1
        require ext_code.size(arg1)
        staticcall arg1.proposals(uint256 rg1) with:
                gas gas_remaining wei
               args 1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3540 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[320] = mem[_3540]
        mem[mem[64] + 4] = 2
        require ext_code.size(arg1)
        staticcall arg1.proposals(uint256 rg1) with:
                gas gas_remaining wei
               args 2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3572 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[352] = mem[_3572]
        mem[mem[64] + 4] = arg1
        require ext_code.size(governanceAddress)
        staticcall governanceAddress.0x1d62ebd9 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3604 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[384] = mem[_3604]
        mem[96] = arg1
        require ext_code.size(arg1)
        staticcall arg1.voters(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3636 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _3644 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        mem[_3644] = mem[_3636]
        require mem[_3636 + 32] == bool(mem[_3636 + 32])
        mem[_3644 + 32] = mem[_3636 + 32]
        require mem[_3636 + 64] == mem[_3636 + 76 len 20]
        mem[_3644 + 64] = mem[_3636 + 64]
        mem[_3644 + 96] = mem[_3636 + 96]
        mem[512] = bool(mem[_3644 + 32])
        require ext_code.size(arg1)
        staticcall arg1.voters(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3708 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _3716 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        mem[_3716] = mem[_3708]
        require mem[_3708 + 32] == bool(mem[_3708 + 32])
        mem[_3716 + 32] = mem[_3708 + 32]
        require mem[_3708 + 64] == mem[_3708 + 76 len 20]
        mem[_3716 + 64] = mem[_3708 + 64]
        mem[_3716 + 96] = mem[_3708 + 96]
        mem[544] = mem[_3716 + 96]
        require ext_code.size(arg1)
        staticcall arg1.voters(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3780 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _3788 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        mem[_3788] = mem[_3780]
        require mem[_3780 + 32] == bool(mem[_3780 + 32])
        mem[_3788 + 32] = mem[_3780 + 32]
        require mem[_3780 + 64] == mem[_3780 + 76 len 20]
        mem[_3788 + 64] = mem[_3780 + 64]
        mem[_3788 + 96] = mem[_3780 + 96]
        mem[448] = mem[_3788]
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = msg.sender
        require ext_code.size(governanceAddress)
        staticcall governanceAddress.0x2d65f489 with:
                gas gas_remaining wei
               args address(arg1), msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3852 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[480] = 1 == mem[_3852]
        mem[mem[64] + 4] = arg1
        require ext_code.size(governanceAddress)
        staticcall governanceAddress.0x5a8e1ca9 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3884 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[416] = mem[_3884]
        mem[mem[64] + 4] = arg1
        require ext_code.size(governanceAddress)
        staticcall governanceAddress.0xc25d0bab with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3916 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_3916] == mem[_3916 + 12 len 20]
        mem[128] = mem[_3916 + 12 len 20]
        require ext_code.size(arg1)
        staticcall arg1.value() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3948 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[608] = mem[_3948]
        if mem[416] != 1:
            mem[mem[64]] = 32
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = mem[140 len 20]
            mem[mem[64] + 96] = 576
            _4040 = mem[ceil32(return_data.size) + 672]
            mem[mem[64] + 608] = mem[ceil32(return_data.size) + 672]
            mem[mem[64] + 640 len ceil32(_4040)] = mem[ceil32(return_data.size) + 704 len ceil32(_4040)]
            if ceil32(_4040) <= _4040:
                mem[mem[64] + 128] = ceil32(_4040) + 608
                mem[ceil32(_4040) + mem[64] + 640] = _1719
                mem[ceil32(_4040) + mem[64] + 672 len ceil32(_1719)] = mem[_1715 + ceil32(return_data.size) + 32 len ceil32(_1719)]
                if ceil32(_1719) > _1719:
                    mem[ceil32(_4040) + mem[64] + _1719 + 672] = 0
                mem[mem[64] + 160] = mem[224]
                mem[mem[64] + 192] = mem[256]
                mem[mem[64] + 224] = 1
                mem[mem[64] + 256] = mem[320]
                mem[mem[64] + 288] = mem[352]
                mem[mem[64] + 320] = mem[384]
                mem[mem[64] + 352] = mem[416]
                mem[mem[64] + 384] = mem[448]
                mem[mem[64] + 416] = bool(mem[480])
                mem[mem[64] + 448] = bool(mem[512])
                mem[mem[64] + 480] = mem[544]
                mem[mem[64] + 512] = bool(mem[576])
                mem[mem[64] + 576] = 0
                return 32, address(arg1), 
                       mem[mem[64] + 64],
                       576,
                       ceil32(_4040) + 608,
                       mem[mem[64] + 160 len 64],
                       1,
                       mem[mem[64] + 256 len 192],
                       bool(mem[512]),
                       mem[mem[64] + 480],
                       bool(mem[576]),
                       mem[608],
                       0,
                       mem[mem[64] + 608 len ceil32(_4040) + 32],
                       _1719,
                       mem[mem[64] + ceil32(_4040) + 672 len ceil32(_1719)]
            mem[mem[64] + _4040 + 640] = 0
            mem[mem[64] + 128] = ceil32(_4040) + 608
            mem[ceil32(_4040) + mem[64] + 640] = _1719
            mem[ceil32(_4040) + mem[64] + 672 len ceil32(_1719)] = mem[_1715 + ceil32(return_data.size) + 32 len ceil32(_1719)]
            if ceil32(_1719) > _1719:
                mem[ceil32(_4040) + mem[64] + _1719 + 672] = 0
            mem[mem[64] + 160] = mem[224]
            mem[mem[64] + 192] = mem[256]
            mem[mem[64] + 224] = 1
            mem[mem[64] + 256] = mem[320]
            mem[mem[64] + 288] = mem[352]
            mem[mem[64] + 320] = mem[384]
            mem[mem[64] + 352] = mem[416]
            mem[mem[64] + 384] = mem[448]
            mem[mem[64] + 416] = bool(mem[480])
            mem[mem[64] + 448] = bool(mem[512])
            mem[mem[64] + 480] = mem[544]
            mem[mem[64] + 512] = bool(mem[576])
            mem[mem[64] + 576] = 0
            return 32, address(arg1), 
                   mem[mem[64] + 64],
                   576,
                   ceil32(_4040) + 608,
                   mem[mem[64] + 160 len 64],
                   1,
                   mem[mem[64] + 256 len 192],
                   bool(mem[512]),
                   mem[mem[64] + 480],
                   bool(mem[576]),
                   mem[608],
                   0,
                   mem[mem[64] + 608 len _4040 + 32],
                   0,
                   mem[mem[64] + _4040 + 672 len ceil32(_1719) + ceil32(_4040) - _4040]
        mem[mem[64] + 4] = arg1
        require ext_code.size(governanceAddress)
        staticcall governanceAddress.0x739a8827 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4008 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[640] = mem[_4008]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = arg1
        mem[mem[64] + 64] = mem[140 len 20]
        mem[mem[64] + 96] = 576
        _4115 = mem[ceil32(return_data.size) + 672]
        mem[mem[64] + 608] = mem[ceil32(return_data.size) + 672]
        mem[mem[64] + 640 len ceil32(_4115)] = mem[ceil32(return_data.size) + 704 len ceil32(_4115)]
        if ceil32(_4115) <= _4115:
            mem[mem[64] + 128] = ceil32(_4115) + 608
            mem[ceil32(_4115) + mem[64] + 640] = _1719
            mem[ceil32(_4115) + mem[64] + 672 len ceil32(_1719)] = mem[_1715 + ceil32(return_data.size) + 32 len ceil32(_1719)]
            if ceil32(_1719) > _1719:
                mem[ceil32(_4115) + mem[64] + _1719 + 672] = 0
            mem[mem[64] + 160] = mem[224]
            mem[mem[64] + 192] = mem[256]
            mem[mem[64] + 224] = 1
            mem[mem[64] + 256] = mem[320]
            mem[mem[64] + 288] = mem[352]
            mem[mem[64] + 320] = mem[384]
            mem[mem[64] + 352] = mem[416]
            mem[mem[64] + 384] = mem[448]
            mem[mem[64] + 416] = bool(mem[480])
            mem[mem[64] + 448] = bool(mem[512])
            mem[mem[64] + 480] = mem[544]
            mem[mem[64] + 512] = bool(mem[576])
            mem[mem[64] + 544] = mem[608]
            mem[mem[64] + 576] = mem[640]
            return 32, address(arg1), 
                   mem[mem[64] + 64],
                   576,
                   ceil32(_4115) + 608,
                   mem[mem[64] + 160 len 64],
                   1,
                   mem[mem[64] + 256 len 256],
                   bool(mem[576]),
                   mem[608],
                   mem[640],
                   mem[mem[64] + 608 len ceil32(_4115) + 32],
                   _1719,
                   mem[mem[64] + ceil32(_4115) + 672 len ceil32(_1719)]
        mem[mem[64] + _4115 + 640] = 0
        mem[mem[64] + 128] = ceil32(_4115) + 608
        mem[ceil32(_4115) + mem[64] + 640] = _1719
        mem[ceil32(_4115) + mem[64] + 672 len ceil32(_1719)] = mem[_1715 + ceil32(return_data.size) + 32 len ceil32(_1719)]
        if ceil32(_1719) > _1719:
            mem[ceil32(_4115) + mem[64] + _1719 + 672] = 0
        mem[mem[64] + 160] = mem[224]
        mem[mem[64] + 192] = mem[256]
        mem[mem[64] + 224] = 1
        mem[mem[64] + 256] = mem[320]
        mem[mem[64] + 288] = mem[352]
        mem[mem[64] + 320] = mem[384]
        mem[mem[64] + 352] = mem[416]
        mem[mem[64] + 384] = mem[448]
        mem[mem[64] + 416] = bool(mem[480])
        mem[mem[64] + 448] = bool(mem[512])
        mem[mem[64] + 480] = mem[544]
        mem[mem[64] + 512] = bool(mem[576])
        mem[mem[64] + 544] = mem[608]
        mem[mem[64] + 576] = mem[640]
        return 32, address(arg1), 
               mem[mem[64] + 64],
               576,
               ceil32(_4115) + 608,
               mem[mem[64] + 160 len 64],
               1,
               mem[mem[64] + 256 len 256],
               bool(mem[576]),
               mem[608],
               mem[640],
               mem[mem[64] + 608 len _4115 + 32],
               0,
               mem[mem[64] + _4115 + 672 len ceil32(_1719) + ceil32(_4115) - _4115]
    mem[288] = 0
    require ext_code.size(arg1)
    staticcall arg1.ended() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3509 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_3509] == bool(mem[_3509])
    mem[576] = bool(mem[_3509])
    mem[mem[64] + 4] = 1
    require ext_code.size(arg1)
    staticcall arg1.proposals(uint256 rg1) with:
            gas gas_remaining wei
           args 1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3541 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[320] = mem[_3541]
    mem[mem[64] + 4] = 2
    require ext_code.size(arg1)
    staticcall arg1.proposals(uint256 rg1) with:
            gas gas_remaining wei
           args 2
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3573 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[352] = mem[_3573]
    mem[mem[64] + 4] = arg1
    require ext_code.size(governanceAddress)
    staticcall governanceAddress.0x1d62ebd9 with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3605 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[384] = mem[_3605]
    mem[96] = arg1
    require ext_code.size(arg1)
    staticcall arg1.voters(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3637 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    _3645 = mem[64]
    require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
    mem[64] = mem[64] + 128
    mem[_3645] = mem[_3637]
    require mem[_3637 + 32] == bool(mem[_3637 + 32])
    mem[_3645 + 32] = mem[_3637 + 32]
    require mem[_3637 + 64] == mem[_3637 + 76 len 20]
    mem[_3645 + 64] = mem[_3637 + 64]
    mem[_3645 + 96] = mem[_3637 + 96]
    mem[512] = bool(mem[_3645 + 32])
    require ext_code.size(arg1)
    staticcall arg1.voters(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3709 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    _3717 = mem[64]
    require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
    mem[64] = mem[64] + 128
    mem[_3717] = mem[_3709]
    require mem[_3709 + 32] == bool(mem[_3709 + 32])
    mem[_3717 + 32] = mem[_3709 + 32]
    require mem[_3709 + 64] == mem[_3709 + 76 len 20]
    mem[_3717 + 64] = mem[_3709 + 64]
    mem[_3717 + 96] = mem[_3709 + 96]
    mem[544] = mem[_3717 + 96]
    require ext_code.size(arg1)
    staticcall arg1.voters(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3781 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    _3789 = mem[64]
    require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
    mem[64] = mem[64] + 128
    mem[_3789] = mem[_3781]
    require mem[_3781 + 32] == bool(mem[_3781 + 32])
    mem[_3789 + 32] = mem[_3781 + 32]
    require mem[_3781 + 64] == mem[_3781 + 76 len 20]
    mem[_3789 + 64] = mem[_3781 + 64]
    mem[_3789 + 96] = mem[_3781 + 96]
    mem[448] = mem[_3789]
    mem[mem[64] + 4] = arg1
    mem[mem[64] + 36] = msg.sender
    require ext_code.size(governanceAddress)
    staticcall governanceAddress.0x2d65f489 with:
            gas gas_remaining wei
           args address(arg1), msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3853 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[480] = 1 == mem[_3853]
    mem[mem[64] + 4] = arg1
    require ext_code.size(governanceAddress)
    staticcall governanceAddress.0x5a8e1ca9 with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3885 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[416] = mem[_3885]
    mem[mem[64] + 4] = arg1
    require ext_code.size(governanceAddress)
    staticcall governanceAddress.0xc25d0bab with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3917 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_3917] == mem[_3917 + 12 len 20]
    mem[128] = mem[_3917 + 12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.value() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3949 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[608] = mem[_3949]
    if mem[416] != 1:
        mem[mem[64]] = 32
        mem[mem[64] + 32] = arg1
        mem[mem[64] + 64] = mem[140 len 20]
        mem[mem[64] + 96] = 576
        _4041 = mem[ceil32(return_data.size) + 672]
        mem[mem[64] + 608] = mem[ceil32(return_data.size) + 672]
        mem[mem[64] + 640 len ceil32(_4041)] = mem[ceil32(return_data.size) + 704 len ceil32(_4041)]
        if ceil32(_4041) <= _4041:
            mem[mem[64] + 128] = ceil32(_4041) + 608
            mem[ceil32(_4041) + mem[64] + 640] = _1719
            mem[ceil32(_4041) + mem[64] + 672 len ceil32(_1719)] = mem[_1715 + ceil32(return_data.size) + 32 len ceil32(_1719)]
            if ceil32(_1719) > _1719:
                mem[ceil32(_4041) + mem[64] + _1719 + 672] = 0
            mem[mem[64] + 160] = mem[224]
            mem[mem[64] + 192] = mem[256]
            mem[mem[64] + 224] = 0
            mem[mem[64] + 256] = mem[320]
            mem[mem[64] + 288] = mem[352]
            mem[mem[64] + 320] = mem[384]
            mem[mem[64] + 352] = mem[416]
            mem[mem[64] + 384] = mem[448]
            mem[mem[64] + 416] = bool(mem[480])
            mem[mem[64] + 448] = bool(mem[512])
            mem[mem[64] + 480] = mem[544]
            mem[mem[64] + 512] = bool(mem[576])
            mem[mem[64] + 576] = 0
            return 32, address(arg1), 
                   mem[mem[64] + 64],
                   576,
                   ceil32(_4041) + 608,
                   mem[mem[64] + 160 len 64],
                   0,
                   mem[mem[64] + 256 len 192],
                   bool(mem[512]),
                   mem[mem[64] + 480],
                   bool(mem[576]),
                   mem[608],
                   0,
                   mem[mem[64] + 608 len ceil32(_4041) + 32],
                   _1719,
                   mem[mem[64] + ceil32(_4041) + 672 len ceil32(_1719)]
        mem[mem[64] + _4041 + 640] = 0
        mem[mem[64] + 128] = ceil32(_4041) + 608
        mem[ceil32(_4041) + mem[64] + 640] = _1719
        mem[ceil32(_4041) + mem[64] + 672 len ceil32(_1719)] = mem[_1715 + ceil32(return_data.size) + 32 len ceil32(_1719)]
        if ceil32(_1719) > _1719:
            mem[ceil32(_4041) + mem[64] + _1719 + 672] = 0
        mem[mem[64] + 160] = mem[224]
        mem[mem[64] + 192] = mem[256]
        mem[mem[64] + 224] = 0
        mem[mem[64] + 256] = mem[320]
        mem[mem[64] + 288] = mem[352]
        mem[mem[64] + 320] = mem[384]
        mem[mem[64] + 352] = mem[416]
        mem[mem[64] + 384] = mem[448]
        mem[mem[64] + 416] = bool(mem[480])
        mem[mem[64] + 448] = bool(mem[512])
        mem[mem[64] + 480] = mem[544]
        mem[mem[64] + 512] = bool(mem[576])
        mem[mem[64] + 576] = 0
        return 32, address(arg1), 
               mem[mem[64] + 64],
               576,
               ceil32(_4041) + 608,
               mem[mem[64] + 160 len 64],
               0,
               mem[mem[64] + 256 len 192],
               bool(mem[512]),
               mem[mem[64] + 480],
               bool(mem[576]),
               mem[608],
               0,
               mem[mem[64] + 608 len _4041 + 32],
               0,
               mem[mem[64] + _4041 + 672 len ceil32(_1719) + ceil32(_4041) - _4041]
    mem[mem[64] + 4] = arg1
    require ext_code.size(governanceAddress)
    staticcall governanceAddress.0x739a8827 with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _4009 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[640] = mem[_4009]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = arg1
    mem[mem[64] + 64] = mem[140 len 20]
    mem[mem[64] + 96] = 576
    _4117 = mem[ceil32(return_data.size) + 672]
    mem[mem[64] + 608] = mem[ceil32(return_data.size) + 672]
    mem[mem[64] + 640 len ceil32(_4117)] = mem[ceil32(return_data.size) + 704 len ceil32(_4117)]
    if ceil32(_4117) <= _4117:
        mem[mem[64] + 128] = ceil32(_4117) + 608
        mem[ceil32(_4117) + mem[64] + 640] = _1719
        mem[ceil32(_4117) + mem[64] + 672 len ceil32(_1719)] = mem[_1715 + ceil32(return_data.size) + 32 len ceil32(_1719)]
        if ceil32(_1719) > _1719:
            mem[ceil32(_4117) + mem[64] + _1719 + 672] = 0
        mem[mem[64] + 160] = mem[224]
        mem[mem[64] + 192] = mem[256]
        mem[mem[64] + 224] = 0
        mem[mem[64] + 256] = mem[320]
        mem[mem[64] + 288] = mem[352]
        mem[mem[64] + 320] = mem[384]
        mem[mem[64] + 352] = mem[416]
        mem[mem[64] + 384] = mem[448]
        mem[mem[64] + 416] = bool(mem[480])
        mem[mem[64] + 448] = bool(mem[512])
        mem[mem[64] + 480] = mem[544]
        mem[mem[64] + 512] = bool(mem[576])
        mem[mem[64] + 544] = mem[608]
        mem[mem[64] + 576] = mem[640]
        return 32, address(arg1), 
               mem[mem[64] + 64],
               576,
               ceil32(_4117) + 608,
               mem[mem[64] + 160 len 64],
               0,
               mem[mem[64] + 256 len 256],
               bool(mem[576]),
               mem[608],
               mem[640],
               mem[mem[64] + 608 len ceil32(_4117) + 32],
               _1719,
               mem[mem[64] + ceil32(_4117) + 672 len ceil32(_1719)]
    mem[mem[64] + _4117 + 640] = 0
    mem[mem[64] + 128] = ceil32(_4117) + 608
    mem[ceil32(_4117) + mem[64] + 640] = _1719
    mem[ceil32(_4117) + mem[64] + 672 len ceil32(_1719)] = mem[_1715 + ceil32(return_data.size) + 32 len ceil32(_1719)]
    if ceil32(_1719) > _1719:
        mem[ceil32(_4117) + mem[64] + _1719 + 672] = 0
    mem[mem[64] + 160] = mem[224]
    mem[mem[64] + 192] = mem[256]
    mem[mem[64] + 224] = 0
    mem[mem[64] + 256] = mem[320]
    mem[mem[64] + 288] = mem[352]
    mem[mem[64] + 320] = mem[384]
    mem[mem[64] + 352] = mem[416]
    mem[mem[64] + 384] = mem[448]
    mem[mem[64] + 416] = bool(mem[480])
    mem[mem[64] + 448] = bool(mem[512])
    mem[mem[64] + 480] = mem[544]
    mem[mem[64] + 512] = bool(mem[576])
    mem[mem[64] + 544] = mem[608]
    mem[mem[64] + 576] = mem[640]
    return 32, address(arg1), 
           mem[mem[64] + 64],
           576,
           ceil32(_4117) + 608,
           mem[mem[64] + 160 len 64],
           0,
           mem[mem[64] + 256 len 256],
           bool(mem[576]),
           mem[608],
           mem[640],
           mem[mem[64] + 608 len _4117 + 32],
           0,
           mem[mem[64] + _4117 + 672 len ceil32(_1719) + ceil32(_4117) - _4117]
}

function queryProposalList() payable {
    require ext_code.size(governanceAddress)
    staticcall governanceAddress.0xc0030032 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= test266151307()
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.0x5c632b38 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1358 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1363 = mem[_1358]
            require mem[_1358] == mem[_1358 + 12 len 20]
            _1375 = mem[64]
            mem[64] = mem[64] + 576
            mem[_1375] = 0
            mem[_1375 + 32] = 0
            mem[_1375 + 64] = 96
            mem[_1375 + 96] = 96
            mem[_1375 + 128] = 0
            mem[_1375 + 160] = 0
            mem[_1375 + 192] = 0
            mem[_1375 + 224] = 0
            mem[_1375 + 256] = 0
            mem[_1375 + 288] = 0
            mem[_1375 + 320] = 0
            mem[_1375 + 352] = 0
            mem[_1375 + 384] = 0
            mem[_1375 + 416] = 0
            mem[_1375 + 448] = 0
            mem[_1375 + 480] = 0
            mem[_1375 + 512] = 0
            mem[_1375 + 544] = 0
            mem[mem[64]] = 0xa59a98c00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_1363))
            staticcall address(_1363).subject() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1380 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1384 = mem[_1380]
            require mem[_1380] <= test266151307()
            require _1380 + mem[_1380] + 31 < _1380 + return_data.size
            _1391 = mem[_1380 + mem[_1380]]
            require mem[_1380 + mem[_1380]] <= test266151307()
            require ceil32(mem[_1380 + mem[_1380]]) + 32 >= 0 and _1380 + ceil32(return_data.size) + ceil32(mem[_1380 + mem[_1380]]) + 32 <= test266151307()
            mem[64] = _1380 + ceil32(return_data.size) + ceil32(mem[_1380 + mem[_1380]]) + 32
            mem[_1380 + ceil32(return_data.size)] = _1391
            require _1384 + _1391 + 32 <= return_data.size
            s = 0
            while s < _1391:
                mem[s + _1380 + ceil32(return_data.size) + 32] = mem[s + _1380 + _1384 + 32]
                s = s + 32
                continue 
            if ceil32(_1391) <= _1391:
                mem[_1375 + 64] = _1380 + ceil32(return_data.size)
                mem[mem[64]] = 0x8a4d5a6700000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1363))
                staticcall address(_1363).content() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2712 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2717 = mem[_2712]
                require mem[_2712] <= test266151307()
                require _2712 + mem[_2712] + 31 < _2712 + return_data.size
                _2722 = mem[_2712 + mem[_2712]]
                require mem[_2712 + mem[_2712]] <= test266151307()
                require ceil32(mem[_2712 + mem[_2712]]) + 32 >= 0 and _2712 + ceil32(return_data.size) + ceil32(mem[_2712 + mem[_2712]]) + 32 <= test266151307()
                mem[64] = _2712 + ceil32(return_data.size) + ceil32(mem[_2712 + mem[_2712]]) + 32
                mem[_2712 + ceil32(return_data.size)] = _2722
                require _2717 + _2722 + 32 <= return_data.size
                s = 0
                while s < _2722:
                    mem[s + _2712 + ceil32(return_data.size) + 32] = mem[s + _2712 + _2717 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2722) <= _2722:
                    mem[_1375 + 96] = _2712 + ceil32(return_data.size)
                    require ext_code.size(address(_1363))
                    staticcall address(_1363).createTime() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4054 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_1375 + 128] = mem[_4054]
                    require ext_code.size(address(_1363))
                    staticcall address(_1363).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4080 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_1375 + 160] = mem[_4080]
                    require ext_code.size(address(_1363))
                    staticcall address(_1363).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4138 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.number > mem[_4138]:
                        mem[_1375 + 192] = 1
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4188 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4188] == bool(mem[_4188])
                        mem[_1375 + 480] = bool(mem[_4188])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4261 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 224] = mem[_4261]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4319 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 256] = mem[_4319]
                        mem[mem[64] + 4] = address(_1363)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x1d62ebd9 with:
                                gas gas_remaining wei
                               args address(_1363)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4354 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 288] = mem[_4354]
                        mem[_1375] = address(_1363)
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4399 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4418 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4418] = mem[_4399]
                        require mem[_4399 + 32] == bool(mem[_4399 + 32])
                        mem[_4418 + 32] = mem[_4399 + 32]
                        require mem[_4399 + 64] == mem[_4399 + 76 len 20]
                        mem[_4418 + 64] = mem[_4399 + 64]
                        mem[_4418 + 96] = mem[_4399 + 96]
                        mem[_1375 + 416] = bool(mem[_4418 + 32])
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4512 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4538 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4538] = mem[_4512]
                        require mem[_4512 + 32] == bool(mem[_4512 + 32])
                        mem[_4538 + 32] = mem[_4512 + 32]
                        require mem[_4512 + 64] == mem[_4512 + 76 len 20]
                        mem[_4538 + 64] = mem[_4512 + 64]
                        mem[_4538 + 96] = mem[_4512 + 96]
                        mem[_1375 + 448] = mem[_4538 + 96]
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4650 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4670 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4670] = mem[_4650]
                        require mem[_4650 + 32] == bool(mem[_4650 + 32])
                        mem[_4670 + 32] = mem[_4650 + 32]
                        require mem[_4650 + 64] == mem[_4650 + 76 len 20]
                        mem[_4670 + 64] = mem[_4650 + 64]
                        mem[_4670 + 96] = mem[_4650 + 96]
                        mem[_1375 + 352] = mem[_4670]
                        mem[mem[64] + 4] = address(_1363)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x2d65f489 with:
                                gas gas_remaining wei
                               args address(_1363), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4786 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 384] = 1 == mem[_4786]
                        mem[mem[64] + 4] = address(_1363)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x5a8e1ca9 with:
                                gas gas_remaining wei
                               args address(_1363)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4842 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 320] = mem[_4842]
                        mem[mem[64] + 4] = address(_1363)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0xc25d0bab with:
                                gas gas_remaining wei
                               args address(_1363)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4920 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4920] == mem[_4920 + 12 len 20]
                        mem[_1375 + 32] = mem[_4920 + 12 len 20]
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4984 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 512] = mem[_4984]
                        if 1 == mem[_1375 + 320]:
                            mem[mem[64] + 4] = address(_1363)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.0x739a8827 with:
                                    gas gas_remaining wei
                                   args address(_1363)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5082 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1375 + 544] = mem[_5082]
                    else:
                        mem[_1375 + 192] = 0
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4189 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4189] == bool(mem[_4189])
                        mem[_1375 + 480] = bool(mem[_4189])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4262 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 224] = mem[_4262]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4320 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 256] = mem[_4320]
                        mem[mem[64] + 4] = address(_1363)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x1d62ebd9 with:
                                gas gas_remaining wei
                               args address(_1363)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4355 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 288] = mem[_4355]
                        mem[_1375] = address(_1363)
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4400 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4419 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4419] = mem[_4400]
                        require mem[_4400 + 32] == bool(mem[_4400 + 32])
                        mem[_4419 + 32] = mem[_4400 + 32]
                        require mem[_4400 + 64] == mem[_4400 + 76 len 20]
                        mem[_4419 + 64] = mem[_4400 + 64]
                        mem[_4419 + 96] = mem[_4400 + 96]
                        mem[_1375 + 416] = bool(mem[_4419 + 32])
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4513 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4539 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4539] = mem[_4513]
                        require mem[_4513 + 32] == bool(mem[_4513 + 32])
                        mem[_4539 + 32] = mem[_4513 + 32]
                        require mem[_4513 + 64] == mem[_4513 + 76 len 20]
                        mem[_4539 + 64] = mem[_4513 + 64]
                        mem[_4539 + 96] = mem[_4513 + 96]
                        mem[_1375 + 448] = mem[_4539 + 96]
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4651 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4671 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4671] = mem[_4651]
                        require mem[_4651 + 32] == bool(mem[_4651 + 32])
                        mem[_4671 + 32] = mem[_4651 + 32]
                        require mem[_4651 + 64] == mem[_4651 + 76 len 20]
                        mem[_4671 + 64] = mem[_4651 + 64]
                        mem[_4671 + 96] = mem[_4651 + 96]
                        mem[_1375 + 352] = mem[_4671]
                        mem[mem[64] + 4] = address(_1363)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x2d65f489 with:
                                gas gas_remaining wei
                               args address(_1363), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4787 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 384] = 1 == mem[_4787]
                        mem[mem[64] + 4] = address(_1363)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x5a8e1ca9 with:
                                gas gas_remaining wei
                               args address(_1363)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4843 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 320] = mem[_4843]
                        mem[mem[64] + 4] = address(_1363)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0xc25d0bab with:
                                gas gas_remaining wei
                               args address(_1363)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4921 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4921] == mem[_4921 + 12 len 20]
                        mem[_1375 + 32] = mem[_4921 + 12 len 20]
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4985 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 512] = mem[_4985]
                        if 1 == mem[_1375 + 320]:
                            mem[mem[64] + 4] = address(_1363)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.0x739a8827 with:
                                    gas gas_remaining wei
                                   args address(_1363)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5083 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1375 + 544] = mem[_5083]
                else:
                    mem[_2712 + ceil32(return_data.size) + _2722 + 32] = 0
                    mem[_1375 + 96] = _2712 + ceil32(return_data.size)
                    require ext_code.size(address(_1363))
                    staticcall address(_1363).createTime() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4057 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_1375 + 128] = mem[_4057]
                    require ext_code.size(address(_1363))
                    staticcall address(_1363).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4089 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_1375 + 160] = mem[_4089]
                    require ext_code.size(address(_1363))
                    staticcall address(_1363).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4144 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.number > mem[_4144]:
                        mem[_1375 + 192] = 1
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4193 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4193] == bool(mem[_4193])
                        mem[_1375 + 480] = bool(mem[_4193])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4270 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 224] = mem[_4270]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4324 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 256] = mem[_4324]
                        mem[mem[64] + 4] = address(_1363)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x1d62ebd9 with:
                                gas gas_remaining wei
                               args address(_1363)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4359 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 288] = mem[_4359]
                        mem[_1375] = address(_1363)
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4405 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4425 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4425] = mem[_4405]
                        require mem[_4405 + 32] == bool(mem[_4405 + 32])
                        mem[_4425 + 32] = mem[_4405 + 32]
                        require mem[_4405 + 64] == mem[_4405 + 76 len 20]
                        mem[_4425 + 64] = mem[_4405 + 64]
                        mem[_4425 + 96] = mem[_4405 + 96]
                        mem[_1375 + 416] = bool(mem[_4425 + 32])
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4524 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4546 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4546] = mem[_4524]
                        require mem[_4524 + 32] == bool(mem[_4524 + 32])
                        mem[_4546 + 32] = mem[_4524 + 32]
                        require mem[_4524 + 64] == mem[_4524 + 76 len 20]
                        mem[_4546 + 64] = mem[_4524 + 64]
                        mem[_4546 + 96] = mem[_4524 + 96]
                        mem[_1375 + 448] = mem[_4546 + 96]
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4658 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4678 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4678] = mem[_4658]
                        require mem[_4658 + 32] == bool(mem[_4658 + 32])
                        mem[_4678 + 32] = mem[_4658 + 32]
                        require mem[_4658 + 64] == mem[_4658 + 76 len 20]
                        mem[_4678 + 64] = mem[_4658 + 64]
                        mem[_4678 + 96] = mem[_4658 + 96]
                        mem[_1375 + 352] = mem[_4678]
                        mem[mem[64] + 4] = address(_1363)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x2d65f489 with:
                                gas gas_remaining wei
                               args address(_1363), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4794 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 384] = 1 == mem[_4794]
                        mem[mem[64] + 4] = address(_1363)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x5a8e1ca9 with:
                                gas gas_remaining wei
                               args address(_1363)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4852 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 320] = mem[_4852]
                        mem[mem[64] + 4] = address(_1363)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0xc25d0bab with:
                                gas gas_remaining wei
                               args address(_1363)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4930 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4930] == mem[_4930 + 12 len 20]
                        mem[_1375 + 32] = mem[_4930 + 12 len 20]
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4998 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 512] = mem[_4998]
                        if 1 == mem[_1375 + 320]:
                            mem[mem[64] + 4] = address(_1363)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.0x739a8827 with:
                                    gas gas_remaining wei
                                   args address(_1363)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5090 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1375 + 544] = mem[_5090]
                    else:
                        mem[_1375 + 192] = 0
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4194 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4194] == bool(mem[_4194])
                        mem[_1375 + 480] = bool(mem[_4194])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4271 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 224] = mem[_4271]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4325 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 256] = mem[_4325]
                        mem[mem[64] + 4] = address(_1363)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x1d62ebd9 with:
                                gas gas_remaining wei
                               args address(_1363)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4360 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 288] = mem[_4360]
                        mem[_1375] = address(_1363)
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4406 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4426 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4426] = mem[_4406]
                        require mem[_4406 + 32] == bool(mem[_4406 + 32])
                        mem[_4426 + 32] = mem[_4406 + 32]
                        require mem[_4406 + 64] == mem[_4406 + 76 len 20]
                        mem[_4426 + 64] = mem[_4406 + 64]
                        mem[_4426 + 96] = mem[_4406 + 96]
                        mem[_1375 + 416] = bool(mem[_4426 + 32])
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4525 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4547 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4547] = mem[_4525]
                        require mem[_4525 + 32] == bool(mem[_4525 + 32])
                        mem[_4547 + 32] = mem[_4525 + 32]
                        require mem[_4525 + 64] == mem[_4525 + 76 len 20]
                        mem[_4547 + 64] = mem[_4525 + 64]
                        mem[_4547 + 96] = mem[_4525 + 96]
                        mem[_1375 + 448] = mem[_4547 + 96]
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4659 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4679 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4679] = mem[_4659]
                        require mem[_4659 + 32] == bool(mem[_4659 + 32])
                        mem[_4679 + 32] = mem[_4659 + 32]
                        require mem[_4659 + 64] == mem[_4659 + 76 len 20]
                        mem[_4679 + 64] = mem[_4659 + 64]
                        mem[_4679 + 96] = mem[_4659 + 96]
                        mem[_1375 + 352] = mem[_4679]
                        mem[mem[64] + 4] = address(_1363)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x2d65f489 with:
                                gas gas_remaining wei
                               args address(_1363), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4795 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 384] = 1 == mem[_4795]
                        mem[mem[64] + 4] = address(_1363)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x5a8e1ca9 with:
                                gas gas_remaining wei
                               args address(_1363)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4853 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 320] = mem[_4853]
                        mem[mem[64] + 4] = address(_1363)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0xc25d0bab with:
                                gas gas_remaining wei
                               args address(_1363)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4931 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4931] == mem[_4931 + 12 len 20]
                        mem[_1375 + 32] = mem[_4931 + 12 len 20]
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4999 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 512] = mem[_4999]
                        if 1 == mem[_1375 + 320]:
                            mem[mem[64] + 4] = address(_1363)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.0x739a8827 with:
                                    gas gas_remaining wei
                                   args address(_1363)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5091 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1375 + 544] = mem[_5091]
            else:
                mem[_1380 + ceil32(return_data.size) + _1391 + 32] = 0
                mem[_1375 + 64] = _1380 + ceil32(return_data.size)
                mem[mem[64]] = 0x8a4d5a6700000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1363))
                staticcall address(_1363).content() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2714 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2719 = mem[_2714]
                require mem[_2714] <= test266151307()
                require _2714 + mem[_2714] + 31 < _2714 + return_data.size
                _2724 = mem[_2714 + mem[_2714]]
                require mem[_2714 + mem[_2714]] <= test266151307()
                require ceil32(mem[_2714 + mem[_2714]]) + 32 >= 0 and _2714 + ceil32(return_data.size) + ceil32(mem[_2714 + mem[_2714]]) + 32 <= test266151307()
                mem[64] = _2714 + ceil32(return_data.size) + ceil32(mem[_2714 + mem[_2714]]) + 32
                mem[_2714 + ceil32(return_data.size)] = _2724
                require _2719 + _2724 + 32 <= return_data.size
                s = 0
                while s < _2724:
                    mem[s + _2714 + ceil32(return_data.size) + 32] = mem[s + _2714 + _2719 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2724) <= _2724:
                    mem[_1375 + 96] = _2714 + ceil32(return_data.size)
                    require ext_code.size(address(_1363))
                    staticcall address(_1363).createTime() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4055 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_1375 + 128] = mem[_4055]
                    require ext_code.size(address(_1363))
                    staticcall address(_1363).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4081 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_1375 + 160] = mem[_4081]
                    require ext_code.size(address(_1363))
                    staticcall address(_1363).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4139 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.number > mem[_4139]:
                        mem[_1375 + 192] = 1
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4190 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4190] == bool(mem[_4190])
                        mem[_1375 + 480] = bool(mem[_4190])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4263 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 224] = mem[_4263]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4321 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 256] = mem[_4321]
                        mem[mem[64] + 4] = address(_1363)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x1d62ebd9 with:
                                gas gas_remaining wei
                               args address(_1363)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4356 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 288] = mem[_4356]
                        mem[_1375] = address(_1363)
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4401 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4420 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4420] = mem[_4401]
                        require mem[_4401 + 32] == bool(mem[_4401 + 32])
                        mem[_4420 + 32] = mem[_4401 + 32]
                        require mem[_4401 + 64] == mem[_4401 + 76 len 20]
                        mem[_4420 + 64] = mem[_4401 + 64]
                        mem[_4420 + 96] = mem[_4401 + 96]
                        mem[_1375 + 416] = bool(mem[_4420 + 32])
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4514 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4540 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4540] = mem[_4514]
                        require mem[_4514 + 32] == bool(mem[_4514 + 32])
                        mem[_4540 + 32] = mem[_4514 + 32]
                        require mem[_4514 + 64] == mem[_4514 + 76 len 20]
                        mem[_4540 + 64] = mem[_4514 + 64]
                        mem[_4540 + 96] = mem[_4514 + 96]
                        mem[_1375 + 448] = mem[_4540 + 96]
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4652 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4672 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4672] = mem[_4652]
                        require mem[_4652 + 32] == bool(mem[_4652 + 32])
                        mem[_4672 + 32] = mem[_4652 + 32]
                        require mem[_4652 + 64] == mem[_4652 + 76 len 20]
                        mem[_4672 + 64] = mem[_4652 + 64]
                        mem[_4672 + 96] = mem[_4652 + 96]
                        mem[_1375 + 352] = mem[_4672]
                        mem[mem[64] + 4] = address(_1363)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x2d65f489 with:
                                gas gas_remaining wei
                               args address(_1363), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4788 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 384] = 1 == mem[_4788]
                        mem[mem[64] + 4] = address(_1363)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x5a8e1ca9 with:
                                gas gas_remaining wei
                               args address(_1363)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4844 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 320] = mem[_4844]
                        mem[mem[64] + 4] = address(_1363)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0xc25d0bab with:
                                gas gas_remaining wei
                               args address(_1363)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4922 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4922] == mem[_4922 + 12 len 20]
                        mem[_1375 + 32] = mem[_4922 + 12 len 20]
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4986 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 512] = mem[_4986]
                        if 1 == mem[_1375 + 320]:
                            mem[mem[64] + 4] = address(_1363)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.0x739a8827 with:
                                    gas gas_remaining wei
                                   args address(_1363)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5084 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1375 + 544] = mem[_5084]
                    else:
                        mem[_1375 + 192] = 0
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4191 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4191] == bool(mem[_4191])
                        mem[_1375 + 480] = bool(mem[_4191])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4264 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 224] = mem[_4264]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4322 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 256] = mem[_4322]
                        mem[mem[64] + 4] = address(_1363)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x1d62ebd9 with:
                                gas gas_remaining wei
                               args address(_1363)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4357 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 288] = mem[_4357]
                        mem[_1375] = address(_1363)
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4402 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4421 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4421] = mem[_4402]
                        require mem[_4402 + 32] == bool(mem[_4402 + 32])
                        mem[_4421 + 32] = mem[_4402 + 32]
                        require mem[_4402 + 64] == mem[_4402 + 76 len 20]
                        mem[_4421 + 64] = mem[_4402 + 64]
                        mem[_4421 + 96] = mem[_4402 + 96]
                        mem[_1375 + 416] = bool(mem[_4421 + 32])
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4515 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4541 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4541] = mem[_4515]
                        require mem[_4515 + 32] == bool(mem[_4515 + 32])
                        mem[_4541 + 32] = mem[_4515 + 32]
                        require mem[_4515 + 64] == mem[_4515 + 76 len 20]
                        mem[_4541 + 64] = mem[_4515 + 64]
                        mem[_4541 + 96] = mem[_4515 + 96]
                        mem[_1375 + 448] = mem[_4541 + 96]
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4653 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4673 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4673] = mem[_4653]
                        require mem[_4653 + 32] == bool(mem[_4653 + 32])
                        mem[_4673 + 32] = mem[_4653 + 32]
                        require mem[_4653 + 64] == mem[_4653 + 76 len 20]
                        mem[_4673 + 64] = mem[_4653 + 64]
                        mem[_4673 + 96] = mem[_4653 + 96]
                        mem[_1375 + 352] = mem[_4673]
                        mem[mem[64] + 4] = address(_1363)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x2d65f489 with:
                                gas gas_remaining wei
                               args address(_1363), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4789 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 384] = 1 == mem[_4789]
                        mem[mem[64] + 4] = address(_1363)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x5a8e1ca9 with:
                                gas gas_remaining wei
                               args address(_1363)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4845 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 320] = mem[_4845]
                        mem[mem[64] + 4] = address(_1363)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0xc25d0bab with:
                                gas gas_remaining wei
                               args address(_1363)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4923 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4923] == mem[_4923 + 12 len 20]
                        mem[_1375 + 32] = mem[_4923 + 12 len 20]
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4987 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 512] = mem[_4987]
                        if 1 == mem[_1375 + 320]:
                            mem[mem[64] + 4] = address(_1363)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.0x739a8827 with:
                                    gas gas_remaining wei
                                   args address(_1363)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5085 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1375 + 544] = mem[_5085]
                else:
                    mem[_2714 + ceil32(return_data.size) + _2724 + 32] = 0
                    mem[_1375 + 96] = _2714 + ceil32(return_data.size)
                    require ext_code.size(address(_1363))
                    staticcall address(_1363).createTime() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4058 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_1375 + 128] = mem[_4058]
                    require ext_code.size(address(_1363))
                    staticcall address(_1363).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4090 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_1375 + 160] = mem[_4090]
                    require ext_code.size(address(_1363))
                    staticcall address(_1363).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4145 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.number > mem[_4145]:
                        mem[_1375 + 192] = 1
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4195 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4195] == bool(mem[_4195])
                        mem[_1375 + 480] = bool(mem[_4195])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4272 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 224] = mem[_4272]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4326 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 256] = mem[_4326]
                        mem[mem[64] + 4] = address(_1363)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x1d62ebd9 with:
                                gas gas_remaining wei
                               args address(_1363)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4361 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 288] = mem[_4361]
                        mem[_1375] = address(_1363)
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4407 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4427 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4427] = mem[_4407]
                        require mem[_4407 + 32] == bool(mem[_4407 + 32])
                        mem[_4427 + 32] = mem[_4407 + 32]
                        require mem[_4407 + 64] == mem[_4407 + 76 len 20]
                        mem[_4427 + 64] = mem[_4407 + 64]
                        mem[_4427 + 96] = mem[_4407 + 96]
                        mem[_1375 + 416] = bool(mem[_4427 + 32])
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4526 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4548 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4548] = mem[_4526]
                        require mem[_4526 + 32] == bool(mem[_4526 + 32])
                        mem[_4548 + 32] = mem[_4526 + 32]
                        require mem[_4526 + 64] == mem[_4526 + 76 len 20]
                        mem[_4548 + 64] = mem[_4526 + 64]
                        mem[_4548 + 96] = mem[_4526 + 96]
                        mem[_1375 + 448] = mem[_4548 + 96]
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4660 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4680 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4680] = mem[_4660]
                        require mem[_4660 + 32] == bool(mem[_4660 + 32])
                        mem[_4680 + 32] = mem[_4660 + 32]
                        require mem[_4660 + 64] == mem[_4660 + 76 len 20]
                        mem[_4680 + 64] = mem[_4660 + 64]
                        mem[_4680 + 96] = mem[_4660 + 96]
                        mem[_1375 + 352] = mem[_4680]
                        mem[mem[64] + 4] = address(_1363)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x2d65f489 with:
                                gas gas_remaining wei
                               args address(_1363), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4796 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 384] = 1 == mem[_4796]
                        mem[mem[64] + 4] = address(_1363)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x5a8e1ca9 with:
                                gas gas_remaining wei
                               args address(_1363)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4854 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 320] = mem[_4854]
                        mem[mem[64] + 4] = address(_1363)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0xc25d0bab with:
                                gas gas_remaining wei
                               args address(_1363)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4932 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4932] == mem[_4932 + 12 len 20]
                        mem[_1375 + 32] = mem[_4932 + 12 len 20]
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5000 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 512] = mem[_5000]
                        if 1 == mem[_1375 + 320]:
                            mem[mem[64] + 4] = address(_1363)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.0x739a8827 with:
                                    gas gas_remaining wei
                                   args address(_1363)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5092 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1375 + 544] = mem[_5092]
                    else:
                        mem[_1375 + 192] = 0
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4196 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4196] == bool(mem[_4196])
                        mem[_1375 + 480] = bool(mem[_4196])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4273 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 224] = mem[_4273]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4327 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 256] = mem[_4327]
                        mem[mem[64] + 4] = address(_1363)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x1d62ebd9 with:
                                gas gas_remaining wei
                               args address(_1363)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4362 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 288] = mem[_4362]
                        mem[_1375] = address(_1363)
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4408 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4428 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4428] = mem[_4408]
                        require mem[_4408 + 32] == bool(mem[_4408 + 32])
                        mem[_4428 + 32] = mem[_4408 + 32]
                        require mem[_4408 + 64] == mem[_4408 + 76 len 20]
                        mem[_4428 + 64] = mem[_4408 + 64]
                        mem[_4428 + 96] = mem[_4408 + 96]
                        mem[_1375 + 416] = bool(mem[_4428 + 32])
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4527 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4549 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4549] = mem[_4527]
                        require mem[_4527 + 32] == bool(mem[_4527 + 32])
                        mem[_4549 + 32] = mem[_4527 + 32]
                        require mem[_4527 + 64] == mem[_4527 + 76 len 20]
                        mem[_4549 + 64] = mem[_4527 + 64]
                        mem[_4549 + 96] = mem[_4527 + 96]
                        mem[_1375 + 448] = mem[_4549 + 96]
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4661 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4681 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4681] = mem[_4661]
                        require mem[_4661 + 32] == bool(mem[_4661 + 32])
                        mem[_4681 + 32] = mem[_4661 + 32]
                        require mem[_4661 + 64] == mem[_4661 + 76 len 20]
                        mem[_4681 + 64] = mem[_4661 + 64]
                        mem[_4681 + 96] = mem[_4661 + 96]
                        mem[_1375 + 352] = mem[_4681]
                        mem[mem[64] + 4] = address(_1363)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x2d65f489 with:
                                gas gas_remaining wei
                               args address(_1363), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4797 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 384] = 1 == mem[_4797]
                        mem[mem[64] + 4] = address(_1363)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x5a8e1ca9 with:
                                gas gas_remaining wei
                               args address(_1363)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4855 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 320] = mem[_4855]
                        mem[mem[64] + 4] = address(_1363)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0xc25d0bab with:
                                gas gas_remaining wei
                               args address(_1363)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4933 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4933] == mem[_4933 + 12 len 20]
                        mem[_1375 + 32] = mem[_4933 + 12 len 20]
                        require ext_code.size(address(_1363))
                        staticcall address(_1363).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5001 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1375 + 512] = mem[_5001]
                        if 1 == mem[_1375 + 320]:
                            mem[mem[64] + 4] = address(_1363)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.0x739a8827 with:
                                    gas gas_remaining wei
                                   args address(_1363)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5093 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1375 + 544] = mem[_5093]
            require ext_call.return_data[0] + -idx - 1 < mem[ceil32(return_data.size) + 96]
            mem[(32 * ext_call.return_data[0] + -idx - 1) + ceil32(return_data.size) + 128] = _1375
            idx = idx + 1
            continue 
        _1355 = mem[64]
        mem[mem[64]] = 32
        _1357 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        u = mem[64] + (32 * _1357) + 64
        while idx < _1357:
            mem[t] = u + -_1355 - 64
            _2701 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            mem[u + 32] = mem[_2701 + 44 len 20]
            _2711 = mem[_2701 + 64]
            mem[u + 64] = 576
            _2713 = mem[_2711]
            mem[u + 576] = mem[_2711]
            v = 0
            while v < _2713:
                mem[v + u + 608] = mem[v + _2711 + 32]
                v = v + 32
                continue 
            if ceil32(_2713) <= _2713:
                _4040 = mem[_2701 + 96]
                mem[u + 96] = ceil32(_2713) + 608
                _4046 = mem[_4040]
                mem[ceil32(_2713) + u + 608] = mem[_4040]
                v = 0
                while v < _4046:
                    mem[v + ceil32(_2713) + u + 640] = mem[v + _4040 + 32]
                    v = v + 32
                    continue 
                if ceil32(_4046) > _4046:
                    mem[ceil32(_2713) + u + _4046 + 640] = 0
                mem[u + 128] = mem[_2701 + 128]
                mem[u + 160] = mem[_2701 + 160]
                mem[u + 192] = bool(mem[_2701 + 192])
                mem[u + 224] = mem[_2701 + 224]
                mem[u + 256] = mem[_2701 + 256]
                mem[u + 288] = mem[_2701 + 288]
                mem[u + 320] = mem[_2701 + 320]
                mem[u + 352] = mem[_2701 + 352]
                mem[u + 384] = bool(mem[_2701 + 384])
                mem[u + 416] = bool(mem[_2701 + 416])
                mem[u + 448] = mem[_2701 + 448]
                mem[u + 480] = bool(mem[_2701 + 480])
                mem[u + 512] = mem[_2701 + 512]
                mem[u + 544] = mem[_2701 + 544]
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_4046) + ceil32(_2713) + u + 640
                continue 
            mem[u + _2713 + 608] = 0
            _4047 = mem[_2701 + 96]
            mem[u + 96] = ceil32(_2713) + 608
            _4053 = mem[_4047]
            mem[ceil32(_2713) + u + 608] = mem[_4047]
            v = 0
            while v < _4053:
                mem[v + ceil32(_2713) + u + 640] = mem[v + _4047 + 32]
                v = v + 32
                continue 
            if ceil32(_4053) > _4053:
                mem[ceil32(_2713) + u + _4053 + 640] = 0
            mem[u + 128] = mem[_2701 + 128]
            mem[u + 160] = mem[_2701 + 160]
            mem[u + 192] = bool(mem[_2701 + 192])
            mem[u + 224] = mem[_2701 + 224]
            mem[u + 256] = mem[_2701 + 256]
            mem[u + 288] = mem[_2701 + 288]
            mem[u + 320] = mem[_2701 + 320]
            mem[u + 352] = mem[_2701 + 352]
            mem[u + 384] = bool(mem[_2701 + 384])
            mem[u + 416] = bool(mem[_2701 + 416])
            mem[u + 448] = mem[_2701 + 448]
            mem[u + 480] = bool(mem[_2701 + 480])
            mem[u + 512] = mem[_2701 + 512]
            mem[u + 544] = mem[_2701 + 544]
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_4053) + ceil32(_2713) + u + 640
            continue 
    else:
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 704
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 96
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 96
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 288] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 320] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 352] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 384] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 416] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 448] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 480] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 512] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 544] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 576] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 608] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 640] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 672] = 0
        mem[var13001] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
        s = var13001
        idx = var13002
        while idx - 1:
            mem[64] = mem[64] + 576
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 96
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 96
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 288] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 320] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 352] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 384] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 416] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 448] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 480] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 512] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 544] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 576] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 608] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 640] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 672] = 0
            mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.0x5c632b38 with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4052 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4061 = mem[_4052]
            require mem[_4052] == mem[_4052 + 12 len 20]
            _4103 = mem[64]
            mem[64] = mem[64] + 576
            mem[_4103] = 0
            mem[_4103 + 32] = 0
            mem[_4103 + 64] = 96
            mem[_4103 + 96] = 96
            mem[_4103 + 128] = 0
            mem[_4103 + 160] = 0
            mem[_4103 + 192] = 0
            mem[_4103 + 224] = 0
            mem[_4103 + 256] = 0
            mem[_4103 + 288] = 0
            mem[_4103 + 320] = 0
            mem[_4103 + 352] = 0
            mem[_4103 + 384] = 0
            mem[_4103 + 416] = 0
            mem[_4103 + 448] = 0
            mem[_4103 + 480] = 0
            mem[_4103 + 512] = 0
            mem[_4103 + 544] = 0
            mem[mem[64]] = 0xa59a98c00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_4061))
            staticcall address(_4061).subject() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4140 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4153 = mem[_4140]
            require mem[_4140] <= test266151307()
            require _4140 + mem[_4140] + 31 < _4140 + return_data.size
            _4167 = mem[_4140 + mem[_4140]]
            require mem[_4140 + mem[_4140]] <= test266151307()
            require ceil32(mem[_4140 + mem[_4140]]) + 32 >= 0 and _4140 + ceil32(return_data.size) + ceil32(mem[_4140 + mem[_4140]]) + 32 <= test266151307()
            mem[64] = _4140 + ceil32(return_data.size) + ceil32(mem[_4140 + mem[_4140]]) + 32
            mem[_4140 + ceil32(return_data.size)] = _4167
            require _4153 + _4167 + 32 <= return_data.size
            s = 0
            while s < _4167:
                mem[s + _4140 + ceil32(return_data.size) + 32] = mem[s + _4140 + _4153 + 32]
                s = s + 32
                continue 
            if ceil32(_4167) <= _4167:
                mem[_4103 + 64] = _4140 + ceil32(return_data.size)
                mem[mem[64]] = 0x8a4d5a6700000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_4061))
                staticcall address(_4061).content() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5384 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _5401 = mem[_5384]
                require mem[_5384] <= test266151307()
                require _5384 + mem[_5384] + 31 < _5384 + return_data.size
                _5410 = mem[_5384 + mem[_5384]]
                require mem[_5384 + mem[_5384]] <= test266151307()
                require ceil32(mem[_5384 + mem[_5384]]) + 32 >= 0 and _5384 + ceil32(return_data.size) + ceil32(mem[_5384 + mem[_5384]]) + 32 <= test266151307()
                mem[64] = _5384 + ceil32(return_data.size) + ceil32(mem[_5384 + mem[_5384]]) + 32
                mem[_5384 + ceil32(return_data.size)] = _5410
                require _5401 + _5410 + 32 <= return_data.size
                s = 0
                while s < _5410:
                    mem[s + _5384 + ceil32(return_data.size) + 32] = mem[s + _5384 + _5401 + 32]
                    s = s + 32
                    continue 
                if ceil32(_5410) <= _5410:
                    mem[_4103 + 96] = _5384 + ceil32(return_data.size)
                    require ext_code.size(address(_4061))
                    staticcall address(_4061).createTime() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6081 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_4103 + 128] = mem[_6081]
                    require ext_code.size(address(_4061))
                    staticcall address(_4061).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6102 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_4103 + 160] = mem[_6102]
                    require ext_code.size(address(_4061))
                    staticcall address(_4061).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6154 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.number > mem[_6154]:
                        mem[_4103 + 192] = 1
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6195 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6195] == bool(mem[_6195])
                        mem[_4103 + 480] = bool(mem[_6195])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6227 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 224] = mem[_6227]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6259 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 256] = mem[_6259]
                        mem[mem[64] + 4] = address(_4061)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x1d62ebd9 with:
                                gas gas_remaining wei
                               args address(_4061)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6291 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 288] = mem[_6291]
                        mem[_4103] = address(_4061)
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6323 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6331 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6331] = mem[_6323]
                        require mem[_6323 + 32] == bool(mem[_6323 + 32])
                        mem[_6331 + 32] = mem[_6323 + 32]
                        require mem[_6323 + 64] == mem[_6323 + 76 len 20]
                        mem[_6331 + 64] = mem[_6323 + 64]
                        mem[_6331 + 96] = mem[_6323 + 96]
                        mem[_4103 + 416] = bool(mem[_6331 + 32])
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6395 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6403 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6403] = mem[_6395]
                        require mem[_6395 + 32] == bool(mem[_6395 + 32])
                        mem[_6403 + 32] = mem[_6395 + 32]
                        require mem[_6395 + 64] == mem[_6395 + 76 len 20]
                        mem[_6403 + 64] = mem[_6395 + 64]
                        mem[_6403 + 96] = mem[_6395 + 96]
                        mem[_4103 + 448] = mem[_6403 + 96]
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6467 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6475 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6475] = mem[_6467]
                        require mem[_6467 + 32] == bool(mem[_6467 + 32])
                        mem[_6475 + 32] = mem[_6467 + 32]
                        require mem[_6467 + 64] == mem[_6467 + 76 len 20]
                        mem[_6475 + 64] = mem[_6467 + 64]
                        mem[_6475 + 96] = mem[_6467 + 96]
                        mem[_4103 + 352] = mem[_6475]
                        mem[mem[64] + 4] = address(_4061)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x2d65f489 with:
                                gas gas_remaining wei
                               args address(_4061), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6539 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 384] = 1 == mem[_6539]
                        mem[mem[64] + 4] = address(_4061)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x5a8e1ca9 with:
                                gas gas_remaining wei
                               args address(_4061)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6571 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 320] = mem[_6571]
                        mem[mem[64] + 4] = address(_4061)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0xc25d0bab with:
                                gas gas_remaining wei
                               args address(_4061)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6603 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6603] == mem[_6603 + 12 len 20]
                        mem[_4103 + 32] = mem[_6603 + 12 len 20]
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6635 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 512] = mem[_6635]
                        if 1 == mem[_4103 + 320]:
                            mem[mem[64] + 4] = address(_4061)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.0x739a8827 with:
                                    gas gas_remaining wei
                                   args address(_4061)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6683 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_4103 + 544] = mem[_6683]
                    else:
                        mem[_4103 + 192] = 0
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6196 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6196] == bool(mem[_6196])
                        mem[_4103 + 480] = bool(mem[_6196])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6228 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 224] = mem[_6228]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6260 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 256] = mem[_6260]
                        mem[mem[64] + 4] = address(_4061)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x1d62ebd9 with:
                                gas gas_remaining wei
                               args address(_4061)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6292 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 288] = mem[_6292]
                        mem[_4103] = address(_4061)
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6324 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6332 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6332] = mem[_6324]
                        require mem[_6324 + 32] == bool(mem[_6324 + 32])
                        mem[_6332 + 32] = mem[_6324 + 32]
                        require mem[_6324 + 64] == mem[_6324 + 76 len 20]
                        mem[_6332 + 64] = mem[_6324 + 64]
                        mem[_6332 + 96] = mem[_6324 + 96]
                        mem[_4103 + 416] = bool(mem[_6332 + 32])
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6396 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6404 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6404] = mem[_6396]
                        require mem[_6396 + 32] == bool(mem[_6396 + 32])
                        mem[_6404 + 32] = mem[_6396 + 32]
                        require mem[_6396 + 64] == mem[_6396 + 76 len 20]
                        mem[_6404 + 64] = mem[_6396 + 64]
                        mem[_6404 + 96] = mem[_6396 + 96]
                        mem[_4103 + 448] = mem[_6404 + 96]
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6468 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6476 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6476] = mem[_6468]
                        require mem[_6468 + 32] == bool(mem[_6468 + 32])
                        mem[_6476 + 32] = mem[_6468 + 32]
                        require mem[_6468 + 64] == mem[_6468 + 76 len 20]
                        mem[_6476 + 64] = mem[_6468 + 64]
                        mem[_6476 + 96] = mem[_6468 + 96]
                        mem[_4103 + 352] = mem[_6476]
                        mem[mem[64] + 4] = address(_4061)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x2d65f489 with:
                                gas gas_remaining wei
                               args address(_4061), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6540 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 384] = 1 == mem[_6540]
                        mem[mem[64] + 4] = address(_4061)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x5a8e1ca9 with:
                                gas gas_remaining wei
                               args address(_4061)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6572 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 320] = mem[_6572]
                        mem[mem[64] + 4] = address(_4061)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0xc25d0bab with:
                                gas gas_remaining wei
                               args address(_4061)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6604 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6604] == mem[_6604 + 12 len 20]
                        mem[_4103 + 32] = mem[_6604 + 12 len 20]
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6636 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 512] = mem[_6636]
                        if 1 == mem[_4103 + 320]:
                            mem[mem[64] + 4] = address(_4061)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.0x739a8827 with:
                                    gas gas_remaining wei
                                   args address(_4061)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6684 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_4103 + 544] = mem[_6684]
                else:
                    mem[_5384 + ceil32(return_data.size) + _5410 + 32] = 0
                    mem[_4103 + 96] = _5384 + ceil32(return_data.size)
                    require ext_code.size(address(_4061))
                    staticcall address(_4061).createTime() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6083 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_4103 + 128] = mem[_6083]
                    require ext_code.size(address(_4061))
                    staticcall address(_4061).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6110 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_4103 + 160] = mem[_6110]
                    require ext_code.size(address(_4061))
                    staticcall address(_4061).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6159 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.number > mem[_6159]:
                        mem[_4103 + 192] = 1
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6199 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6199] == bool(mem[_6199])
                        mem[_4103 + 480] = bool(mem[_6199])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6231 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 224] = mem[_6231]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6263 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 256] = mem[_6263]
                        mem[mem[64] + 4] = address(_4061)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x1d62ebd9 with:
                                gas gas_remaining wei
                               args address(_4061)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6295 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 288] = mem[_6295]
                        mem[_4103] = address(_4061)
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6327 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6335 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6335] = mem[_6327]
                        require mem[_6327 + 32] == bool(mem[_6327 + 32])
                        mem[_6335 + 32] = mem[_6327 + 32]
                        require mem[_6327 + 64] == mem[_6327 + 76 len 20]
                        mem[_6335 + 64] = mem[_6327 + 64]
                        mem[_6335 + 96] = mem[_6327 + 96]
                        mem[_4103 + 416] = bool(mem[_6335 + 32])
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6399 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6407 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6407] = mem[_6399]
                        require mem[_6399 + 32] == bool(mem[_6399 + 32])
                        mem[_6407 + 32] = mem[_6399 + 32]
                        require mem[_6399 + 64] == mem[_6399 + 76 len 20]
                        mem[_6407 + 64] = mem[_6399 + 64]
                        mem[_6407 + 96] = mem[_6399 + 96]
                        mem[_4103 + 448] = mem[_6407 + 96]
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6471 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6479 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6479] = mem[_6471]
                        require mem[_6471 + 32] == bool(mem[_6471 + 32])
                        mem[_6479 + 32] = mem[_6471 + 32]
                        require mem[_6471 + 64] == mem[_6471 + 76 len 20]
                        mem[_6479 + 64] = mem[_6471 + 64]
                        mem[_6479 + 96] = mem[_6471 + 96]
                        mem[_4103 + 352] = mem[_6479]
                        mem[mem[64] + 4] = address(_4061)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x2d65f489 with:
                                gas gas_remaining wei
                               args address(_4061), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6543 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 384] = 1 == mem[_6543]
                        mem[mem[64] + 4] = address(_4061)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x5a8e1ca9 with:
                                gas gas_remaining wei
                               args address(_4061)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6575 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 320] = mem[_6575]
                        mem[mem[64] + 4] = address(_4061)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0xc25d0bab with:
                                gas gas_remaining wei
                               args address(_4061)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6607 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6607] == mem[_6607 + 12 len 20]
                        mem[_4103 + 32] = mem[_6607 + 12 len 20]
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6639 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 512] = mem[_6639]
                        if 1 == mem[_4103 + 320]:
                            mem[mem[64] + 4] = address(_4061)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.0x739a8827 with:
                                    gas gas_remaining wei
                                   args address(_4061)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6687 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_4103 + 544] = mem[_6687]
                    else:
                        mem[_4103 + 192] = 0
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6200 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6200] == bool(mem[_6200])
                        mem[_4103 + 480] = bool(mem[_6200])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6232 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 224] = mem[_6232]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6264 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 256] = mem[_6264]
                        mem[mem[64] + 4] = address(_4061)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x1d62ebd9 with:
                                gas gas_remaining wei
                               args address(_4061)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6296 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 288] = mem[_6296]
                        mem[_4103] = address(_4061)
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6328 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6336 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6336] = mem[_6328]
                        require mem[_6328 + 32] == bool(mem[_6328 + 32])
                        mem[_6336 + 32] = mem[_6328 + 32]
                        require mem[_6328 + 64] == mem[_6328 + 76 len 20]
                        mem[_6336 + 64] = mem[_6328 + 64]
                        mem[_6336 + 96] = mem[_6328 + 96]
                        mem[_4103 + 416] = bool(mem[_6336 + 32])
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6400 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6408 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6408] = mem[_6400]
                        require mem[_6400 + 32] == bool(mem[_6400 + 32])
                        mem[_6408 + 32] = mem[_6400 + 32]
                        require mem[_6400 + 64] == mem[_6400 + 76 len 20]
                        mem[_6408 + 64] = mem[_6400 + 64]
                        mem[_6408 + 96] = mem[_6400 + 96]
                        mem[_4103 + 448] = mem[_6408 + 96]
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6472 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6480 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6480] = mem[_6472]
                        require mem[_6472 + 32] == bool(mem[_6472 + 32])
                        mem[_6480 + 32] = mem[_6472 + 32]
                        require mem[_6472 + 64] == mem[_6472 + 76 len 20]
                        mem[_6480 + 64] = mem[_6472 + 64]
                        mem[_6480 + 96] = mem[_6472 + 96]
                        mem[_4103 + 352] = mem[_6480]
                        mem[mem[64] + 4] = address(_4061)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x2d65f489 with:
                                gas gas_remaining wei
                               args address(_4061), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6544 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 384] = 1 == mem[_6544]
                        mem[mem[64] + 4] = address(_4061)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x5a8e1ca9 with:
                                gas gas_remaining wei
                               args address(_4061)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6576 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 320] = mem[_6576]
                        mem[mem[64] + 4] = address(_4061)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0xc25d0bab with:
                                gas gas_remaining wei
                               args address(_4061)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6608 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6608] == mem[_6608 + 12 len 20]
                        mem[_4103 + 32] = mem[_6608 + 12 len 20]
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6640 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 512] = mem[_6640]
                        if 1 == mem[_4103 + 320]:
                            mem[mem[64] + 4] = address(_4061)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.0x739a8827 with:
                                    gas gas_remaining wei
                                   args address(_4061)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6688 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_4103 + 544] = mem[_6688]
            else:
                mem[_4140 + ceil32(return_data.size) + _4167 + 32] = 0
                mem[_4103 + 64] = _4140 + ceil32(return_data.size)
                mem[mem[64]] = 0x8a4d5a6700000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_4061))
                staticcall address(_4061).content() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5398 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _5404 = mem[_5398]
                require mem[_5398] <= test266151307()
                require _5398 + mem[_5398] + 31 < _5398 + return_data.size
                _5415 = mem[_5398 + mem[_5398]]
                require mem[_5398 + mem[_5398]] <= test266151307()
                require ceil32(mem[_5398 + mem[_5398]]) + 32 >= 0 and _5398 + ceil32(return_data.size) + ceil32(mem[_5398 + mem[_5398]]) + 32 <= test266151307()
                mem[64] = _5398 + ceil32(return_data.size) + ceil32(mem[_5398 + mem[_5398]]) + 32
                mem[_5398 + ceil32(return_data.size)] = _5415
                require _5404 + _5415 + 32 <= return_data.size
                s = 0
                while s < _5415:
                    mem[s + _5398 + ceil32(return_data.size) + 32] = mem[s + _5398 + _5404 + 32]
                    s = s + 32
                    continue 
                if ceil32(_5415) <= _5415:
                    mem[_4103 + 96] = _5398 + ceil32(return_data.size)
                    require ext_code.size(address(_4061))
                    staticcall address(_4061).createTime() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6082 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_4103 + 128] = mem[_6082]
                    require ext_code.size(address(_4061))
                    staticcall address(_4061).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6103 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_4103 + 160] = mem[_6103]
                    require ext_code.size(address(_4061))
                    staticcall address(_4061).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6155 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.number > mem[_6155]:
                        mem[_4103 + 192] = 1
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6197 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6197] == bool(mem[_6197])
                        mem[_4103 + 480] = bool(mem[_6197])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6229 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 224] = mem[_6229]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6261 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 256] = mem[_6261]
                        mem[mem[64] + 4] = address(_4061)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x1d62ebd9 with:
                                gas gas_remaining wei
                               args address(_4061)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6293 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 288] = mem[_6293]
                        mem[_4103] = address(_4061)
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6325 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6333 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6333] = mem[_6325]
                        require mem[_6325 + 32] == bool(mem[_6325 + 32])
                        mem[_6333 + 32] = mem[_6325 + 32]
                        require mem[_6325 + 64] == mem[_6325 + 76 len 20]
                        mem[_6333 + 64] = mem[_6325 + 64]
                        mem[_6333 + 96] = mem[_6325 + 96]
                        mem[_4103 + 416] = bool(mem[_6333 + 32])
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6397 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6405 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6405] = mem[_6397]
                        require mem[_6397 + 32] == bool(mem[_6397 + 32])
                        mem[_6405 + 32] = mem[_6397 + 32]
                        require mem[_6397 + 64] == mem[_6397 + 76 len 20]
                        mem[_6405 + 64] = mem[_6397 + 64]
                        mem[_6405 + 96] = mem[_6397 + 96]
                        mem[_4103 + 448] = mem[_6405 + 96]
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6469 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6477 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6477] = mem[_6469]
                        require mem[_6469 + 32] == bool(mem[_6469 + 32])
                        mem[_6477 + 32] = mem[_6469 + 32]
                        require mem[_6469 + 64] == mem[_6469 + 76 len 20]
                        mem[_6477 + 64] = mem[_6469 + 64]
                        mem[_6477 + 96] = mem[_6469 + 96]
                        mem[_4103 + 352] = mem[_6477]
                        mem[mem[64] + 4] = address(_4061)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x2d65f489 with:
                                gas gas_remaining wei
                               args address(_4061), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6541 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 384] = 1 == mem[_6541]
                        mem[mem[64] + 4] = address(_4061)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x5a8e1ca9 with:
                                gas gas_remaining wei
                               args address(_4061)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6573 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 320] = mem[_6573]
                        mem[mem[64] + 4] = address(_4061)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0xc25d0bab with:
                                gas gas_remaining wei
                               args address(_4061)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6605 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6605] == mem[_6605 + 12 len 20]
                        mem[_4103 + 32] = mem[_6605 + 12 len 20]
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6637 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 512] = mem[_6637]
                        if 1 == mem[_4103 + 320]:
                            mem[mem[64] + 4] = address(_4061)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.0x739a8827 with:
                                    gas gas_remaining wei
                                   args address(_4061)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6685 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_4103 + 544] = mem[_6685]
                    else:
                        mem[_4103 + 192] = 0
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6198 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6198] == bool(mem[_6198])
                        mem[_4103 + 480] = bool(mem[_6198])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6230 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 224] = mem[_6230]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6262 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 256] = mem[_6262]
                        mem[mem[64] + 4] = address(_4061)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x1d62ebd9 with:
                                gas gas_remaining wei
                               args address(_4061)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6294 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 288] = mem[_6294]
                        mem[_4103] = address(_4061)
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6326 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6334 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6334] = mem[_6326]
                        require mem[_6326 + 32] == bool(mem[_6326 + 32])
                        mem[_6334 + 32] = mem[_6326 + 32]
                        require mem[_6326 + 64] == mem[_6326 + 76 len 20]
                        mem[_6334 + 64] = mem[_6326 + 64]
                        mem[_6334 + 96] = mem[_6326 + 96]
                        mem[_4103 + 416] = bool(mem[_6334 + 32])
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6398 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6406 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6406] = mem[_6398]
                        require mem[_6398 + 32] == bool(mem[_6398 + 32])
                        mem[_6406 + 32] = mem[_6398 + 32]
                        require mem[_6398 + 64] == mem[_6398 + 76 len 20]
                        mem[_6406 + 64] = mem[_6398 + 64]
                        mem[_6406 + 96] = mem[_6398 + 96]
                        mem[_4103 + 448] = mem[_6406 + 96]
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6470 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6478 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6478] = mem[_6470]
                        require mem[_6470 + 32] == bool(mem[_6470 + 32])
                        mem[_6478 + 32] = mem[_6470 + 32]
                        require mem[_6470 + 64] == mem[_6470 + 76 len 20]
                        mem[_6478 + 64] = mem[_6470 + 64]
                        mem[_6478 + 96] = mem[_6470 + 96]
                        mem[_4103 + 352] = mem[_6478]
                        mem[mem[64] + 4] = address(_4061)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x2d65f489 with:
                                gas gas_remaining wei
                               args address(_4061), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6542 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 384] = 1 == mem[_6542]
                        mem[mem[64] + 4] = address(_4061)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x5a8e1ca9 with:
                                gas gas_remaining wei
                               args address(_4061)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6574 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 320] = mem[_6574]
                        mem[mem[64] + 4] = address(_4061)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0xc25d0bab with:
                                gas gas_remaining wei
                               args address(_4061)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6606 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6606] == mem[_6606 + 12 len 20]
                        mem[_4103 + 32] = mem[_6606 + 12 len 20]
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6638 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 512] = mem[_6638]
                        if 1 == mem[_4103 + 320]:
                            mem[mem[64] + 4] = address(_4061)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.0x739a8827 with:
                                    gas gas_remaining wei
                                   args address(_4061)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6686 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_4103 + 544] = mem[_6686]
                else:
                    mem[_5398 + ceil32(return_data.size) + _5415 + 32] = 0
                    mem[_4103 + 96] = _5398 + ceil32(return_data.size)
                    require ext_code.size(address(_4061))
                    staticcall address(_4061).createTime() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6084 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_4103 + 128] = mem[_6084]
                    require ext_code.size(address(_4061))
                    staticcall address(_4061).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6111 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_4103 + 160] = mem[_6111]
                    require ext_code.size(address(_4061))
                    staticcall address(_4061).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6160 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.number > mem[_6160]:
                        mem[_4103 + 192] = 1
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6201 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6201] == bool(mem[_6201])
                        mem[_4103 + 480] = bool(mem[_6201])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6233 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 224] = mem[_6233]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6265 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 256] = mem[_6265]
                        mem[mem[64] + 4] = address(_4061)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x1d62ebd9 with:
                                gas gas_remaining wei
                               args address(_4061)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6297 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 288] = mem[_6297]
                        mem[_4103] = address(_4061)
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6329 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6337 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6337] = mem[_6329]
                        require mem[_6329 + 32] == bool(mem[_6329 + 32])
                        mem[_6337 + 32] = mem[_6329 + 32]
                        require mem[_6329 + 64] == mem[_6329 + 76 len 20]
                        mem[_6337 + 64] = mem[_6329 + 64]
                        mem[_6337 + 96] = mem[_6329 + 96]
                        mem[_4103 + 416] = bool(mem[_6337 + 32])
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6401 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6409 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6409] = mem[_6401]
                        require mem[_6401 + 32] == bool(mem[_6401 + 32])
                        mem[_6409 + 32] = mem[_6401 + 32]
                        require mem[_6401 + 64] == mem[_6401 + 76 len 20]
                        mem[_6409 + 64] = mem[_6401 + 64]
                        mem[_6409 + 96] = mem[_6401 + 96]
                        mem[_4103 + 448] = mem[_6409 + 96]
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6473 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6481 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6481] = mem[_6473]
                        require mem[_6473 + 32] == bool(mem[_6473 + 32])
                        mem[_6481 + 32] = mem[_6473 + 32]
                        require mem[_6473 + 64] == mem[_6473 + 76 len 20]
                        mem[_6481 + 64] = mem[_6473 + 64]
                        mem[_6481 + 96] = mem[_6473 + 96]
                        mem[_4103 + 352] = mem[_6481]
                        mem[mem[64] + 4] = address(_4061)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x2d65f489 with:
                                gas gas_remaining wei
                               args address(_4061), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6545 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 384] = 1 == mem[_6545]
                        mem[mem[64] + 4] = address(_4061)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x5a8e1ca9 with:
                                gas gas_remaining wei
                               args address(_4061)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6577 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 320] = mem[_6577]
                        mem[mem[64] + 4] = address(_4061)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0xc25d0bab with:
                                gas gas_remaining wei
                               args address(_4061)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6609 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6609] == mem[_6609 + 12 len 20]
                        mem[_4103 + 32] = mem[_6609 + 12 len 20]
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6641 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 512] = mem[_6641]
                        if 1 == mem[_4103 + 320]:
                            mem[mem[64] + 4] = address(_4061)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.0x739a8827 with:
                                    gas gas_remaining wei
                                   args address(_4061)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6689 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_4103 + 544] = mem[_6689]
                    else:
                        mem[_4103 + 192] = 0
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6202 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6202] == bool(mem[_6202])
                        mem[_4103 + 480] = bool(mem[_6202])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6234 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 224] = mem[_6234]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6266 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 256] = mem[_6266]
                        mem[mem[64] + 4] = address(_4061)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x1d62ebd9 with:
                                gas gas_remaining wei
                               args address(_4061)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6298 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 288] = mem[_6298]
                        mem[_4103] = address(_4061)
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6330 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6338 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6338] = mem[_6330]
                        require mem[_6330 + 32] == bool(mem[_6330 + 32])
                        mem[_6338 + 32] = mem[_6330 + 32]
                        require mem[_6330 + 64] == mem[_6330 + 76 len 20]
                        mem[_6338 + 64] = mem[_6330 + 64]
                        mem[_6338 + 96] = mem[_6330 + 96]
                        mem[_4103 + 416] = bool(mem[_6338 + 32])
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6402 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6410 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6410] = mem[_6402]
                        require mem[_6402 + 32] == bool(mem[_6402 + 32])
                        mem[_6410 + 32] = mem[_6402 + 32]
                        require mem[_6402 + 64] == mem[_6402 + 76 len 20]
                        mem[_6410 + 64] = mem[_6402 + 64]
                        mem[_6410 + 96] = mem[_6402 + 96]
                        mem[_4103 + 448] = mem[_6410 + 96]
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6474 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6482 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6482] = mem[_6474]
                        require mem[_6474 + 32] == bool(mem[_6474 + 32])
                        mem[_6482 + 32] = mem[_6474 + 32]
                        require mem[_6474 + 64] == mem[_6474 + 76 len 20]
                        mem[_6482 + 64] = mem[_6474 + 64]
                        mem[_6482 + 96] = mem[_6474 + 96]
                        mem[_4103 + 352] = mem[_6482]
                        mem[mem[64] + 4] = address(_4061)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x2d65f489 with:
                                gas gas_remaining wei
                               args address(_4061), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6546 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 384] = 1 == mem[_6546]
                        mem[mem[64] + 4] = address(_4061)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0x5a8e1ca9 with:
                                gas gas_remaining wei
                               args address(_4061)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6578 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 320] = mem[_6578]
                        mem[mem[64] + 4] = address(_4061)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.0xc25d0bab with:
                                gas gas_remaining wei
                               args address(_4061)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6610 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6610] == mem[_6610 + 12 len 20]
                        mem[_4103 + 32] = mem[_6610 + 12 len 20]
                        require ext_code.size(address(_4061))
                        staticcall address(_4061).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6642 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4103 + 512] = mem[_6642]
                        if 1 == mem[_4103 + 320]:
                            mem[mem[64] + 4] = address(_4061)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.0x739a8827 with:
                                    gas gas_remaining wei
                                   args address(_4061)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6690 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_4103 + 544] = mem[_6690]
            require ext_call.return_data[0] + -idx - 1 < mem[ceil32(return_data.size) + 96]
            mem[(32 * ext_call.return_data[0] + -idx - 1) + ceil32(return_data.size) + 128] = _4103
            idx = idx + 1
            continue 
        _4038 = mem[64]
        mem[mem[64]] = 32
        _4045 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        u = mem[64] + (32 * _4045) + 64
        while idx < _4045:
            mem[t] = u + -_4038 - 64
            _5350 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            mem[u + 32] = mem[_5350 + 44 len 20]
            _5383 = mem[_5350 + 64]
            mem[u + 64] = 576
            _5397 = mem[_5383]
            mem[u + 576] = mem[_5383]
            v = 0
            while v < _5397:
                mem[v + u + 608] = mem[v + _5383 + 32]
                v = v + 32
                continue 
            if ceil32(_5397) <= _5397:
                _6069 = mem[_5350 + 96]
                mem[u + 96] = ceil32(_5397) + 608
                _6074 = mem[_6069]
                mem[ceil32(_5397) + u + 608] = mem[_6069]
                v = 0
                while v < _6074:
                    mem[v + ceil32(_5397) + u + 640] = mem[v + _6069 + 32]
                    v = v + 32
                    continue 
                if ceil32(_6074) > _6074:
                    mem[ceil32(_5397) + u + _6074 + 640] = 0
                mem[u + 128] = mem[_5350 + 128]
                mem[u + 160] = mem[_5350 + 160]
                mem[u + 192] = bool(mem[_5350 + 192])
                mem[u + 224] = mem[_5350 + 224]
                mem[u + 256] = mem[_5350 + 256]
                mem[u + 288] = mem[_5350 + 288]
                mem[u + 320] = mem[_5350 + 320]
                mem[u + 352] = mem[_5350 + 352]
                mem[u + 384] = bool(mem[_5350 + 384])
                mem[u + 416] = bool(mem[_5350 + 416])
                mem[u + 448] = mem[_5350 + 448]
                mem[u + 480] = bool(mem[_5350 + 480])
                mem[u + 512] = mem[_5350 + 512]
                mem[u + 544] = mem[_5350 + 544]
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_6074) + ceil32(_5397) + u + 640
                continue 
            mem[u + _5397 + 608] = 0
            _6075 = mem[_5350 + 96]
            mem[u + 96] = ceil32(_5397) + 608
            _6080 = mem[_6075]
            mem[ceil32(_5397) + u + 608] = mem[_6075]
            v = 0
            while v < _6080:
                mem[v + ceil32(_5397) + u + 640] = mem[v + _6075 + 32]
                v = v + 32
                continue 
            if ceil32(_6080) > _6080:
                mem[ceil32(_5397) + u + _6080 + 640] = 0
            mem[u + 128] = mem[_5350 + 128]
            mem[u + 160] = mem[_5350 + 160]
            mem[u + 192] = bool(mem[_5350 + 192])
            mem[u + 224] = mem[_5350 + 224]
            mem[u + 256] = mem[_5350 + 256]
            mem[u + 288] = mem[_5350 + 288]
            mem[u + 320] = mem[_5350 + 320]
            mem[u + 352] = mem[_5350 + 352]
            mem[u + 384] = bool(mem[_5350 + 384])
            mem[u + 416] = bool(mem[_5350 + 416])
            mem[u + 448] = mem[_5350 + 448]
            mem[u + 480] = bool(mem[_5350 + 480])
            mem[u + 512] = mem[_5350 + 512]
            mem[u + 544] = mem[_5350 + 544]
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_6080) + ceil32(_5397) + u + 640
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
