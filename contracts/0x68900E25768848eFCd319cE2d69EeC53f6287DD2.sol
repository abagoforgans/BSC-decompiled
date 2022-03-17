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
    staticcall configAddr.configs(bytes32 rg1) with:
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
    staticcall governanceAddress.allowance(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(governanceAddress)
    staticcall governanceAddress.stakingSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
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
    staticcall configAddr.getConfigValue(bytes32 rg1) with:
            gas gas_remaining wei
           args 0x535741505f4645455f50455243454e5400000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddr)
    staticcall configAddr.getConfigValue(bytes32 rg1) with:
            gas gas_remaining wei
           args 0x50524f504f53414c5f444741535f414d4f554e54000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddr)
    staticcall configAddr.getConfigValue(bytes32 rg1) with:
            gas gas_remaining wei
           args 0x554e5354414b455f4455524154494f4e00000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddr)
    staticcall configAddr.getConfigValue(bytes32 rg1) with:
            gas gas_remaining wei
           args 0x52454d4f56455f4c49515549444954595f4455524154494f4e00000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddr)
    staticcall configAddr.getConfigValue(bytes32 rg1) with:
            gas gas_remaining wei
           args 0x4c4953545f444741535f414d4f554e5400000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddr)
    staticcall configAddr.getConfigValue(bytes32 rg1) with:
            gas gas_remaining wei
           args 0x564f54455f5245574152445f50455243454e5400000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], 
           ext_call.return_data[0],
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
        _83 = mem[64]
        mem[mem[64]] = 160
        mem[mem[64] + 160] = _5
        mem[mem[64] + 192 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            mem[mem[64] + 64] = _65
            mem[mem[64] + 96] = _73
            return Array(len=_5, data=mem[mem[64] + 192 len ceil32(_5)]), _57 << 248, _65, _73, _81
        mem[mem[64] + _5 + 192] = 0
        mem[mem[64] + 32] = uint8(_57)
        mem[_83 + 64] = _65
        mem[_83 + 96] = _73
        mem[_83 + 128] = _81
        return memory
          from mem[64]
           len ceil32(_5) + _83 + -mem[64] + 192
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
    _84 = mem[64]
    mem[mem[64]] = 160
    mem[mem[64] + 160] = _5
    mem[mem[64] + 192 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        mem[mem[64] + 64] = _67
        mem[mem[64] + 96] = _75
        return Array(len=_5, data=mem[mem[64] + 192 len ceil32(_5)]), _58 << 248, _67, _75, _82
    mem[mem[64] + _5 + 192] = 0
    mem[mem[64] + 32] = uint8(_58)
    mem[_84 + 64] = _67
    mem[_84 + 96] = _75
    mem[_84 + 128] = _82
    return memory
      from mem[64]
       len ceil32(_5) + _84 + -mem[64] + 192
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
    staticcall configAddr.tokenCount() with:
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
            _215 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _217 = mem[_215 + 32]
            mem[t + 32] = 256
            _220 = mem[_217]
            mem[t + 256] = mem[_217]
            v = 0
            while v < _220:
                mem[v + t + 288] = mem[v + _217 + 32]
                v = v + 32
                continue 
            if ceil32(_220) > _220:
                mem[t + _220 + 288] = 0
            mem[t + 64] = mem[_215 + 64]
            mem[t + 96] = mem[_215 + 96]
            mem[t + 128] = mem[_215 + 128]
            mem[t + 160] = mem[_215 + 160]
            mem[t + 192] = mem[_215 + 192]
            mem[t + 224] = mem[_215 + 224]
            idx = idx + 1
            s = s + 32
            t = ceil32(_220) + t + 288
            u = u + 32
            continue 
    else:
        require ext_call.return_data[0] <= test266151307()
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
        if not ext_call.return_data[0]:
            idx = 0
            while idx < ext_call.return_data[0]:
                _221 = mem[64]
                mem[64] = mem[64] + 256
                mem[_221] = 0
                mem[_221 + 32] = 96
                mem[_221 + 64] = 0
                mem[_221 + 96] = 0
                mem[_221 + 128] = 0
                mem[_221 + 160] = 0
                mem[_221 + 192] = 0
                mem[_221 + 224] = 0
                mem[mem[64] + 4] = idx
                require ext_code.size(configAddr)
                staticcall configAddr.tokenList(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _232 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _248 = mem[_232]
                require mem[_232] == mem[_232 + 12 len 20]
                mem[_221] = mem[_232 + 12 len 20]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_248))
                staticcall address(_248).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _273 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _275 = mem[_273]
                require mem[_273] <= test266151307()
                require _273 + mem[_273] + 31 < _273 + return_data.size
                _284 = mem[_273 + mem[_273]]
                require mem[_273 + mem[_273]] <= test266151307()
                require ceil32(mem[_273 + mem[_273]]) + 32 >= 0 and _273 + ceil32(return_data.size) + ceil32(mem[_273 + mem[_273]]) + 32 <= test266151307()
                mem[64] = _273 + ceil32(return_data.size) + ceil32(mem[_273 + mem[_273]]) + 32
                mem[_273 + ceil32(return_data.size)] = _284
                require _275 + _284 + 32 <= return_data.size
                s = 0
                while s < _284:
                    mem[s + _273 + ceil32(return_data.size) + 32] = mem[s + _273 + _275 + 32]
                    s = s + 32
                    continue 
                if ceil32(_284) <= _284:
                    mem[_221 + 32] = _273 + ceil32(return_data.size)
                    require ext_code.size(mem[_221 + 12 len 20])
                    staticcall mem[_221 + 12 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _449 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_449] == mem[_449 + 31 len 1]
                    mem[_221 + 64] = mem[_449 + 31 len 1]
                    _470 = mem[_221]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(_470))
                    staticcall address(_470).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _483 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_221 + 96] = mem[_483]
                    _487 = mem[_221]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = platformAddress
                    require ext_code.size(address(_487))
                    staticcall address(_487).0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, platformAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _509 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_221 + 128] = mem[_509]
                    _514 = mem[_221]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = governanceAddress
                    require ext_code.size(address(_514))
                    staticcall address(_514).0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, governanceAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _522 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_221 + 160] = mem[_522]
                    _525 = mem[_221]
                    mem[mem[64] + 4] = mem[_221 + 12 len 20]
                    require ext_code.size(configAddr)
                    staticcall configAddr.tokenStatus(address rg1) with:
                            gas gas_remaining wei
                           args address(_525)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _536 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_221 + 192] = mem[_536]
                    require ext_code.size(mem[_221 + 12 len 20])
                    staticcall mem[_221 + 12 len 20].0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _553 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_221 + 224] = mem[_553]
                else:
                    mem[_273 + ceil32(return_data.size) + _284 + 32] = 0
                    mem[_221 + 32] = _273 + ceil32(return_data.size)
                    require ext_code.size(mem[_221 + 12 len 20])
                    staticcall mem[_221 + 12 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _451 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_451] == mem[_451 + 31 len 1]
                    mem[_221 + 64] = mem[_451 + 31 len 1]
                    _475 = mem[_221]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(_475))
                    staticcall address(_475).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _485 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_221 + 96] = mem[_485]
                    _498 = mem[_221]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = platformAddress
                    require ext_code.size(address(_498))
                    staticcall address(_498).0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, platformAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _511 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_221 + 128] = mem[_511]
                    _517 = mem[_221]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = governanceAddress
                    require ext_code.size(address(_517))
                    staticcall address(_517).0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, governanceAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _523 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_221 + 160] = mem[_523]
                    _529 = mem[_221]
                    mem[mem[64] + 4] = mem[_221 + 12 len 20]
                    require ext_code.size(configAddr)
                    staticcall configAddr.tokenStatus(address rg1) with:
                            gas gas_remaining wei
                           args address(_529)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _540 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_221 + 192] = mem[_540]
                    require ext_code.size(mem[_221 + 12 len 20])
                    staticcall mem[_221 + 12 len 20].0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _556 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_221 + 224] = mem[_556]
                require idx < mem[ceil32(return_data.size) + 96]
                mem[(32 * idx) + ceil32(return_data.size) + 128] = _221
                idx = idx + 1
                continue 
            _222 = mem[64]
            mem[mem[64]] = 32
            _224 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + (32 * _224) + 64
            u = mem[64] + 64
            while idx < _224:
                mem[u] = t + -_222 - 64
                _424 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                _426 = mem[_424 + 32]
                mem[t + 32] = 256
                _429 = mem[_426]
                mem[t + 256] = mem[_426]
                v = 0
                while v < _429:
                    mem[v + t + 288] = mem[v + _426 + 32]
                    v = v + 32
                    continue 
                if ceil32(_429) > _429:
                    mem[t + _429 + 288] = 0
                mem[t + 64] = mem[_424 + 64]
                mem[t + 96] = mem[_424 + 96]
                mem[t + 128] = mem[_424 + 128]
                mem[t + 160] = mem[_424 + 160]
                mem[t + 192] = mem[_424 + 192]
                mem[t + 224] = mem[_424 + 224]
                idx = idx + 1
                s = s + 32
                t = ceil32(_429) + t + 288
                u = u + 32
                continue 
        else:
            mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 384
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 96
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 288] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 320] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 352] = 0
            mem[var14001] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
            s = var14001
            idx = var14002
            while idx - 1:
                mem[64] = mem[64] + 256
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 96
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 0
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 0
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256] = 0
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 288] = 0
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 320] = 0
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 352] = 0
                mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < ext_call.return_data[0]:
                _612 = mem[64]
                mem[64] = mem[64] + 256
                mem[_612] = 0
                mem[_612 + 32] = 96
                mem[_612 + 64] = 0
                mem[_612 + 96] = 0
                mem[_612 + 128] = 0
                mem[_612 + 160] = 0
                mem[_612 + 192] = 0
                mem[_612 + 224] = 0
                mem[mem[64] + 4] = idx
                require ext_code.size(configAddr)
                staticcall configAddr.tokenList(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _634 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _635 = mem[_634]
                require mem[_634] == mem[_634 + 12 len 20]
                mem[_612] = mem[_634 + 12 len 20]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_635))
                staticcall address(_635).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _651 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _652 = mem[_651]
                require mem[_651] <= test266151307()
                require _651 + mem[_651] + 31 < _651 + return_data.size
                _653 = mem[_651 + mem[_651]]
                require mem[_651 + mem[_651]] <= test266151307()
                require ceil32(mem[_651 + mem[_651]]) + 32 >= 0 and _651 + ceil32(return_data.size) + ceil32(mem[_651 + mem[_651]]) + 32 <= test266151307()
                mem[64] = _651 + ceil32(return_data.size) + ceil32(mem[_651 + mem[_651]]) + 32
                mem[_651 + ceil32(return_data.size)] = _653
                require _652 + _653 + 32 <= return_data.size
                s = 0
                while s < _653:
                    mem[s + _651 + ceil32(return_data.size) + 32] = mem[s + _651 + _652 + 32]
                    s = s + 32
                    continue 
                if ceil32(_653) <= _653:
                    mem[_612 + 32] = _651 + ceil32(return_data.size)
                    require ext_code.size(mem[_612 + 12 len 20])
                    staticcall mem[_612 + 12 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _731 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_731] == mem[_731 + 31 len 1]
                    mem[_612 + 64] = mem[_731 + 31 len 1]
                    _747 = mem[_612]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(_747))
                    staticcall address(_747).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _753 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_612 + 96] = mem[_753]
                    _756 = mem[_612]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = platformAddress
                    require ext_code.size(address(_756))
                    staticcall address(_756).0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, platformAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _763 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_612 + 128] = mem[_763]
                    _766 = mem[_612]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = governanceAddress
                    require ext_code.size(address(_766))
                    staticcall address(_766).0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, governanceAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _773 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_612 + 160] = mem[_773]
                    _776 = mem[_612]
                    mem[mem[64] + 4] = mem[_612 + 12 len 20]
                    require ext_code.size(configAddr)
                    staticcall configAddr.tokenStatus(address rg1) with:
                            gas gas_remaining wei
                           args address(_776)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _783 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_612 + 192] = mem[_783]
                    require ext_code.size(mem[_612 + 12 len 20])
                    staticcall mem[_612 + 12 len 20].0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _793 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_612 + 224] = mem[_793]
                else:
                    mem[_651 + ceil32(return_data.size) + _653 + 32] = 0
                    mem[_612 + 32] = _651 + ceil32(return_data.size)
                    require ext_code.size(mem[_612 + 12 len 20])
                    staticcall mem[_612 + 12 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _732 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_732] == mem[_732 + 31 len 1]
                    mem[_612 + 64] = mem[_732 + 31 len 1]
                    _749 = mem[_612]
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(_749))
                    staticcall address(_749).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _754 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_612 + 96] = mem[_754]
                    _759 = mem[_612]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = platformAddress
                    require ext_code.size(address(_759))
                    staticcall address(_759).0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, platformAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _764 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_612 + 128] = mem[_764]
                    _769 = mem[_612]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = governanceAddress
                    require ext_code.size(address(_769))
                    staticcall address(_769).0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, governanceAddress
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _774 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_612 + 160] = mem[_774]
                    _779 = mem[_612]
                    mem[mem[64] + 4] = mem[_612 + 12 len 20]
                    require ext_code.size(configAddr)
                    staticcall configAddr.tokenStatus(address rg1) with:
                            gas gas_remaining wei
                           args address(_779)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _784 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_612 + 192] = mem[_784]
                    require ext_code.size(mem[_612 + 12 len 20])
                    staticcall mem[_612 + 12 len 20].0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _794 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_612 + 224] = mem[_794]
                require idx < mem[ceil32(return_data.size) + 96]
                mem[(32 * idx) + ceil32(return_data.size) + 128] = _612
                idx = idx + 1
                continue 
            _613 = mem[64]
            mem[mem[64]] = 32
            _621 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + (32 * _621) + 64
            u = mem[64] + 64
            while idx < _621:
                mem[u] = t + -_613 - 64
                _718 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                _720 = mem[_718 + 32]
                mem[t + 32] = 256
                _723 = mem[_720]
                mem[t + 256] = mem[_720]
                v = 0
                while v < _723:
                    mem[v + t + 288] = mem[v + _720 + 32]
                    v = v + 32
                    continue 
                if ceil32(_723) > _723:
                    mem[t + _723 + 288] = 0
                mem[t + 64] = mem[_718 + 64]
                mem[t + 96] = mem[_718 + 96]
                mem[t + 128] = mem[_718 + 128]
                mem[t + 160] = mem[_718 + 160]
                mem[t + 192] = mem[_718 + 192]
                mem[t + 224] = mem[_718 + 224]
                idx = idx + 1
                s = s + 32
                t = ceil32(_723) + t + 288
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
                    _916 = mem[(32 * idx) + (32 * arg1.length) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    mem[mem[64] + 36] = address(_916)
                    require ext_code.size(platformAddress)
                    staticcall platformAddress.0xd52bb6f4 with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_916)
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
                    _918 = mem[(32 * idx) + (32 * arg1.length) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    mem[mem[64] + 36] = address(_918)
                    require ext_code.size(platformAddress)
                    staticcall platformAddress.0xd52bb6f4 with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_918)
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
            mem[_780 + 32] = (32 * _803) + 128
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
        mem[_783 + 32] = (32 * _805) + 128
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
                    _922 = mem[(32 * idx) + (32 * arg1.length) + 160]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    mem[mem[64] + 36] = address(_922)
                    require ext_code.size(platformAddress)
                    staticcall platformAddress.0xd52bb6f4 with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_922)
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
                _924 = mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 36] = address(_924)
                require ext_code.size(platformAddress)
                staticcall platformAddress.0xd52bb6f4 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_924)
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
                _926 = mem[(32 * idx) + (32 * arg1.length) + 160]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 36] = address(_926)
                require ext_code.size(platformAddress)
                staticcall platformAddress.0xd52bb6f4 with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_926)
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
            _928 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 36] = address(_928)
            require ext_code.size(platformAddress)
            staticcall platformAddress.0xd52bb6f4 with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], address(_928)
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
    mem[128] = 0
    mem[160] = 0
    mem[192] = 96
    mem[224] = 96
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
    mem[672] = 0
    mem[704] = 0
    require ext_code.size(arg1)
    staticcall arg1.proposer() with:
            gas gas_remaining wei
    mem[736] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[96] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 736] = 0xa59a98c00000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.subject() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 736 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 736
    require return_data.size >= 32
    _9 = mem[ceil32(return_data.size) + 736]
    require mem[ceil32(return_data.size) + 736] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 736] + 767 < ceil32(return_data.size) + return_data.size + 736
    _10 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 736] + 736]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 736] + 736] <= test266151307()
    require ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 736] + 736]) + 32 >= 0 and (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 736] + 736]) + 768 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 736] + 736]) + 768
    mem[(2 * ceil32(return_data.size)) + 736] = _10
    require _9 + _10 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 768 len ceil32(_10)] = mem[ceil32(return_data.size) + _9 + 768 len ceil32(_10)]
    if ceil32(_10) <= _10:
        mem[192] = (2 * ceil32(return_data.size)) + 736
        mem[mem[64]] = 0x8a4d5a6700000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.content() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _792 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _794 = mem[_792]
        require mem[_792] <= test266151307()
        require _792 + mem[_792] + 31 < _792 + return_data.size
        _796 = mem[_792 + mem[_792]]
        require mem[_792 + mem[_792]] <= test266151307()
        require ceil32(mem[_792 + mem[_792]]) + 32 >= 0 and _792 + ceil32(return_data.size) + ceil32(mem[_792 + mem[_792]]) + 32 <= test266151307()
        mem[64] = _792 + ceil32(return_data.size) + ceil32(mem[_792 + mem[_792]]) + 32
        mem[_792 + ceil32(return_data.size)] = _796
        require _794 + _796 + 32 <= return_data.size
        mem[_792 + ceil32(return_data.size) + 32 len ceil32(_796)] = mem[_792 + _794 + 32 len ceil32(_796)]
        if ceil32(_796) <= _796:
            mem[224] = _792 + ceil32(return_data.size)
            require ext_code.size(arg1)
            staticcall arg1.createTime() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2636 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[256] = mem[_2636]
            require ext_code.size(arg1)
            staticcall arg1.endBlockNumber() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2652 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[288] = mem[_2652]
            require ext_code.size(arg1)
            staticcall arg1.endBlockNumber() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2668 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if block.number > mem[_2668]:
                mem[320] = 1
                require ext_code.size(arg1)
                staticcall arg1.ended() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2692 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2692] == bool(mem[_2692])
                mem[608] = bool(mem[_2692])
                mem[mem[64] + 4] = 1
                require ext_code.size(arg1)
                staticcall arg1.proposals(uint256 rg1) with:
                        gas gas_remaining wei
                       args 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2724 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[352] = mem[_2724]
                mem[mem[64] + 4] = 2
                require ext_code.size(arg1)
                staticcall arg1.proposals(uint256 rg1) with:
                        gas gas_remaining wei
                       args 2
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2756 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[384] = mem[_2756]
                mem[mem[64] + 4] = arg1
                require ext_code.size(governanceAddress)
                staticcall governanceAddress.rewardOf(address rg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2788 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[416] = mem[_2788]
                mem[128] = arg1
                require ext_code.size(arg1)
                staticcall arg1.voters(address rg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2820 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _2828 = mem[64]
                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                mem[64] = mem[64] + 128
                mem[_2828] = mem[_2820]
                require mem[_2820 + 32] == bool(mem[_2820 + 32])
                mem[_2828 + 32] = mem[_2820 + 32]
                require mem[_2820 + 64] == mem[_2820 + 76 len 20]
                mem[_2828 + 64] = mem[_2820 + 64]
                mem[_2828 + 96] = mem[_2820 + 96]
                mem[544] = bool(mem[_2828 + 32])
                require ext_code.size(arg1)
                staticcall arg1.voters(address rg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2892 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _2900 = mem[64]
                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                mem[64] = mem[64] + 128
                mem[_2900] = mem[_2892]
                require mem[_2892 + 32] == bool(mem[_2892 + 32])
                mem[_2900 + 32] = mem[_2892 + 32]
                require mem[_2892 + 64] == mem[_2892 + 76 len 20]
                mem[_2900 + 64] = mem[_2892 + 64]
                mem[_2900 + 96] = mem[_2892 + 96]
                mem[576] = mem[_2900 + 96]
                require ext_code.size(arg1)
                staticcall arg1.voters(address rg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2964 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _2972 = mem[64]
                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                mem[64] = mem[64] + 128
                mem[_2972] = mem[_2964]
                require mem[_2964 + 32] == bool(mem[_2964 + 32])
                mem[_2972 + 32] = mem[_2964 + 32]
                require mem[_2964 + 64] == mem[_2964 + 76 len 20]
                mem[_2972 + 64] = mem[_2964 + 64]
                mem[_2972 + 96] = mem[_2964 + 96]
                mem[480] = mem[_2972]
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = msg.sender
                require ext_code.size(governanceAddress)
                staticcall governanceAddress.collectUsers(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3036 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[512] = 1 == mem[_3036]
                mem[mem[64] + 4] = arg1
                require ext_code.size(governanceAddress)
                staticcall governanceAddress.ballotTypes(address rg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3068 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[448] = mem[_3068]
                mem[mem[64] + 4] = arg1
                require ext_code.size(governanceAddress)
                staticcall governanceAddress.tokenBallots(address rg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3100 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3100] == mem[_3100 + 12 len 20]
                mem[160] = mem[_3100 + 12 len 20]
                require ext_code.size(arg1)
                staticcall arg1.value() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3132 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[640] = mem[_3132]
                if mem[448] != 1:
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[108 len 20]
                    mem[mem[64] + 64] = arg1
                    mem[mem[64] + 96] = mem[172 len 20]
                    mem[mem[64] + 128] = 640
                    mem[mem[64] + 672] = _10
                    mem[mem[64] + 704 len ceil32(_10)] = mem[(2 * ceil32(return_data.size)) + 768 len ceil32(_10)]
                    if ceil32(_10) > _10:
                        mem[mem[64] + _10 + 704] = 0
                    mem[mem[64] + 160] = ceil32(_10) + 672
                    mem[ceil32(_10) + mem[64] + 704] = _796
                    mem[ceil32(_10) + mem[64] + 736 len ceil32(_796)] = mem[_792 + ceil32(return_data.size) + 32 len ceil32(_796)]
                    if ceil32(_796) > _796:
                        mem[ceil32(_10) + mem[64] + _796 + 736] = 0
                    mem[mem[64] + 192] = mem[256]
                    mem[mem[64] + 224] = mem[288]
                    mem[mem[64] + 256] = 1
                    mem[mem[64] + 288] = mem[352]
                    mem[mem[64] + 320] = mem[384]
                    mem[mem[64] + 352] = mem[416]
                    mem[mem[64] + 384] = mem[448]
                    mem[mem[64] + 416] = mem[480]
                    mem[mem[64] + 448] = bool(mem[512])
                    mem[mem[64] + 480] = bool(mem[544])
                    mem[mem[64] + 512] = mem[576]
                    mem[mem[64] + 544] = bool(mem[608])
                    mem[mem[64] + 640] = 0
                    return 32, mem[mem[64] + 32], 
                           address(arg1),
                           mem[mem[64] + 96],
                           640,
                           ceil32(_10) + 672,
                           mem[mem[64] + 192 len 64],
                           1,
                           mem[mem[64] + 288 len 192],
                           bool(mem[544]),
                           mem[576],
                           mem[mem[64] + 544],
                           mem[640],
                           0,
                           0,
                           _10,
                           mem[mem[64] + 704 len ceil32(_796) + ceil32(_10) + 32]
                mem[mem[64] + 4] = arg1
                require ext_code.size(governanceAddress)
                staticcall governanceAddress.configBallots(address rg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3184 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3200 = mem[_3184]
                mem[672] = mem[_3184]
                mem[mem[64] + 4] = _3200
                require ext_code.size(governanceAddress)
                staticcall governanceAddress.getConfigValue(bytes32 rg1) with:
                        gas gas_remaining wei
                       args _3200
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3248 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[704] = mem[_3248]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[108 len 20]
                mem[mem[64] + 64] = arg1
                mem[mem[64] + 96] = mem[172 len 20]
                mem[mem[64] + 128] = 640
                mem[mem[64] + 672] = _10
                mem[mem[64] + 704 len ceil32(_10)] = mem[(2 * ceil32(return_data.size)) + 768 len ceil32(_10)]
                if ceil32(_10) > _10:
                    mem[mem[64] + _10 + 704] = 0
                mem[mem[64] + 160] = ceil32(_10) + 672
                mem[ceil32(_10) + mem[64] + 704] = _796
                mem[ceil32(_10) + mem[64] + 736 len ceil32(_796)] = mem[_792 + ceil32(return_data.size) + 32 len ceil32(_796)]
                if ceil32(_796) > _796:
                    mem[ceil32(_10) + mem[64] + _796 + 736] = 0
                mem[mem[64] + 192] = mem[256]
                mem[mem[64] + 224] = mem[288]
                mem[mem[64] + 256] = 1
                mem[mem[64] + 288] = mem[352]
                mem[mem[64] + 320] = mem[384]
                mem[mem[64] + 352] = mem[416]
                mem[mem[64] + 384] = mem[448]
                mem[mem[64] + 416] = mem[480]
                mem[mem[64] + 448] = bool(mem[512])
                mem[mem[64] + 480] = bool(mem[544])
                mem[mem[64] + 512] = mem[576]
                mem[mem[64] + 544] = bool(mem[608])
                mem[mem[64] + 576] = mem[640]
                mem[mem[64] + 608] = mem[672]
                mem[mem[64] + 640] = mem[704]
                return 32, mem[mem[64] + 32], 
                       address(arg1),
                       mem[mem[64] + 96],
                       640,
                       ceil32(_10) + 672,
                       mem[mem[64] + 192 len 64],
                       1,
                       mem[mem[64] + 288 len 288],
                       mem[640],
                       mem[672],
                       mem[704],
                       _10,
                       mem[mem[64] + 704 len ceil32(_796) + ceil32(_10) + 32]
            mem[320] = 0
            require ext_code.size(arg1)
            staticcall arg1.ended() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2693 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2693] == bool(mem[_2693])
            mem[608] = bool(mem[_2693])
            mem[mem[64] + 4] = 1
            require ext_code.size(arg1)
            staticcall arg1.proposals(uint256 rg1) with:
                    gas gas_remaining wei
                   args 1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2725 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[352] = mem[_2725]
            mem[mem[64] + 4] = 2
            require ext_code.size(arg1)
            staticcall arg1.proposals(uint256 rg1) with:
                    gas gas_remaining wei
                   args 2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2757 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[384] = mem[_2757]
            mem[mem[64] + 4] = arg1
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.rewardOf(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2789 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[416] = mem[_2789]
            mem[128] = arg1
            require ext_code.size(arg1)
            staticcall arg1.voters(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2821 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2829 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            mem[_2829] = mem[_2821]
            require mem[_2821 + 32] == bool(mem[_2821 + 32])
            mem[_2829 + 32] = mem[_2821 + 32]
            require mem[_2821 + 64] == mem[_2821 + 76 len 20]
            mem[_2829 + 64] = mem[_2821 + 64]
            mem[_2829 + 96] = mem[_2821 + 96]
            mem[544] = bool(mem[_2829 + 32])
            require ext_code.size(arg1)
            staticcall arg1.voters(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2893 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2901 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            mem[_2901] = mem[_2893]
            require mem[_2893 + 32] == bool(mem[_2893 + 32])
            mem[_2901 + 32] = mem[_2893 + 32]
            require mem[_2893 + 64] == mem[_2893 + 76 len 20]
            mem[_2901 + 64] = mem[_2893 + 64]
            mem[_2901 + 96] = mem[_2893 + 96]
            mem[576] = mem[_2901 + 96]
            require ext_code.size(arg1)
            staticcall arg1.voters(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2965 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2973 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            mem[_2973] = mem[_2965]
            require mem[_2965 + 32] == bool(mem[_2965 + 32])
            mem[_2973 + 32] = mem[_2965 + 32]
            require mem[_2965 + 64] == mem[_2965 + 76 len 20]
            mem[_2973 + 64] = mem[_2965 + 64]
            mem[_2973 + 96] = mem[_2965 + 96]
            mem[480] = mem[_2973]
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = msg.sender
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.collectUsers(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3037 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[512] = 1 == mem[_3037]
            mem[mem[64] + 4] = arg1
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.ballotTypes(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3069 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[448] = mem[_3069]
            mem[mem[64] + 4] = arg1
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.tokenBallots(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3101 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3101] == mem[_3101 + 12 len 20]
            mem[160] = mem[_3101 + 12 len 20]
            require ext_code.size(arg1)
            staticcall arg1.value() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3133 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[640] = mem[_3133]
            if mem[448] != 1:
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[108 len 20]
                mem[mem[64] + 64] = arg1
                mem[mem[64] + 96] = mem[172 len 20]
                mem[mem[64] + 128] = 640
                mem[mem[64] + 672] = _10
                mem[mem[64] + 704 len ceil32(_10)] = mem[(2 * ceil32(return_data.size)) + 768 len ceil32(_10)]
                if ceil32(_10) > _10:
                    mem[mem[64] + _10 + 704] = 0
                mem[mem[64] + 160] = ceil32(_10) + 672
                mem[ceil32(_10) + mem[64] + 704] = _796
                mem[ceil32(_10) + mem[64] + 736 len ceil32(_796)] = mem[_792 + ceil32(return_data.size) + 32 len ceil32(_796)]
                if ceil32(_796) > _796:
                    mem[ceil32(_10) + mem[64] + _796 + 736] = 0
                mem[mem[64] + 192] = mem[256]
                mem[mem[64] + 224] = mem[288]
                mem[mem[64] + 256] = 0
                mem[mem[64] + 288] = mem[352]
                mem[mem[64] + 320] = mem[384]
                mem[mem[64] + 352] = mem[416]
                mem[mem[64] + 384] = mem[448]
                mem[mem[64] + 416] = mem[480]
                mem[mem[64] + 448] = bool(mem[512])
                mem[mem[64] + 480] = bool(mem[544])
                mem[mem[64] + 512] = mem[576]
                mem[mem[64] + 544] = bool(mem[608])
                mem[mem[64] + 640] = 0
                return 32, mem[mem[64] + 32], 
                       address(arg1),
                       mem[mem[64] + 96],
                       640,
                       ceil32(_10) + 672,
                       mem[mem[64] + 192 len 64],
                       0,
                       mem[mem[64] + 288 len 192],
                       bool(mem[544]),
                       mem[576],
                       mem[mem[64] + 544],
                       mem[640],
                       0,
                       0,
                       _10,
                       mem[mem[64] + 704 len ceil32(_796) + ceil32(_10) + 32]
            mem[mem[64] + 4] = arg1
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.configBallots(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3185 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3201 = mem[_3185]
            mem[672] = mem[_3185]
            mem[mem[64] + 4] = _3201
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.getConfigValue(bytes32 rg1) with:
                    gas gas_remaining wei
                   args _3201
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3249 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[704] = mem[_3249]
        else:
            mem[_792 + ceil32(return_data.size) + _796 + 32] = 0
            mem[224] = _792 + ceil32(return_data.size)
            require ext_code.size(arg1)
            staticcall arg1.createTime() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2638 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[256] = mem[_2638]
            require ext_code.size(arg1)
            staticcall arg1.endBlockNumber() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2654 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[288] = mem[_2654]
            require ext_code.size(arg1)
            staticcall arg1.endBlockNumber() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2670 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if block.number > mem[_2670]:
                mem[320] = 1
                require ext_code.size(arg1)
                staticcall arg1.ended() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2696 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2696] == bool(mem[_2696])
                mem[608] = bool(mem[_2696])
                mem[mem[64] + 4] = 1
                require ext_code.size(arg1)
                staticcall arg1.proposals(uint256 rg1) with:
                        gas gas_remaining wei
                       args 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2728 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[352] = mem[_2728]
                mem[mem[64] + 4] = 2
                require ext_code.size(arg1)
                staticcall arg1.proposals(uint256 rg1) with:
                        gas gas_remaining wei
                       args 2
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2760 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[384] = mem[_2760]
                mem[mem[64] + 4] = arg1
                require ext_code.size(governanceAddress)
                staticcall governanceAddress.rewardOf(address rg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2792 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[416] = mem[_2792]
                mem[128] = arg1
                require ext_code.size(arg1)
                staticcall arg1.voters(address rg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2824 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _2832 = mem[64]
                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                mem[64] = mem[64] + 128
                mem[_2832] = mem[_2824]
                require mem[_2824 + 32] == bool(mem[_2824 + 32])
                mem[_2832 + 32] = mem[_2824 + 32]
                require mem[_2824 + 64] == mem[_2824 + 76 len 20]
                mem[_2832 + 64] = mem[_2824 + 64]
                mem[_2832 + 96] = mem[_2824 + 96]
                mem[544] = bool(mem[_2832 + 32])
                require ext_code.size(arg1)
                staticcall arg1.voters(address rg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2896 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _2904 = mem[64]
                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                mem[64] = mem[64] + 128
                mem[_2904] = mem[_2896]
                require mem[_2896 + 32] == bool(mem[_2896 + 32])
                mem[_2904 + 32] = mem[_2896 + 32]
                require mem[_2896 + 64] == mem[_2896 + 76 len 20]
                mem[_2904 + 64] = mem[_2896 + 64]
                mem[_2904 + 96] = mem[_2896 + 96]
                mem[576] = mem[_2904 + 96]
                require ext_code.size(arg1)
                staticcall arg1.voters(address rg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2968 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _2976 = mem[64]
                require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                mem[64] = mem[64] + 128
                mem[_2976] = mem[_2968]
                require mem[_2968 + 32] == bool(mem[_2968 + 32])
                mem[_2976 + 32] = mem[_2968 + 32]
                require mem[_2968 + 64] == mem[_2968 + 76 len 20]
                mem[_2976 + 64] = mem[_2968 + 64]
                mem[_2976 + 96] = mem[_2968 + 96]
                mem[480] = mem[_2976]
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = msg.sender
                require ext_code.size(governanceAddress)
                staticcall governanceAddress.collectUsers(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3040 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[512] = 1 == mem[_3040]
                mem[mem[64] + 4] = arg1
                require ext_code.size(governanceAddress)
                staticcall governanceAddress.ballotTypes(address rg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3072 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[448] = mem[_3072]
                mem[mem[64] + 4] = arg1
                require ext_code.size(governanceAddress)
                staticcall governanceAddress.tokenBallots(address rg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3104 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3104] == mem[_3104 + 12 len 20]
                mem[160] = mem[_3104 + 12 len 20]
                require ext_code.size(arg1)
                staticcall arg1.value() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3136 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[640] = mem[_3136]
                if mem[448] != 1:
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[108 len 20]
                    mem[mem[64] + 64] = arg1
                    mem[mem[64] + 96] = mem[172 len 20]
                    mem[mem[64] + 128] = 640
                    mem[mem[64] + 672] = _10
                    mem[mem[64] + 704 len ceil32(_10)] = mem[(2 * ceil32(return_data.size)) + 768 len ceil32(_10)]
                    if ceil32(_10) > _10:
                        mem[mem[64] + _10 + 704] = 0
                    mem[mem[64] + 160] = ceil32(_10) + 672
                    mem[ceil32(_10) + mem[64] + 704] = _796
                    mem[ceil32(_10) + mem[64] + 736 len ceil32(_796)] = mem[_792 + ceil32(return_data.size) + 32 len ceil32(_796)]
                    if ceil32(_796) > _796:
                        mem[ceil32(_10) + mem[64] + _796 + 736] = 0
                    mem[mem[64] + 192] = mem[256]
                    mem[mem[64] + 224] = mem[288]
                    mem[mem[64] + 256] = 1
                    mem[mem[64] + 288] = mem[352]
                    mem[mem[64] + 320] = mem[384]
                    mem[mem[64] + 352] = mem[416]
                    mem[mem[64] + 384] = mem[448]
                    mem[mem[64] + 416] = mem[480]
                    mem[mem[64] + 448] = bool(mem[512])
                    mem[mem[64] + 480] = bool(mem[544])
                    mem[mem[64] + 512] = mem[576]
                    mem[mem[64] + 544] = bool(mem[608])
                    mem[mem[64] + 640] = 0
                    return 32, mem[mem[64] + 32], 
                           address(arg1),
                           mem[mem[64] + 96],
                           640,
                           ceil32(_10) + 672,
                           mem[mem[64] + 192 len 64],
                           1,
                           mem[mem[64] + 288 len 192],
                           bool(mem[544]),
                           mem[576],
                           mem[mem[64] + 544],
                           mem[640],
                           0,
                           0,
                           _10,
                           mem[mem[64] + 704 len ceil32(_796) + ceil32(_10) + 32]
                mem[mem[64] + 4] = arg1
                require ext_code.size(governanceAddress)
                staticcall governanceAddress.configBallots(address rg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3194 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3212 = mem[_3194]
                mem[672] = mem[_3194]
                mem[mem[64] + 4] = _3212
                require ext_code.size(governanceAddress)
                staticcall governanceAddress.getConfigValue(bytes32 rg1) with:
                        gas gas_remaining wei
                       args _3212
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3256 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[704] = mem[_3256]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[108 len 20]
                mem[mem[64] + 64] = arg1
                mem[mem[64] + 96] = mem[172 len 20]
                mem[mem[64] + 128] = 640
                mem[mem[64] + 672] = _10
                mem[mem[64] + 704 len ceil32(_10)] = mem[(2 * ceil32(return_data.size)) + 768 len ceil32(_10)]
                if ceil32(_10) > _10:
                    mem[mem[64] + _10 + 704] = 0
                mem[mem[64] + 160] = ceil32(_10) + 672
                mem[ceil32(_10) + mem[64] + 704] = _796
                mem[ceil32(_10) + mem[64] + 736 len ceil32(_796)] = mem[_792 + ceil32(return_data.size) + 32 len ceil32(_796)]
                if ceil32(_796) > _796:
                    mem[ceil32(_10) + mem[64] + _796 + 736] = 0
                mem[mem[64] + 192] = mem[256]
                mem[mem[64] + 224] = mem[288]
                mem[mem[64] + 256] = 1
                mem[mem[64] + 288] = mem[352]
                mem[mem[64] + 320] = mem[384]
                mem[mem[64] + 352] = mem[416]
                mem[mem[64] + 384] = mem[448]
                mem[mem[64] + 416] = mem[480]
                mem[mem[64] + 448] = bool(mem[512])
                mem[mem[64] + 480] = bool(mem[544])
                mem[mem[64] + 512] = mem[576]
                mem[mem[64] + 544] = bool(mem[608])
                mem[mem[64] + 576] = mem[640]
                mem[mem[64] + 608] = mem[672]
                mem[mem[64] + 640] = mem[704]
                return 32, mem[mem[64] + 32], 
                       address(arg1),
                       mem[mem[64] + 96],
                       640,
                       ceil32(_10) + 672,
                       mem[mem[64] + 192 len 64],
                       1,
                       mem[mem[64] + 288 len 288],
                       mem[640],
                       mem[672],
                       mem[704],
                       _10,
                       mem[mem[64] + 704 len ceil32(_796) + ceil32(_10) + 32]
            mem[320] = 0
            require ext_code.size(arg1)
            staticcall arg1.ended() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2697 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2697] == bool(mem[_2697])
            mem[608] = bool(mem[_2697])
            mem[mem[64] + 4] = 1
            require ext_code.size(arg1)
            staticcall arg1.proposals(uint256 rg1) with:
                    gas gas_remaining wei
                   args 1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2729 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[352] = mem[_2729]
            mem[mem[64] + 4] = 2
            require ext_code.size(arg1)
            staticcall arg1.proposals(uint256 rg1) with:
                    gas gas_remaining wei
                   args 2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2761 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[384] = mem[_2761]
            mem[mem[64] + 4] = arg1
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.rewardOf(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2793 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[416] = mem[_2793]
            mem[128] = arg1
            require ext_code.size(arg1)
            staticcall arg1.voters(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2825 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2833 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            mem[_2833] = mem[_2825]
            require mem[_2825 + 32] == bool(mem[_2825 + 32])
            mem[_2833 + 32] = mem[_2825 + 32]
            require mem[_2825 + 64] == mem[_2825 + 76 len 20]
            mem[_2833 + 64] = mem[_2825 + 64]
            mem[_2833 + 96] = mem[_2825 + 96]
            mem[544] = bool(mem[_2833 + 32])
            require ext_code.size(arg1)
            staticcall arg1.voters(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2897 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2905 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            mem[_2905] = mem[_2897]
            require mem[_2897 + 32] == bool(mem[_2897 + 32])
            mem[_2905 + 32] = mem[_2897 + 32]
            require mem[_2897 + 64] == mem[_2897 + 76 len 20]
            mem[_2905 + 64] = mem[_2897 + 64]
            mem[_2905 + 96] = mem[_2897 + 96]
            mem[576] = mem[_2905 + 96]
            require ext_code.size(arg1)
            staticcall arg1.voters(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2969 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2977 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            mem[_2977] = mem[_2969]
            require mem[_2969 + 32] == bool(mem[_2969 + 32])
            mem[_2977 + 32] = mem[_2969 + 32]
            require mem[_2969 + 64] == mem[_2969 + 76 len 20]
            mem[_2977 + 64] = mem[_2969 + 64]
            mem[_2977 + 96] = mem[_2969 + 96]
            mem[480] = mem[_2977]
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = msg.sender
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.collectUsers(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3041 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[512] = 1 == mem[_3041]
            mem[mem[64] + 4] = arg1
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.ballotTypes(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3073 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[448] = mem[_3073]
            mem[mem[64] + 4] = arg1
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.tokenBallots(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3105 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3105] == mem[_3105 + 12 len 20]
            mem[160] = mem[_3105 + 12 len 20]
            require ext_code.size(arg1)
            staticcall arg1.value() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3137 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[640] = mem[_3137]
            if mem[448] != 1:
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[108 len 20]
                mem[mem[64] + 64] = arg1
                mem[mem[64] + 96] = mem[172 len 20]
                mem[mem[64] + 128] = 640
                mem[mem[64] + 672] = _10
                mem[mem[64] + 704 len ceil32(_10)] = mem[(2 * ceil32(return_data.size)) + 768 len ceil32(_10)]
                if ceil32(_10) > _10:
                    mem[mem[64] + _10 + 704] = 0
                mem[mem[64] + 160] = ceil32(_10) + 672
                mem[ceil32(_10) + mem[64] + 704] = _796
                mem[ceil32(_10) + mem[64] + 736 len ceil32(_796)] = mem[_792 + ceil32(return_data.size) + 32 len ceil32(_796)]
                if ceil32(_796) > _796:
                    mem[ceil32(_10) + mem[64] + _796 + 736] = 0
                mem[mem[64] + 192] = mem[256]
                mem[mem[64] + 224] = mem[288]
                mem[mem[64] + 256] = 0
                mem[mem[64] + 288] = mem[352]
                mem[mem[64] + 320] = mem[384]
                mem[mem[64] + 352] = mem[416]
                mem[mem[64] + 384] = mem[448]
                mem[mem[64] + 416] = mem[480]
                mem[mem[64] + 448] = bool(mem[512])
                mem[mem[64] + 480] = bool(mem[544])
                mem[mem[64] + 512] = mem[576]
                mem[mem[64] + 544] = bool(mem[608])
                mem[mem[64] + 640] = 0
                return 32, mem[mem[64] + 32], 
                       address(arg1),
                       mem[mem[64] + 96],
                       640,
                       ceil32(_10) + 672,
                       mem[mem[64] + 192 len 64],
                       0,
                       mem[mem[64] + 288 len 192],
                       bool(mem[544]),
                       mem[576],
                       mem[mem[64] + 544],
                       mem[640],
                       0,
                       0,
                       _10,
                       mem[mem[64] + 704 len ceil32(_796) + ceil32(_10) + 32]
            mem[mem[64] + 4] = arg1
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.configBallots(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3195 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3213 = mem[_3195]
            mem[672] = mem[_3195]
            mem[mem[64] + 4] = _3213
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.getConfigValue(bytes32 rg1) with:
                    gas gas_remaining wei
                   args _3213
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3257 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[704] = mem[_3257]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[108 len 20]
        mem[mem[64] + 64] = arg1
        mem[mem[64] + 96] = mem[172 len 20]
        mem[mem[64] + 128] = 640
        mem[mem[64] + 672] = _10
        mem[mem[64] + 704 len ceil32(_10)] = mem[(2 * ceil32(return_data.size)) + 768 len ceil32(_10)]
        if ceil32(_10) > _10:
            mem[mem[64] + _10 + 704] = 0
        mem[mem[64] + 160] = ceil32(_10) + 672
        mem[ceil32(_10) + mem[64] + 704] = _796
        mem[ceil32(_10) + mem[64] + 736 len ceil32(_796)] = mem[_792 + ceil32(return_data.size) + 32 len ceil32(_796)]
        if ceil32(_796) > _796:
            mem[ceil32(_10) + mem[64] + _796 + 736] = 0
        mem[mem[64] + 192] = mem[256]
        mem[mem[64] + 224] = mem[288]
        mem[mem[64] + 256] = 0
        mem[mem[64] + 288] = mem[352]
        mem[mem[64] + 320] = mem[384]
        mem[mem[64] + 352] = mem[416]
        mem[mem[64] + 384] = mem[448]
        mem[mem[64] + 416] = mem[480]
        mem[mem[64] + 448] = bool(mem[512])
        mem[mem[64] + 480] = bool(mem[544])
        mem[mem[64] + 512] = mem[576]
        mem[mem[64] + 544] = bool(mem[608])
        mem[mem[64] + 576] = mem[640]
        mem[mem[64] + 608] = mem[672]
        mem[mem[64] + 640] = mem[704]
        return 32, mem[mem[64] + 32], 
               address(arg1),
               mem[mem[64] + 96],
               640,
               ceil32(_10) + 672,
               mem[mem[64] + 192 len 64],
               0,
               mem[mem[64] + 288 len 288],
               mem[640],
               mem[672],
               mem[704],
               _10,
               mem[mem[64] + 704 len ceil32(_796) + ceil32(_10) + 32]
    mem[(2 * ceil32(return_data.size)) + _10 + 768] = 0
    mem[192] = (2 * ceil32(return_data.size)) + 736
    mem[mem[64]] = 0x8a4d5a6700000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.content() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _793 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _795 = mem[_793]
    require mem[_793] <= test266151307()
    require _793 + mem[_793] + 31 < _793 + return_data.size
    _797 = mem[_793 + mem[_793]]
    require mem[_793 + mem[_793]] <= test266151307()
    require ceil32(mem[_793 + mem[_793]]) + 32 >= 0 and _793 + ceil32(return_data.size) + ceil32(mem[_793 + mem[_793]]) + 32 <= test266151307()
    mem[64] = _793 + ceil32(return_data.size) + ceil32(mem[_793 + mem[_793]]) + 32
    mem[_793 + ceil32(return_data.size)] = _797
    require _795 + _797 + 32 <= return_data.size
    mem[_793 + ceil32(return_data.size) + 32 len ceil32(_797)] = mem[_793 + _795 + 32 len ceil32(_797)]
    if ceil32(_797) <= _797:
        mem[224] = _793 + ceil32(return_data.size)
        require ext_code.size(arg1)
        staticcall arg1.createTime() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2637 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[256] = mem[_2637]
        require ext_code.size(arg1)
        staticcall arg1.endBlockNumber() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2653 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[288] = mem[_2653]
        require ext_code.size(arg1)
        staticcall arg1.endBlockNumber() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2669 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.number > mem[_2669]:
            mem[320] = 1
            require ext_code.size(arg1)
            staticcall arg1.ended() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2694 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2694] == bool(mem[_2694])
            mem[608] = bool(mem[_2694])
            mem[mem[64] + 4] = 1
            require ext_code.size(arg1)
            staticcall arg1.proposals(uint256 rg1) with:
                    gas gas_remaining wei
                   args 1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2726 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[352] = mem[_2726]
            mem[mem[64] + 4] = 2
            require ext_code.size(arg1)
            staticcall arg1.proposals(uint256 rg1) with:
                    gas gas_remaining wei
                   args 2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2758 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[384] = mem[_2758]
            mem[mem[64] + 4] = arg1
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.rewardOf(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2790 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[416] = mem[_2790]
            mem[128] = arg1
            require ext_code.size(arg1)
            staticcall arg1.voters(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2822 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2830 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            mem[_2830] = mem[_2822]
            require mem[_2822 + 32] == bool(mem[_2822 + 32])
            mem[_2830 + 32] = mem[_2822 + 32]
            require mem[_2822 + 64] == mem[_2822 + 76 len 20]
            mem[_2830 + 64] = mem[_2822 + 64]
            mem[_2830 + 96] = mem[_2822 + 96]
            mem[544] = bool(mem[_2830 + 32])
            require ext_code.size(arg1)
            staticcall arg1.voters(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2894 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2902 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            mem[_2902] = mem[_2894]
            require mem[_2894 + 32] == bool(mem[_2894 + 32])
            mem[_2902 + 32] = mem[_2894 + 32]
            require mem[_2894 + 64] == mem[_2894 + 76 len 20]
            mem[_2902 + 64] = mem[_2894 + 64]
            mem[_2902 + 96] = mem[_2894 + 96]
            mem[576] = mem[_2902 + 96]
            require ext_code.size(arg1)
            staticcall arg1.voters(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2966 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2974 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            mem[_2974] = mem[_2966]
            require mem[_2966 + 32] == bool(mem[_2966 + 32])
            mem[_2974 + 32] = mem[_2966 + 32]
            require mem[_2966 + 64] == mem[_2966 + 76 len 20]
            mem[_2974 + 64] = mem[_2966 + 64]
            mem[_2974 + 96] = mem[_2966 + 96]
            mem[480] = mem[_2974]
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = msg.sender
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.collectUsers(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3038 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[512] = 1 == mem[_3038]
            mem[mem[64] + 4] = arg1
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.ballotTypes(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3070 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[448] = mem[_3070]
            mem[mem[64] + 4] = arg1
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.tokenBallots(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3102 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3102] == mem[_3102 + 12 len 20]
            mem[160] = mem[_3102 + 12 len 20]
            require ext_code.size(arg1)
            staticcall arg1.value() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3134 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[640] = mem[_3134]
            if mem[448] != 1:
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[108 len 20]
                mem[mem[64] + 64] = arg1
                mem[mem[64] + 96] = mem[172 len 20]
                mem[mem[64] + 128] = 640
                mem[mem[64] + 672] = _10
                mem[mem[64] + 704 len ceil32(_10)] = mem[(2 * ceil32(return_data.size)) + 768 len ceil32(_10)]
                if ceil32(_10) > _10:
                    mem[mem[64] + _10 + 704] = 0
                mem[mem[64] + 160] = ceil32(_10) + 672
                mem[ceil32(_10) + mem[64] + 704] = _797
                mem[ceil32(_10) + mem[64] + 736 len ceil32(_797)] = mem[_793 + ceil32(return_data.size) + 32 len ceil32(_797)]
                if ceil32(_797) > _797:
                    mem[ceil32(_10) + mem[64] + _797 + 736] = 0
                mem[mem[64] + 192] = mem[256]
                mem[mem[64] + 224] = mem[288]
                mem[mem[64] + 256] = 1
                mem[mem[64] + 288] = mem[352]
                mem[mem[64] + 320] = mem[384]
                mem[mem[64] + 352] = mem[416]
                mem[mem[64] + 384] = mem[448]
                mem[mem[64] + 416] = mem[480]
                mem[mem[64] + 448] = bool(mem[512])
                mem[mem[64] + 480] = bool(mem[544])
                mem[mem[64] + 512] = mem[576]
                mem[mem[64] + 544] = bool(mem[608])
                mem[mem[64] + 640] = 0
                return 32, mem[mem[64] + 32], 
                       address(arg1),
                       mem[mem[64] + 96],
                       640,
                       ceil32(_10) + 672,
                       mem[mem[64] + 192 len 64],
                       1,
                       mem[mem[64] + 288 len 192],
                       bool(mem[544]),
                       mem[576],
                       mem[mem[64] + 544],
                       mem[640],
                       0,
                       0,
                       _10,
                       mem[mem[64] + 704 len ceil32(_797) + ceil32(_10) + 32]
            mem[mem[64] + 4] = arg1
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.configBallots(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3188 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3204 = mem[_3188]
            mem[672] = mem[_3188]
            mem[mem[64] + 4] = _3204
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.getConfigValue(bytes32 rg1) with:
                    gas gas_remaining wei
                   args _3204
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3252 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[704] = mem[_3252]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[108 len 20]
            mem[mem[64] + 64] = arg1
            mem[mem[64] + 96] = mem[172 len 20]
            mem[mem[64] + 128] = 640
            mem[mem[64] + 672] = _10
            mem[mem[64] + 704 len ceil32(_10)] = mem[(2 * ceil32(return_data.size)) + 768 len ceil32(_10)]
            if ceil32(_10) > _10:
                mem[mem[64] + _10 + 704] = 0
            mem[mem[64] + 160] = ceil32(_10) + 672
            mem[ceil32(_10) + mem[64] + 704] = _797
            mem[ceil32(_10) + mem[64] + 736 len ceil32(_797)] = mem[_793 + ceil32(return_data.size) + 32 len ceil32(_797)]
            if ceil32(_797) > _797:
                mem[ceil32(_10) + mem[64] + _797 + 736] = 0
            mem[mem[64] + 192] = mem[256]
            mem[mem[64] + 224] = mem[288]
            mem[mem[64] + 256] = 1
            mem[mem[64] + 288] = mem[352]
            mem[mem[64] + 320] = mem[384]
            mem[mem[64] + 352] = mem[416]
            mem[mem[64] + 384] = mem[448]
            mem[mem[64] + 416] = mem[480]
            mem[mem[64] + 448] = bool(mem[512])
            mem[mem[64] + 480] = bool(mem[544])
            mem[mem[64] + 512] = mem[576]
            mem[mem[64] + 544] = bool(mem[608])
            mem[mem[64] + 576] = mem[640]
            mem[mem[64] + 608] = mem[672]
            mem[mem[64] + 640] = mem[704]
            return 32, mem[mem[64] + 32], 
                   address(arg1),
                   mem[mem[64] + 96],
                   640,
                   ceil32(_10) + 672,
                   mem[mem[64] + 192 len 64],
                   1,
                   mem[mem[64] + 288 len 288],
                   mem[640],
                   mem[672],
                   mem[704],
                   _10,
                   mem[mem[64] + 704 len ceil32(_797) + ceil32(_10) + 32]
        mem[320] = 0
        require ext_code.size(arg1)
        staticcall arg1.ended() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2695 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2695] == bool(mem[_2695])
        mem[608] = bool(mem[_2695])
        mem[mem[64] + 4] = 1
        require ext_code.size(arg1)
        staticcall arg1.proposals(uint256 rg1) with:
                gas gas_remaining wei
               args 1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2727 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[352] = mem[_2727]
        mem[mem[64] + 4] = 2
        require ext_code.size(arg1)
        staticcall arg1.proposals(uint256 rg1) with:
                gas gas_remaining wei
               args 2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2759 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[384] = mem[_2759]
        mem[mem[64] + 4] = arg1
        require ext_code.size(governanceAddress)
        staticcall governanceAddress.rewardOf(address rg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2791 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[416] = mem[_2791]
        mem[128] = arg1
        require ext_code.size(arg1)
        staticcall arg1.voters(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2823 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _2831 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        mem[_2831] = mem[_2823]
        require mem[_2823 + 32] == bool(mem[_2823 + 32])
        mem[_2831 + 32] = mem[_2823 + 32]
        require mem[_2823 + 64] == mem[_2823 + 76 len 20]
        mem[_2831 + 64] = mem[_2823 + 64]
        mem[_2831 + 96] = mem[_2823 + 96]
        mem[544] = bool(mem[_2831 + 32])
        require ext_code.size(arg1)
        staticcall arg1.voters(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2895 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _2903 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        mem[_2903] = mem[_2895]
        require mem[_2895 + 32] == bool(mem[_2895 + 32])
        mem[_2903 + 32] = mem[_2895 + 32]
        require mem[_2895 + 64] == mem[_2895 + 76 len 20]
        mem[_2903 + 64] = mem[_2895 + 64]
        mem[_2903 + 96] = mem[_2895 + 96]
        mem[576] = mem[_2903 + 96]
        require ext_code.size(arg1)
        staticcall arg1.voters(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2967 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _2975 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        mem[_2975] = mem[_2967]
        require mem[_2967 + 32] == bool(mem[_2967 + 32])
        mem[_2975 + 32] = mem[_2967 + 32]
        require mem[_2967 + 64] == mem[_2967 + 76 len 20]
        mem[_2975 + 64] = mem[_2967 + 64]
        mem[_2975 + 96] = mem[_2967 + 96]
        mem[480] = mem[_2975]
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = msg.sender
        require ext_code.size(governanceAddress)
        staticcall governanceAddress.collectUsers(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg1), msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3039 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[512] = 1 == mem[_3039]
        mem[mem[64] + 4] = arg1
        require ext_code.size(governanceAddress)
        staticcall governanceAddress.ballotTypes(address rg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3071 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[448] = mem[_3071]
        mem[mem[64] + 4] = arg1
        require ext_code.size(governanceAddress)
        staticcall governanceAddress.tokenBallots(address rg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3103 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_3103] == mem[_3103 + 12 len 20]
        mem[160] = mem[_3103 + 12 len 20]
        require ext_code.size(arg1)
        staticcall arg1.value() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3135 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[640] = mem[_3135]
        if mem[448] != 1:
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[108 len 20]
            mem[mem[64] + 64] = arg1
            mem[mem[64] + 96] = mem[172 len 20]
            mem[mem[64] + 128] = 640
            mem[mem[64] + 672] = _10
            mem[mem[64] + 704 len ceil32(_10)] = mem[(2 * ceil32(return_data.size)) + 768 len ceil32(_10)]
            if ceil32(_10) > _10:
                mem[mem[64] + _10 + 704] = 0
            mem[mem[64] + 160] = ceil32(_10) + 672
            mem[ceil32(_10) + mem[64] + 704] = _797
            mem[ceil32(_10) + mem[64] + 736 len ceil32(_797)] = mem[_793 + ceil32(return_data.size) + 32 len ceil32(_797)]
            if ceil32(_797) > _797:
                mem[ceil32(_10) + mem[64] + _797 + 736] = 0
            mem[mem[64] + 192] = mem[256]
            mem[mem[64] + 224] = mem[288]
            mem[mem[64] + 256] = 0
            mem[mem[64] + 288] = mem[352]
            mem[mem[64] + 320] = mem[384]
            mem[mem[64] + 352] = mem[416]
            mem[mem[64] + 384] = mem[448]
            mem[mem[64] + 416] = mem[480]
            mem[mem[64] + 448] = bool(mem[512])
            mem[mem[64] + 480] = bool(mem[544])
            mem[mem[64] + 512] = mem[576]
            mem[mem[64] + 544] = bool(mem[608])
            mem[mem[64] + 640] = 0
            return 32, mem[mem[64] + 32], 
                   address(arg1),
                   mem[mem[64] + 96],
                   640,
                   ceil32(_10) + 672,
                   mem[mem[64] + 192 len 64],
                   0,
                   mem[mem[64] + 288 len 192],
                   bool(mem[544]),
                   mem[576],
                   mem[mem[64] + 544],
                   mem[640],
                   0,
                   0,
                   _10,
                   mem[mem[64] + 704 len ceil32(_797) + ceil32(_10) + 32]
        mem[mem[64] + 4] = arg1
        require ext_code.size(governanceAddress)
        staticcall governanceAddress.configBallots(address rg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3189 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3205 = mem[_3189]
        mem[672] = mem[_3189]
        mem[mem[64] + 4] = _3205
        require ext_code.size(governanceAddress)
        staticcall governanceAddress.getConfigValue(bytes32 rg1) with:
                gas gas_remaining wei
               args _3205
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3253 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[704] = mem[_3253]
    else:
        mem[_793 + ceil32(return_data.size) + _797 + 32] = 0
        mem[224] = _793 + ceil32(return_data.size)
        require ext_code.size(arg1)
        staticcall arg1.createTime() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2639 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[256] = mem[_2639]
        require ext_code.size(arg1)
        staticcall arg1.endBlockNumber() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2655 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[288] = mem[_2655]
        require ext_code.size(arg1)
        staticcall arg1.endBlockNumber() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2671 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.number > mem[_2671]:
            mem[320] = 1
            require ext_code.size(arg1)
            staticcall arg1.ended() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2698 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2698] == bool(mem[_2698])
            mem[608] = bool(mem[_2698])
            mem[mem[64] + 4] = 1
            require ext_code.size(arg1)
            staticcall arg1.proposals(uint256 rg1) with:
                    gas gas_remaining wei
                   args 1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2730 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[352] = mem[_2730]
            mem[mem[64] + 4] = 2
            require ext_code.size(arg1)
            staticcall arg1.proposals(uint256 rg1) with:
                    gas gas_remaining wei
                   args 2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2762 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[384] = mem[_2762]
            mem[mem[64] + 4] = arg1
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.rewardOf(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2794 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[416] = mem[_2794]
            mem[128] = arg1
            require ext_code.size(arg1)
            staticcall arg1.voters(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2826 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2834 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            mem[_2834] = mem[_2826]
            require mem[_2826 + 32] == bool(mem[_2826 + 32])
            mem[_2834 + 32] = mem[_2826 + 32]
            require mem[_2826 + 64] == mem[_2826 + 76 len 20]
            mem[_2834 + 64] = mem[_2826 + 64]
            mem[_2834 + 96] = mem[_2826 + 96]
            mem[544] = bool(mem[_2834 + 32])
            require ext_code.size(arg1)
            staticcall arg1.voters(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2898 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2906 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            mem[_2906] = mem[_2898]
            require mem[_2898 + 32] == bool(mem[_2898 + 32])
            mem[_2906 + 32] = mem[_2898 + 32]
            require mem[_2898 + 64] == mem[_2898 + 76 len 20]
            mem[_2906 + 64] = mem[_2898 + 64]
            mem[_2906 + 96] = mem[_2898 + 96]
            mem[576] = mem[_2906 + 96]
            require ext_code.size(arg1)
            staticcall arg1.voters(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2970 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _2978 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            mem[_2978] = mem[_2970]
            require mem[_2970 + 32] == bool(mem[_2970 + 32])
            mem[_2978 + 32] = mem[_2970 + 32]
            require mem[_2970 + 64] == mem[_2970 + 76 len 20]
            mem[_2978 + 64] = mem[_2970 + 64]
            mem[_2978 + 96] = mem[_2970 + 96]
            mem[480] = mem[_2978]
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = msg.sender
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.collectUsers(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3042 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[512] = 1 == mem[_3042]
            mem[mem[64] + 4] = arg1
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.ballotTypes(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3074 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[448] = mem[_3074]
            mem[mem[64] + 4] = arg1
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.tokenBallots(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3106 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3106] == mem[_3106 + 12 len 20]
            mem[160] = mem[_3106 + 12 len 20]
            require ext_code.size(arg1)
            staticcall arg1.value() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3138 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[640] = mem[_3138]
            if mem[448] != 1:
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[108 len 20]
                mem[mem[64] + 64] = arg1
                mem[mem[64] + 96] = mem[172 len 20]
                mem[mem[64] + 128] = 640
                mem[mem[64] + 672] = _10
                mem[mem[64] + 704 len ceil32(_10)] = mem[(2 * ceil32(return_data.size)) + 768 len ceil32(_10)]
                if ceil32(_10) > _10:
                    mem[mem[64] + _10 + 704] = 0
                mem[mem[64] + 160] = ceil32(_10) + 672
                mem[ceil32(_10) + mem[64] + 704] = _797
                mem[ceil32(_10) + mem[64] + 736 len ceil32(_797)] = mem[_793 + ceil32(return_data.size) + 32 len ceil32(_797)]
                if ceil32(_797) > _797:
                    mem[ceil32(_10) + mem[64] + _797 + 736] = 0
                mem[mem[64] + 192] = mem[256]
                mem[mem[64] + 224] = mem[288]
                mem[mem[64] + 256] = 1
                mem[mem[64] + 288] = mem[352]
                mem[mem[64] + 320] = mem[384]
                mem[mem[64] + 352] = mem[416]
                mem[mem[64] + 384] = mem[448]
                mem[mem[64] + 416] = mem[480]
                mem[mem[64] + 448] = bool(mem[512])
                mem[mem[64] + 480] = bool(mem[544])
                mem[mem[64] + 512] = mem[576]
                mem[mem[64] + 544] = bool(mem[608])
                mem[mem[64] + 640] = 0
                return 32, mem[mem[64] + 32], 
                       address(arg1),
                       mem[mem[64] + 96],
                       640,
                       ceil32(_10) + 672,
                       mem[mem[64] + 192 len 64],
                       1,
                       mem[mem[64] + 288 len 192],
                       bool(mem[544]),
                       mem[576],
                       mem[mem[64] + 544],
                       mem[640],
                       0,
                       0,
                       _10,
                       mem[mem[64] + 704 len ceil32(_797) + ceil32(_10) + 32]
            mem[mem[64] + 4] = arg1
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.configBallots(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3198 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3218 = mem[_3198]
            mem[672] = mem[_3198]
            mem[mem[64] + 4] = _3218
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.getConfigValue(bytes32 rg1) with:
                    gas gas_remaining wei
                   args _3218
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3258 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[704] = mem[_3258]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[108 len 20]
            mem[mem[64] + 64] = arg1
            mem[mem[64] + 96] = mem[172 len 20]
            mem[mem[64] + 128] = 640
            mem[mem[64] + 672] = _10
            mem[mem[64] + 704 len ceil32(_10)] = mem[(2 * ceil32(return_data.size)) + 768 len ceil32(_10)]
            if ceil32(_10) > _10:
                mem[mem[64] + _10 + 704] = 0
            mem[mem[64] + 160] = ceil32(_10) + 672
            mem[ceil32(_10) + mem[64] + 704] = _797
            mem[ceil32(_10) + mem[64] + 736 len ceil32(_797)] = mem[_793 + ceil32(return_data.size) + 32 len ceil32(_797)]
            if ceil32(_797) > _797:
                mem[ceil32(_10) + mem[64] + _797 + 736] = 0
            mem[mem[64] + 192] = mem[256]
            mem[mem[64] + 224] = mem[288]
            mem[mem[64] + 256] = 1
            mem[mem[64] + 288] = mem[352]
            mem[mem[64] + 320] = mem[384]
            mem[mem[64] + 352] = mem[416]
            mem[mem[64] + 384] = mem[448]
            mem[mem[64] + 416] = mem[480]
            mem[mem[64] + 448] = bool(mem[512])
            mem[mem[64] + 480] = bool(mem[544])
            mem[mem[64] + 512] = mem[576]
            mem[mem[64] + 544] = bool(mem[608])
            mem[mem[64] + 576] = mem[640]
            mem[mem[64] + 608] = mem[672]
            mem[mem[64] + 640] = mem[704]
            return 32, mem[mem[64] + 32], 
                   address(arg1),
                   mem[mem[64] + 96],
                   640,
                   ceil32(_10) + 672,
                   mem[mem[64] + 192 len 64],
                   1,
                   mem[mem[64] + 288 len 288],
                   mem[640],
                   mem[672],
                   mem[704],
                   _10,
                   mem[mem[64] + 704 len ceil32(_797) + ceil32(_10) + 32]
        mem[320] = 0
        require ext_code.size(arg1)
        staticcall arg1.ended() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2699 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2699] == bool(mem[_2699])
        mem[608] = bool(mem[_2699])
        mem[mem[64] + 4] = 1
        require ext_code.size(arg1)
        staticcall arg1.proposals(uint256 rg1) with:
                gas gas_remaining wei
               args 1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2731 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[352] = mem[_2731]
        mem[mem[64] + 4] = 2
        require ext_code.size(arg1)
        staticcall arg1.proposals(uint256 rg1) with:
                gas gas_remaining wei
               args 2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2763 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[384] = mem[_2763]
        mem[mem[64] + 4] = arg1
        require ext_code.size(governanceAddress)
        staticcall governanceAddress.rewardOf(address rg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2795 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[416] = mem[_2795]
        mem[128] = arg1
        require ext_code.size(arg1)
        staticcall arg1.voters(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2827 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _2835 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        mem[_2835] = mem[_2827]
        require mem[_2827 + 32] == bool(mem[_2827 + 32])
        mem[_2835 + 32] = mem[_2827 + 32]
        require mem[_2827 + 64] == mem[_2827 + 76 len 20]
        mem[_2835 + 64] = mem[_2827 + 64]
        mem[_2835 + 96] = mem[_2827 + 96]
        mem[544] = bool(mem[_2835 + 32])
        require ext_code.size(arg1)
        staticcall arg1.voters(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2899 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _2907 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        mem[_2907] = mem[_2899]
        require mem[_2899 + 32] == bool(mem[_2899 + 32])
        mem[_2907 + 32] = mem[_2899 + 32]
        require mem[_2899 + 64] == mem[_2899 + 76 len 20]
        mem[_2907 + 64] = mem[_2899 + 64]
        mem[_2907 + 96] = mem[_2899 + 96]
        mem[576] = mem[_2907 + 96]
        require ext_code.size(arg1)
        staticcall arg1.voters(address rg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2971 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _2979 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        mem[_2979] = mem[_2971]
        require mem[_2971 + 32] == bool(mem[_2971 + 32])
        mem[_2979 + 32] = mem[_2971 + 32]
        require mem[_2971 + 64] == mem[_2971 + 76 len 20]
        mem[_2979 + 64] = mem[_2971 + 64]
        mem[_2979 + 96] = mem[_2971 + 96]
        mem[480] = mem[_2979]
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = msg.sender
        require ext_code.size(governanceAddress)
        staticcall governanceAddress.collectUsers(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg1), msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3043 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[512] = 1 == mem[_3043]
        mem[mem[64] + 4] = arg1
        require ext_code.size(governanceAddress)
        staticcall governanceAddress.ballotTypes(address rg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3075 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[448] = mem[_3075]
        mem[mem[64] + 4] = arg1
        require ext_code.size(governanceAddress)
        staticcall governanceAddress.tokenBallots(address rg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3107 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_3107] == mem[_3107 + 12 len 20]
        mem[160] = mem[_3107 + 12 len 20]
        require ext_code.size(arg1)
        staticcall arg1.value() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3139 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[640] = mem[_3139]
        if mem[448] != 1:
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[108 len 20]
            mem[mem[64] + 64] = arg1
            mem[mem[64] + 96] = mem[172 len 20]
            mem[mem[64] + 128] = 640
            mem[mem[64] + 672] = _10
            mem[mem[64] + 704 len ceil32(_10)] = mem[(2 * ceil32(return_data.size)) + 768 len ceil32(_10)]
            if ceil32(_10) > _10:
                mem[mem[64] + _10 + 704] = 0
            mem[mem[64] + 160] = ceil32(_10) + 672
            mem[ceil32(_10) + mem[64] + 704] = _797
            mem[ceil32(_10) + mem[64] + 736 len ceil32(_797)] = mem[_793 + ceil32(return_data.size) + 32 len ceil32(_797)]
            if ceil32(_797) > _797:
                mem[ceil32(_10) + mem[64] + _797 + 736] = 0
            mem[mem[64] + 192] = mem[256]
            mem[mem[64] + 224] = mem[288]
            mem[mem[64] + 256] = 0
            mem[mem[64] + 288] = mem[352]
            mem[mem[64] + 320] = mem[384]
            mem[mem[64] + 352] = mem[416]
            mem[mem[64] + 384] = mem[448]
            mem[mem[64] + 416] = mem[480]
            mem[mem[64] + 448] = bool(mem[512])
            mem[mem[64] + 480] = bool(mem[544])
            mem[mem[64] + 512] = mem[576]
            mem[mem[64] + 544] = bool(mem[608])
            mem[mem[64] + 640] = 0
            return 32, mem[mem[64] + 32], 
                   address(arg1),
                   mem[mem[64] + 96],
                   640,
                   ceil32(_10) + 672,
                   mem[mem[64] + 192 len 64],
                   0,
                   mem[mem[64] + 288 len 192],
                   bool(mem[544]),
                   mem[576],
                   mem[mem[64] + 544],
                   mem[640],
                   0,
                   0,
                   _10,
                   mem[mem[64] + 704 len ceil32(_797) + ceil32(_10) + 32]
        mem[mem[64] + 4] = arg1
        require ext_code.size(governanceAddress)
        staticcall governanceAddress.configBallots(address rg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3199 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3219 = mem[_3199]
        mem[672] = mem[_3199]
        mem[mem[64] + 4] = _3219
        require ext_code.size(governanceAddress)
        staticcall governanceAddress.getConfigValue(bytes32 rg1) with:
                gas gas_remaining wei
               args _3219
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3259 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[704] = mem[_3259]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[108 len 20]
    mem[mem[64] + 64] = arg1
    mem[mem[64] + 96] = mem[172 len 20]
    mem[mem[64] + 128] = 640
    mem[mem[64] + 672] = _10
    mem[mem[64] + 704 len ceil32(_10)] = mem[(2 * ceil32(return_data.size)) + 768 len ceil32(_10)]
    if ceil32(_10) > _10:
        mem[mem[64] + _10 + 704] = 0
    mem[mem[64] + 160] = ceil32(_10) + 672
    mem[ceil32(_10) + mem[64] + 704] = _797
    mem[ceil32(_10) + mem[64] + 736 len ceil32(_797)] = mem[_793 + ceil32(return_data.size) + 32 len ceil32(_797)]
    if ceil32(_797) > _797:
        mem[ceil32(_10) + mem[64] + _797 + 736] = 0
    mem[mem[64] + 192] = mem[256]
    mem[mem[64] + 224] = mem[288]
    mem[mem[64] + 256] = 0
    mem[mem[64] + 288] = mem[352]
    mem[mem[64] + 320] = mem[384]
    mem[mem[64] + 352] = mem[416]
    mem[mem[64] + 384] = mem[448]
    mem[mem[64] + 416] = mem[480]
    mem[mem[64] + 448] = bool(mem[512])
    mem[mem[64] + 480] = bool(mem[544])
    mem[mem[64] + 512] = mem[576]
    mem[mem[64] + 544] = bool(mem[608])
    mem[mem[64] + 576] = mem[640]
    mem[mem[64] + 608] = mem[672]
    mem[mem[64] + 640] = mem[704]
    return 32, mem[mem[64] + 32], 
           address(arg1),
           mem[mem[64] + 96],
           640,
           ceil32(_10) + 672,
           mem[mem[64] + 192 len 64],
           0,
           mem[mem[64] + 288 len 288],
           mem[640],
           mem[672],
           mem[704],
           _10,
           mem[mem[64] + 704 len ceil32(_797) + ceil32(_10) + 32]
}

function queryProposalList() payable {
    require ext_code.size(governanceAddress)
    staticcall governanceAddress.ballotCount() with:
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
            staticcall governanceAddress.ballots(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1364 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1369 = mem[_1364]
            require mem[_1364] == mem[_1364 + 12 len 20]
            _1381 = mem[64]
            mem[64] = mem[64] + 640
            mem[_1381] = 0
            mem[_1381 + 32] = 0
            mem[_1381 + 64] = 0
            mem[_1381 + 96] = 96
            mem[_1381 + 128] = 96
            mem[_1381 + 160] = 0
            mem[_1381 + 192] = 0
            mem[_1381 + 224] = 0
            mem[_1381 + 256] = 0
            mem[_1381 + 288] = 0
            mem[_1381 + 320] = 0
            mem[_1381 + 352] = 0
            mem[_1381 + 384] = 0
            mem[_1381 + 416] = 0
            mem[_1381 + 448] = 0
            mem[_1381 + 480] = 0
            mem[_1381 + 512] = 0
            mem[_1381 + 544] = 0
            mem[_1381 + 576] = 0
            mem[_1381 + 608] = 0
            require ext_code.size(address(_1369))
            staticcall address(_1369).proposer() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1386 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1386] == mem[_1386 + 12 len 20]
            mem[_1381] = mem[_1386 + 12 len 20]
            mem[mem[64]] = 0xa59a98c00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_1369))
            staticcall address(_1369).subject() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1405 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1408 = mem[_1405]
            require mem[_1405] <= test266151307()
            require _1405 + mem[_1405] + 31 < _1405 + return_data.size
            _1423 = mem[_1405 + mem[_1405]]
            require mem[_1405 + mem[_1405]] <= test266151307()
            require ceil32(mem[_1405 + mem[_1405]]) + 32 >= 0 and _1405 + ceil32(return_data.size) + ceil32(mem[_1405 + mem[_1405]]) + 32 <= test266151307()
            mem[64] = _1405 + ceil32(return_data.size) + ceil32(mem[_1405 + mem[_1405]]) + 32
            mem[_1405 + ceil32(return_data.size)] = _1423
            require _1408 + _1423 + 32 <= return_data.size
            s = 0
            while s < _1423:
                mem[s + _1405 + ceil32(return_data.size) + 32] = mem[s + _1405 + _1408 + 32]
                s = s + 32
                continue 
            if ceil32(_1423) <= _1423:
                mem[_1381 + 96] = _1405 + ceil32(return_data.size)
                mem[mem[64]] = 0x8a4d5a6700000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1369))
                staticcall address(_1369).content() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2790 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2795 = mem[_2790]
                require mem[_2790] <= test266151307()
                require _2790 + mem[_2790] + 31 < _2790 + return_data.size
                _2800 = mem[_2790 + mem[_2790]]
                require mem[_2790 + mem[_2790]] <= test266151307()
                require ceil32(mem[_2790 + mem[_2790]]) + 32 >= 0 and _2790 + ceil32(return_data.size) + ceil32(mem[_2790 + mem[_2790]]) + 32 <= test266151307()
                mem[64] = _2790 + ceil32(return_data.size) + ceil32(mem[_2790 + mem[_2790]]) + 32
                mem[_2790 + ceil32(return_data.size)] = _2800
                require _2795 + _2800 + 32 <= return_data.size
                s = 0
                while s < _2800:
                    mem[s + _2790 + ceil32(return_data.size) + 32] = mem[s + _2790 + _2795 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2800) <= _2800:
                    mem[_1381 + 128] = _2790 + ceil32(return_data.size)
                    require ext_code.size(address(_1369))
                    staticcall address(_1369).createTime() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4202 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_1381 + 160] = mem[_4202]
                    require ext_code.size(address(_1369))
                    staticcall address(_1369).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4228 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_1381 + 192] = mem[_4228]
                    require ext_code.size(address(_1369))
                    staticcall address(_1369).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4286 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.number > mem[_4286]:
                        mem[_1381 + 224] = 1
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4340 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4340] == bool(mem[_4340])
                        mem[_1381 + 512] = bool(mem[_4340])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4417 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 256] = mem[_4417]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4473 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 288] = mem[_4473]
                        mem[mem[64] + 4] = address(_1369)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.rewardOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_1369)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4513 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 320] = mem[_4513]
                        mem[_1381 + 32] = address(_1369)
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4548 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4559 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4559] = mem[_4548]
                        require mem[_4548 + 32] == bool(mem[_4548 + 32])
                        mem[_4559 + 32] = mem[_4548 + 32]
                        require mem[_4548 + 64] == mem[_4548 + 76 len 20]
                        mem[_4559 + 64] = mem[_4548 + 64]
                        mem[_4559 + 96] = mem[_4548 + 96]
                        mem[_1381 + 448] = bool(mem[_4559 + 32])
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4664 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4677 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4677] = mem[_4664]
                        require mem[_4664 + 32] == bool(mem[_4664 + 32])
                        mem[_4677 + 32] = mem[_4664 + 32]
                        require mem[_4664 + 64] == mem[_4664 + 76 len 20]
                        mem[_4677 + 64] = mem[_4664 + 64]
                        mem[_4677 + 96] = mem[_4664 + 96]
                        mem[_1381 + 480] = mem[_4677 + 96]
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4791 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4813 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4813] = mem[_4791]
                        require mem[_4791 + 32] == bool(mem[_4791 + 32])
                        mem[_4813 + 32] = mem[_4791 + 32]
                        require mem[_4791 + 64] == mem[_4791 + 76 len 20]
                        mem[_4813 + 64] = mem[_4791 + 64]
                        mem[_4813 + 96] = mem[_4791 + 96]
                        mem[_1381 + 384] = mem[_4813]
                        mem[mem[64] + 4] = address(_1369)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.collectUsers(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(_1369), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4935 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 416] = 1 == mem[_4935]
                        mem[mem[64] + 4] = address(_1369)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.ballotTypes(address rg1) with:
                                gas gas_remaining wei
                               args address(_1369)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4997 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 352] = mem[_4997]
                        mem[mem[64] + 4] = address(_1369)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.tokenBallots(address rg1) with:
                                gas gas_remaining wei
                               args address(_1369)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5059 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5059] == mem[_5059 + 12 len 20]
                        mem[_1381 + 64] = mem[_5059 + 12 len 20]
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5131 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 544] = mem[_5131]
                        if 1 == mem[_1381 + 352]:
                            mem[mem[64] + 4] = address(_1369)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.configBallots(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_1369)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5211 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5223 = mem[_5211]
                            mem[_1381 + 576] = mem[_5211]
                            mem[mem[64] + 4] = _5223
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.getConfigValue(bytes32 rg1) with:
                                    gas gas_remaining wei
                                   args _5223
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5279 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1381 + 608] = mem[_5279]
                    else:
                        mem[_1381 + 224] = 0
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4341 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4341] == bool(mem[_4341])
                        mem[_1381 + 512] = bool(mem[_4341])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4418 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 256] = mem[_4418]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4474 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 288] = mem[_4474]
                        mem[mem[64] + 4] = address(_1369)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.rewardOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_1369)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4514 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 320] = mem[_4514]
                        mem[_1381 + 32] = address(_1369)
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4549 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4560 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4560] = mem[_4549]
                        require mem[_4549 + 32] == bool(mem[_4549 + 32])
                        mem[_4560 + 32] = mem[_4549 + 32]
                        require mem[_4549 + 64] == mem[_4549 + 76 len 20]
                        mem[_4560 + 64] = mem[_4549 + 64]
                        mem[_4560 + 96] = mem[_4549 + 96]
                        mem[_1381 + 448] = bool(mem[_4560 + 32])
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4665 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4678 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4678] = mem[_4665]
                        require mem[_4665 + 32] == bool(mem[_4665 + 32])
                        mem[_4678 + 32] = mem[_4665 + 32]
                        require mem[_4665 + 64] == mem[_4665 + 76 len 20]
                        mem[_4678 + 64] = mem[_4665 + 64]
                        mem[_4678 + 96] = mem[_4665 + 96]
                        mem[_1381 + 480] = mem[_4678 + 96]
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4792 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4814 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4814] = mem[_4792]
                        require mem[_4792 + 32] == bool(mem[_4792 + 32])
                        mem[_4814 + 32] = mem[_4792 + 32]
                        require mem[_4792 + 64] == mem[_4792 + 76 len 20]
                        mem[_4814 + 64] = mem[_4792 + 64]
                        mem[_4814 + 96] = mem[_4792 + 96]
                        mem[_1381 + 384] = mem[_4814]
                        mem[mem[64] + 4] = address(_1369)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.collectUsers(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(_1369), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4936 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 416] = 1 == mem[_4936]
                        mem[mem[64] + 4] = address(_1369)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.ballotTypes(address rg1) with:
                                gas gas_remaining wei
                               args address(_1369)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4998 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 352] = mem[_4998]
                        mem[mem[64] + 4] = address(_1369)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.tokenBallots(address rg1) with:
                                gas gas_remaining wei
                               args address(_1369)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5060 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5060] == mem[_5060 + 12 len 20]
                        mem[_1381 + 64] = mem[_5060 + 12 len 20]
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5132 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 544] = mem[_5132]
                        if 1 == mem[_1381 + 352]:
                            mem[mem[64] + 4] = address(_1369)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.configBallots(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_1369)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5212 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5224 = mem[_5212]
                            mem[_1381 + 576] = mem[_5212]
                            mem[mem[64] + 4] = _5224
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.getConfigValue(bytes32 rg1) with:
                                    gas gas_remaining wei
                                   args _5224
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5280 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1381 + 608] = mem[_5280]
                else:
                    mem[_2790 + ceil32(return_data.size) + _2800 + 32] = 0
                    mem[_1381 + 128] = _2790 + ceil32(return_data.size)
                    require ext_code.size(address(_1369))
                    staticcall address(_1369).createTime() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4205 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_1381 + 160] = mem[_4205]
                    require ext_code.size(address(_1369))
                    staticcall address(_1369).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4237 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_1381 + 192] = mem[_4237]
                    require ext_code.size(address(_1369))
                    staticcall address(_1369).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4292 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.number > mem[_4292]:
                        mem[_1381 + 224] = 1
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4344 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4344] == bool(mem[_4344])
                        mem[_1381 + 512] = bool(mem[_4344])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4424 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 256] = mem[_4424]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4479 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 288] = mem[_4479]
                        mem[mem[64] + 4] = address(_1369)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.rewardOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_1369)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4518 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 320] = mem[_4518]
                        mem[_1381 + 32] = address(_1369)
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4553 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4567 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4567] = mem[_4553]
                        require mem[_4553 + 32] == bool(mem[_4553 + 32])
                        mem[_4567 + 32] = mem[_4553 + 32]
                        require mem[_4553 + 64] == mem[_4553 + 76 len 20]
                        mem[_4567 + 64] = mem[_4553 + 64]
                        mem[_4567 + 96] = mem[_4553 + 96]
                        mem[_1381 + 448] = bool(mem[_4567 + 32])
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4670 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4685 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4685] = mem[_4670]
                        require mem[_4670 + 32] == bool(mem[_4670 + 32])
                        mem[_4685 + 32] = mem[_4670 + 32]
                        require mem[_4670 + 64] == mem[_4670 + 76 len 20]
                        mem[_4685 + 64] = mem[_4670 + 64]
                        mem[_4685 + 96] = mem[_4670 + 96]
                        mem[_1381 + 480] = mem[_4685 + 96]
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4799 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4823 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4823] = mem[_4799]
                        require mem[_4799 + 32] == bool(mem[_4799 + 32])
                        mem[_4823 + 32] = mem[_4799 + 32]
                        require mem[_4799 + 64] == mem[_4799 + 76 len 20]
                        mem[_4823 + 64] = mem[_4799 + 64]
                        mem[_4823 + 96] = mem[_4799 + 96]
                        mem[_1381 + 384] = mem[_4823]
                        mem[mem[64] + 4] = address(_1369)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.collectUsers(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(_1369), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4945 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 416] = 1 == mem[_4945]
                        mem[mem[64] + 4] = address(_1369)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.ballotTypes(address rg1) with:
                                gas gas_remaining wei
                               args address(_1369)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5003 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 352] = mem[_5003]
                        mem[mem[64] + 4] = address(_1369)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.tokenBallots(address rg1) with:
                                gas gas_remaining wei
                               args address(_1369)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5065 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5065] == mem[_5065 + 12 len 20]
                        mem[_1381 + 64] = mem[_5065 + 12 len 20]
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5137 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 544] = mem[_5137]
                        if 1 == mem[_1381 + 352]:
                            mem[mem[64] + 4] = address(_1369)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.configBallots(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_1369)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5217 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5237 = mem[_5217]
                            mem[_1381 + 576] = mem[_5217]
                            mem[mem[64] + 4] = _5237
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.getConfigValue(bytes32 rg1) with:
                                    gas gas_remaining wei
                                   args _5237
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5287 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1381 + 608] = mem[_5287]
                    else:
                        mem[_1381 + 224] = 0
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4345 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4345] == bool(mem[_4345])
                        mem[_1381 + 512] = bool(mem[_4345])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4425 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 256] = mem[_4425]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4480 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 288] = mem[_4480]
                        mem[mem[64] + 4] = address(_1369)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.rewardOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_1369)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4519 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 320] = mem[_4519]
                        mem[_1381 + 32] = address(_1369)
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4554 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4568 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4568] = mem[_4554]
                        require mem[_4554 + 32] == bool(mem[_4554 + 32])
                        mem[_4568 + 32] = mem[_4554 + 32]
                        require mem[_4554 + 64] == mem[_4554 + 76 len 20]
                        mem[_4568 + 64] = mem[_4554 + 64]
                        mem[_4568 + 96] = mem[_4554 + 96]
                        mem[_1381 + 448] = bool(mem[_4568 + 32])
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4671 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4686 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4686] = mem[_4671]
                        require mem[_4671 + 32] == bool(mem[_4671 + 32])
                        mem[_4686 + 32] = mem[_4671 + 32]
                        require mem[_4671 + 64] == mem[_4671 + 76 len 20]
                        mem[_4686 + 64] = mem[_4671 + 64]
                        mem[_4686 + 96] = mem[_4671 + 96]
                        mem[_1381 + 480] = mem[_4686 + 96]
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4800 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4824 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4824] = mem[_4800]
                        require mem[_4800 + 32] == bool(mem[_4800 + 32])
                        mem[_4824 + 32] = mem[_4800 + 32]
                        require mem[_4800 + 64] == mem[_4800 + 76 len 20]
                        mem[_4824 + 64] = mem[_4800 + 64]
                        mem[_4824 + 96] = mem[_4800 + 96]
                        mem[_1381 + 384] = mem[_4824]
                        mem[mem[64] + 4] = address(_1369)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.collectUsers(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(_1369), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4946 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 416] = 1 == mem[_4946]
                        mem[mem[64] + 4] = address(_1369)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.ballotTypes(address rg1) with:
                                gas gas_remaining wei
                               args address(_1369)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5004 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 352] = mem[_5004]
                        mem[mem[64] + 4] = address(_1369)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.tokenBallots(address rg1) with:
                                gas gas_remaining wei
                               args address(_1369)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5066 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5066] == mem[_5066 + 12 len 20]
                        mem[_1381 + 64] = mem[_5066 + 12 len 20]
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5138 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 544] = mem[_5138]
                        if 1 == mem[_1381 + 352]:
                            mem[mem[64] + 4] = address(_1369)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.configBallots(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_1369)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5218 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5238 = mem[_5218]
                            mem[_1381 + 576] = mem[_5218]
                            mem[mem[64] + 4] = _5238
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.getConfigValue(bytes32 rg1) with:
                                    gas gas_remaining wei
                                   args _5238
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5288 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1381 + 608] = mem[_5288]
            else:
                mem[_1405 + ceil32(return_data.size) + _1423 + 32] = 0
                mem[_1381 + 96] = _1405 + ceil32(return_data.size)
                mem[mem[64]] = 0x8a4d5a6700000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1369))
                staticcall address(_1369).content() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2791 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2798 = mem[_2791]
                require mem[_2791] <= test266151307()
                require _2791 + mem[_2791] + 31 < _2791 + return_data.size
                _2802 = mem[_2791 + mem[_2791]]
                require mem[_2791 + mem[_2791]] <= test266151307()
                require ceil32(mem[_2791 + mem[_2791]]) + 32 >= 0 and _2791 + ceil32(return_data.size) + ceil32(mem[_2791 + mem[_2791]]) + 32 <= test266151307()
                mem[64] = _2791 + ceil32(return_data.size) + ceil32(mem[_2791 + mem[_2791]]) + 32
                mem[_2791 + ceil32(return_data.size)] = _2802
                require _2798 + _2802 + 32 <= return_data.size
                s = 0
                while s < _2802:
                    mem[s + _2791 + ceil32(return_data.size) + 32] = mem[s + _2791 + _2798 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2802) <= _2802:
                    mem[_1381 + 128] = _2791 + ceil32(return_data.size)
                    require ext_code.size(address(_1369))
                    staticcall address(_1369).createTime() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4203 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_1381 + 160] = mem[_4203]
                    require ext_code.size(address(_1369))
                    staticcall address(_1369).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4229 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_1381 + 192] = mem[_4229]
                    require ext_code.size(address(_1369))
                    staticcall address(_1369).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4287 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.number > mem[_4287]:
                        mem[_1381 + 224] = 1
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4342 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4342] == bool(mem[_4342])
                        mem[_1381 + 512] = bool(mem[_4342])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4419 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 256] = mem[_4419]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4475 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 288] = mem[_4475]
                        mem[mem[64] + 4] = address(_1369)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.rewardOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_1369)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4515 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 320] = mem[_4515]
                        mem[_1381 + 32] = address(_1369)
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4550 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4561 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4561] = mem[_4550]
                        require mem[_4550 + 32] == bool(mem[_4550 + 32])
                        mem[_4561 + 32] = mem[_4550 + 32]
                        require mem[_4550 + 64] == mem[_4550 + 76 len 20]
                        mem[_4561 + 64] = mem[_4550 + 64]
                        mem[_4561 + 96] = mem[_4550 + 96]
                        mem[_1381 + 448] = bool(mem[_4561 + 32])
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4666 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4679 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4679] = mem[_4666]
                        require mem[_4666 + 32] == bool(mem[_4666 + 32])
                        mem[_4679 + 32] = mem[_4666 + 32]
                        require mem[_4666 + 64] == mem[_4666 + 76 len 20]
                        mem[_4679 + 64] = mem[_4666 + 64]
                        mem[_4679 + 96] = mem[_4666 + 96]
                        mem[_1381 + 480] = mem[_4679 + 96]
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4793 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4815 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4815] = mem[_4793]
                        require mem[_4793 + 32] == bool(mem[_4793 + 32])
                        mem[_4815 + 32] = mem[_4793 + 32]
                        require mem[_4793 + 64] == mem[_4793 + 76 len 20]
                        mem[_4815 + 64] = mem[_4793 + 64]
                        mem[_4815 + 96] = mem[_4793 + 96]
                        mem[_1381 + 384] = mem[_4815]
                        mem[mem[64] + 4] = address(_1369)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.collectUsers(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(_1369), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4937 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 416] = 1 == mem[_4937]
                        mem[mem[64] + 4] = address(_1369)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.ballotTypes(address rg1) with:
                                gas gas_remaining wei
                               args address(_1369)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4999 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 352] = mem[_4999]
                        mem[mem[64] + 4] = address(_1369)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.tokenBallots(address rg1) with:
                                gas gas_remaining wei
                               args address(_1369)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5061 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5061] == mem[_5061 + 12 len 20]
                        mem[_1381 + 64] = mem[_5061 + 12 len 20]
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5133 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 544] = mem[_5133]
                        if 1 == mem[_1381 + 352]:
                            mem[mem[64] + 4] = address(_1369)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.configBallots(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_1369)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5213 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5225 = mem[_5213]
                            mem[_1381 + 576] = mem[_5213]
                            mem[mem[64] + 4] = _5225
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.getConfigValue(bytes32 rg1) with:
                                    gas gas_remaining wei
                                   args _5225
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5281 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1381 + 608] = mem[_5281]
                    else:
                        mem[_1381 + 224] = 0
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4343 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4343] == bool(mem[_4343])
                        mem[_1381 + 512] = bool(mem[_4343])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4420 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 256] = mem[_4420]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4476 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 288] = mem[_4476]
                        mem[mem[64] + 4] = address(_1369)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.rewardOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_1369)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4516 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 320] = mem[_4516]
                        mem[_1381 + 32] = address(_1369)
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4551 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4562 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4562] = mem[_4551]
                        require mem[_4551 + 32] == bool(mem[_4551 + 32])
                        mem[_4562 + 32] = mem[_4551 + 32]
                        require mem[_4551 + 64] == mem[_4551 + 76 len 20]
                        mem[_4562 + 64] = mem[_4551 + 64]
                        mem[_4562 + 96] = mem[_4551 + 96]
                        mem[_1381 + 448] = bool(mem[_4562 + 32])
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4667 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4680 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4680] = mem[_4667]
                        require mem[_4667 + 32] == bool(mem[_4667 + 32])
                        mem[_4680 + 32] = mem[_4667 + 32]
                        require mem[_4667 + 64] == mem[_4667 + 76 len 20]
                        mem[_4680 + 64] = mem[_4667 + 64]
                        mem[_4680 + 96] = mem[_4667 + 96]
                        mem[_1381 + 480] = mem[_4680 + 96]
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4794 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4816 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4816] = mem[_4794]
                        require mem[_4794 + 32] == bool(mem[_4794 + 32])
                        mem[_4816 + 32] = mem[_4794 + 32]
                        require mem[_4794 + 64] == mem[_4794 + 76 len 20]
                        mem[_4816 + 64] = mem[_4794 + 64]
                        mem[_4816 + 96] = mem[_4794 + 96]
                        mem[_1381 + 384] = mem[_4816]
                        mem[mem[64] + 4] = address(_1369)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.collectUsers(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(_1369), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4938 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 416] = 1 == mem[_4938]
                        mem[mem[64] + 4] = address(_1369)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.ballotTypes(address rg1) with:
                                gas gas_remaining wei
                               args address(_1369)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5000 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 352] = mem[_5000]
                        mem[mem[64] + 4] = address(_1369)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.tokenBallots(address rg1) with:
                                gas gas_remaining wei
                               args address(_1369)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5062 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5062] == mem[_5062 + 12 len 20]
                        mem[_1381 + 64] = mem[_5062 + 12 len 20]
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5134 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 544] = mem[_5134]
                        if 1 == mem[_1381 + 352]:
                            mem[mem[64] + 4] = address(_1369)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.configBallots(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_1369)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5214 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5226 = mem[_5214]
                            mem[_1381 + 576] = mem[_5214]
                            mem[mem[64] + 4] = _5226
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.getConfigValue(bytes32 rg1) with:
                                    gas gas_remaining wei
                                   args _5226
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5282 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1381 + 608] = mem[_5282]
                else:
                    mem[_2791 + ceil32(return_data.size) + _2802 + 32] = 0
                    mem[_1381 + 128] = _2791 + ceil32(return_data.size)
                    require ext_code.size(address(_1369))
                    staticcall address(_1369).createTime() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4206 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_1381 + 160] = mem[_4206]
                    require ext_code.size(address(_1369))
                    staticcall address(_1369).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4238 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_1381 + 192] = mem[_4238]
                    require ext_code.size(address(_1369))
                    staticcall address(_1369).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4293 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.number > mem[_4293]:
                        mem[_1381 + 224] = 1
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4346 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4346] == bool(mem[_4346])
                        mem[_1381 + 512] = bool(mem[_4346])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4426 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 256] = mem[_4426]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4481 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 288] = mem[_4481]
                        mem[mem[64] + 4] = address(_1369)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.rewardOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_1369)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4520 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 320] = mem[_4520]
                        mem[_1381 + 32] = address(_1369)
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4555 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4569 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4569] = mem[_4555]
                        require mem[_4555 + 32] == bool(mem[_4555 + 32])
                        mem[_4569 + 32] = mem[_4555 + 32]
                        require mem[_4555 + 64] == mem[_4555 + 76 len 20]
                        mem[_4569 + 64] = mem[_4555 + 64]
                        mem[_4569 + 96] = mem[_4555 + 96]
                        mem[_1381 + 448] = bool(mem[_4569 + 32])
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4672 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4687 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4687] = mem[_4672]
                        require mem[_4672 + 32] == bool(mem[_4672 + 32])
                        mem[_4687 + 32] = mem[_4672 + 32]
                        require mem[_4672 + 64] == mem[_4672 + 76 len 20]
                        mem[_4687 + 64] = mem[_4672 + 64]
                        mem[_4687 + 96] = mem[_4672 + 96]
                        mem[_1381 + 480] = mem[_4687 + 96]
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4801 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4825 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4825] = mem[_4801]
                        require mem[_4801 + 32] == bool(mem[_4801 + 32])
                        mem[_4825 + 32] = mem[_4801 + 32]
                        require mem[_4801 + 64] == mem[_4801 + 76 len 20]
                        mem[_4825 + 64] = mem[_4801 + 64]
                        mem[_4825 + 96] = mem[_4801 + 96]
                        mem[_1381 + 384] = mem[_4825]
                        mem[mem[64] + 4] = address(_1369)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.collectUsers(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(_1369), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4947 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 416] = 1 == mem[_4947]
                        mem[mem[64] + 4] = address(_1369)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.ballotTypes(address rg1) with:
                                gas gas_remaining wei
                               args address(_1369)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5005 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 352] = mem[_5005]
                        mem[mem[64] + 4] = address(_1369)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.tokenBallots(address rg1) with:
                                gas gas_remaining wei
                               args address(_1369)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5067 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5067] == mem[_5067 + 12 len 20]
                        mem[_1381 + 64] = mem[_5067 + 12 len 20]
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5139 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 544] = mem[_5139]
                        if 1 == mem[_1381 + 352]:
                            mem[mem[64] + 4] = address(_1369)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.configBallots(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_1369)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5219 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5241 = mem[_5219]
                            mem[_1381 + 576] = mem[_5219]
                            mem[mem[64] + 4] = _5241
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.getConfigValue(bytes32 rg1) with:
                                    gas gas_remaining wei
                                   args _5241
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5289 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1381 + 608] = mem[_5289]
                    else:
                        mem[_1381 + 224] = 0
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4347 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4347] == bool(mem[_4347])
                        mem[_1381 + 512] = bool(mem[_4347])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4427 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 256] = mem[_4427]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4482 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 288] = mem[_4482]
                        mem[mem[64] + 4] = address(_1369)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.rewardOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_1369)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4521 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 320] = mem[_4521]
                        mem[_1381 + 32] = address(_1369)
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4556 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4570 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4570] = mem[_4556]
                        require mem[_4556 + 32] == bool(mem[_4556 + 32])
                        mem[_4570 + 32] = mem[_4556 + 32]
                        require mem[_4556 + 64] == mem[_4556 + 76 len 20]
                        mem[_4570 + 64] = mem[_4556 + 64]
                        mem[_4570 + 96] = mem[_4556 + 96]
                        mem[_1381 + 448] = bool(mem[_4570 + 32])
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4673 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4688 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4688] = mem[_4673]
                        require mem[_4673 + 32] == bool(mem[_4673 + 32])
                        mem[_4688 + 32] = mem[_4673 + 32]
                        require mem[_4673 + 64] == mem[_4673 + 76 len 20]
                        mem[_4688 + 64] = mem[_4673 + 64]
                        mem[_4688 + 96] = mem[_4673 + 96]
                        mem[_1381 + 480] = mem[_4688 + 96]
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4802 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _4826 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_4826] = mem[_4802]
                        require mem[_4802 + 32] == bool(mem[_4802 + 32])
                        mem[_4826 + 32] = mem[_4802 + 32]
                        require mem[_4802 + 64] == mem[_4802 + 76 len 20]
                        mem[_4826 + 64] = mem[_4802 + 64]
                        mem[_4826 + 96] = mem[_4802 + 96]
                        mem[_1381 + 384] = mem[_4826]
                        mem[mem[64] + 4] = address(_1369)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.collectUsers(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(_1369), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4948 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 416] = 1 == mem[_4948]
                        mem[mem[64] + 4] = address(_1369)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.ballotTypes(address rg1) with:
                                gas gas_remaining wei
                               args address(_1369)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5006 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 352] = mem[_5006]
                        mem[mem[64] + 4] = address(_1369)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.tokenBallots(address rg1) with:
                                gas gas_remaining wei
                               args address(_1369)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5068 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5068] == mem[_5068 + 12 len 20]
                        mem[_1381 + 64] = mem[_5068 + 12 len 20]
                        require ext_code.size(address(_1369))
                        staticcall address(_1369).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5140 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_1381 + 544] = mem[_5140]
                        if 1 == mem[_1381 + 352]:
                            mem[mem[64] + 4] = address(_1369)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.configBallots(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_1369)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5220 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5242 = mem[_5220]
                            mem[_1381 + 576] = mem[_5220]
                            mem[mem[64] + 4] = _5242
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.getConfigValue(bytes32 rg1) with:
                                    gas gas_remaining wei
                                   args _5242
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5290 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1381 + 608] = mem[_5290]
            require ext_call.return_data[0] + -idx - 1 < mem[ceil32(return_data.size) + 96]
            mem[(32 * ext_call.return_data[0] + -idx - 1) + ceil32(return_data.size) + 128] = _1381
            idx = idx + 1
            continue 
        _1361 = mem[64]
        mem[mem[64]] = 32
        _1363 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        u = mem[64] + (32 * _1363) + 64
        while idx < _1363:
            mem[t] = u + -_1361 - 64
            _2779 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            mem[u + 32] = mem[_2779 + 44 len 20]
            mem[u + 64] = mem[_2779 + 76 len 20]
            _2794 = mem[_2779 + 96]
            mem[u + 96] = 640
            _2797 = mem[_2794]
            mem[u + 640] = mem[_2794]
            v = 0
            while v < _2797:
                mem[v + u + 672] = mem[v + _2794 + 32]
                v = v + 32
                continue 
            if ceil32(_2797) <= _2797:
                _4188 = mem[_2779 + 128]
                mem[u + 128] = ceil32(_2797) + 672
                _4194 = mem[_4188]
                mem[ceil32(_2797) + u + 672] = mem[_4188]
                v = 0
                while v < _4194:
                    mem[v + ceil32(_2797) + u + 704] = mem[v + _4188 + 32]
                    v = v + 32
                    continue 
                if ceil32(_4194) > _4194:
                    mem[ceil32(_2797) + u + _4194 + 704] = 0
                mem[u + 160] = mem[_2779 + 160]
                mem[u + 192] = mem[_2779 + 192]
                mem[u + 224] = bool(mem[_2779 + 224])
                mem[u + 256] = mem[_2779 + 256]
                mem[u + 288] = mem[_2779 + 288]
                mem[u + 320] = mem[_2779 + 320]
                mem[u + 352] = mem[_2779 + 352]
                mem[u + 384] = mem[_2779 + 384]
                mem[u + 416] = bool(mem[_2779 + 416])
                mem[u + 448] = bool(mem[_2779 + 448])
                mem[u + 480] = mem[_2779 + 480]
                mem[u + 512] = bool(mem[_2779 + 512])
                mem[u + 544] = mem[_2779 + 544]
                mem[u + 576] = mem[_2779 + 576]
                mem[u + 608] = mem[_2779 + 608]
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_4194) + ceil32(_2797) + u + 704
                continue 
            mem[u + _2797 + 672] = 0
            _4195 = mem[_2779 + 128]
            mem[u + 128] = ceil32(_2797) + 672
            _4201 = mem[_4195]
            mem[ceil32(_2797) + u + 672] = mem[_4195]
            v = 0
            while v < _4201:
                mem[v + ceil32(_2797) + u + 704] = mem[v + _4195 + 32]
                v = v + 32
                continue 
            if ceil32(_4201) > _4201:
                mem[ceil32(_2797) + u + _4201 + 704] = 0
            mem[u + 160] = mem[_2779 + 160]
            mem[u + 192] = mem[_2779 + 192]
            mem[u + 224] = bool(mem[_2779 + 224])
            mem[u + 256] = mem[_2779 + 256]
            mem[u + 288] = mem[_2779 + 288]
            mem[u + 320] = mem[_2779 + 320]
            mem[u + 352] = mem[_2779 + 352]
            mem[u + 384] = mem[_2779 + 384]
            mem[u + 416] = bool(mem[_2779 + 416])
            mem[u + 448] = bool(mem[_2779 + 448])
            mem[u + 480] = mem[_2779 + 480]
            mem[u + 512] = bool(mem[_2779 + 512])
            mem[u + 544] = mem[_2779 + 544]
            mem[u + 576] = mem[_2779 + 576]
            mem[u + 608] = mem[_2779 + 608]
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_4201) + ceil32(_2797) + u + 704
            continue 
    else:
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 768
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 96
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256] = 96
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
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 704] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 736] = 0
        mem[var13001] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
        s = var13001
        idx = var13002
        while idx - 1:
            mem[64] = mem[64] + 640
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 96
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256] = 96
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
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 704] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 736] = 0
            mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(governanceAddress)
            staticcall governanceAddress.ballots(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4200 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4209 = mem[_4200]
            require mem[_4200] == mem[_4200 + 12 len 20]
            _4251 = mem[64]
            mem[64] = mem[64] + 640
            mem[_4251] = 0
            mem[_4251 + 32] = 0
            mem[_4251 + 64] = 0
            mem[_4251 + 96] = 96
            mem[_4251 + 128] = 96
            mem[_4251 + 160] = 0
            mem[_4251 + 192] = 0
            mem[_4251 + 224] = 0
            mem[_4251 + 256] = 0
            mem[_4251 + 288] = 0
            mem[_4251 + 320] = 0
            mem[_4251 + 352] = 0
            mem[_4251 + 384] = 0
            mem[_4251 + 416] = 0
            mem[_4251 + 448] = 0
            mem[_4251 + 480] = 0
            mem[_4251 + 512] = 0
            mem[_4251 + 544] = 0
            mem[_4251 + 576] = 0
            mem[_4251 + 608] = 0
            require ext_code.size(address(_4209))
            staticcall address(_4209).proposer() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4288 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_4288] == mem[_4288 + 12 len 20]
            mem[_4251] = mem[_4288 + 12 len 20]
            mem[mem[64]] = 0xa59a98c00000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_4209))
            staticcall address(_4209).subject() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4349 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4359 = mem[_4349]
            require mem[_4349] <= test266151307()
            require _4349 + mem[_4349] + 31 < _4349 + return_data.size
            _4369 = mem[_4349 + mem[_4349]]
            require mem[_4349 + mem[_4349]] <= test266151307()
            require ceil32(mem[_4349 + mem[_4349]]) + 32 >= 0 and _4349 + ceil32(return_data.size) + ceil32(mem[_4349 + mem[_4349]]) + 32 <= test266151307()
            mem[64] = _4349 + ceil32(return_data.size) + ceil32(mem[_4349 + mem[_4349]]) + 32
            mem[_4349 + ceil32(return_data.size)] = _4369
            require _4359 + _4369 + 32 <= return_data.size
            s = 0
            while s < _4369:
                mem[s + _4349 + ceil32(return_data.size) + 32] = mem[s + _4349 + _4359 + 32]
                s = s + 32
                continue 
            if ceil32(_4369) <= _4369:
                mem[_4251 + 96] = _4349 + ceil32(return_data.size)
                mem[mem[64]] = 0x8a4d5a6700000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_4209))
                staticcall address(_4209).content() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5609 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _5626 = mem[_5609]
                require mem[_5609] <= test266151307()
                require _5609 + mem[_5609] + 31 < _5609 + return_data.size
                _5635 = mem[_5609 + mem[_5609]]
                require mem[_5609 + mem[_5609]] <= test266151307()
                require ceil32(mem[_5609 + mem[_5609]]) + 32 >= 0 and _5609 + ceil32(return_data.size) + ceil32(mem[_5609 + mem[_5609]]) + 32 <= test266151307()
                mem[64] = _5609 + ceil32(return_data.size) + ceil32(mem[_5609 + mem[_5609]]) + 32
                mem[_5609 + ceil32(return_data.size)] = _5635
                require _5626 + _5635 + 32 <= return_data.size
                s = 0
                while s < _5635:
                    mem[s + _5609 + ceil32(return_data.size) + 32] = mem[s + _5609 + _5626 + 32]
                    s = s + 32
                    continue 
                if ceil32(_5635) <= _5635:
                    mem[_4251 + 128] = _5609 + ceil32(return_data.size)
                    require ext_code.size(address(_4209))
                    staticcall address(_4209).createTime() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6347 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_4251 + 160] = mem[_6347]
                    require ext_code.size(address(_4209))
                    staticcall address(_4209).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6368 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_4251 + 192] = mem[_6368]
                    require ext_code.size(address(_4209))
                    staticcall address(_4209).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6420 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.number > mem[_6420]:
                        mem[_4251 + 224] = 1
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6465 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6465] == bool(mem[_6465])
                        mem[_4251 + 512] = bool(mem[_6465])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6497 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 256] = mem[_6497]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6529 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 288] = mem[_6529]
                        mem[mem[64] + 4] = address(_4209)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.rewardOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_4209)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6561 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 320] = mem[_6561]
                        mem[_4251 + 32] = address(_4209)
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6593 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6601 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6601] = mem[_6593]
                        require mem[_6593 + 32] == bool(mem[_6593 + 32])
                        mem[_6601 + 32] = mem[_6593 + 32]
                        require mem[_6593 + 64] == mem[_6593 + 76 len 20]
                        mem[_6601 + 64] = mem[_6593 + 64]
                        mem[_6601 + 96] = mem[_6593 + 96]
                        mem[_4251 + 448] = bool(mem[_6601 + 32])
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6665 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6673 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6673] = mem[_6665]
                        require mem[_6665 + 32] == bool(mem[_6665 + 32])
                        mem[_6673 + 32] = mem[_6665 + 32]
                        require mem[_6665 + 64] == mem[_6665 + 76 len 20]
                        mem[_6673 + 64] = mem[_6665 + 64]
                        mem[_6673 + 96] = mem[_6665 + 96]
                        mem[_4251 + 480] = mem[_6673 + 96]
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6737 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6745 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6745] = mem[_6737]
                        require mem[_6737 + 32] == bool(mem[_6737 + 32])
                        mem[_6745 + 32] = mem[_6737 + 32]
                        require mem[_6737 + 64] == mem[_6737 + 76 len 20]
                        mem[_6745 + 64] = mem[_6737 + 64]
                        mem[_6745 + 96] = mem[_6737 + 96]
                        mem[_4251 + 384] = mem[_6745]
                        mem[mem[64] + 4] = address(_4209)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.collectUsers(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(_4209), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6809 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 416] = 1 == mem[_6809]
                        mem[mem[64] + 4] = address(_4209)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.ballotTypes(address rg1) with:
                                gas gas_remaining wei
                               args address(_4209)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6841 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 352] = mem[_6841]
                        mem[mem[64] + 4] = address(_4209)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.tokenBallots(address rg1) with:
                                gas gas_remaining wei
                               args address(_4209)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6873 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6873] == mem[_6873 + 12 len 20]
                        mem[_4251 + 64] = mem[_6873 + 12 len 20]
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6905 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 544] = mem[_6905]
                        if 1 == mem[_4251 + 352]:
                            mem[mem[64] + 4] = address(_4209)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.configBallots(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_4209)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6953 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6961 = mem[_6953]
                            mem[_4251 + 576] = mem[_6953]
                            mem[mem[64] + 4] = _6961
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.getConfigValue(bytes32 rg1) with:
                                    gas gas_remaining wei
                                   args _6961
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6985 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_4251 + 608] = mem[_6985]
                    else:
                        mem[_4251 + 224] = 0
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6466 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6466] == bool(mem[_6466])
                        mem[_4251 + 512] = bool(mem[_6466])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6498 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 256] = mem[_6498]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6530 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 288] = mem[_6530]
                        mem[mem[64] + 4] = address(_4209)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.rewardOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_4209)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6562 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 320] = mem[_6562]
                        mem[_4251 + 32] = address(_4209)
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6594 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6602 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6602] = mem[_6594]
                        require mem[_6594 + 32] == bool(mem[_6594 + 32])
                        mem[_6602 + 32] = mem[_6594 + 32]
                        require mem[_6594 + 64] == mem[_6594 + 76 len 20]
                        mem[_6602 + 64] = mem[_6594 + 64]
                        mem[_6602 + 96] = mem[_6594 + 96]
                        mem[_4251 + 448] = bool(mem[_6602 + 32])
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6666 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6674 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6674] = mem[_6666]
                        require mem[_6666 + 32] == bool(mem[_6666 + 32])
                        mem[_6674 + 32] = mem[_6666 + 32]
                        require mem[_6666 + 64] == mem[_6666 + 76 len 20]
                        mem[_6674 + 64] = mem[_6666 + 64]
                        mem[_6674 + 96] = mem[_6666 + 96]
                        mem[_4251 + 480] = mem[_6674 + 96]
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6738 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6746 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6746] = mem[_6738]
                        require mem[_6738 + 32] == bool(mem[_6738 + 32])
                        mem[_6746 + 32] = mem[_6738 + 32]
                        require mem[_6738 + 64] == mem[_6738 + 76 len 20]
                        mem[_6746 + 64] = mem[_6738 + 64]
                        mem[_6746 + 96] = mem[_6738 + 96]
                        mem[_4251 + 384] = mem[_6746]
                        mem[mem[64] + 4] = address(_4209)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.collectUsers(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(_4209), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6810 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 416] = 1 == mem[_6810]
                        mem[mem[64] + 4] = address(_4209)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.ballotTypes(address rg1) with:
                                gas gas_remaining wei
                               args address(_4209)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6842 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 352] = mem[_6842]
                        mem[mem[64] + 4] = address(_4209)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.tokenBallots(address rg1) with:
                                gas gas_remaining wei
                               args address(_4209)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6874 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6874] == mem[_6874 + 12 len 20]
                        mem[_4251 + 64] = mem[_6874 + 12 len 20]
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6906 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 544] = mem[_6906]
                        if 1 == mem[_4251 + 352]:
                            mem[mem[64] + 4] = address(_4209)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.configBallots(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_4209)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6954 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6962 = mem[_6954]
                            mem[_4251 + 576] = mem[_6954]
                            mem[mem[64] + 4] = _6962
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.getConfigValue(bytes32 rg1) with:
                                    gas gas_remaining wei
                                   args _6962
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6986 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_4251 + 608] = mem[_6986]
                else:
                    mem[_5609 + ceil32(return_data.size) + _5635 + 32] = 0
                    mem[_4251 + 128] = _5609 + ceil32(return_data.size)
                    require ext_code.size(address(_4209))
                    staticcall address(_4209).createTime() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6349 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_4251 + 160] = mem[_6349]
                    require ext_code.size(address(_4209))
                    staticcall address(_4209).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6376 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_4251 + 192] = mem[_6376]
                    require ext_code.size(address(_4209))
                    staticcall address(_4209).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6425 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.number > mem[_6425]:
                        mem[_4251 + 224] = 1
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6469 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6469] == bool(mem[_6469])
                        mem[_4251 + 512] = bool(mem[_6469])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6501 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 256] = mem[_6501]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6533 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 288] = mem[_6533]
                        mem[mem[64] + 4] = address(_4209)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.rewardOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_4209)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6565 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 320] = mem[_6565]
                        mem[_4251 + 32] = address(_4209)
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6597 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6605 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6605] = mem[_6597]
                        require mem[_6597 + 32] == bool(mem[_6597 + 32])
                        mem[_6605 + 32] = mem[_6597 + 32]
                        require mem[_6597 + 64] == mem[_6597 + 76 len 20]
                        mem[_6605 + 64] = mem[_6597 + 64]
                        mem[_6605 + 96] = mem[_6597 + 96]
                        mem[_4251 + 448] = bool(mem[_6605 + 32])
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6669 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6677 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6677] = mem[_6669]
                        require mem[_6669 + 32] == bool(mem[_6669 + 32])
                        mem[_6677 + 32] = mem[_6669 + 32]
                        require mem[_6669 + 64] == mem[_6669 + 76 len 20]
                        mem[_6677 + 64] = mem[_6669 + 64]
                        mem[_6677 + 96] = mem[_6669 + 96]
                        mem[_4251 + 480] = mem[_6677 + 96]
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6741 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6749 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6749] = mem[_6741]
                        require mem[_6741 + 32] == bool(mem[_6741 + 32])
                        mem[_6749 + 32] = mem[_6741 + 32]
                        require mem[_6741 + 64] == mem[_6741 + 76 len 20]
                        mem[_6749 + 64] = mem[_6741 + 64]
                        mem[_6749 + 96] = mem[_6741 + 96]
                        mem[_4251 + 384] = mem[_6749]
                        mem[mem[64] + 4] = address(_4209)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.collectUsers(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(_4209), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6813 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 416] = 1 == mem[_6813]
                        mem[mem[64] + 4] = address(_4209)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.ballotTypes(address rg1) with:
                                gas gas_remaining wei
                               args address(_4209)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6845 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 352] = mem[_6845]
                        mem[mem[64] + 4] = address(_4209)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.tokenBallots(address rg1) with:
                                gas gas_remaining wei
                               args address(_4209)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6877 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6877] == mem[_6877 + 12 len 20]
                        mem[_4251 + 64] = mem[_6877 + 12 len 20]
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6909 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 544] = mem[_6909]
                        if 1 == mem[_4251 + 352]:
                            mem[mem[64] + 4] = address(_4209)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.configBallots(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_4209)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6957 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6967 = mem[_6957]
                            mem[_4251 + 576] = mem[_6957]
                            mem[mem[64] + 4] = _6967
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.getConfigValue(bytes32 rg1) with:
                                    gas gas_remaining wei
                                   args _6967
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6989 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_4251 + 608] = mem[_6989]
                    else:
                        mem[_4251 + 224] = 0
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6470 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6470] == bool(mem[_6470])
                        mem[_4251 + 512] = bool(mem[_6470])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6502 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 256] = mem[_6502]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6534 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 288] = mem[_6534]
                        mem[mem[64] + 4] = address(_4209)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.rewardOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_4209)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6566 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 320] = mem[_6566]
                        mem[_4251 + 32] = address(_4209)
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6598 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6606 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6606] = mem[_6598]
                        require mem[_6598 + 32] == bool(mem[_6598 + 32])
                        mem[_6606 + 32] = mem[_6598 + 32]
                        require mem[_6598 + 64] == mem[_6598 + 76 len 20]
                        mem[_6606 + 64] = mem[_6598 + 64]
                        mem[_6606 + 96] = mem[_6598 + 96]
                        mem[_4251 + 448] = bool(mem[_6606 + 32])
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6670 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6678 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6678] = mem[_6670]
                        require mem[_6670 + 32] == bool(mem[_6670 + 32])
                        mem[_6678 + 32] = mem[_6670 + 32]
                        require mem[_6670 + 64] == mem[_6670 + 76 len 20]
                        mem[_6678 + 64] = mem[_6670 + 64]
                        mem[_6678 + 96] = mem[_6670 + 96]
                        mem[_4251 + 480] = mem[_6678 + 96]
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6742 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6750 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6750] = mem[_6742]
                        require mem[_6742 + 32] == bool(mem[_6742 + 32])
                        mem[_6750 + 32] = mem[_6742 + 32]
                        require mem[_6742 + 64] == mem[_6742 + 76 len 20]
                        mem[_6750 + 64] = mem[_6742 + 64]
                        mem[_6750 + 96] = mem[_6742 + 96]
                        mem[_4251 + 384] = mem[_6750]
                        mem[mem[64] + 4] = address(_4209)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.collectUsers(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(_4209), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6814 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 416] = 1 == mem[_6814]
                        mem[mem[64] + 4] = address(_4209)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.ballotTypes(address rg1) with:
                                gas gas_remaining wei
                               args address(_4209)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6846 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 352] = mem[_6846]
                        mem[mem[64] + 4] = address(_4209)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.tokenBallots(address rg1) with:
                                gas gas_remaining wei
                               args address(_4209)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6878 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6878] == mem[_6878 + 12 len 20]
                        mem[_4251 + 64] = mem[_6878 + 12 len 20]
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6910 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 544] = mem[_6910]
                        if 1 == mem[_4251 + 352]:
                            mem[mem[64] + 4] = address(_4209)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.configBallots(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_4209)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6958 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6968 = mem[_6958]
                            mem[_4251 + 576] = mem[_6958]
                            mem[mem[64] + 4] = _6968
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.getConfigValue(bytes32 rg1) with:
                                    gas gas_remaining wei
                                   args _6968
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6990 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_4251 + 608] = mem[_6990]
            else:
                mem[_4349 + ceil32(return_data.size) + _4369 + 32] = 0
                mem[_4251 + 96] = _4349 + ceil32(return_data.size)
                mem[mem[64]] = 0x8a4d5a6700000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_4209))
                staticcall address(_4209).content() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5622 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _5630 = mem[_5622]
                require mem[_5622] <= test266151307()
                require _5622 + mem[_5622] + 31 < _5622 + return_data.size
                _5640 = mem[_5622 + mem[_5622]]
                require mem[_5622 + mem[_5622]] <= test266151307()
                require ceil32(mem[_5622 + mem[_5622]]) + 32 >= 0 and _5622 + ceil32(return_data.size) + ceil32(mem[_5622 + mem[_5622]]) + 32 <= test266151307()
                mem[64] = _5622 + ceil32(return_data.size) + ceil32(mem[_5622 + mem[_5622]]) + 32
                mem[_5622 + ceil32(return_data.size)] = _5640
                require _5630 + _5640 + 32 <= return_data.size
                s = 0
                while s < _5640:
                    mem[s + _5622 + ceil32(return_data.size) + 32] = mem[s + _5622 + _5630 + 32]
                    s = s + 32
                    continue 
                if ceil32(_5640) <= _5640:
                    mem[_4251 + 128] = _5622 + ceil32(return_data.size)
                    require ext_code.size(address(_4209))
                    staticcall address(_4209).createTime() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6348 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_4251 + 160] = mem[_6348]
                    require ext_code.size(address(_4209))
                    staticcall address(_4209).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6369 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_4251 + 192] = mem[_6369]
                    require ext_code.size(address(_4209))
                    staticcall address(_4209).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6421 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.number > mem[_6421]:
                        mem[_4251 + 224] = 1
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6467 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6467] == bool(mem[_6467])
                        mem[_4251 + 512] = bool(mem[_6467])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6499 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 256] = mem[_6499]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6531 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 288] = mem[_6531]
                        mem[mem[64] + 4] = address(_4209)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.rewardOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_4209)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6563 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 320] = mem[_6563]
                        mem[_4251 + 32] = address(_4209)
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6595 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6603 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6603] = mem[_6595]
                        require mem[_6595 + 32] == bool(mem[_6595 + 32])
                        mem[_6603 + 32] = mem[_6595 + 32]
                        require mem[_6595 + 64] == mem[_6595 + 76 len 20]
                        mem[_6603 + 64] = mem[_6595 + 64]
                        mem[_6603 + 96] = mem[_6595 + 96]
                        mem[_4251 + 448] = bool(mem[_6603 + 32])
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6667 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6675 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6675] = mem[_6667]
                        require mem[_6667 + 32] == bool(mem[_6667 + 32])
                        mem[_6675 + 32] = mem[_6667 + 32]
                        require mem[_6667 + 64] == mem[_6667 + 76 len 20]
                        mem[_6675 + 64] = mem[_6667 + 64]
                        mem[_6675 + 96] = mem[_6667 + 96]
                        mem[_4251 + 480] = mem[_6675 + 96]
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6739 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6747 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6747] = mem[_6739]
                        require mem[_6739 + 32] == bool(mem[_6739 + 32])
                        mem[_6747 + 32] = mem[_6739 + 32]
                        require mem[_6739 + 64] == mem[_6739 + 76 len 20]
                        mem[_6747 + 64] = mem[_6739 + 64]
                        mem[_6747 + 96] = mem[_6739 + 96]
                        mem[_4251 + 384] = mem[_6747]
                        mem[mem[64] + 4] = address(_4209)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.collectUsers(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(_4209), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6811 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 416] = 1 == mem[_6811]
                        mem[mem[64] + 4] = address(_4209)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.ballotTypes(address rg1) with:
                                gas gas_remaining wei
                               args address(_4209)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6843 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 352] = mem[_6843]
                        mem[mem[64] + 4] = address(_4209)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.tokenBallots(address rg1) with:
                                gas gas_remaining wei
                               args address(_4209)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6875 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6875] == mem[_6875 + 12 len 20]
                        mem[_4251 + 64] = mem[_6875 + 12 len 20]
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6907 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 544] = mem[_6907]
                        if 1 == mem[_4251 + 352]:
                            mem[mem[64] + 4] = address(_4209)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.configBallots(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_4209)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6955 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6963 = mem[_6955]
                            mem[_4251 + 576] = mem[_6955]
                            mem[mem[64] + 4] = _6963
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.getConfigValue(bytes32 rg1) with:
                                    gas gas_remaining wei
                                   args _6963
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6987 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_4251 + 608] = mem[_6987]
                    else:
                        mem[_4251 + 224] = 0
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6468 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6468] == bool(mem[_6468])
                        mem[_4251 + 512] = bool(mem[_6468])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6500 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 256] = mem[_6500]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6532 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 288] = mem[_6532]
                        mem[mem[64] + 4] = address(_4209)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.rewardOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_4209)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6564 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 320] = mem[_6564]
                        mem[_4251 + 32] = address(_4209)
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6596 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6604 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6604] = mem[_6596]
                        require mem[_6596 + 32] == bool(mem[_6596 + 32])
                        mem[_6604 + 32] = mem[_6596 + 32]
                        require mem[_6596 + 64] == mem[_6596 + 76 len 20]
                        mem[_6604 + 64] = mem[_6596 + 64]
                        mem[_6604 + 96] = mem[_6596 + 96]
                        mem[_4251 + 448] = bool(mem[_6604 + 32])
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6668 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6676 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6676] = mem[_6668]
                        require mem[_6668 + 32] == bool(mem[_6668 + 32])
                        mem[_6676 + 32] = mem[_6668 + 32]
                        require mem[_6668 + 64] == mem[_6668 + 76 len 20]
                        mem[_6676 + 64] = mem[_6668 + 64]
                        mem[_6676 + 96] = mem[_6668 + 96]
                        mem[_4251 + 480] = mem[_6676 + 96]
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6740 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6748 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6748] = mem[_6740]
                        require mem[_6740 + 32] == bool(mem[_6740 + 32])
                        mem[_6748 + 32] = mem[_6740 + 32]
                        require mem[_6740 + 64] == mem[_6740 + 76 len 20]
                        mem[_6748 + 64] = mem[_6740 + 64]
                        mem[_6748 + 96] = mem[_6740 + 96]
                        mem[_4251 + 384] = mem[_6748]
                        mem[mem[64] + 4] = address(_4209)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.collectUsers(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(_4209), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6812 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 416] = 1 == mem[_6812]
                        mem[mem[64] + 4] = address(_4209)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.ballotTypes(address rg1) with:
                                gas gas_remaining wei
                               args address(_4209)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6844 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 352] = mem[_6844]
                        mem[mem[64] + 4] = address(_4209)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.tokenBallots(address rg1) with:
                                gas gas_remaining wei
                               args address(_4209)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6876 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6876] == mem[_6876 + 12 len 20]
                        mem[_4251 + 64] = mem[_6876 + 12 len 20]
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6908 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 544] = mem[_6908]
                        if 1 == mem[_4251 + 352]:
                            mem[mem[64] + 4] = address(_4209)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.configBallots(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_4209)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6956 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6964 = mem[_6956]
                            mem[_4251 + 576] = mem[_6956]
                            mem[mem[64] + 4] = _6964
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.getConfigValue(bytes32 rg1) with:
                                    gas gas_remaining wei
                                   args _6964
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6988 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_4251 + 608] = mem[_6988]
                else:
                    mem[_5622 + ceil32(return_data.size) + _5640 + 32] = 0
                    mem[_4251 + 128] = _5622 + ceil32(return_data.size)
                    require ext_code.size(address(_4209))
                    staticcall address(_4209).createTime() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6350 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_4251 + 160] = mem[_6350]
                    require ext_code.size(address(_4209))
                    staticcall address(_4209).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6377 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_4251 + 192] = mem[_6377]
                    require ext_code.size(address(_4209))
                    staticcall address(_4209).endBlockNumber() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6426 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if block.number > mem[_6426]:
                        mem[_4251 + 224] = 1
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6471 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6471] == bool(mem[_6471])
                        mem[_4251 + 512] = bool(mem[_6471])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6503 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 256] = mem[_6503]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6535 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 288] = mem[_6535]
                        mem[mem[64] + 4] = address(_4209)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.rewardOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_4209)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6567 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 320] = mem[_6567]
                        mem[_4251 + 32] = address(_4209)
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6599 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6607 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6607] = mem[_6599]
                        require mem[_6599 + 32] == bool(mem[_6599 + 32])
                        mem[_6607 + 32] = mem[_6599 + 32]
                        require mem[_6599 + 64] == mem[_6599 + 76 len 20]
                        mem[_6607 + 64] = mem[_6599 + 64]
                        mem[_6607 + 96] = mem[_6599 + 96]
                        mem[_4251 + 448] = bool(mem[_6607 + 32])
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6671 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6679 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6679] = mem[_6671]
                        require mem[_6671 + 32] == bool(mem[_6671 + 32])
                        mem[_6679 + 32] = mem[_6671 + 32]
                        require mem[_6671 + 64] == mem[_6671 + 76 len 20]
                        mem[_6679 + 64] = mem[_6671 + 64]
                        mem[_6679 + 96] = mem[_6671 + 96]
                        mem[_4251 + 480] = mem[_6679 + 96]
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6743 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6751 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6751] = mem[_6743]
                        require mem[_6743 + 32] == bool(mem[_6743 + 32])
                        mem[_6751 + 32] = mem[_6743 + 32]
                        require mem[_6743 + 64] == mem[_6743 + 76 len 20]
                        mem[_6751 + 64] = mem[_6743 + 64]
                        mem[_6751 + 96] = mem[_6743 + 96]
                        mem[_4251 + 384] = mem[_6751]
                        mem[mem[64] + 4] = address(_4209)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.collectUsers(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(_4209), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6815 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 416] = 1 == mem[_6815]
                        mem[mem[64] + 4] = address(_4209)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.ballotTypes(address rg1) with:
                                gas gas_remaining wei
                               args address(_4209)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6847 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 352] = mem[_6847]
                        mem[mem[64] + 4] = address(_4209)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.tokenBallots(address rg1) with:
                                gas gas_remaining wei
                               args address(_4209)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6879 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6879] == mem[_6879 + 12 len 20]
                        mem[_4251 + 64] = mem[_6879 + 12 len 20]
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6911 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 544] = mem[_6911]
                        if 1 == mem[_4251 + 352]:
                            mem[mem[64] + 4] = address(_4209)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.configBallots(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_4209)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6959 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6971 = mem[_6959]
                            mem[_4251 + 576] = mem[_6959]
                            mem[mem[64] + 4] = _6971
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.getConfigValue(bytes32 rg1) with:
                                    gas gas_remaining wei
                                   args _6971
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6991 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_4251 + 608] = mem[_6991]
                    else:
                        mem[_4251 + 224] = 0
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).ended() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6472 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6472] == bool(mem[_6472])
                        mem[_4251 + 512] = bool(mem[_6472])
                        mem[mem[64] + 4] = 1
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6504 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 256] = mem[_6504]
                        mem[mem[64] + 4] = 2
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).proposals(uint256 rg1) with:
                                gas gas_remaining wei
                               args 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6536 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 288] = mem[_6536]
                        mem[mem[64] + 4] = address(_4209)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.rewardOf(address rg1) with:
                                gas gas_remaining wei
                               args address(_4209)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6568 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 320] = mem[_6568]
                        mem[_4251 + 32] = address(_4209)
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6600 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6608 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6608] = mem[_6600]
                        require mem[_6600 + 32] == bool(mem[_6600 + 32])
                        mem[_6608 + 32] = mem[_6600 + 32]
                        require mem[_6600 + 64] == mem[_6600 + 76 len 20]
                        mem[_6608 + 64] = mem[_6600 + 64]
                        mem[_6608 + 96] = mem[_6600 + 96]
                        mem[_4251 + 448] = bool(mem[_6608 + 32])
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6672 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6680 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6680] = mem[_6672]
                        require mem[_6672 + 32] == bool(mem[_6672 + 32])
                        mem[_6680 + 32] = mem[_6672 + 32]
                        require mem[_6672 + 64] == mem[_6672 + 76 len 20]
                        mem[_6680 + 64] = mem[_6672 + 64]
                        mem[_6680 + 96] = mem[_6672 + 96]
                        mem[_4251 + 480] = mem[_6680 + 96]
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).voters(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6744 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 128
                        _6752 = mem[64]
                        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
                        mem[64] = mem[64] + 128
                        mem[_6752] = mem[_6744]
                        require mem[_6744 + 32] == bool(mem[_6744 + 32])
                        mem[_6752 + 32] = mem[_6744 + 32]
                        require mem[_6744 + 64] == mem[_6744 + 76 len 20]
                        mem[_6752 + 64] = mem[_6744 + 64]
                        mem[_6752 + 96] = mem[_6744 + 96]
                        mem[_4251 + 384] = mem[_6752]
                        mem[mem[64] + 4] = address(_4209)
                        mem[mem[64] + 36] = msg.sender
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.collectUsers(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(_4209), msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6816 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 416] = 1 == mem[_6816]
                        mem[mem[64] + 4] = address(_4209)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.ballotTypes(address rg1) with:
                                gas gas_remaining wei
                               args address(_4209)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6848 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 352] = mem[_6848]
                        mem[mem[64] + 4] = address(_4209)
                        require ext_code.size(governanceAddress)
                        staticcall governanceAddress.tokenBallots(address rg1) with:
                                gas gas_remaining wei
                               args address(_4209)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6880 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6880] == mem[_6880 + 12 len 20]
                        mem[_4251 + 64] = mem[_6880 + 12 len 20]
                        require ext_code.size(address(_4209))
                        staticcall address(_4209).value() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6912 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[_4251 + 544] = mem[_6912]
                        if 1 == mem[_4251 + 352]:
                            mem[mem[64] + 4] = address(_4209)
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.configBallots(address rg1) with:
                                    gas gas_remaining wei
                                   args address(_4209)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6960 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _6972 = mem[_6960]
                            mem[_4251 + 576] = mem[_6960]
                            mem[mem[64] + 4] = _6972
                            require ext_code.size(governanceAddress)
                            staticcall governanceAddress.getConfigValue(bytes32 rg1) with:
                                    gas gas_remaining wei
                                   args _6972
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6992 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_4251 + 608] = mem[_6992]
            require ext_call.return_data[0] + -idx - 1 < mem[ceil32(return_data.size) + 96]
            mem[(32 * ext_call.return_data[0] + -idx - 1) + ceil32(return_data.size) + 128] = _4251
            idx = idx + 1
            continue 
        _4186 = mem[64]
        mem[mem[64]] = 32
        _4193 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        u = mem[64] + (32 * _4193) + 64
        while idx < _4193:
            mem[t] = u + -_4186 - 64
            _5575 = mem[s]
            mem[u] = mem[mem[s] + 12 len 20]
            mem[u + 32] = mem[_5575 + 44 len 20]
            mem[u + 64] = mem[_5575 + 76 len 20]
            _5625 = mem[_5575 + 96]
            mem[u + 96] = 640
            _5629 = mem[_5625]
            mem[u + 640] = mem[_5625]
            v = 0
            while v < _5629:
                mem[v + u + 672] = mem[v + _5625 + 32]
                v = v + 32
                continue 
            if ceil32(_5629) <= _5629:
                _6335 = mem[_5575 + 128]
                mem[u + 128] = ceil32(_5629) + 672
                _6340 = mem[_6335]
                mem[ceil32(_5629) + u + 672] = mem[_6335]
                v = 0
                while v < _6340:
                    mem[v + ceil32(_5629) + u + 704] = mem[v + _6335 + 32]
                    v = v + 32
                    continue 
                if ceil32(_6340) > _6340:
                    mem[ceil32(_5629) + u + _6340 + 704] = 0
                mem[u + 160] = mem[_5575 + 160]
                mem[u + 192] = mem[_5575 + 192]
                mem[u + 224] = bool(mem[_5575 + 224])
                mem[u + 256] = mem[_5575 + 256]
                mem[u + 288] = mem[_5575 + 288]
                mem[u + 320] = mem[_5575 + 320]
                mem[u + 352] = mem[_5575 + 352]
                mem[u + 384] = mem[_5575 + 384]
                mem[u + 416] = bool(mem[_5575 + 416])
                mem[u + 448] = bool(mem[_5575 + 448])
                mem[u + 480] = mem[_5575 + 480]
                mem[u + 512] = bool(mem[_5575 + 512])
                mem[u + 544] = mem[_5575 + 544]
                mem[u + 576] = mem[_5575 + 576]
                mem[u + 608] = mem[_5575 + 608]
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_6340) + ceil32(_5629) + u + 704
                continue 
            mem[u + _5629 + 672] = 0
            _6341 = mem[_5575 + 128]
            mem[u + 128] = ceil32(_5629) + 672
            _6346 = mem[_6341]
            mem[ceil32(_5629) + u + 672] = mem[_6341]
            v = 0
            while v < _6346:
                mem[v + ceil32(_5629) + u + 704] = mem[v + _6341 + 32]
                v = v + 32
                continue 
            if ceil32(_6346) > _6346:
                mem[ceil32(_5629) + u + _6346 + 704] = 0
            mem[u + 160] = mem[_5575 + 160]
            mem[u + 192] = mem[_5575 + 192]
            mem[u + 224] = bool(mem[_5575 + 224])
            mem[u + 256] = mem[_5575 + 256]
            mem[u + 288] = mem[_5575 + 288]
            mem[u + 320] = mem[_5575 + 320]
            mem[u + 352] = mem[_5575 + 352]
            mem[u + 384] = mem[_5575 + 384]
            mem[u + 416] = bool(mem[_5575 + 416])
            mem[u + 448] = bool(mem[_5575 + 448])
            mem[u + 480] = mem[_5575 + 480]
            mem[u + 512] = bool(mem[_5575 + 512])
            mem[u + 544] = mem[_5575 + 544]
            mem[u + 576] = mem[_5575 + 576]
            mem[u + 608] = mem[_5575 + 608]
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_6346) + ceil32(_5629) + u + 704
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
