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
        if s + ext_call.return_data[0] < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    return (s * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools)
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
            _55 = mem[64]
            mem[64] = mem[64] + 64
            mem[_55] = 26
            mem[_55 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if s + (0 / ext_call.return_data[0]) < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = s + (0 / ext_call.return_data[0])
                continue 
            _57 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_57 + idx + 68] = mem[_55 + idx + 32]
                idx = idx + 32
                continue 
            mem[_57 + 68] = mem[_57 + 74 len 26]
            revert with memory
              from mem[64]
               len _57 + -mem[64] + 100
        require ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _56 = mem[64]
        mem[64] = mem[64] + 64
        mem[_56] = 26
        mem[_56 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if s + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
            continue 
        _60 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_60 + idx + 68] = mem[_56 + idx + 32]
            idx = idx + 32
            continue 
        mem[_60 + 68] = mem[_60 + 74 len 26]
        revert with memory
          from mem[64]
           len _60 + -mem[64] + 100
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
            _120 = mem[64]
            mem[64] = mem[64] + 64
            mem[_120] = 26
            mem[_120 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if s + (0 / ext_call.return_data[0]) < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = s + (0 / ext_call.return_data[0])
                continue 
            _129 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_129 + idx + 68] = mem[_120 + idx + 32]
                idx = idx + 32
                continue 
            mem[_129 + 68] = mem[_129 + 74 len 26]
            revert with memory
              from mem[64]
               len _129 + -mem[64] + 100
        require ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _128 = mem[64]
        mem[64] = mem[64] + 64
        mem[_128] = 26
        mem[_128 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if s + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
            continue 
        _140 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_140 + idx + 68] = mem[_128 + idx + 32]
            idx = idx + 32
            continue 
        mem[_140 + 68] = mem[_140 + 74 len 26]
        revert with memory
          from mem[64]
           len _140 + -mem[64] + 100
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
        if t + ext_call.return_data[0] < t:
            revert with 0, 'SafeMath: addition overflow'
        t = t + ext_call.return_data[0]
        idx = idx + 1
        continue 
    if factorLP + factorStake < factorLP:
        revert with 0, 'SafeMath: addition overflow'
    if not factorStake:
        if not factorLP:
            if factorLP + factorStake <= 0:
                revert with 0, 'SafeMath: division by zero'
            if factorLP + factorStake:
                return (0 / factorLP + factorStake)
        else:
            if factorLP:
                if factorLP * s / factorLP != s:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if factorLP * s < factorLP * s:
                    revert with 0, 'SafeMath: addition overflow'
                if factorLP + factorStake <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if factorLP + factorStake:
                    return (factorLP * s / factorLP + factorStake)
    else:
        if factorStake:
            if factorStake * t * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools / factorStake != t * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not factorLP:
                if factorStake * t * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if factorLP + factorStake <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if factorLP + factorStake:
                    return (factorStake * t * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools / factorLP + factorStake)
            else:
                if factorLP:
                    if factorLP * s / factorLP != s:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (factorLP * s) + (factorStake * t * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools) < factorLP * s:
                        revert with 0, 'SafeMath: addition overflow'
                    if factorLP + factorStake <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if factorLP + factorStake:
                        return ((factorLP * s) + (factorStake * t * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools) / factorLP + factorStake)
    revert
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
            _117 = mem[64]
            mem[64] = mem[64] + 64
            mem[_117] = 26
            mem[_117 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if s + (0 / ext_call.return_data[0]) < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = s + (0 / ext_call.return_data[0])
                continue 
            _121 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_121 + idx + 68] = mem[_117 + idx + 32]
                idx = idx + 32
                continue 
            mem[_121 + 68] = mem[_121 + 74 len 26]
            revert with memory
              from mem[64]
               len _121 + -mem[64] + 100
        require ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _120 = mem[64]
        mem[64] = mem[64] + 64
        mem[_120] = 26
        mem[_120 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if s + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
            continue 
        _127 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_127 + idx + 68] = mem[_120 + idx + 32]
            idx = idx + 32
            continue 
        mem[_127 + 68] = mem[_127 + 74 len 26]
        revert with memory
          from mem[64]
           len _127 + -mem[64] + 100
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
        if t + ext_call.return_data[0] < t:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        t = t + ext_call.return_data[0]
        continue 
    if factorLP + factorStake < factorLP:
        revert with 0, 'SafeMath: addition overflow'
    if not factorStake:
        if not factorLP:
            if factorLP + factorStake <= 0:
                revert with 0, 'SafeMath: division by zero'
            if factorLP + factorStake:
                return (0 / factorLP + factorStake)
        else:
            if factorLP:
                if factorLP * s / factorLP != s:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if factorLP * s < factorLP * s:
                    revert with 0, 'SafeMath: addition overflow'
                if factorLP + factorStake <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if factorLP + factorStake:
                    return (factorLP * s / factorLP + factorStake)
    else:
        if factorStake:
            if factorStake * t * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools / factorStake != t * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not factorLP:
                if factorStake * t * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if factorLP + factorStake <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if factorLP + factorStake:
                    return (factorStake * t * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools / factorLP + factorStake)
            else:
                if factorLP:
                    if factorLP * s / factorLP != s:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (factorLP * s) + (factorStake * t * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools) < factorLP * s:
                        revert with 0, 'SafeMath: addition overflow'
                    if factorLP + factorStake <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if factorLP + factorStake:
                        return ((factorLP * s) + (factorStake * t * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools) / factorLP + factorStake)
    revert
}



}
