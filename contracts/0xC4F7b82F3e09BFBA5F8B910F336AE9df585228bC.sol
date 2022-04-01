contract main {




// =====================  Runtime code  =====================


const decimals = 18


address shareRewardPoolAddress;
array of address stakePools;
address stor11;
address sbdoAddress;
uint256 factorStake;
uint256 factorLP;
uint256 sub_5652c30b;
uint256 totalStakePools;
address governanceAddress;
array of address stor18;
array of uint256 stor19;

function stakePools(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 10
    return stakePools[arg1]
}

function sub_5652c30b(?) payable {
    return sub_5652c30b
}

function governance() payable {
    return governanceAddress
}

function factorLP() payable {
    return factorLP
}

function factorStake() payable {
    return factorStake
}

function shareRewardPool() payable {
    return shareRewardPoolAddress
}

function sbdo() payable {
    return sbdoAddress
}

function totalStakePools() payable {
    return totalStakePools
}

function _fallback() payable {
    revert
}

function sub_9c90afd6(?) payable {
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    sub_5652c30b = 0
}

function sub_3dfb0b2d(?) payable {
    require calldata.size - 4 >= 64
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    if sub_5652c30b >= 10:
        revert with 0, 'Max 10 pancake pools!'
    stor18[stor15] = arg1
    stor19[stor15] = arg2
    sub_5652c30b++
}

function setFactorLP(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    if factorStake <= 0:
        revert with 0, 'Total factors must > 0'
    if arg1 <= 0:
        revert with 0, 'Total factors must > 0'
    factorLP = arg1
}

function setFactorStake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    if factorLP <= 0:
        revert with 0, 'Total factors must > 0'
    if arg1 <= 0:
        revert with 0, 'Total factors must > 0'
    factorStake = arg1
}

function setStakePools(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    totalStakePools = arg1.length
    idx = 0
    while idx < totalStakePools:
        require idx < arg1.length
        require idx < 10
        stakePools[idx] = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
}

function sub_4e5e4896(?) payable {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < totalStakePools:
        require idx < 10
        mem[100] = arg1
        require ext_code.size(stakePools[idx])
        staticcall stakePools[idx].0x70a08231 with:
                gas gas_remaining wei
               args arg1
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    return (_14 * totalStakePools)
}

function sub_34d85c2c(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < sub_5652c30b:
        require idx < 10
        mem[mem[64] + 36] = arg1
        require ext_code.size(shareRewardPoolAddress)
        staticcall shareRewardPoolAddress.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args stor19[idx], arg1
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require idx < 10
        require ext_code.size(stor18[idx])
        staticcall stor18[idx].0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < 10
        mem[mem[64] + 4] = stor18[idx]
        require ext_code.size(stor11)
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args stor18[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            _53 = mem[64]
            mem[64] = mem[64] + 64
            mem[_53] = 26
            mem[_53 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = (0 / ext_call.return_data[0]) + s
                continue 
            _55 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _55 + 68] = mem[idx + _53 + 32]
                idx = idx + 32
                continue 
            mem[_55 + 68] = mem[_55 + 74 len 26]
            revert with memory
              from mem[64]
               len _55 + -mem[64] + 100
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _54 = mem[64]
        mem[64] = mem[64] + 64
        mem[_54] = 26
        mem[_54 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + s
            continue 
        _58 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _58 + 68] = mem[idx + _54 + 32]
            idx = idx + 32
            continue 
        mem[_58 + 68] = mem[_58 + 74 len 26]
        revert with memory
          from mem[64]
           len _58 + -mem[64] + 100
    return s
}

function totalSupply() payable {
    mem[64] = 96
    idx = 0
    s = 0
    while idx < sub_5652c30b:
        require idx < 10
        require ext_code.size(stor18[idx])
        staticcall stor18[idx].0x70a08231 with:
                gas gas_remaining wei
               args shareRewardPoolAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < 10
        require ext_code.size(stor18[idx])
        staticcall stor18[idx].0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < 10
        mem[mem[64] + 4] = stor18[idx]
        require ext_code.size(stor11)
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args stor18[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            _117 = mem[64]
            mem[64] = mem[64] + 64
            mem[_117] = 26
            mem[_117 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = (0 / ext_call.return_data[0]) + s
                continue 
            _122 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _122 + 68] = mem[idx + _117 + 32]
                idx = idx + 32
                continue 
            mem[_122 + 68] = mem[_122 + 74 len 26]
            revert with memory
              from mem[64]
               len _122 + -mem[64] + 100
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _121 = mem[64]
        mem[64] = mem[64] + 64
        mem[_121] = 26
        mem[_121 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + s
            continue 
        _132 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _132 + 68] = mem[idx + _121 + 32]
            idx = idx + 32
            continue 
        mem[_132 + 68] = mem[_132 + 74 len 26]
        revert with memory
          from mem[64]
           len _132 + -mem[64] + 100
    t = 0
    idx = 0
    while idx < totalStakePools:
        require idx < 10
        mem[mem[64] + 4] = stakePools[idx]
        require ext_code.size(stor11)
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args stakePools[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + t < t:
            revert with 0, 'SafeMath: addition overflow'
        t = ext_call.return_data[0] + t
        idx = idx + 1
        continue 
    if factorStake + factorLP < factorLP:
        revert with 0, 'SafeMath: addition overflow'
    if not factorStake:
        if not factorLP:
            if not factorStake + factorLP:
                revert with 0, 'SafeMath: division by zero'
            return (0 / factorStake + factorLP)
        if s * factorLP / factorLP != s:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if s * factorLP < s * factorLP:
            revert with 0, 'SafeMath: addition overflow'
        if not factorStake + factorLP:
            revert with 0, 'SafeMath: division by zero'
        return (s * factorLP / factorStake + factorLP)
    if _194 * totalStakePools * factorStake / factorStake != _194 * totalStakePools:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    if not factorLP:
        if _194 * totalStakePools * factorStake < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not factorStake + factorLP:
            revert with 0, 'SafeMath: division by zero'
        return (_194 * totalStakePools * factorStake / factorStake + factorLP)
    if s * factorLP / factorLP != s:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    if (_194 * totalStakePools * factorStake) + (s * factorLP) < s * factorLP:
        revert with 0, 'SafeMath: addition overflow'
    if not factorStake + factorLP:
        revert with 0, 'SafeMath: division by zero'
    return ((_194 * totalStakePools * factorStake) + (s * factorLP) / factorStake + factorLP)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < sub_5652c30b:
        require idx < 10
        mem[mem[64] + 36] = arg1
        require ext_code.size(shareRewardPoolAddress)
        staticcall shareRewardPoolAddress.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args stor19[idx], arg1
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require idx < 10
        require ext_code.size(stor18[idx])
        staticcall stor18[idx].0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < 10
        mem[mem[64] + 4] = stor18[idx]
        require ext_code.size(stor11)
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args stor18[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            _115 = mem[64]
            mem[64] = mem[64] + 64
            mem[_115] = 26
            mem[_115 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = (0 / ext_call.return_data[0]) + s
                continue 
            _119 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _119 + 68] = mem[idx + _115 + 32]
                idx = idx + 32
                continue 
            mem[_119 + 68] = mem[_119 + 74 len 26]
            revert with memory
              from mem[64]
               len _119 + -mem[64] + 100
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _118 = mem[64]
        mem[64] = mem[64] + 64
        mem[_118] = 26
        mem[_118 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + s
            continue 
        _124 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _124 + 68] = mem[idx + _118 + 32]
            idx = idx + 32
            continue 
        mem[_124 + 68] = mem[_124 + 74 len 26]
        revert with memory
          from mem[64]
           len _124 + -mem[64] + 100
    idx = 0
    t = 0
    while idx < totalStakePools:
        require idx < 10
        mem[mem[64] + 4] = arg1
        require ext_code.size(stakePools[idx])
        staticcall stakePools[idx].0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + t < t:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        t = ext_call.return_data[0] + t
        continue 
    if factorStake + factorLP < factorLP:
        revert with 0, 'SafeMath: addition overflow'
    if not factorStake:
        if not factorLP:
            if not factorStake + factorLP:
                revert with 0, 'SafeMath: division by zero'
            return (0 / factorStake + factorLP)
        if s * factorLP / factorLP != s:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if s * factorLP < s * factorLP:
            revert with 0, 'SafeMath: addition overflow'
        if not factorStake + factorLP:
            revert with 0, 'SafeMath: division by zero'
        return (s * factorLP / factorStake + factorLP)
    if _194 * totalStakePools * factorStake / factorStake != _194 * totalStakePools:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    if not factorLP:
        if _194 * totalStakePools * factorStake < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not factorStake + factorLP:
            revert with 0, 'SafeMath: division by zero'
        return (_194 * totalStakePools * factorStake / factorStake + factorLP)
    if s * factorLP / factorLP != s:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    if (_194 * totalStakePools * factorStake) + (s * factorLP) < s * factorLP:
        revert with 0, 'SafeMath: addition overflow'
    if not factorStake + factorLP:
        revert with 0, 'SafeMath: division by zero'
    return ((_194 * totalStakePools * factorStake) + (s * factorLP) / factorStake + factorLP)
}



}
