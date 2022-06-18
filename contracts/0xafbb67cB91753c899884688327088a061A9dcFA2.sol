contract main {




// =====================  Runtime code  =====================


address _owner;
mapping of uint256 stor1;
mapping of uint256 allowance;
mapping of uint8 stor5;
uint256 _tTotal;
uint256 sub_0f45923e;
uint256 _rTotal;
uint256 _tFeeTotal;
array of struct stor10;
array of struct stor11;
uint256 decimals;
address uniswapV2PairAddress;
uint256 sub_9600c631;

function sub_0f45923e(?) {
    return sub_0f45923e
}

function totalFees() {
    return _tFeeTotal
}

function totalSupply() {
    return _tTotal
}

function decimals() {
    return decimals
}

function _rTotal() {
    return _rTotal
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[address(arg1)])
}

function owner() {
    return _owner
}

function sub_9600c631(?) {
    return sub_9600c631
}

function _tTotal() {
    return _tTotal
}

function _owner() {
    return _owner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _tFeeTotal() {
    return _tFeeTotal
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _owner = arg1
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = 1
}

function changeRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_9600c631:
        sub_9600c631 = block.timestamp
    uniswapV2PairAddress = arg1
}

function claimTokens() {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call _owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function tokenFromReflection(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > _rTotal:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if not _tTotal:
        revert with 0, 'SafeMath: division by zero', 0
    if not _tTotal:
        revert with 0, 'SafeMath: division by zero', 0
    if not _rTotal / _tTotal:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 / _rTotal / _tTotal)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1[address(arg1)] > _rTotal:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if not _tTotal:
        revert with 0, 'SafeMath: division by zero', 0
    if not _tTotal:
        revert with 0, 'SafeMath: division by zero', 0
    if not _rTotal / _tTotal:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor1[address(arg1)] / _rTotal / _tTotal)
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function name() {
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor10.length):
            if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor10.length):
                if 31 < uint255(stor10.length) * 0.5:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor10.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length), data=mem[128 len ceil32(uint255(stor10.length) * 0.5)])
                mem[128] = 256 * stor10.length.field_8
        else:
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 0, 34
            if stor10.length.field_1:
                if 31 < stor10.length.field_1:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while stor10.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length), data=mem[128 len ceil32(uint255(stor10.length) * 0.5)])
                mem[128] = 256 * stor10.length.field_8
        mem[ceil32(uint255(stor10.length) * 0.5) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
        if ceil32(uint255(stor10.length) * 0.5) > uint255(stor10.length) * 0.5:
            mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor10.length), data=mem[128 len ceil32(uint255(stor10.length) * 0.5)], mem[(2 * ceil32(uint255(stor10.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor10.length) * 0.5)]), 
    if bool(stor10.length) == stor10.length.field_1 < 32:
        revert with 0, 34
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor10.length):
            if 31 < uint255(stor10.length) * 0.5:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while (uint255(stor10.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    else:
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 0, 34
        if stor10.length.field_1:
            if 31 < stor10.length.field_1:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while stor10.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    mem[ceil32(stor10.length.field_1) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
    if ceil32(stor10.length.field_1) > stor10.length.field_1:
        mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 192] = 0
    return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)], mem[(2 * ceil32(stor10.length.field_1)) + 192 len 2 * ceil32(stor10.length.field_1)]), 
}

function symbol() {
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor11.length):
                if 31 < uint255(stor11.length) * 0.5:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor11.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length), data=mem[128 len ceil32(uint255(stor11.length) * 0.5)])
                mem[128] = 256 * stor11.length.field_8
        else:
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 0, 34
            if stor11.length.field_1:
                if 31 < stor11.length.field_1:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length), data=mem[128 len ceil32(uint255(stor11.length) * 0.5)])
                mem[128] = 256 * stor11.length.field_8
        mem[ceil32(uint255(stor11.length) * 0.5) + 192 len ceil32(uint255(stor11.length) * 0.5)] = mem[128 len ceil32(uint255(stor11.length) * 0.5)]
        if ceil32(uint255(stor11.length) * 0.5) > uint255(stor11.length) * 0.5:
            mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor11.length), data=mem[128 len ceil32(uint255(stor11.length) * 0.5)], mem[(2 * ceil32(uint255(stor11.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor11.length) * 0.5)]), 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 0, 34
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor11.length):
            if 31 < uint255(stor11.length) * 0.5:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while (uint255(stor11.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    else:
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 0, 34
        if stor11.length.field_1:
            if 31 < stor11.length.field_1:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    mem[ceil32(stor11.length.field_1) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
    if ceil32(stor11.length.field_1) > stor11.length.field_1:
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 192] = 0
    return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)], mem[(2 * ceil32(stor11.length.field_1)) + 192 len 2 * ceil32(stor11.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if not stor5[address(msg.sender)]:
        if not stor5[address(arg1)]:
            if uniswapV2PairAddress == arg1:
                if stor1[address(msg.sender)] > _rTotal:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
                if not _tTotal:
                    revert with 0, 'SafeMath: division by zero', 0
                if not _tTotal:
                    revert with 0, 'SafeMath: division by zero', 0
                if not _rTotal / _tTotal:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg2:
                    if 0 > stor1[address(msg.sender)] / _rTotal / _tTotal:
                        revert with 0, 'sell 10% you have'
                else:
                    if arg2 and 2 > -1 / arg2:
                        revert with 0, 17
                    if not arg2:
                        revert with 0, 18
                    if 2 * arg2 / arg2 != 2:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 2 * arg2 > stor1[address(msg.sender)] / _rTotal / _tTotal:
                        revert with 0, 'sell 10% you have'
            else:
                if sub_9600c631 > -1 * 10^6:
                    revert with 0, 17
                if sub_9600c631 + 999999 < sub_9600c631:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_9600c631 + 999999 > block.timestamp:
                    if stor1[address(arg1)] > _rTotal:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
                    if not _tTotal:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not _tTotal:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not _rTotal / _tTotal:
                        revert with 0, 'SafeMath: division by zero', 0
                    if stor1[address(arg1)] / _rTotal / _tTotal > !arg2:
                        revert with 0, 17
                    if (stor1[address(arg1)] / _rTotal / _tTotal) + arg2 < stor1[address(arg1)] / _rTotal / _tTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    if (stor1[address(arg1)] / _rTotal / _tTotal) + arg2 > sub_0f45923e:
                        revert with 0, 'max buy 1 '
    if not _tTotal:
        revert with 0, 'SafeMath: division by zero', 0
    if not _tTotal:
        revert with 0, 'SafeMath: division by zero', 0
    if not arg2:
        if 0 > stor1[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor1[address(msg.sender)] < 0:
            revert with 0, 17
        if stor1[arg1] > -1:
            revert with 0, 17
        if stor1[arg1] < stor1[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        stor1[address(arg1)] = stor1[arg1]
    else:
        if arg2 and _rTotal / _tTotal > -1 / arg2:
            revert with 0, 17
        if not arg2:
            revert with 0, 18
        if arg2 * _rTotal / _tTotal / arg2 != _rTotal / _tTotal:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg2 * _rTotal / _tTotal > stor1[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor1[address(msg.sender)] < arg2 * _rTotal / _tTotal:
            revert with 0, 17
        stor1[address(msg.sender)] += -1 * arg2 * _rTotal / _tTotal
        if stor1[arg1] > !(arg2 * _rTotal / _tTotal):
            revert with 0, 17
        if stor1[arg1] + (arg2 * _rTotal / _tTotal) < stor1[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        stor1[address(arg1)] = stor1[arg1] + (arg2 * _rTotal / _tTotal)
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if stor5[address(arg1)]:
        if not _tTotal:
            revert with 0, 'SafeMath: division by zero', 0
        if not _tTotal:
            revert with 0, 'SafeMath: division by zero', 0
        if not arg3:
            if 0 > stor1[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor1[address(arg1)] < 0:
                revert with 0, 17
            if stor1[arg2] > -1:
                revert with 0, 17
            if stor1[arg2] < stor1[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            stor1[address(arg2)] = stor1[arg2]
        else:
            if arg3 and _rTotal / _tTotal > -1 / arg3:
                revert with 0, 17
            if not arg3:
                revert with 0, 18
            if arg3 * _rTotal / _tTotal / arg3 != _rTotal / _tTotal:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg3 * _rTotal / _tTotal > stor1[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor1[address(arg1)] < arg3 * _rTotal / _tTotal:
                revert with 0, 17
            stor1[address(arg1)] += -1 * arg3 * _rTotal / _tTotal
            if stor1[arg2] > !(arg3 * _rTotal / _tTotal):
                revert with 0, 17
            if stor1[arg2] + (arg3 * _rTotal / _tTotal) < stor1[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            stor1[address(arg2)] = stor1[arg2] + (arg3 * _rTotal / _tTotal)
        emit Transfer(arg3, arg1, arg2);
        if arg3 > allowance[address(arg1)][msg.sender]:
            revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
    else:
        if stor5[address(arg2)]:
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg3:
                if 0 > stor1[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor1[address(arg1)] < 0:
                    revert with 0, 17
                if stor1[arg2] > -1:
                    revert with 0, 17
                if stor1[arg2] < stor1[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                stor1[address(arg2)] = stor1[arg2]
            else:
                if arg3 and _rTotal / _tTotal > -1 / arg3:
                    revert with 0, 17
                if not arg3:
                    revert with 0, 18
                if arg3 * _rTotal / _tTotal / arg3 != _rTotal / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg3 * _rTotal / _tTotal > stor1[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor1[address(arg1)] < arg3 * _rTotal / _tTotal:
                    revert with 0, 17
                stor1[address(arg1)] += -1 * arg3 * _rTotal / _tTotal
                if stor1[arg2] > !(arg3 * _rTotal / _tTotal):
                    revert with 0, 17
                if stor1[arg2] + (arg3 * _rTotal / _tTotal) < stor1[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                stor1[address(arg2)] = stor1[arg2] + (arg3 * _rTotal / _tTotal)
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][msg.sender]:
                revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
        else:
            if uniswapV2PairAddress == arg2:
                if stor1[address(arg1)] > _rTotal:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
                if not _tTotal:
                    revert with 0, 'SafeMath: division by zero', 0
                if not _tTotal:
                    revert with 0, 'SafeMath: division by zero', 0
                if not _rTotal / _tTotal:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg3:
                    if 0 > stor1[address(arg1)] / _rTotal / _tTotal:
                        revert with 0, 'sell 10% you have'
                else:
                    if arg3 and 2 > -1 / arg3:
                        revert with 0, 17
                    if not arg3:
                        revert with 0, 18
                    if 2 * arg3 / arg3 != 2:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 2 * arg3 > stor1[address(arg1)] / _rTotal / _tTotal:
                        revert with 0, 'sell 10% you have'
                if not _tTotal:
                    revert with 0, 'SafeMath: division by zero', 0
                if not _tTotal:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg3:
                    if 0 > stor1[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(arg1)] < 0:
                        revert with 0, 17
                    if stor1[arg2] > -1:
                        revert with 0, 17
                    if stor1[arg2] < stor1[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor1[address(arg2)] = stor1[arg2]
                else:
                    if arg3 and _rTotal / _tTotal > -1 / arg3:
                        revert with 0, 17
                    if not arg3:
                        revert with 0, 18
                    if arg3 * _rTotal / _tTotal / arg3 != _rTotal / _tTotal:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg3 * _rTotal / _tTotal > stor1[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor1[address(arg1)] < arg3 * _rTotal / _tTotal:
                        revert with 0, 17
                    stor1[address(arg1)] += -1 * arg3 * _rTotal / _tTotal
                    if stor1[arg2] > !(arg3 * _rTotal / _tTotal):
                        revert with 0, 17
                    if stor1[arg2] + (arg3 * _rTotal / _tTotal) < stor1[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    stor1[address(arg2)] = stor1[arg2] + (arg3 * _rTotal / _tTotal)
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[552 len 24] >> 64, 0
            else:
                if sub_9600c631 > -1 * 10^6:
                    revert with 0, 17
                if sub_9600c631 + 999999 < sub_9600c631:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_9600c631 + 999999 <= block.timestamp:
                    if not _tTotal:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not _tTotal:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg3:
                        if 0 > stor1[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(arg1)] < 0:
                            revert with 0, 17
                        if stor1[arg2] > -1:
                            revert with 0, 17
                        if stor1[arg2] < stor1[arg2]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[address(arg2)] = stor1[arg2]
                    else:
                        if arg3 and _rTotal / _tTotal > -1 / arg3:
                            revert with 0, 17
                        if not arg3:
                            revert with 0, 18
                        if arg3 * _rTotal / _tTotal / arg3 != _rTotal / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg3 * _rTotal / _tTotal > stor1[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(arg1)] < arg3 * _rTotal / _tTotal:
                            revert with 0, 17
                        stor1[address(arg1)] += -1 * arg3 * _rTotal / _tTotal
                        if stor1[arg2] > !(arg3 * _rTotal / _tTotal):
                            revert with 0, 17
                        if stor1[arg2] + (arg3 * _rTotal / _tTotal) < stor1[arg2]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[address(arg2)] = stor1[arg2] + (arg3 * _rTotal / _tTotal)
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
                else:
                    if stor1[address(arg2)] > _rTotal:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
                    if not _tTotal:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not _tTotal:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not _rTotal / _tTotal:
                        revert with 0, 'SafeMath: division by zero', 0
                    if stor1[address(arg2)] / _rTotal / _tTotal > !arg3:
                        revert with 0, 17
                    if (stor1[address(arg2)] / _rTotal / _tTotal) + arg3 < stor1[address(arg2)] / _rTotal / _tTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    if (stor1[address(arg2)] / _rTotal / _tTotal) + arg3 > sub_0f45923e:
                        revert with 0, 'max buy 1 '
                    if not _tTotal:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not _tTotal:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg3:
                        if 0 > stor1[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(arg1)] < 0:
                            revert with 0, 17
                        if stor1[arg2] > -1:
                            revert with 0, 17
                        if stor1[arg2] < stor1[arg2]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[address(arg2)] = stor1[arg2]
                    else:
                        if arg3 and _rTotal / _tTotal > -1 / arg3:
                            revert with 0, 17
                        if not arg3:
                            revert with 0, 18
                        if arg3 * _rTotal / _tTotal / arg3 != _rTotal / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg3 * _rTotal / _tTotal > stor1[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(arg1)] < arg3 * _rTotal / _tTotal:
                            revert with 0, 17
                        stor1[address(arg1)] += -1 * arg3 * _rTotal / _tTotal
                        if stor1[arg2] > !(arg3 * _rTotal / _tTotal):
                            revert with 0, 17
                        if stor1[arg2] + (arg3 * _rTotal / _tTotal) < stor1[arg2]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[address(arg2)] = stor1[arg2] + (arg3 * _rTotal / _tTotal)
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[552 len 24] >> 64, 0
    ('le', ('param', 'arg3'), ('stor', ('map', 'msg.sender', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 4)))))
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0, 17
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x49bd5a5e(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xa6f9dae1(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x8da5cb5b(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x49bd5a5e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return uniswapV2PairAddress
                if unknown_0x5342acb4(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return bool(stor5[address(arg1)])
                require unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if stor1[address(arg1)] > _rTotal:
                    revert with 0, 'Amount must be less than total reflections'
                if not _tTotal:
                    revert with 0, 'SafeMath: division by zero', 0
                if not _tTotal:
                    revert with 0, 'SafeMath: division by zero', 0
                if not _rTotal / _tTotal:
                    revert with 0, 'SafeMath: division by zero', 0
                return (stor1[address(arg1)] / _rTotal / _tTotal)
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return _owner
            if unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if bool(stor11.length):
                    if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor11.length):
                        if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor11.length):
                            if 31 < uint255(stor11.length) * 0.5:
                                mem[160] = uint256(stor11.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor11.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor11[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor11.length), data=mem[160 len ceil32(uint255(stor11.length) * 0.5)])
                            mem[160] = 256 * stor11.length.field_8
                    else:
                        if bool(stor11.length) == stor11.length.field_1 < 32:
                            revert with 0, 34
                        if stor11.length.field_1:
                            if 31 < stor11.length.field_1:
                                mem[160] = uint256(stor11.field_0)
                                idx = 160
                                s = 0
                                while stor11.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor11[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor11.length), data=mem[160 len ceil32(uint255(stor11.length) * 0.5)])
                            mem[160] = 256 * stor11.length.field_8
                    mem[ceil32(uint255(stor11.length) * 0.5) + 224 len ceil32(uint255(stor11.length) * 0.5)] = mem[160 len ceil32(uint255(stor11.length) * 0.5)]
                    if ceil32(uint255(stor11.length) * 0.5) > uint255(stor11.length) * 0.5:
                        mem[ceil32(uint255(stor11.length) * 0.5) + (uint255(stor11.length) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, stor11.length), data=mem[160 len ceil32(uint255(stor11.length) * 0.5)], mem[(2 * ceil32(uint255(stor11.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor11.length) * 0.5)]), 
                if bool(stor11.length) == stor11.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor11.length):
                    if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor11.length):
                        if 31 < uint255(stor11.length) * 0.5:
                            mem[160] = uint256(stor11.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor11.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor11[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor11.length % 128, data=mem[160 len ceil32(stor11.length.field_1)])
                        mem[160] = 256 * stor11.length.field_8
                else:
                    if bool(stor11.length) == stor11.length.field_1 < 32:
                        revert with 0, 34
                    if stor11.length.field_1:
                        if 31 < stor11.length.field_1:
                            mem[160] = uint256(stor11.field_0)
                            idx = 160
                            s = 0
                            while stor11.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor11[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor11.length % 128, data=mem[160 len ceil32(stor11.length.field_1)])
                        mem[160] = 256 * stor11.length.field_8
                mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[160 len ceil32(stor11.length.field_1)]
                if ceil32(stor11.length.field_1) > stor11.length.field_1:
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = 0
                return Array(len=stor11.length % 128, data=mem[160 len ceil32(stor11.length.field_1)], mem[(2 * ceil32(stor11.length.field_1)) + 224 len 2 * ceil32(stor11.length.field_1)]), 
            if unknown_0x9600c631(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_9600c631
            require unknown_0xa457c2d7(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if arg2 > allowance[msg.sender][address(arg1)]:
                revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[197 len 27] >> 40, 0
            if allowance[msg.sender][address(arg1)] < arg2:
                revert with 0, 17
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not address(arg1):
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
            emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, address(arg1));
        else:
            if unknown_0xb2bdfa7b(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xb2bdfa7b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return _owner
                if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    return allowance[address(arg1)][address(arg2)]
                if uint32(call.func_hash) >> 224 != unknown_0xea2f0b37(?????):
                    require unknown_0xfb1eb14b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return _tFeeTotal
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if _owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor5[address(arg1)] = 0
            if unknown_0xa6f9dae1(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if _owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                _owner = address(arg1)
            if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
                require unknown_0xaf465a27(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return _tTotal
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not address(arg1):
                revert with 0, 'ERC20: transfer to the zero address'
            if arg2 <= 0:
                revert with 0, 'Transfer amount must be greater than zero'
            if not stor5[address(msg.sender)]:
                if not stor5[address(arg1)]:
                    if uniswapV2PairAddress == address(arg1):
                        if stor1[address(msg.sender)] > _rTotal:
                            revert with 0, 'Amount must be less than total reflections'
                        if not _tTotal:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not _tTotal:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not _rTotal / _tTotal:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not arg2:
                            if 0 > stor1[address(msg.sender)] / _rTotal / _tTotal:
                                revert with 0, 'sell 10% you have'
                        else:
                            if arg2 and 2 > -1 / arg2:
                                revert with 0, 17
                            if not arg2:
                                revert with 0, 18
                            if 2 * arg2 / arg2 != 2:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 2 * arg2 > stor1[address(msg.sender)] / _rTotal / _tTotal:
                                revert with 0, 'sell 10% you have'
                    else:
                        if sub_9600c631 > -1 * 10^6:
                            revert with 0, 17
                        if sub_9600c631 + 999999 < sub_9600c631:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_9600c631 + 999999 > block.timestamp:
                            if stor1[address(arg1)] > _rTotal:
                                revert with 0, 'Amount must be less than total reflections'
                            if not _tTotal:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not _tTotal:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not _rTotal / _tTotal:
                                revert with 0, 'SafeMath: division by zero', 0
                            if stor1[address(arg1)] / _rTotal / _tTotal > !arg2:
                                revert with 0, 17
                            if (stor1[address(arg1)] / _rTotal / _tTotal) + arg2 < stor1[address(arg1)] / _rTotal / _tTotal:
                                revert with 0, 'SafeMath: addition overflow'
                            if (stor1[address(arg1)] / _rTotal / _tTotal) + arg2 > sub_0f45923e:
                                revert with 0, 'max buy 1 '
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            if not _tTotal:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg2:
                if 0 > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor1[address(msg.sender)] < 0:
                    revert with 0, 17
                if stor1[address(arg1)] > -1:
                    revert with 0, 17
                if stor1[address(arg1)] < stor1[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                stor1[address(arg1)] = stor1[address(arg1)]
            else:
                if arg2 and _rTotal / _tTotal > -1 / arg2:
                    revert with 0, 17
                if not arg2:
                    revert with 0, 18
                if arg2 * _rTotal / _tTotal / arg2 != _rTotal / _tTotal:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg2 * _rTotal / _tTotal > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor1[address(msg.sender)] < arg2 * _rTotal / _tTotal:
                    revert with 0, 17
                stor1[address(msg.sender)] += -1 * arg2 * _rTotal / _tTotal
                if stor1[address(arg1)] > !(arg2 * _rTotal / _tTotal):
                    revert with 0, 17
                if stor1[address(arg1)] + (arg2 * _rTotal / _tTotal) < stor1[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                stor1[address(arg1)] += arg2 * _rTotal / _tTotal
            emit Transfer(arg2, msg.sender, address(arg1));
    else:
        if unknown_0x2d838119(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x39509351(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x2d838119(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if arg1 > _rTotal:
                        revert with 0, 'Amount must be less than total reflections'
                    if not _tTotal:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not _tTotal:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not _rTotal / _tTotal:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (arg1 / _rTotal / _tTotal)
                if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return decimals
                require unknown_0x340ac20f(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if _owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not sub_9600c631:
                    sub_9600c631 = block.timestamp
                uniswapV2PairAddress = address(arg1)
            if uint32(call.func_hash) >> 224 != unknown_0x39509351(?????):
                if unknown_0x437823ec(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if _owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor5[address(arg1)] = 1
                else:
                    if unknown_0x45e0b9d4(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return _rTotal
                    require unknown_0x48c54b9d(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    if _owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    call _owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if allowance[msg.sender][address(arg1)] > !arg2:
                revert with 0, 17
            if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not address(arg1):
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
            emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, address(arg1));
        else:
            if name() == uint32(call.func_hash) >> 224:
                require not msg.value
                if bool(stor10.length):
                    if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor10.length):
                        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor10.length):
                            if 31 < uint255(stor10.length) * 0.5:
                                mem[160] = uint256(stor10.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor10.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor10[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor10.length), data=mem[160 len ceil32(uint255(stor10.length) * 0.5)])
                            mem[160] = 256 * stor10.length.field_8
                    else:
                        if bool(stor10.length) == stor10.length.field_1 < 32:
                            revert with 0, 34
                        if stor10.length.field_1:
                            if 31 < stor10.length.field_1:
                                mem[160] = uint256(stor10.field_0)
                                idx = 160
                                s = 0
                                while stor10.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor10[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor10.length), data=mem[160 len ceil32(uint255(stor10.length) * 0.5)])
                            mem[160] = 256 * stor10.length.field_8
                    mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(uint255(stor10.length) * 0.5)] = mem[160 len ceil32(uint255(stor10.length) * 0.5)]
                    if ceil32(uint255(stor10.length) * 0.5) > uint255(stor10.length) * 0.5:
                        mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, stor10.length), data=mem[160 len ceil32(uint255(stor10.length) * 0.5)], mem[(2 * ceil32(uint255(stor10.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor10.length) * 0.5)]), 
                if bool(stor10.length) == stor10.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor10.length):
                    if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor10.length):
                        if 31 < uint255(stor10.length) * 0.5:
                            mem[160] = uint256(stor10.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor10.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor10[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor10.length % 128, data=mem[160 len ceil32(stor10.length.field_1)])
                        mem[160] = 256 * stor10.length.field_8
                else:
                    if bool(stor10.length) == stor10.length.field_1 < 32:
                        revert with 0, 34
                    if stor10.length.field_1:
                        if 31 < stor10.length.field_1:
                            mem[160] = uint256(stor10.field_0)
                            idx = 160
                            s = 0
                            while stor10.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor10[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor10.length % 128, data=mem[160 len ceil32(stor10.length.field_1)])
                        mem[160] = 256 * stor10.length.field_8
                mem[ceil32(stor10.length.field_1) + 224 len ceil32(stor10.length.field_1)] = mem[160 len ceil32(stor10.length.field_1)]
                if ceil32(stor10.length.field_1) > stor10.length.field_1:
                    mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 224] = 0
                return Array(len=stor10.length % 128, data=mem[160 len ceil32(stor10.length.field_1)], mem[(2 * ceil32(stor10.length.field_1)) + 224 len 2 * ceil32(stor10.length.field_1)]), 
            if approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if not msg.sender:
                    revert with 0, 'ERC20: approve from the zero address'
                if not address(arg1):
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(msg.sender)][address(arg1)] = arg2
                emit Approval(arg2, msg.sender, address(arg1));
            else:
                if unknown_0x0f45923e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_0f45923e
                if unknown_0x13114a9d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return _tFeeTotal
                if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return _tTotal
                require unknown_0x23b872dd(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 96
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                if not address(arg1):
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(arg2):
                    revert with 0, 'ERC20: transfer to the zero address'
                if arg3 <= 0:
                    revert with 0, 'Transfer amount must be greater than zero'
                if stor5[address(arg1)]:
                    if not _tTotal:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not _tTotal:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg3:
                        if 0 > stor1[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(arg1)] < 0:
                            revert with 0, 17
                        if stor1[address(arg2)] > -1:
                            revert with 0, 17
                        if stor1[address(arg2)] < stor1[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[address(arg2)] = stor1[address(arg2)]
                    else:
                        if arg3 and _rTotal / _tTotal > -1 / arg3:
                            revert with 0, 17
                        if not arg3:
                            revert with 0, 18
                        if arg3 * _rTotal / _tTotal / arg3 != _rTotal / _tTotal:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg3 * _rTotal / _tTotal > stor1[address(arg1)]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if stor1[address(arg1)] < arg3 * _rTotal / _tTotal:
                            revert with 0, 17
                        stor1[address(arg1)] += -1 * arg3 * _rTotal / _tTotal
                        if stor1[address(arg2)] > !(arg3 * _rTotal / _tTotal):
                            revert with 0, 17
                        if stor1[address(arg2)] + (arg3 * _rTotal / _tTotal) < stor1[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[address(arg2)] += arg3 * _rTotal / _tTotal
                    emit Transfer(arg3, address(arg1), address(arg2));
                    if arg3 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[392 len 24] >> 64, 0
                else:
                    if stor5[address(arg2)]:
                        if not _tTotal:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not _tTotal:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not arg3:
                            if 0 > stor1[address(arg1)]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if stor1[address(arg1)] < 0:
                                revert with 0, 17
                            if stor1[address(arg2)] > -1:
                                revert with 0, 17
                            if stor1[address(arg2)] < stor1[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1[address(arg2)] = stor1[address(arg2)]
                        else:
                            if arg3 and _rTotal / _tTotal > -1 / arg3:
                                revert with 0, 17
                            if not arg3:
                                revert with 0, 18
                            if arg3 * _rTotal / _tTotal / arg3 != _rTotal / _tTotal:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg3 * _rTotal / _tTotal > stor1[address(arg1)]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if stor1[address(arg1)] < arg3 * _rTotal / _tTotal:
                                revert with 0, 17
                            stor1[address(arg1)] += -1 * arg3 * _rTotal / _tTotal
                            if stor1[address(arg2)] > !(arg3 * _rTotal / _tTotal):
                                revert with 0, 17
                            if stor1[address(arg2)] + (arg3 * _rTotal / _tTotal) < stor1[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            stor1[address(arg2)] += arg3 * _rTotal / _tTotal
                        emit Transfer(arg3, address(arg1), address(arg2));
                        if arg3 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[392 len 24] >> 64, 0
                    else:
                        if uniswapV2PairAddress == address(arg2):
                            if stor1[address(arg1)] > _rTotal:
                                revert with 0, 'Amount must be less than total reflections'
                            if not _tTotal:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not _tTotal:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not _rTotal / _tTotal:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not arg3:
                                if 0 > stor1[address(arg1)] / _rTotal / _tTotal:
                                    revert with 0, 'sell 10% you have'
                            else:
                                if arg3 and 2 > -1 / arg3:
                                    revert with 0, 17
                                if not arg3:
                                    revert with 0, 18
                                if 2 * arg3 / arg3 != 2:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if 2 * arg3 > stor1[address(arg1)] / _rTotal / _tTotal:
                                    revert with 0, 'sell 10% you have'
                            if not _tTotal:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not _tTotal:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not arg3:
                                if 0 > stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if stor1[address(arg1)] < 0:
                                    revert with 0, 17
                                if stor1[address(arg2)] > -1:
                                    revert with 0, 17
                                if stor1[address(arg2)] < stor1[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor1[address(arg2)] = stor1[address(arg2)]
                            else:
                                if arg3 and _rTotal / _tTotal > -1 / arg3:
                                    revert with 0, 17
                                if not arg3:
                                    revert with 0, 18
                                if arg3 * _rTotal / _tTotal / arg3 != _rTotal / _tTotal:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if arg3 * _rTotal / _tTotal > stor1[address(arg1)]:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                if stor1[address(arg1)] < arg3 * _rTotal / _tTotal:
                                    revert with 0, 17
                                stor1[address(arg1)] += -1 * arg3 * _rTotal / _tTotal
                                if stor1[address(arg2)] > !(arg3 * _rTotal / _tTotal):
                                    revert with 0, 17
                                if stor1[address(arg2)] + (arg3 * _rTotal / _tTotal) < stor1[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor1[address(arg2)] += arg3 * _rTotal / _tTotal
                            emit Transfer(arg3, address(arg1), address(arg2));
                            if arg3 > allowance[address(arg1)][msg.sender]:
                                revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[584 len 24] >> 64, 0
                        else:
                            if sub_9600c631 > -1 * 10^6:
                                revert with 0, 17
                            if sub_9600c631 + 999999 < sub_9600c631:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_9600c631 + 999999 <= block.timestamp:
                                if not _tTotal:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not _tTotal:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not arg3:
                                    if 0 > stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if stor1[address(arg1)] < 0:
                                        revert with 0, 17
                                    if stor1[address(arg2)] > -1:
                                        revert with 0, 17
                                    if stor1[address(arg2)] < stor1[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor1[address(arg2)] = stor1[address(arg2)]
                                else:
                                    if arg3 and _rTotal / _tTotal > -1 / arg3:
                                        revert with 0, 17
                                    if not arg3:
                                        revert with 0, 18
                                    if arg3 * _rTotal / _tTotal / arg3 != _rTotal / _tTotal:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if arg3 * _rTotal / _tTotal > stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if stor1[address(arg1)] < arg3 * _rTotal / _tTotal:
                                        revert with 0, 17
                                    stor1[address(arg1)] += -1 * arg3 * _rTotal / _tTotal
                                    if stor1[address(arg2)] > !(arg3 * _rTotal / _tTotal):
                                        revert with 0, 17
                                    if stor1[address(arg2)] + (arg3 * _rTotal / _tTotal) < stor1[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor1[address(arg2)] += arg3 * _rTotal / _tTotal
                                emit Transfer(arg3, address(arg1), address(arg2));
                                if arg3 > allowance[address(arg1)][msg.sender]:
                                    revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[392 len 24] >> 64, 0
                            else:
                                if stor1[address(arg2)] > _rTotal:
                                    revert with 0, 'Amount must be less than total reflections'
                                if not _tTotal:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not _tTotal:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not _rTotal / _tTotal:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if stor1[address(arg2)] / _rTotal / _tTotal > !arg3:
                                    revert with 0, 17
                                if (stor1[address(arg2)] / _rTotal / _tTotal) + arg3 < stor1[address(arg2)] / _rTotal / _tTotal:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (stor1[address(arg2)] / _rTotal / _tTotal) + arg3 > sub_0f45923e:
                                    revert with 0, 'max buy 1 '
                                if not _tTotal:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not _tTotal:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not arg3:
                                    if 0 > stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if stor1[address(arg1)] < 0:
                                        revert with 0, 17
                                    if stor1[address(arg2)] > -1:
                                        revert with 0, 17
                                    if stor1[address(arg2)] < stor1[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor1[address(arg2)] = stor1[address(arg2)]
                                else:
                                    if arg3 and _rTotal / _tTotal > -1 / arg3:
                                        revert with 0, 17
                                    if not arg3:
                                        revert with 0, 18
                                    if arg3 * _rTotal / _tTotal / arg3 != _rTotal / _tTotal:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if arg3 * _rTotal / _tTotal > stor1[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if stor1[address(arg1)] < arg3 * _rTotal / _tTotal:
                                        revert with 0, 17
                                    stor1[address(arg1)] += -1 * arg3 * _rTotal / _tTotal
                                    if stor1[address(arg2)] > !(arg3 * _rTotal / _tTotal):
                                        revert with 0, 17
                                    if stor1[address(arg2)] + (arg3 * _rTotal / _tTotal) < stor1[address(arg2)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor1[address(arg2)] += arg3 * _rTotal / _tTotal
                                emit Transfer(arg3, address(arg1), address(arg2));
                                if arg3 > allowance[address(arg1)][msg.sender]:
                                    revert with 0, 32, 40, 0xfe45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[584 len 24] >> 64, 0
                ('le', ('param', 'arg3'), ('stor', ('map', 'msg.sender', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 4)))))
                if allowance[address(arg1)][msg.sender] < arg3:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
                emit Approval((allowance[address(arg1)][msg.sender] - arg3), address(arg1), msg.sender);
    return 1
}



}
