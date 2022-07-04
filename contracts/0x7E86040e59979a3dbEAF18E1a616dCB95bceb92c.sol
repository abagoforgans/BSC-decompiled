contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - reflectionFromToken(uint256 arg1, bool arg2)
#  - transfer(address arg1, uint256 arg2)
#
address _owner;
address stor1;
uint256 geUnlockTime;
mapping of uint256 stor3;
mapping of uint256 stor4;
mapping of uint256 allowance;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
array of address stor9;
uint256 totalSupply;
uint256 stor11;
uint256 totalFees;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 _taxFee;
uint256 _maxTxAmount;
uint256 sub_f14bb0b3;

function name() payable {
    return name[0 len name.length]
}

function totalFees() payable {
    return totalFees
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function _taxFee() payable {
    return _taxFee
}

function isExcludedFromFee(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[address(arg1)])
}

function _maxTxAmount() payable {
    return _maxTxAmount
}

function isExcludedFromReward(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[address(arg1)])
}

function owner() payable {
    return _owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_99b102b5(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor8[address(arg1)])
}

function _owner() payable {
    return _owner
}

function geUnlockTime() payable {
    return geUnlockTime
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_f14bb0b3(?) payable {
    return sub_f14bb0b3
}

function _fallback() payable {
    revert
}

function sub_b18a8d37(?) payable {
    if _owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    sub_f14bb0b3 = 10
}

function renounceOwnership() payable {
    if _owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit 0x728be007: _owner, 0
    _owner = 0
}

function sub_eda4fb38(?) payable {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    sub_f14bb0b3 = arg1
}

function sub_21ce1ded(?) payable {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor8[address(arg1)] = 0
}

function setMaxTx(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    _maxTxAmount = arg1^decimals
}

function includeInFee(address arg1) payable {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor6[address(arg1)] = 0
}

function excludeFromFee(address arg1) payable {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor6[address(arg1)] = 1
}

function setTaxFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 > 50:
        revert with 0, 'Tax cannot exceed 25%'
    _taxFee = arg1
}

function sub_b7481ff0(?) payable {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if stor8[address(arg1)]:
        revert with 0, 'Account is already excluded'
    stor8[address(arg1)] = 1
}

function lock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor1 = _owner
    _owner = 0
    geUnlockTime = arg1 + block.timestamp
    emit 0x728be007 
    emit 0x0 
    emit 0x0 
}

function claimTokens() payable {
    if _owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    call _owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unlock() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6e596f7520646f6e27742068617665207065726d697373696f6e20746f20756e6c6f63,
                    mem[199 len 29]
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit 0x728be007: _owner, stor1
    _owner = stor1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit 0x728be007: _owner, arg1
    _owner = arg1
}

function includeInReward(address arg1) payable {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not stor7[address(arg1)]:
        revert with 0, 'Account is already excluded'
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        if stor9[idx] != arg1:
            idx = idx + 1
            continue 
        require stor9.length - 1 < stor9.length
        require idx < stor9.length
        stor9[idx] = stor9[stor9.length]
        stor4[address(arg1)] = 0
        stor7[address(arg1)] = 0
        require stor9.length
        stor9[stor9.length] = 0
        stor9.length--
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6b45524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if arg1 > stor11:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    idx = 0
    s = totalSupply
    t = stor11
    while idx < stor9.length:
        mem[0] = stor9[idx]
        mem[32] = 3
        if stor3[stor9[idx]] > t:
            _156 = mem[64]
            mem[64] = mem[64] + 64
            mem[_156] = 26
            mem[_156 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _156 + 32]
                    idx = idx + 32
                    continue 
            else:
                _198 = mem[64]
                mem[64] = mem[64] + 64
                mem[_198] = 26
                mem[_198 + 32] = 'SafeMath: division by zero'
                if stor11 / totalSupply:
                    return (arg1 / stor11 / totalSupply)
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _198 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor9.length
        mem[0] = stor9[idx]
        mem[32] = 4
        if stor4[stor9[idx]] > s:
            _166 = mem[64]
            mem[64] = mem[64] + 64
            mem[_166] = 26
            mem[_166 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _166 + 32]
                    idx = idx + 32
                    continue 
            else:
                _220 = mem[64]
                mem[64] = mem[64] + 64
                mem[_220] = 26
                mem[_220 + 32] = 'SafeMath: division by zero'
                if stor11 / totalSupply:
                    return (arg1 / stor11 / totalSupply)
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _220 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor9.length
        mem[0] = stor9[idx]
        mem[32] = 3
        _161 = mem[64]
        mem[64] = mem[64] + 64
        mem[_161] = 30
        mem[_161 + 32] = 'SafeMath: subtraction overflow'
        if stor3[stor9[idx]] > t:
            _168 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _168 + 68] = mem[idx + _161 + 32]
                idx = idx + 32
                continue 
            mem[_168 + 68] = mem[_168 + 70 len 30]
            revert with memory
              from mem[64]
               len _168 + -mem[64] + 100
        require idx < stor9.length
        mem[0] = stor9[idx]
        mem[32] = 4
        _200 = mem[64]
        mem[64] = mem[64] + 64
        mem[_200] = 30
        mem[_200 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor9[idx]] <= s:
            idx = idx + 1
            s = s - stor4[stor9[idx]]
            t = t - stor3[stor9[idx]]
            continue 
        _217 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _217 + 68] = mem[idx + _200 + 32]
            idx = idx + 32
            continue 
        mem[_217 + 68] = mem[_217 + 70 len 30]
        revert with memory
          from mem[64]
           len _217 + -mem[64] + 100
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if t >= stor11 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero'
        if not t / s:
            revert with 0, 'SafeMath: division by zero'
        return (arg1 / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if not stor11 / totalSupply:
        revert with 0, 'SafeMath: division by zero'
    return (arg1 / stor11 / totalSupply)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if stor7[address(arg1)]:
        return stor4[address(arg1)]
    mem[0] = arg1
    mem[32] = 3
    if stor3[address(arg1)] > stor11:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    idx = 0
    s = totalSupply
    t = stor11
    while idx < stor9.length:
        mem[0] = stor9[idx]
        mem[32] = 3
        if stor3[stor9[idx]] > t:
            _161 = mem[64]
            mem[64] = mem[64] + 64
            mem[_161] = 26
            mem[_161 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _161 + 32]
                    idx = idx + 32
                    continue 
            else:
                _203 = mem[64]
                mem[64] = mem[64] + 64
                mem[_203] = 26
                mem[_203 + 32] = 'SafeMath: division by zero'
                if stor11 / totalSupply:
                    return (stor3[address(arg1)] / stor11 / totalSupply)
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _203 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor9.length
        mem[0] = stor9[idx]
        mem[32] = 4
        if stor4[stor9[idx]] > s:
            _171 = mem[64]
            mem[64] = mem[64] + 64
            mem[_171] = 26
            mem[_171 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _171 + 32]
                    idx = idx + 32
                    continue 
            else:
                _225 = mem[64]
                mem[64] = mem[64] + 64
                mem[_225] = 26
                mem[_225 + 32] = 'SafeMath: division by zero'
                if stor11 / totalSupply:
                    return (stor3[address(arg1)] / stor11 / totalSupply)
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _225 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor9.length
        mem[0] = stor9[idx]
        mem[32] = 3
        _166 = mem[64]
        mem[64] = mem[64] + 64
        mem[_166] = 30
        mem[_166 + 32] = 'SafeMath: subtraction overflow'
        if stor3[stor9[idx]] > t:
            _173 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _173 + 68] = mem[idx + _166 + 32]
                idx = idx + 32
                continue 
            mem[_173 + 68] = mem[_173 + 70 len 30]
            revert with memory
              from mem[64]
               len _173 + -mem[64] + 100
        require idx < stor9.length
        mem[0] = stor9[idx]
        mem[32] = 4
        _205 = mem[64]
        mem[64] = mem[64] + 64
        mem[_205] = 30
        mem[_205 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor9[idx]] <= s:
            idx = idx + 1
            s = s - stor4[stor9[idx]]
            t = t - stor3[stor9[idx]]
            continue 
        _222 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _222 + 68] = mem[idx + _205 + 32]
            idx = idx + 32
            continue 
        mem[_222 + 68] = mem[_222 + 70 len 30]
        revert with memory
          from mem[64]
           len _222 + -mem[64] + 100
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if t >= stor11 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero'
        if not t / s:
            revert with 0, 'SafeMath: division by zero'
        return (stor3[address(arg1)] / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if not stor11 / totalSupply:
        revert with 0, 'SafeMath: division by zero'
    return (stor3[address(arg1)] / stor11 / totalSupply)
}

function excludeFromReward(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if stor7[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor3[address(arg1)]:
        mem[0] = arg1
        mem[32] = 3
        if stor3[address(arg1)] > stor11:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                        mem[206 len 22]
        idx = 0
        s = totalSupply
        t = stor11
        while idx < stor9.length:
            mem[0] = stor9[idx]
            mem[32] = 3
            if stor3[stor9[idx]] > t:
                _166 = mem[64]
                mem[64] = mem[64] + 64
                mem[_166] = 26
                mem[_166 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _166 + 32]
                        idx = idx + 32
                        continue 
                else:
                    _208 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_208] = 26
                    mem[_208 + 32] = 'SafeMath: division by zero'
                    if stor11 / totalSupply:
                        stor4[address(arg1)] = stor3[address(arg1)] / stor11 / totalSupply
                        stor7[address(arg1)] = 1
                        stor9.length++
                        stor9[stor9.length] = arg1
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _208 + 32]
                        idx = idx + 32
                        continue 
                revert with 0, 'SafeMath: division by zero'
            require idx < stor9.length
            mem[0] = stor9[idx]
            mem[32] = 4
            if stor4[stor9[idx]] > s:
                _176 = mem[64]
                mem[64] = mem[64] + 64
                mem[_176] = 26
                mem[_176 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _176 + 32]
                        idx = idx + 32
                        continue 
                else:
                    _230 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_230] = 26
                    mem[_230 + 32] = 'SafeMath: division by zero'
                    if stor11 / totalSupply:
                        stor4[address(arg1)] = stor3[address(arg1)] / stor11 / totalSupply
                        stor7[address(arg1)] = 1
                        stor9.length++
                        stor9[stor9.length] = arg1
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _230 + 32]
                        idx = idx + 32
                        continue 
                revert with 0, 'SafeMath: division by zero'
            require idx < stor9.length
            mem[0] = stor9[idx]
            mem[32] = 3
            _171 = mem[64]
            mem[64] = mem[64] + 64
            mem[_171] = 30
            mem[_171 + 32] = 'SafeMath: subtraction overflow'
            if stor3[stor9[idx]] > t:
                _178 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _178 + 68] = mem[idx + _171 + 32]
                    idx = idx + 32
                    continue 
                mem[_178 + 68] = mem[_178 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _178 + -mem[64] + 100
            require idx < stor9.length
            mem[0] = stor9[idx]
            mem[32] = 4
            _210 = mem[64]
            mem[64] = mem[64] + 64
            mem[_210] = 30
            mem[_210 + 32] = 'SafeMath: subtraction overflow'
            if stor4[stor9[idx]] <= s:
                idx = idx + 1
                s = s - stor4[stor9[idx]]
                t = t - stor3[stor9[idx]]
                continue 
            _227 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _227 + 68] = mem[idx + _210 + 32]
                idx = idx + 32
                continue 
            mem[_227 + 68] = mem[_227 + 70 len 30]
            revert with memory
              from mem[64]
               len _227 + -mem[64] + 100
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if t >= stor11 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero'
            if not t / s:
                revert with 0, 'SafeMath: division by zero'
            stor4[address(arg1)] = stor3[address(arg1)] / t / s
        else:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not stor11 / totalSupply:
                revert with 0, 'SafeMath: division by zero'
            stor4[address(arg1)] = stor3[address(arg1)] / stor11 / totalSupply
    stor7[address(arg1)] = 1
    stor9.length++
    stor9[stor9.length] = arg1
}

function deliver(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 7
    if stor7[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734578636c75646564206164647265737365732063616e6e6f742063616c6c20746869732066756e6374696f,
                    mem[208 len 20]
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 0 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = totalSupply
        t = stor11
        while idx < stor9.length:
            mem[0] = stor9[idx]
            mem[32] = 3
            if stor3[stor9[idx]] > t:
                _877 = mem[64]
                mem[64] = mem[64] + 64
                mem[_877] = 26
                mem[_877 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _877 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    _1037 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1037] = 30
                    mem[_1037 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 3
                    _1137 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1137] = 30
                    mem[_1137 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _1176 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1176 + 68] = mem[idx + _1137 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1176 + 68] = mem[_1176 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1176 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _1273 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1273] = 30
                    mem[_1273 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor11:
                        if arg1 + totalFees < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _1347 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1347 + 68] = mem[idx + _1273 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1347 + 68] = mem[_1347 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1347 + -mem[64] + 100
                if stor11 / totalSupply * arg1 / arg1 != stor11 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1042 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1042] = 30
                mem[_1042 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor11 / totalSupply * arg1:
                    _1060 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1060 + 68] = mem[idx + _1042 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1060 + 68] = mem[_1060 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1060 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                _1155 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1155] = 30
                mem[_1155 + 32] = 'SafeMath: subtraction overflow'
                if stor11 / totalSupply * arg1 > stor3[address(msg.sender)]:
                    _1210 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1210 + 68] = mem[idx + _1155 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1210 + 68] = mem[_1210 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1210 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * stor11 / totalSupply * arg1
                _1307 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1307] = 30
                mem[_1307 + 32] = 'SafeMath: subtraction overflow'
                if stor11 / totalSupply * arg1 <= stor11:
                    stor11 += -1 * stor11 / totalSupply * arg1
                    if arg1 + totalFees < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _1385 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1385 + 68] = mem[idx + _1307 + 32]
                    idx = idx + 32
                    continue 
                mem[_1385 + 68] = mem[_1385 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1385 + -mem[64] + 100
            require idx < stor9.length
            mem[0] = stor9[idx]
            mem[32] = 4
            if stor4[stor9[idx]] <= s:
                require idx < stor9.length
                mem[0] = stor9[idx]
                mem[32] = 3
                _885 = mem[64]
                mem[64] = mem[64] + 64
                mem[_885] = 30
                mem[_885 + 32] = 'SafeMath: subtraction overflow'
                if stor3[stor9[idx]] > t:
                    _901 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _901 + 68] = mem[idx + _885 + 32]
                        idx = idx + 32
                        continue 
                    mem[_901 + 68] = mem[_901 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _901 + -mem[64] + 100
                require idx < stor9.length
                mem[0] = stor9[idx]
                mem[32] = 4
                _964 = mem[64]
                mem[64] = mem[64] + 64
                mem[_964] = 30
                mem[_964 + 32] = 'SafeMath: subtraction overflow'
                if stor4[stor9[idx]] <= s:
                    idx = idx + 1
                    s = s - stor4[stor9[idx]]
                    t = t - stor3[stor9[idx]]
                    continue 
                _992 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _992 + 68] = mem[idx + _964 + 32]
                    idx = idx + 32
                    continue 
                mem[_992 + 68] = mem[_992 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _992 + -mem[64] + 100
            _895 = mem[64]
            mem[64] = mem[64] + 64
            mem[_895] = 26
            mem[_895 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _895 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                _1047 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1047] = 30
                mem[_1047 + 32] = 'SafeMath: subtraction overflow'
                mem[0] = msg.sender
                mem[32] = 3
                _1181 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1181] = 30
                mem[_1181 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor3[address(msg.sender)]:
                    _1245 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1245 + 68] = mem[idx + _1181 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1245 + 68] = mem[_1245 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1245 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                _1352 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1352] = 30
                mem[_1352 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= stor11:
                    if arg1 + totalFees < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _1430 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1430 + 68] = mem[idx + _1352 + 32]
                    idx = idx + 32
                    continue 
                mem[_1430 + 68] = mem[_1430 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1430 + -mem[64] + 100
            if stor11 / totalSupply * arg1 / arg1 != stor11 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1063 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1063] = 30
            mem[_1063 + 32] = 'SafeMath: subtraction overflow'
            if 0 > stor11 / totalSupply * arg1:
                _1091 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1091 + 68] = mem[idx + _1063 + 32]
                    idx = idx + 32
                    continue 
                mem[_1091 + 68] = mem[_1091 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1091 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 3
            _1213 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1213] = 30
            mem[_1213 + 32] = 'SafeMath: subtraction overflow'
            if stor11 / totalSupply * arg1 > stor3[address(msg.sender)]:
                _1276 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1276 + 68] = mem[idx + _1213 + 32]
                    idx = idx + 32
                    continue 
                mem[_1276 + 68] = mem[_1276 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1276 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 3
            stor3[address(msg.sender)] += -1 * stor11 / totalSupply * arg1
            _1388 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1388] = 30
            mem[_1388 + 32] = 'SafeMath: subtraction overflow'
            if stor11 / totalSupply * arg1 <= stor11:
                stor11 += -1 * stor11 / totalSupply * arg1
                if arg1 + totalFees < totalFees:
                    revert with 0, 'SafeMath: addition overflow'
                totalFees += arg1
            _1473 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _1473 + 68] = mem[idx + _1388 + 32]
                idx = idx + 32
                continue 
            mem[_1473 + 68] = mem[_1473 + 70 len 30]
            revert with memory
              from mem[64]
               len _1473 + -mem[64] + 100
        _847 = mem[64]
        mem[64] = mem[64] + 64
        mem[_847] = 26
        mem[_847 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if t >= stor11 / totalSupply:
            _911 = mem[64]
            mem[64] = mem[64] + 64
            mem[_911] = 26
            mem[_911 + 32] = 'SafeMath: division by zero'
            if not s:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if 0 > stor3[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > stor11:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if t / s * arg1 > stor3[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor3[address(msg.sender)] += -1 * t / s * arg1
                if t / s * arg1 > stor11:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor11 += -1 * t / s * arg1
        else:
            _912 = mem[64]
            mem[64] = mem[64] + 64
            mem[_912] = 26
            mem[_912 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if 0 > stor3[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > stor11:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                if stor11 / totalSupply * arg1 / arg1 != stor11 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > stor11 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor11 / totalSupply * arg1 > stor3[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor3[address(msg.sender)] += -1 * stor11 / totalSupply * arg1
                if stor11 / totalSupply * arg1 > stor11:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor11 += -1 * stor11 / totalSupply * arg1
    else:
        if _taxFee * arg1 / arg1 != _taxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if _taxFee * arg1 / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = totalSupply
        t = stor11
        while idx < stor9.length:
            mem[0] = stor9[idx]
            mem[32] = 3
            if stor3[stor9[idx]] > t:
                _872 = mem[64]
                mem[64] = mem[64] + 64
                mem[_872] = 26
                mem[_872 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _872 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not _taxFee * arg1 / 100:
                        _1036 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1036] = 30
                        mem[_1036 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 3
                        _1126 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1126] = 30
                        mem[_1126 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _1164 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1164 + 68] = mem[idx + _1126 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1164 + 68] = mem[_1164 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1164 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _1260 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1260] = 30
                        mem[_1260 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor11:
                            if arg1 + totalFees < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _1330 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1330 + 68] = mem[idx + _1260 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1330 + 68] = mem[_1330 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1330 + -mem[64] + 100
                    if stor11 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor11 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1039 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1039] = 30
                    mem[_1039 + 32] = 'SafeMath: subtraction overflow'
                    if stor11 / totalSupply * _taxFee * arg1 / 100 > 0:
                        _1055 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1055 + 68] = mem[idx + _1039 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1055 + 68] = mem[_1055 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1055 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _1148 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1148] = 30
                    mem[_1148 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _1197 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1197 + 68] = mem[idx + _1148 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1197 + 68] = mem[_1197 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1197 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _1292 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1292] = 30
                    mem[_1292 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor11:
                        if arg1 + totalFees < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _1369 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1369 + 68] = mem[idx + _1292 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1369 + 68] = mem[_1369 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1369 + -mem[64] + 100
                if stor11 / totalSupply * arg1 / arg1 != stor11 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not _taxFee * arg1 / 100:
                    _1038 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1038] = 30
                    mem[_1038 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor11 / totalSupply * arg1:
                        _1052 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1052 + 68] = mem[idx + _1038 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1052 + 68] = mem[_1052 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1052 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _1147 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1147] = 30
                    mem[_1147 + 32] = 'SafeMath: subtraction overflow'
                    if stor11 / totalSupply * arg1 > stor3[address(msg.sender)]:
                        _1194 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1194 + 68] = mem[idx + _1147 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1194 + 68] = mem[_1194 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1194 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * stor11 / totalSupply * arg1
                    _1289 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1289] = 30
                    mem[_1289 + 32] = 'SafeMath: subtraction overflow'
                    if stor11 / totalSupply * arg1 <= stor11:
                        stor11 += -1 * stor11 / totalSupply * arg1
                        if arg1 + totalFees < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _1366 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1366 + 68] = mem[idx + _1289 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1366 + 68] = mem[_1366 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1366 + -mem[64] + 100
                if stor11 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor11 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1043 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1043] = 30
                mem[_1043 + 32] = 'SafeMath: subtraction overflow'
                if stor11 / totalSupply * _taxFee * arg1 / 100 > stor11 / totalSupply * arg1:
                    _1070 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1070 + 68] = mem[idx + _1043 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1070 + 68] = mem[_1070 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1070 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                _1163 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1163] = 30
                mem[_1163 + 32] = 'SafeMath: subtraction overflow'
                if stor11 / totalSupply * arg1 > stor3[address(msg.sender)]:
                    _1228 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1228 + 68] = mem[idx + _1163 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1228 + 68] = mem[_1228 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1228 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * stor11 / totalSupply * arg1
                _1325 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1325] = 30
                mem[_1325 + 32] = 'SafeMath: subtraction overflow'
                if stor11 / totalSupply * arg1 <= stor11:
                    stor11 += -1 * stor11 / totalSupply * arg1
                    if arg1 + totalFees < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _1406 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1406 + 68] = mem[idx + _1325 + 32]
                    idx = idx + 32
                    continue 
                mem[_1406 + 68] = mem[_1406 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1406 + -mem[64] + 100
            require idx < stor9.length
            mem[0] = stor9[idx]
            mem[32] = 4
            if stor4[stor9[idx]] <= s:
                require idx < stor9.length
                mem[0] = stor9[idx]
                mem[32] = 3
                _882 = mem[64]
                mem[64] = mem[64] + 64
                mem[_882] = 30
                mem[_882 + 32] = 'SafeMath: subtraction overflow'
                if stor3[stor9[idx]] > t:
                    _897 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _897 + 68] = mem[idx + _882 + 32]
                        idx = idx + 32
                        continue 
                    mem[_897 + 68] = mem[_897 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _897 + -mem[64] + 100
                require idx < stor9.length
                mem[0] = stor9[idx]
                mem[32] = 4
                _957 = mem[64]
                mem[64] = mem[64] + 64
                mem[_957] = 30
                mem[_957 + 32] = 'SafeMath: subtraction overflow'
                if stor4[stor9[idx]] <= s:
                    idx = idx + 1
                    s = s - stor4[stor9[idx]]
                    t = t - stor3[stor9[idx]]
                    continue 
                _984 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _984 + 68] = mem[idx + _957 + 32]
                    idx = idx + 32
                    continue 
                mem[_984 + 68] = mem[_984 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _984 + -mem[64] + 100
            _890 = mem[64]
            mem[64] = mem[64] + 64
            mem[_890] = 26
            mem[_890 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _890 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if not _taxFee * arg1 / 100:
                    _1046 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1046] = 30
                    mem[_1046 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 3
                    _1173 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1173] = 30
                    mem[_1173 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _1234 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1234 + 68] = mem[idx + _1173 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1234 + 68] = mem[_1234 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1234 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _1337 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1337] = 30
                    mem[_1337 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor11:
                        if arg1 + totalFees < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _1415 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1415 + 68] = mem[idx + _1337 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1415 + 68] = mem[_1415 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1415 + -mem[64] + 100
                if stor11 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor11 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1059 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1059] = 30
                mem[_1059 + 32] = 'SafeMath: subtraction overflow'
                if stor11 / totalSupply * _taxFee * arg1 / 100 > 0:
                    _1085 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1085 + 68] = mem[idx + _1059 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1085 + 68] = mem[_1085 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1085 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                _1203 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1203] = 30
                mem[_1203 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor3[address(msg.sender)]:
                    _1266 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1266 + 68] = mem[idx + _1203 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1266 + 68] = mem[_1266 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1266 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                _1377 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1377] = 30
                mem[_1377 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= stor11:
                    if arg1 + totalFees < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _1459 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1459 + 68] = mem[idx + _1377 + 32]
                    idx = idx + 32
                    continue 
                mem[_1459 + 68] = mem[_1459 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1459 + -mem[64] + 100
            if stor11 / totalSupply * arg1 / arg1 != stor11 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not _taxFee * arg1 / 100:
                _1058 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1058] = 30
                mem[_1058 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor11 / totalSupply * arg1:
                    _1082 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1082 + 68] = mem[idx + _1058 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1082 + 68] = mem[_1082 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1082 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                _1202 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1202] = 30
                mem[_1202 + 32] = 'SafeMath: subtraction overflow'
                if stor11 / totalSupply * arg1 > stor3[address(msg.sender)]:
                    _1263 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1263 + 68] = mem[idx + _1202 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1263 + 68] = mem[_1263 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1263 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * stor11 / totalSupply * arg1
                _1374 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1374] = 30
                mem[_1374 + 32] = 'SafeMath: subtraction overflow'
                if stor11 / totalSupply * arg1 <= stor11:
                    stor11 += -1 * stor11 / totalSupply * arg1
                    if arg1 + totalFees < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _1456 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1456 + 68] = mem[idx + _1374 + 32]
                    idx = idx + 32
                    continue 
                mem[_1456 + 68] = mem[_1456 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1456 + -mem[64] + 100
            if stor11 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor11 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1073 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1073] = 30
            mem[_1073 + 32] = 'SafeMath: subtraction overflow'
            if stor11 / totalSupply * _taxFee * arg1 / 100 > stor11 / totalSupply * arg1:
                _1102 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1102 + 68] = mem[idx + _1073 + 32]
                    idx = idx + 32
                    continue 
                mem[_1102 + 68] = mem[_1102 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1102 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 3
            _1233 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1233] = 30
            mem[_1233 + 32] = 'SafeMath: subtraction overflow'
            if stor11 / totalSupply * arg1 > stor3[address(msg.sender)]:
                _1296 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1296 + 68] = mem[idx + _1233 + 32]
                    idx = idx + 32
                    continue 
                mem[_1296 + 68] = mem[_1296 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1296 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 3
            stor3[address(msg.sender)] += -1 * stor11 / totalSupply * arg1
            _1410 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1410] = 30
            mem[_1410 + 32] = 'SafeMath: subtraction overflow'
            if stor11 / totalSupply * arg1 <= stor11:
                stor11 += -1 * stor11 / totalSupply * arg1
                if arg1 + totalFees < totalFees:
                    revert with 0, 'SafeMath: addition overflow'
                totalFees += arg1
            _1500 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _1500 + 68] = mem[idx + _1410 + 32]
                idx = idx + 32
                continue 
            mem[_1500 + 68] = mem[_1500 + 70 len 30]
            revert with memory
              from mem[64]
               len _1500 + -mem[64] + 100
        _842 = mem[64]
        mem[64] = mem[64] + 64
        mem[_842] = 26
        mem[_842 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if t >= stor11 / totalSupply:
            _904 = mem[64]
            mem[64] = mem[64] + 64
            mem[_904] = 26
            mem[_904 + 32] = 'SafeMath: division by zero'
            if not s:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if _taxFee * arg1 / 100:
                    if t / s * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if t / s * _taxFee * arg1 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                if 0 > stor3[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > stor11:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not _taxFee * arg1 / 100:
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if t / s * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if t / s * _taxFee * arg1 / 100 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                if t / s * arg1 > stor3[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor3[address(msg.sender)] += -1 * t / s * arg1
                if t / s * arg1 > stor11:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor11 += -1 * t / s * arg1
        else:
            _905 = mem[64]
            mem[64] = mem[64] + 64
            mem[_905] = 26
            mem[_905 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if _taxFee * arg1 / 100:
                    if stor11 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor11 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if stor11 / totalSupply * _taxFee * arg1 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                if 0 > stor3[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > stor11:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                if stor11 / totalSupply * arg1 / arg1 != stor11 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not _taxFee * arg1 / 100:
                    if 0 > stor11 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if stor11 / totalSupply * _taxFee * arg1 / 100 / _taxFee * arg1 / 100 != stor11 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if stor11 / totalSupply * _taxFee * arg1 / 100 > stor11 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                if stor11 / totalSupply * arg1 > stor3[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor3[address(msg.sender)] += -1 * stor11 / totalSupply * arg1
                if stor11 / totalSupply * arg1 > stor11:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor11 += -1 * stor11 / totalSupply * arg1
    if arg1 + totalFees < totalFees:
        revert with 0, 'SafeMath: addition overflow'
    totalFees += arg1
}



}
