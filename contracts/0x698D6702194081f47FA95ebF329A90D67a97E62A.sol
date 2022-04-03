contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address cashAddress; offset 8
array of address pools;
uint256 totalInitialBalance;

function totalInitialBalance() payable {
    return totalInitialBalance
}

function once() payable {
    return bool(stor0)
}

function cash() payable {
    return cashAddress
}

function pools(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < pools.length
    return pools[arg1]
}

function _fallback() payable {
    revert
}

function distribute() payable {
    mem[64] = 96
    if not stor0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0xfe496e697469616c436173684469737472696275746f723a20796f752063616e6e6f742072756e20746869732066756e6374696f6e2074776963,
                    mem[222 len 6]
    idx = 0
    while idx < pools.length:
        _21 = mem[64]
        mem[64] = mem[64] + 64
        mem[_21] = 26
        mem[_21 + 32] = 'SafeMath: division by zero'
        if not pools.length:
            _22 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _22 + 68] = mem[idx + _21 + 32]
                idx = idx + 32
                continue 
            mem[_22 + 68] = mem[_22 + 74 len 26]
            revert with memory
              from mem[64]
               len _22 + -mem[64] + 100
        require idx < pools.length
        mem[mem[64] + 36] = totalInitialBalance / pools.length
        require ext_code.size(cashAddress)
        call cashAddress.0xa9059cbb with:
             gas gas_remaining wei
            args pools[idx], totalInitialBalance / pools.length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < pools.length
        require ext_code.size(pools[idx])
        call pools[idx].notifyRewardAmount(uint256 rg1) with:
             gas gas_remaining wei
            args (totalInitialBalance / pools.length)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < pools.length
        mem[0] = 1
        mem[mem[64]] = pools[idx]
        mem[mem[64] + 32] = totalInitialBalance / pools.length
        emit Distributed(pools[idx], totalInitialBalance / pools.length);
        idx = idx + 1
        continue 
    stor0 = 0
}



}
