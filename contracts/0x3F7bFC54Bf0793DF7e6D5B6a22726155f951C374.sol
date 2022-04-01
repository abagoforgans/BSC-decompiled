contract main {




// =====================  Runtime code  =====================


const decimals = 18


array of address sub_970ed6a3;
array of address stakePools;
address stor2;
address sbdoAddress;
uint256 factorStake;
uint256 factorLP;
uint256 sub_5652c30b;
uint256 totalStakePools;

function stakePools(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stakePools.length
    return stakePools[arg1]
}

function sub_5652c30b(?) payable {
    return sub_5652c30b
}

function factorLP() payable {
    return factorLP
}

function sub_970ed6a3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_970ed6a3.length
    return sub_970ed6a3[arg1]
}

function factorStake() payable {
    return factorStake
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

function setFactorLP(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if factorStake <= 0:
        revert with 0, 'Total factors must > 0'
    if arg1 <= 0:
        revert with 0, 'Total factors must > 0'
    factorLP = arg1
}

function setFactorStake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if factorLP <= 0:
        revert with 0, 'Total factors must > 0'
    if arg1 <= 0:
        revert with 0, 'Total factors must > 0'
    factorStake = arg1
}

function sub_9b2c7ccb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    sub_5652c30b = arg1.length
    idx = 0
    while idx < sub_5652c30b:
        require idx < arg1.length
        sub_970ed6a3.length++
        mem[0] = 0
        sub_970ed6a3[sub_970ed6a3.length] = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
}

function setStakePools(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    totalStakePools = arg1.length
    idx = 0
    while idx < totalStakePools:
        require idx < arg1.length
        stakePools.length++
        mem[0] = 1
        stakePools[stakePools.length] = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < sub_5652c30b:
        require idx < sub_970ed6a3.length
        require ext_code.size(sub_970ed6a3[idx])
        staticcall sub_970ed6a3[idx].0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < sub_970ed6a3.length
        require ext_code.size(sub_970ed6a3[idx])
        staticcall sub_970ed6a3[idx].0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < sub_970ed6a3.length
        mem[0] = 0
        mem[mem[64] + 4] = sub_970ed6a3[idx]
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args sub_970ed6a3[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            _123 = mem[64]
            mem[64] = mem[64] + 64
            mem[_123] = 26
            mem[_123 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if s + (0 / ext_call.return_data[0]) < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = s + (0 / ext_call.return_data[0])
                continue 
            _127 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_127 + idx + 68] = mem[_123 + idx + 32]
                idx = idx + 32
                continue 
            mem[_127 + 68] = mem[_127 + 74 len 26]
            revert with memory
              from mem[64]
               len _127 + -mem[64] + 100
        require ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _126 = mem[64]
        mem[64] = mem[64] + 64
        mem[_126] = 26
        mem[_126 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if s + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
            continue 
        _133 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_133 + idx + 68] = mem[_126 + idx + 32]
            idx = idx + 32
            continue 
        mem[_133 + 68] = mem[_133 + 74 len 26]
        revert with memory
          from mem[64]
           len _133 + -mem[64] + 100
    idx = 0
    t = 0
    while idx < totalStakePools:
        require idx < stakePools.length
        mem[0] = 1
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

function totalSupply() payable {
    idx = 0
    s = 0
    while idx < sub_5652c30b:
        require idx < sub_970ed6a3.length
        mem[0] = 0
        mem[100] = sub_970ed6a3[idx]
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args sub_970ed6a3[idx]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if s + ext_call.return_data[0] < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    t = 0
    idx = 0
    while idx < totalStakePools:
        require idx < stakePools.length
        mem[0] = 1
        mem[100] = stakePools[idx]
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args stakePools[idx]
        mem[96] = ext_call.return_data[0]
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
                if factorLP * s * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b / factorLP != s * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                if factorLP * s * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b < factorLP * s * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b:
                    revert with 0, 'SafeMath: addition overflow'
                if factorLP + factorStake <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if factorLP + factorStake:
                    return (factorLP * s * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b / factorLP + factorStake)
    else:
        if factorStake:
            if factorStake * t * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools / factorStake != t * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            if not factorLP:
                if factorStake * t * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if factorLP + factorStake <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if factorLP + factorStake:
                    return (factorStake * t * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools / factorLP + factorStake)
            else:
                if factorLP:
                    if factorLP * s * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b / factorLP != s * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if (factorLP * s * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b) + (factorStake * t * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools) < factorLP * s * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b:
                        revert with 0, 'SafeMath: addition overflow'
                    if factorLP + factorStake <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if factorLP + factorStake:
                        return ((factorLP * s * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b * sub_5652c30b) + (factorStake * t * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools * totalStakePools) / factorLP + factorStake)
    revert
}



}
