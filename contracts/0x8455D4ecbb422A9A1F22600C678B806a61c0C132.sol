contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const decimals = 18


address owner;
mapping of uint256 stor1;
mapping of uint256 allowance;
mapping of uint8 stor4;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of address inviter;
uint256 totalSupply;
uint256 stor10;
uint256 sub_3647ff94;
array of uint256 name;
array of uint256 symbol;
uint256 stor15;
uint256 stor17;
address burnAddress;
address sub_1f7b8fbfAddress;
address marketAddress;
address fundAddress;
address sub_4713b784Address;

function name() {
    return name[0 len name.length]
}

function sub_08739d3b(?) {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function totalSupply() {
    return totalSupply
}

function sub_1f7b8fbf(?) {
    return sub_1f7b8fbfAddress
}

function sub_3647ff94(?) {
    return sub_3647ff94
}

function sub_3ecad24e(?) {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function sub_4713b784(?) {
    return sub_4713b784Address
}

function sub_696348dc(?) {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function burnAddress() {
    return burnAddress
}

function owner() {
    return owner
}

function marketAddress() {
    return marketAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function fundAddress() {
    return fundAddress
}

function inviter(address arg1) {
    require calldata.size - 4 >= 32
    return inviter[arg1]
}

function sub_f4d9eb10(?) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function _fallback() payable {
    revert
}

function sub_6e071f17(?) {
    require calldata.size - 4 >= 64
    require stor7[address(msg.sender)]
    require arg1
    inviter[address(arg1)] = arg2
}

function sub_13a970e6(?) {
    require calldata.size - 4 >= 64
    require stor7[address(msg.sender)]
    require arg1
    stor6[address(arg1)] = uint8(arg2)
}

function sub_3e2e4ee9(?) {
    require calldata.size - 4 >= 64
    require stor7[address(msg.sender)]
    require arg1
    stor5[address(arg1)] = uint8(arg2)
}

function setLiquidAddress(address arg1) {
    require calldata.size - 4 >= 32
    require stor7[address(msg.sender)]
    require arg1
    sub_4713b784Address = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setTaxFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor15 = arg1
}

function setFundAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    fundAddress = arg1
}

function sub_58ff074a(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7[address(arg1)] = uint8(arg2)
}

function setMarketAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketAddress = arg1
}

function setMainAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1f7b8fbfAddress = arg1
}

function setExcludedFee(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_02a9fd79(?) {
    require calldata.size - 4 >= 96
    require stor7[address(msg.sender)]
    require arg2
    if not arg1:
        call arg2 with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function tokenFromReflection(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > stor10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if stor10 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor10 / totalSupply
    return (arg1 / stor10 / totalSupply)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if stor1[address(arg1)] > stor10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if stor10 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor10 / totalSupply
    return (stor1[address(arg1)] / stor10 / totalSupply)
}

function approve(address arg1, uint256 arg2) {
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

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
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

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
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
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function reflectionFromToken(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if arg1 > totalSupply:
        revert with 0, 'Amount must be less than supply'
    if arg2:
        if not arg1:
            if not arg1:
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    return 0
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if 0 > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * stor10 / totalSupply)
            require arg1
            if arg1 * stor17 / arg1 != stor17:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * stor17 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                if not arg1 * stor17 / 100:
                    return 0
                require arg1 * stor17 / 100
                if arg1 * stor17 / 100 * stor10 / totalSupply / arg1 * stor17 / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if arg1 * stor17 / 100 * stor10 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * arg1 * stor17 / 100 * stor10 / totalSupply)
            require arg1
            if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not arg1 * stor17 / 100:
                if 0 > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * stor10 / totalSupply)
            require arg1 * stor17 / 100
            if arg1 * stor17 / 100 * stor10 / totalSupply / arg1 * stor17 / 100 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if 0 > arg1 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * stor17 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor10 / totalSupply) - (arg1 * stor17 / 100 * stor10 / totalSupply))
        require arg1
        if arg1 * stor15 / arg1 != stor15:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not arg1:
            if arg1 * stor15 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * stor15 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                if not arg1 * stor15 / 100:
                    return 0
                require arg1 * stor15 / 100
                if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if arg1 * stor15 / 100 * stor10 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > -1 * arg1 * stor15 / 100 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * arg1 * stor15 / 100 * stor10 / totalSupply)
            require arg1
            if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not arg1 * stor15 / 100:
                if 0 > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * stor10 / totalSupply)
            require arg1 * stor15 / 100
            if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if arg1 * stor15 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (arg1 * stor10 / totalSupply) - (arg1 * stor15 / 100 * stor10 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor10 / totalSupply) - (arg1 * stor15 / 100 * stor10 / totalSupply))
        require arg1
        if arg1 * stor17 / arg1 != stor17:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if arg1 * stor15 / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 * stor17 / 100 > arg1 - (arg1 * stor15 / 100):
            revert with 0, 'SafeMath: subtraction overflow'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not arg1:
            if not arg1 * stor15 / 100:
                if not arg1 * stor17 / 100:
                    return 0
                require arg1 * stor17 / 100
                if arg1 * stor17 / 100 * stor10 / totalSupply / arg1 * stor17 / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if arg1 * stor17 / 100 * stor10 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * arg1 * stor17 / 100 * stor10 / totalSupply)
            require arg1 * stor15 / 100
            if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not arg1 * stor17 / 100:
                if arg1 * stor15 / 100 * stor10 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > -1 * arg1 * stor15 / 100 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * arg1 * stor15 / 100 * stor10 / totalSupply)
            require arg1 * stor17 / 100
            if arg1 * stor17 / 100 * stor10 / totalSupply / arg1 * stor17 / 100 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if arg1 * stor15 / 100 * stor10 / totalSupply > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * stor17 / 100 * stor10 / totalSupply > -1 * arg1 * stor15 / 100 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((-1 * arg1 * stor15 / 100 * stor10 / totalSupply) - (arg1 * stor17 / 100 * stor10 / totalSupply))
        require arg1
        if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not arg1 * stor15 / 100:
            if not arg1 * stor17 / 100:
                if 0 > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * stor10 / totalSupply)
            require arg1 * stor17 / 100
            if arg1 * stor17 / 100 * stor10 / totalSupply / arg1 * stor17 / 100 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if 0 > arg1 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * stor17 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor10 / totalSupply) - (arg1 * stor17 / 100 * stor10 / totalSupply))
        require arg1 * stor15 / 100
        if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not arg1 * stor17 / 100:
            if arg1 * stor15 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (arg1 * stor10 / totalSupply) - (arg1 * stor15 / 100 * stor10 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor10 / totalSupply) - (arg1 * stor15 / 100 * stor10 / totalSupply))
        require arg1 * stor17 / 100
        if arg1 * stor17 / 100 * stor10 / totalSupply / arg1 * stor17 / 100 != stor10 / totalSupply:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if arg1 * stor15 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 * stor17 / 100 * stor10 / totalSupply > (arg1 * stor10 / totalSupply) - (arg1 * stor15 / 100 * stor10 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow'
        return ((arg1 * stor10 / totalSupply) - (arg1 * stor15 / 100 * stor10 / totalSupply) - (arg1 * stor17 / 100 * stor10 / totalSupply))
    if not arg1:
        if not arg1:
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                return 0
            require arg1
            if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if 0 > arg1 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
        else:
            require arg1
            if arg1 * stor17 / arg1 != stor17:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * stor17 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                if arg1 * stor17 / 100:
                    require arg1 * stor17 / 100
                    if arg1 * stor17 / 100 * stor10 / totalSupply / arg1 * stor17 / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if arg1 * stor17 / 100 * stor10 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        return 0
                else:
                    return 0
            require arg1
            if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not arg1 * stor17 / 100:
                if 0 > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1 * stor17 / 100
                if arg1 * stor17 / 100 * stor10 / totalSupply / arg1 * stor17 / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if 0 > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * stor17 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
    else:
        require arg1
        if arg1 * stor15 / arg1 != stor15:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not arg1:
            if arg1 * stor15 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * stor15 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                if arg1 * stor15 / 100:
                    require arg1 * stor15 / 100
                    if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if arg1 * stor15 / 100 * stor10 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * stor15 / 100 * stor10 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        return 0
                else:
                    return 0
            require arg1
            if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not arg1 * stor15 / 100:
                if 0 > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1 * stor15 / 100
                if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if arg1 * stor15 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor10 / totalSupply) - (arg1 * stor15 / 100 * stor10 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
        else:
            require arg1
            if arg1 * stor17 / arg1 != stor17:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if arg1 * stor15 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * stor17 / 100 > arg1 - (arg1 * stor15 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                if not arg1 * stor15 / 100:
                    if arg1 * stor17 / 100:
                        require arg1 * stor17 / 100
                        if arg1 * stor17 / 100 * stor10 / totalSupply / arg1 * stor17 / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if arg1 * stor17 / 100 * stor10 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1 * stor15 / 100
                    if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not arg1 * stor17 / 100:
                        if arg1 * stor15 / 100 * stor10 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * stor15 / 100 * stor10 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * stor17 / 100
                        if arg1 * stor17 / 100 * stor10 / totalSupply / arg1 * stor17 / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if arg1 * stor15 / 100 * stor10 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 * stor17 / 100 * stor10 / totalSupply > -1 * arg1 * stor15 / 100 * stor10 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                return 0
            require arg1
            if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not arg1 * stor15 / 100:
                if not arg1 * stor17 / 100:
                    if 0 > arg1 * stor10 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1 * stor17 / 100
                    if arg1 * stor17 / 100 * stor10 / totalSupply / arg1 * stor17 / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if 0 > arg1 * stor10 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * stor17 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1 * stor15 / 100
                if arg1 * stor15 / 100 * stor10 / totalSupply / arg1 * stor15 / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not arg1 * stor17 / 100:
                    if arg1 * stor15 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor10 / totalSupply) - (arg1 * stor15 / 100 * stor10 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1 * stor17 / 100
                    if arg1 * stor17 / 100 * stor10 / totalSupply / arg1 * stor17 / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if arg1 * stor15 / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * stor17 / 100 * stor10 / totalSupply > (arg1 * stor10 / totalSupply) - (arg1 * stor15 / 100 * stor10 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
    return (arg1 * stor10 / totalSupply)
}



}
