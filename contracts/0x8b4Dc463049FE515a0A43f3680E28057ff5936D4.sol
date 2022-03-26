contract main {




// =====================  Runtime code  =====================


#
#  - sub_0c0c4ffc(?)
#  - sub_0e430629(?)
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - sub_28f1c27f(?)
#  - transfer(address arg1, uint256 arg2)
#
const MINIMUM_LIQUIDITY = 1


address stor0;
mapping of uint8 stor1;
address stor2;
address sub_6f7815dcAddress;
address sub_4f2e10b3Address;
address stor5;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
uint256 sub_c607ca5a;
uint256 STATE;
uint256 sub_eb260eab;
uint256 sub_2a04e715;
uint256 sub_a7c0b250;
uint256 sub_e6892bd6;
uint256 sub_bbaf5782;
uint256 sub_ee02f341;
uint256 sub_cb9385ce;
uint256 sub_9e4a8c9c;
uint256 fees;
uint256 sub_c30cf4f4;
uint256 stor22;
mapping of uint256 sub_d23faf0a;
mapping of uint256 totalProfitOf;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;

function sub_03b05282(?) {
    return sub_c607ca5a
}

function name() {
    return name[0 len name.length]
}

function getWithdrawalFees() {
    return sub_ee02f341
}

function totalProfitOf(address arg1) {
    return totalProfitOf[address(arg1)]
}

function totalSupply() {
    return totalSupply
}

function getPoolState() {
    return sub_9e4a8c9c
}

function isAdmin(address arg1) {
    require arg1
    return bool(stor1[address(arg1)])
}

function sub_2a04e715(?) {
    return sub_2a04e715
}

function decimals() {
    return decimals
}

function Fees() {
    return fees
}

function sub_3ce66edf(?) {
    return STATE
}

function sub_3e9c3a25(?) {
    return sub_e6892bd6
}

function sub_402c1fa4(?) {
    return sub_bbaf5782
}

function sub_45b4903a(?) {
    return sub_d23faf0a[address(arg1)]
}

function sub_4f2e10b3(?) {
    return sub_4f2e10b3Address
}

function sub_53cf04fb(?) {
    return sub_cb9385ce
}

function sub_595b504b(?) {
    return sub_a7c0b250
}

function sub_6f7815dc(?) {
    return sub_6f7815dcAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_9e4a8c9c(?) {
    return sub_9e4a8c9c
}

function sub_9feb930b(?) {
    return sub_c30cf4f4
}

function sub_a7c0b250(?) {
    return sub_a7c0b250
}

function sub_bbaf5782(?) {
    return sub_bbaf5782
}

function sub_c30cf4f4(?) {
    return sub_c30cf4f4
}

function STATE() {
    return STATE
}

function FEE() {
    return sub_eb260eab
}

function sub_c607ca5a(?) {
    return sub_c607ca5a
}

function sub_cb9385ce(?) {
    return sub_cb9385ce
}

function sub_d23faf0a(?) {
    return sub_d23faf0a[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e6892bd6(?) {
    return sub_e6892bd6
}

function sub_eb260eab(?) {
    return sub_eb260eab
}

function sub_ee02f341(?) {
    return sub_ee02f341
}

function getDecimals() {
    return decimals
}

function _fallback() payable {
  stop
}

function isOwner(address arg1) {
    return (stor0 == arg1)
}

function isContract(address arg1) {
    return (ext_code.size(arg1) > 0)
}

function sub_f02fbfda(?) {
    require stor0 == msg.sender
    stor2 = arg1
    return 1
}

function sub_5662610f(?) {
    require stor0 == msg.sender
    sub_4f2e10b3Address = arg1
    return 1
}

function renounceOwnership() {
    require stor0 == msg.sender
    emit OwnershipTransferred(0, stor0);
    stor0 = 0
}

function sub_78d31f5f(?) {
    return sub_a7c0b250, sub_bbaf5782, sub_cb9385ce, sub_9e4a8c9c, sub_eb260eab, STATE, sub_c607ca5a, sub_c30cf4f4
}

function renounceAdmin() {
    require msg.sender
    require stor1[address(msg.sender)]
    stor1[address(msg.sender)] = 0
    emit AdminRemoved(msg.sender);
}

function addAdmin(address arg1) {
    require stor0 == msg.sender
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit AdminAdded(arg1);
}

function approve(address arg1, uint256 arg2) {
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require stor0 == msg.sender
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(stor0, arg1);
    stor0 = arg1
}

function sub_d58f2c8b(?) {
    if stor0 != msg.sender:
        require msg.sender
        if not stor1[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#setSeedDexAddress: NOT_AUTHORIZED'
    stor5 = arg1
    return 1
}

function updateFeeState(uint256 arg1) {
    if sub_4f2e10b3Address != msg.sender:
        revert with 0, 'updateFeetate : NOT_AUTHORIZED'
    if arg1 > 0:
        if arg1 + sub_c607ca5a < sub_c607ca5a:
            revert with 0, 'SafeMath#add: OVERFLOW'
        sub_c607ca5a += arg1
        return 0
    else:
        return 0
}

function decreaseAllowance(address arg1, uint256 arg2) {
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath#sub: UNDERFLOW'
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    if arg2 + allowance[msg.sender][address(arg1)] < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath#add: OVERFLOW'
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transferOtherTokens(address arg1, uint256 arg2) {
    require stor0 == msg.sender
    require sub_6f7815dcAddress != arg1
    require sub_4f2e10b3Address != arg1
    require arg1 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function getMaxTransaction() {
    if not eth.balance(this.address):
        if sub_bbaf5782 <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        if sub_bbaf5782:
            return (0 / sub_bbaf5782)
    else:
        if sub_a7c0b250 * eth.balance(this.address) / eth.balance(this.address) != sub_a7c0b250:
            revert with 0, 'SafeMath#mul: OVERFLOW'
        if sub_bbaf5782 <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        if sub_bbaf5782:
            return (sub_a7c0b250 * eth.balance(this.address) / sub_bbaf5782)
    ('iszero', ('stor', ('name', 'sub_bbaf5782', 15)))
    revert
}

function getPrice() {
    require ext_code.size(sub_6f7815dcAddress)
    call sub_6f7815dcAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 1:
        revert with 0, 'PAIR_CLOSED'
    if not eth.balance(this.address):
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if sub_c30cf4f4 * eth.balance(this.address) / eth.balance(this.address) != sub_c30cf4f4:
            revert with 0, 'SafeMath#mul: OVERFLOW'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        if ext_call.return_data[0]:
            return (sub_c30cf4f4 * eth.balance(this.address) / ext_call.return_data[0])
    ('iszero', ('ext_call.return_data', 0, 32))
    revert
}

function sub_a05641e6(?) {
    require ext_code.size(sub_6f7815dcAddress)
    call sub_6f7815dcAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 1:
        revert with 0, 'PAIR_CLOSED'
    if not eth.balance(this.address):
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        if ext_call.return_data[0]:
            if not arg1:
                if 0 / ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                if 0 / ext_call.return_data[0]:
                    return (0 / 0 / ext_call.return_data[0])
            else:
                if sub_c30cf4f4 * arg1 / arg1 != sub_c30cf4f4:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if 0 / ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                if 0 / ext_call.return_data[0]:
                    return (sub_c30cf4f4 * arg1 / 0 / ext_call.return_data[0])
            ('iszero', ('div', 0, ('ext_call.return_data', 0, 32)))
    else:
        if sub_c30cf4f4 * eth.balance(this.address) / eth.balance(this.address) != sub_c30cf4f4:
            revert with 0, 'SafeMath#mul: OVERFLOW'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        if ext_call.return_data[0]:
            if not arg1:
                if sub_c30cf4f4 * eth.balance(this.address) / ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                if sub_c30cf4f4 * eth.balance(this.address) / ext_call.return_data[0]:
                    return (0 / sub_c30cf4f4 * eth.balance(this.address) / ext_call.return_data[0])
            else:
                if sub_c30cf4f4 * arg1 / arg1 != sub_c30cf4f4:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if sub_c30cf4f4 * eth.balance(this.address) / ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                if sub_c30cf4f4 * eth.balance(this.address) / ext_call.return_data[0]:
                    return (sub_c30cf4f4 * arg1 / sub_c30cf4f4 * eth.balance(this.address) / ext_call.return_data[0])
            ('iszero', ('div', ('mul', ('stor', ('name', 'sub_c30cf4f4', 20)), ('balance', 'address')), ('ext_call.return_data', 0, 32)))
    revert
}

function sub_301b5e47(?) {
    require ext_code.size(sub_6f7815dcAddress)
    call sub_6f7815dcAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath#add: OVERFLOW'
    if not eth.balance(this.address):
        if arg1 + ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        require arg1 + ext_call.return_data[0]
        if not 0 / arg1 + ext_call.return_data[0]:
            if sub_bbaf5782 <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            require sub_bbaf5782
            if 0 / sub_bbaf5782 > 0 / arg1 + ext_call.return_data[0]:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            return ((0 / arg1 + ext_call.return_data[0]) - (0 / sub_bbaf5782))
        if sub_eb260eab * 0 / arg1 + ext_call.return_data[0] / 0 / arg1 + ext_call.return_data[0] != sub_eb260eab:
            revert with 0, 'SafeMath#mul: OVERFLOW'
        if sub_bbaf5782 <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        require sub_bbaf5782
        if sub_eb260eab * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782 > 0 / arg1 + ext_call.return_data[0]:
            revert with 0, 'SafeMath#sub: UNDERFLOW'
        return ((0 / arg1 + ext_call.return_data[0]) - (sub_eb260eab * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782))
    if arg1 * eth.balance(this.address) / eth.balance(this.address) != arg1:
        revert with 0, 'SafeMath#mul: OVERFLOW'
    if arg1 + ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
    require arg1 + ext_call.return_data[0]
    if not arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]:
        if sub_bbaf5782 <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        require sub_bbaf5782
        if 0 / sub_bbaf5782 > arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]:
            revert with 0, 'SafeMath#sub: UNDERFLOW'
        return ((arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]) - (0 / sub_bbaf5782))
    if sub_eb260eab * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] != sub_eb260eab:
        revert with 0, 'SafeMath#mul: OVERFLOW'
    if sub_bbaf5782 <= 0:
        revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
    require sub_bbaf5782
    if sub_eb260eab * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782 > arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]:
        revert with 0, 'SafeMath#sub: UNDERFLOW'
    return ((arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]) - (sub_eb260eab * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782))
}

function sub_5e07312b(?) {
    require ext_code.size(sub_6f7815dcAddress)
    call sub_6f7815dcAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if sub_bbaf5782 <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        if sub_bbaf5782:
            if 0 / sub_bbaf5782 > arg1:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            if arg1 - (0 / sub_bbaf5782) + eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 'SafeMath#add: OVERFLOW'
            if not arg1 - (0 / sub_bbaf5782):
                if arg1 - (0 / sub_bbaf5782) + eth.balance(this.address) <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                if arg1 - (0 / sub_bbaf5782) + eth.balance(this.address):
                    return (0 / arg1 - (0 / sub_bbaf5782) + eth.balance(this.address))
            else:
                if (arg1 * ext_call.return_data[0]) - (0 / sub_bbaf5782 * ext_call.return_data[0]) / arg1 - (0 / sub_bbaf5782) != ext_call.return_data[0]:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if arg1 - (0 / sub_bbaf5782) + eth.balance(this.address) <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                if arg1 - (0 / sub_bbaf5782) + eth.balance(this.address):
                    return ((arg1 * ext_call.return_data[0]) - (0 / sub_bbaf5782 * ext_call.return_data[0]) / arg1 - (0 / sub_bbaf5782) + eth.balance(this.address))
            ('iszero', ('add', ('param', 'arg1'), ('mul', -1, ('div', 0, ('stor', ('name', 'sub_bbaf5782', 15)))), ('balance', 'address')))
    else:
        if sub_eb260eab * arg1 / arg1 != sub_eb260eab:
            revert with 0, 'SafeMath#mul: OVERFLOW'
        if sub_bbaf5782 <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        if sub_bbaf5782:
            if sub_eb260eab * arg1 / sub_bbaf5782 > arg1:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            if arg1 - (sub_eb260eab * arg1 / sub_bbaf5782) + eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 'SafeMath#add: OVERFLOW'
            if not arg1 - (sub_eb260eab * arg1 / sub_bbaf5782):
                if arg1 - (sub_eb260eab * arg1 / sub_bbaf5782) + eth.balance(this.address) <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                if arg1 - (sub_eb260eab * arg1 / sub_bbaf5782) + eth.balance(this.address):
                    return (0 / arg1 - (sub_eb260eab * arg1 / sub_bbaf5782) + eth.balance(this.address))
            else:
                if (arg1 * ext_call.return_data[0]) - (sub_eb260eab * arg1 / sub_bbaf5782 * ext_call.return_data[0]) / arg1 - (sub_eb260eab * arg1 / sub_bbaf5782) != ext_call.return_data[0]:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if arg1 - (sub_eb260eab * arg1 / sub_bbaf5782) + eth.balance(this.address) <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                if arg1 - (sub_eb260eab * arg1 / sub_bbaf5782) + eth.balance(this.address):
                    return ((arg1 * ext_call.return_data[0]) - (sub_eb260eab * arg1 / sub_bbaf5782 * ext_call.return_data[0]) / arg1 - (sub_eb260eab * arg1 / sub_bbaf5782) + eth.balance(this.address))
            ('iszero', ('add', ('param', 'arg1'), ('mul', -1, ('div', ('mul', ('stor', ('name', 'sub_eb260eab', 11)), ('param', 'arg1')), ('stor', ('name', 'sub_bbaf5782', 15)))), ('balance', 'address')))
    revert
}

function sub_25496ac3(?) {
    require ext_code.size(sub_4f2e10b3Address)
    call sub_4f2e10b3Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if sub_c607ca5a == sub_d23faf0a[msg.sender]:
        return 0
    if not totalSupply:
        if sub_9e4a8c9c > 0:
            revert with 0, 'SafeMath#sub: UNDERFLOW'
        if sub_d23faf0a[msg.sender] > sub_c607ca5a:
            revert with 0, 'SafeMath#sub: UNDERFLOW'
        if not balanceOf[msg.sender]:
            if -sub_9e4a8c9c <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            if -sub_9e4a8c9c:
                return (0 / -sub_9e4a8c9c)
        else:
            if (sub_c607ca5a * balanceOf[msg.sender]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender]) / balanceOf[msg.sender] != sub_c607ca5a - sub_d23faf0a[msg.sender]:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            if not (sub_c607ca5a * balanceOf[msg.sender]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender]):
                if -sub_9e4a8c9c <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                if -sub_9e4a8c9c:
                    return (0 / -sub_9e4a8c9c)
            else:
                if (sub_c607ca5a * balanceOf[msg.sender] * ext_call.return_data[0]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender] * ext_call.return_data[0]) / (sub_c607ca5a * balanceOf[msg.sender]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender]) != ext_call.return_data[0]:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if -sub_9e4a8c9c <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                if -sub_9e4a8c9c:
                    return ((sub_c607ca5a * balanceOf[msg.sender] * ext_call.return_data[0]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender] * ext_call.return_data[0]) / -sub_9e4a8c9c)
        ('iszero', ('mul', -1, ('stor', ('name', 'sub_9e4a8c9c', 18))))
    else:
        if sub_c607ca5a * totalSupply / totalSupply != sub_c607ca5a:
            revert with 0, 'SafeMath#mul: OVERFLOW'
        if sub_9e4a8c9c > sub_c607ca5a * totalSupply:
            revert with 0, 'SafeMath#sub: UNDERFLOW'
        if sub_d23faf0a[msg.sender] > sub_c607ca5a:
            revert with 0, 'SafeMath#sub: UNDERFLOW'
        if not balanceOf[msg.sender]:
            if (sub_c607ca5a * totalSupply) - sub_9e4a8c9c <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            if (sub_c607ca5a * totalSupply) - sub_9e4a8c9c:
                return (0 / (sub_c607ca5a * totalSupply) - sub_9e4a8c9c)
        else:
            if (sub_c607ca5a * balanceOf[msg.sender]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender]) / balanceOf[msg.sender] != sub_c607ca5a - sub_d23faf0a[msg.sender]:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            if not (sub_c607ca5a * balanceOf[msg.sender]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender]):
                if (sub_c607ca5a * totalSupply) - sub_9e4a8c9c <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                if (sub_c607ca5a * totalSupply) - sub_9e4a8c9c:
                    return (0 / (sub_c607ca5a * totalSupply) - sub_9e4a8c9c)
            else:
                if (sub_c607ca5a * balanceOf[msg.sender] * ext_call.return_data[0]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender] * ext_call.return_data[0]) / (sub_c607ca5a * balanceOf[msg.sender]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender]) != ext_call.return_data[0]:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if (sub_c607ca5a * totalSupply) - sub_9e4a8c9c <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                if (sub_c607ca5a * totalSupply) - sub_9e4a8c9c:
                    return ((sub_c607ca5a * balanceOf[msg.sender] * ext_call.return_data[0]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender] * ext_call.return_data[0]) / (sub_c607ca5a * totalSupply) - sub_9e4a8c9c)
        ('iszero', ('add', ('mul', ('stor', ('name', 'sub_c607ca5a', 9)), ('stor', ('name', 'totalSupply', 28))), ('mul', -1, ('stor', ('name', 'sub_9e4a8c9c', 18)))))
    revert
}

function updateValues(string arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    if stor0 == msg.sender:
        mem[ceil32(arg1.length) + 128] = 5
        mem[ceil32(arg1.length) + 160] = 'STATE'
        mem[ceil32(arg1.length) + 224 len 0] = None
        mem[ceil32(arg1.length) + 261 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 293 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 261 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 261] = mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 261] and 256^(-(arg1.length % 32) + 32) - 1 or mem[ceil32(arg1.length) + floor32(arg1.length) + 261 len -(arg1.length % 32) + 32], mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        if sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 261 len arg1.length % 32]) == sha3(mem[ceil32(arg1.length) + 224 len 5], 0 % 1099511627776):
            STATE = arg2
            emit 0xcf69a8cd: Array(len=arg1.length, data=arg1[all]), arg2
            return 1
        mem[arg1.length + ceil32(arg1.length) + 357 len 0] = None
        mem[arg1.length + ceil32(arg1.length) + 397 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 429 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[(2 * arg1.length) + ceil32(arg1.length) + 397 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(2 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + 397] = mem[(2 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + 397] and 256^(-(arg1.length % 32) + 32) - 1 or mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 397] and !(256^(-(arg1.length % 32) + 32) - 1)
        if sha3(mem[(2 * arg1.length) + ceil32(arg1.length) + 397 len arg1.length]) == sha3(uint64(mem[arg1.length + ceil32(arg1.length) + 357 len 8], 0)):
            sub_a7c0b250 = arg2
            mem[(2 * arg1.length) + ceil32(arg1.length) + 429] = arg2
            mem[(2 * arg1.length) + ceil32(arg1.length) + 397] = 64
            mem[(2 * arg1.length) + ceil32(arg1.length) + 461] = arg1.length
            mem[(2 * arg1.length) + ceil32(arg1.length) + 493 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            emit 0xcf69a8cd: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * arg1.length) + (2 * ceil32(arg1.length)) + 493 len (2 * arg1.length) - ceil32(arg1.length)]), arg2
            return 1
        mem[(2 * arg1.length) + ceil32(arg1.length) + 397] = 13
        mem[(2 * arg1.length) + ceil32(arg1.length) + 429] = 'PercentFactor'
        mem[(2 * arg1.length) + ceil32(arg1.length) + 493 len 0] = None
        mem[(2 * arg1.length) + ceil32(arg1.length) + 461] = 13
        mem[(2 * arg1.length) + ceil32(arg1.length) + 506 len 0] = None
        mem[(2 * arg1.length) + ceil32(arg1.length) + 519 len 19] = 'PercentFactor' % 281474976710656, mem[(2 * arg1.length) + ceil32(arg1.length) + 525 len 13]
        mem[(2 * arg1.length) + ceil32(arg1.length) + 506 len 13] = Mask(104, 0, mem[(2 * arg1.length) + ceil32(arg1.length) + 493 len 13], 0)
        mem[(2 * arg1.length) + ceil32(arg1.length) + 538 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(2 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 570 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[(2 * arg1.length) + ceil32(arg1.length) + 506] = 5 * arg1.length
        mem[(4 * arg1.length) + ceil32(arg1.length) + 538 len floor32(5 * arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)], mem[(2 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + 538 len floor32(5 * arg1.length) - floor32(arg1.length)]
        mem[(4 * arg1.length) + ceil32(arg1.length) + floor32(5 * arg1.length) + 538] = mem[(4 * arg1.length) + ceil32(arg1.length) + floor32(5 * arg1.length) + 538] and 256^(-(5 * arg1.length % 32) + 32) - 1 or mem[(2 * arg1.length) + ceil32(arg1.length) + floor32(5 * arg1.length) + 538] and !(256^(-(5 * arg1.length % 32) + 32) - 1)
        if sha3(mem[(4 * arg1.length) + ceil32(arg1.length) + 538 len 5 * arg1.length]) == sha3(Mask(104, 0, mem[(2 * arg1.length) + ceil32(arg1.length) + 493 len 13], 0)):
            sub_bbaf5782 = arg2
            mem[(4 * arg1.length) + ceil32(arg1.length) + 570] = arg2
            mem[(4 * arg1.length) + ceil32(arg1.length) + 538] = 64
            mem[(4 * arg1.length) + ceil32(arg1.length) + 602] = arg1.length
            mem[(4 * arg1.length) + ceil32(arg1.length) + 634 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if not arg1.length % 32:
                emit 0xcf69a8cd: mem[(4 * arg1.length) + ceil32(arg1.length) + 538 len (6 * arg1.length) + 96]
            else:
                mem[floor32(arg1.length) + (4 * arg1.length) + ceil32(arg1.length) + 634] = mem[floor32(arg1.length) + (4 * arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 666 len arg1.length % 32]
                emit 0xcf69a8cd: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(4 * arg1.length) + (2 * ceil32(arg1.length)) + 634 len (4 * arg1.length) + floor32(arg1.length) + -ceil32(arg1.length) + 32]), arg2
            return 1
        mem[(4 * arg1.length) + ceil32(arg1.length) + 538] = 11
        mem[(4 * arg1.length) + ceil32(arg1.length) + 570] = 'SeedBuyRate'
        mem[(4 * arg1.length) + ceil32(arg1.length) + 634 len 0] = None
        mem[(4 * arg1.length) + ceil32(arg1.length) + 655 len 11] = Mask(88, 0, 'SeedBuyRate')
        mem[(4 * arg1.length) + ceil32(arg1.length) + 602] = (4 * arg1.length) + 11
        mem[(4 * arg1.length) + ceil32(arg1.length) + 645 len floor32((4 * arg1.length) + 11)] = mem[(4 * arg1.length) + ceil32(arg1.length) + 634 len floor32((4 * arg1.length) + 11)]
        mem[(4 * arg1.length) + ceil32(arg1.length) + floor32((4 * arg1.length) + 11) + 645] = 256^(-((4 * arg1.length) + 11 % 32) + 32) - 1 and mem[(4 * arg1.length) + ceil32(arg1.length) + floor32((4 * arg1.length) + 11) + 645] or mem[(4 * arg1.length) + ceil32(arg1.length) + floor32((4 * arg1.length) + 11) + 634] and !(256^(-((4 * arg1.length) + 11 % 32) + 32) - 1)
        _10104 = sha3(mem[(4 * arg1.length) + ceil32(arg1.length) + 645 len (4 * arg1.length) + 11])
        mem[(4 * arg1.length) + ceil32(arg1.length) + 677 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(4 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 709 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[(4 * arg1.length) + ceil32(arg1.length) + 645] = 9 * arg1.length
        mem[(6 * arg1.length) + ceil32(arg1.length) + 677 len floor32(9 * arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)], mem[(4 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + 677 len floor32(9 * arg1.length) - floor32(arg1.length)]
        mem[(6 * arg1.length) + ceil32(arg1.length) + floor32(9 * arg1.length) + 677] = mem[(6 * arg1.length) + ceil32(arg1.length) + floor32(9 * arg1.length) + 677] and 256^(-(9 * arg1.length % 32) + 32) - 1 or mem[(4 * arg1.length) + ceil32(arg1.length) + floor32(9 * arg1.length) + 677] and !(256^(-(9 * arg1.length % 32) + 32) - 1)
        if sha3(mem[(6 * arg1.length) + ceil32(arg1.length) + 677 len 9 * arg1.length]) != _10104:
            # nil
        else:
            sub_cb9385ce = arg2
            mem[(6 * arg1.length) + ceil32(arg1.length) + 773 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            emit 0xcf69a8cd: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(6 * arg1.length) + (2 * ceil32(arg1.length)) + 773 len (9 * arg1.length) - ceil32(arg1.length)]), arg2
            return 1
    else:
        require msg.sender
        if not stor1[address(msg.sender)]:
            revert with 0, 'UnifiExchange#SetMaxRatio: NOT_AUTHORIZED'
        mem[ceil32(arg1.length) + 128] = 5
        mem[ceil32(arg1.length) + 160] = 'STATE'
        mem[ceil32(arg1.length) + 224 len 0] = None
        mem[ceil32(arg1.length) + 261 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 293 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + 261 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 261] = mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 261] and 256^(-(arg1.length % 32) + 32) - 1 or mem[ceil32(arg1.length) + floor32(arg1.length) + 261 len -(arg1.length % 32) + 32], mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        if sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 261 len arg1.length % 32]) == sha3(mem[ceil32(arg1.length) + 224 len 5], 0 % 1099511627776):
            STATE = arg2
            emit 0xcf69a8cd: Array(len=arg1.length, data=arg1[all]), arg2
            return 1
        mem[arg1.length + ceil32(arg1.length) + 357 len 0] = None
        mem[arg1.length + ceil32(arg1.length) + 397 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 429 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[(2 * arg1.length) + ceil32(arg1.length) + 397 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(2 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + 397] = mem[(2 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + 397] and 256^(-(arg1.length % 32) + 32) - 1 or mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 397] and !(256^(-(arg1.length % 32) + 32) - 1)
        if sha3(mem[(2 * arg1.length) + ceil32(arg1.length) + 397 len arg1.length]) == sha3(uint64(mem[arg1.length + ceil32(arg1.length) + 357 len 8], 0)):
            sub_a7c0b250 = arg2
            mem[(2 * arg1.length) + ceil32(arg1.length) + 429] = arg2
            mem[(2 * arg1.length) + ceil32(arg1.length) + 397] = 64
            mem[(2 * arg1.length) + ceil32(arg1.length) + 461] = arg1.length
            mem[(2 * arg1.length) + ceil32(arg1.length) + 493 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            emit 0xcf69a8cd: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * arg1.length) + (2 * ceil32(arg1.length)) + 493 len (2 * arg1.length) - ceil32(arg1.length)]), arg2
            return 1
        mem[(2 * arg1.length) + ceil32(arg1.length) + 397] = 13
        mem[(2 * arg1.length) + ceil32(arg1.length) + 429] = 'PercentFactor'
        mem[(2 * arg1.length) + ceil32(arg1.length) + 493 len 0] = None
        mem[(2 * arg1.length) + ceil32(arg1.length) + 461] = 13
        mem[(2 * arg1.length) + ceil32(arg1.length) + 506 len 0] = None
        mem[(2 * arg1.length) + ceil32(arg1.length) + 519 len 19] = 'PercentFactor' % 281474976710656, mem[(2 * arg1.length) + ceil32(arg1.length) + 525 len 13]
        mem[(2 * arg1.length) + ceil32(arg1.length) + 506 len 13] = Mask(104, 0, mem[(2 * arg1.length) + ceil32(arg1.length) + 493 len 13], 0)
        mem[(2 * arg1.length) + ceil32(arg1.length) + 538 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(2 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 570 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[(2 * arg1.length) + ceil32(arg1.length) + 506] = 5 * arg1.length
        mem[(4 * arg1.length) + ceil32(arg1.length) + 538 len floor32(5 * arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)], mem[(2 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + 538 len floor32(5 * arg1.length) - floor32(arg1.length)]
        mem[(4 * arg1.length) + ceil32(arg1.length) + floor32(5 * arg1.length) + 538] = mem[(4 * arg1.length) + ceil32(arg1.length) + floor32(5 * arg1.length) + 538] and 256^(-(5 * arg1.length % 32) + 32) - 1 or mem[(2 * arg1.length) + ceil32(arg1.length) + floor32(5 * arg1.length) + 538] and !(256^(-(5 * arg1.length % 32) + 32) - 1)
        if sha3(mem[(4 * arg1.length) + ceil32(arg1.length) + 538 len 5 * arg1.length]) == sha3(Mask(104, 0, mem[(2 * arg1.length) + ceil32(arg1.length) + 493 len 13], 0)):
            sub_bbaf5782 = arg2
            mem[(4 * arg1.length) + ceil32(arg1.length) + 570] = arg2
            mem[(4 * arg1.length) + ceil32(arg1.length) + 538] = 64
            mem[(4 * arg1.length) + ceil32(arg1.length) + 602] = arg1.length
            mem[(4 * arg1.length) + ceil32(arg1.length) + 634 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if not arg1.length % 32:
                emit 0xcf69a8cd: mem[(4 * arg1.length) + ceil32(arg1.length) + 538 len (6 * arg1.length) + 96]
            else:
                mem[floor32(arg1.length) + (4 * arg1.length) + ceil32(arg1.length) + 634] = mem[floor32(arg1.length) + (4 * arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 666 len arg1.length % 32]
                emit 0xcf69a8cd: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(4 * arg1.length) + (2 * ceil32(arg1.length)) + 634 len (4 * arg1.length) + floor32(arg1.length) + -ceil32(arg1.length) + 32]), arg2
            return 1
        mem[(4 * arg1.length) + ceil32(arg1.length) + 538] = 11
        mem[(4 * arg1.length) + ceil32(arg1.length) + 570] = 'SeedBuyRate'
        mem[(4 * arg1.length) + ceil32(arg1.length) + 634 len 0] = None
        mem[(4 * arg1.length) + ceil32(arg1.length) + 602] = 11
        mem[(4 * arg1.length) + ceil32(arg1.length) + 645 len 0] = None
        mem[(4 * arg1.length) + ceil32(arg1.length) + 656 len 21] = Mask(80, 0, 'SeedBuyRate'), mem[(4 * arg1.length) + ceil32(arg1.length) + 666 len 11]
        _10110 = sha3(Mask(88, 0, mem[(4 * arg1.length) + ceil32(arg1.length) + 634 len 11], 0), mem[(4 * arg1.length) + ceil32(arg1.length) + 656 len 4 * arg1.length])
        mem[(4 * arg1.length) + ceil32(arg1.length) + 677 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(4 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 709 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[(4 * arg1.length) + ceil32(arg1.length) + 645] = 6 * arg1.length
        mem[(6 * arg1.length) + ceil32(arg1.length) + 677 len floor32(6 * arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)], mem[(4 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + 677 len floor32(6 * arg1.length) - floor32(arg1.length)]
        mem[(6 * arg1.length) + ceil32(arg1.length) + floor32(6 * arg1.length) + 677] = mem[(6 * arg1.length) + ceil32(arg1.length) + floor32(6 * arg1.length) + 677] and 256^(-(6 * arg1.length % 32) + 32) - 1 or mem[(4 * arg1.length) + ceil32(arg1.length) + floor32(6 * arg1.length) + 677] and !(256^(-(6 * arg1.length % 32) + 32) - 1)
        if sha3(mem[(6 * arg1.length) + ceil32(arg1.length) + 677 len 6 * arg1.length]) != _10110:
            # nil
        else:
            sub_cb9385ce = arg2
            mem[(6 * arg1.length) + ceil32(arg1.length) + 773 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            emit 0xcf69a8cd: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(6 * arg1.length) + (2 * ceil32(arg1.length)) + 773 len (9 * arg1.length) - ceil32(arg1.length)]), arg2
            return 1
}

function sub_48ccbc2e(?) {
    require ext_code.size(sub_4f2e10b3Address)
    call sub_4f2e10b3Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if sub_c607ca5a == sub_d23faf0a[msg.sender]:
        return 0
    if not totalSupply:
        if sub_9e4a8c9c > 0:
            revert with 0, 'SafeMath#sub: UNDERFLOW'
        if sub_d23faf0a[msg.sender] > sub_c607ca5a:
            revert with 0, 'SafeMath#sub: UNDERFLOW'
        if not balanceOf[msg.sender]:
            if -sub_9e4a8c9c <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            require -sub_9e4a8c9c
            if 0 / -sub_9e4a8c9c > 0:
                if sub_d23faf0a[msg.sender] > 0:
                    emit 0x3aef95db: msg.sender, 0 / -sub_9e4a8c9c
                    if (0 / -sub_9e4a8c9c) + totalProfitOf[msg.sender] < totalProfitOf[msg.sender]:
                        revert with 0, 'SafeMath#add: OVERFLOW'
                    totalProfitOf[msg.sender] += 0 / -sub_9e4a8c9c
                    require ext_code.size(sub_4f2e10b3Address)
                    call sub_4f2e10b3Address.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[196 len 96] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, msg.sender, 0 / -sub_9e4a8c9c, mem[196 len 28]
                    mem[260] = mem[288 len 4]
                    call sub_4f2e10b3Address.mem[196 len 4] with:
                         gas gas_remaining wei
                        args mem[200 len 92]
                    if not ext_call.success:
                        revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                    require ext_code.size(sub_4f2e10b3Address)
                    call sub_4f2e10b3Address.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    if 0 / -sub_9e4a8c9c != 0:
                        revert with 0, 'Unifi: Amount did not match'
            if not sub_d23faf0a[address(msg.sender)]:
                if not sub_c607ca5a:
                    if sub_9e4a8c9c < sub_9e4a8c9c:
                        revert with 0, 'SafeMath#add: OVERFLOW'
                    if 0 > sub_9e4a8c9c:
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                else:
                    if balanceOf[msg.sender] * sub_c607ca5a / sub_c607ca5a != balanceOf[msg.sender]:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c < sub_9e4a8c9c:
                        revert with 0, 'SafeMath#add: OVERFLOW'
                    if 0 > (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c:
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    sub_9e4a8c9c += balanceOf[msg.sender] * sub_c607ca5a
            else:
                if balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)] / sub_d23faf0a[address(msg.sender)] != balanceOf[msg.sender]:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if not sub_c607ca5a:
                    if sub_9e4a8c9c < sub_9e4a8c9c:
                        revert with 0, 'SafeMath#add: OVERFLOW'
                    if balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)] > sub_9e4a8c9c:
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    sub_9e4a8c9c += -1 * balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)]
                else:
                    if balanceOf[msg.sender] * sub_c607ca5a / sub_c607ca5a != balanceOf[msg.sender]:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c < sub_9e4a8c9c:
                        revert with 0, 'SafeMath#add: OVERFLOW'
                    if balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)] > (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c:
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    sub_9e4a8c9c = (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c - (balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)])
            sub_d23faf0a[address(msg.sender)] = sub_c607ca5a
            require ext_code.size(stor2)
            call stor2.claim(address rg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return (0 / -sub_9e4a8c9c)
        if (sub_c607ca5a * balanceOf[msg.sender]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender]) / balanceOf[msg.sender] != sub_c607ca5a - sub_d23faf0a[msg.sender]:
            revert with 0, 'SafeMath#mul: OVERFLOW'
        if not (sub_c607ca5a * balanceOf[msg.sender]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender]):
            if -sub_9e4a8c9c <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            require -sub_9e4a8c9c
            if 0 / -sub_9e4a8c9c > 0:
                if sub_d23faf0a[msg.sender] > 0:
                    emit 0x3aef95db: msg.sender, 0 / -sub_9e4a8c9c
                    if (0 / -sub_9e4a8c9c) + totalProfitOf[msg.sender] < totalProfitOf[msg.sender]:
                        revert with 0, 'SafeMath#add: OVERFLOW'
                    totalProfitOf[msg.sender] += 0 / -sub_9e4a8c9c
                    require ext_code.size(sub_4f2e10b3Address)
                    call sub_4f2e10b3Address.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[196 len 96] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, msg.sender, 0 / -sub_9e4a8c9c, mem[196 len 28]
                    mem[260] = mem[288 len 4]
                    call sub_4f2e10b3Address.mem[196 len 4] with:
                         gas gas_remaining wei
                        args mem[200 len 92]
                    if not ext_call.success:
                        revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                    require ext_code.size(sub_4f2e10b3Address)
                    call sub_4f2e10b3Address.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    if 0 / -sub_9e4a8c9c != 0:
                        revert with 0, 'Unifi: Amount did not match'
            if not sub_d23faf0a[address(msg.sender)]:
                if not sub_c607ca5a:
                    if sub_9e4a8c9c < sub_9e4a8c9c:
                        revert with 0, 'SafeMath#add: OVERFLOW'
                    if 0 > sub_9e4a8c9c:
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                else:
                    if balanceOf[msg.sender] * sub_c607ca5a / sub_c607ca5a != balanceOf[msg.sender]:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c < sub_9e4a8c9c:
                        revert with 0, 'SafeMath#add: OVERFLOW'
                    if 0 > (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c:
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    sub_9e4a8c9c += balanceOf[msg.sender] * sub_c607ca5a
            else:
                if balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)] / sub_d23faf0a[address(msg.sender)] != balanceOf[msg.sender]:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if not sub_c607ca5a:
                    if sub_9e4a8c9c < sub_9e4a8c9c:
                        revert with 0, 'SafeMath#add: OVERFLOW'
                    if balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)] > sub_9e4a8c9c:
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    sub_9e4a8c9c += -1 * balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)]
                else:
                    if balanceOf[msg.sender] * sub_c607ca5a / sub_c607ca5a != balanceOf[msg.sender]:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c < sub_9e4a8c9c:
                        revert with 0, 'SafeMath#add: OVERFLOW'
                    if balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)] > (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c:
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    sub_9e4a8c9c = (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c - (balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)])
            sub_d23faf0a[address(msg.sender)] = sub_c607ca5a
            require ext_code.size(stor2)
            call stor2.claim(address rg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return (0 / -sub_9e4a8c9c)
        if (sub_c607ca5a * balanceOf[msg.sender] * ext_call.return_data[0]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender] * ext_call.return_data[0]) / (sub_c607ca5a * balanceOf[msg.sender]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender]) != ext_call.return_data[0]:
            revert with 0, 'SafeMath#mul: OVERFLOW'
        if -sub_9e4a8c9c <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        require -sub_9e4a8c9c
        if (sub_c607ca5a * balanceOf[msg.sender] * ext_call.return_data[0]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender] * ext_call.return_data[0]) / -sub_9e4a8c9c > 0:
            if sub_d23faf0a[msg.sender] > 0:
                emit 0x3aef95db: msg.sender, (sub_c607ca5a * balanceOf[msg.sender] * ext_call.return_data[0]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender] * ext_call.return_data[0]) / -sub_9e4a8c9c
                if ((sub_c607ca5a * balanceOf[msg.sender] * ext_call.return_data[0]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender] * ext_call.return_data[0]) / -sub_9e4a8c9c) + totalProfitOf[msg.sender] < totalProfitOf[msg.sender]:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                totalProfitOf[msg.sender] += (sub_c607ca5a * balanceOf[msg.sender] * ext_call.return_data[0]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender] * ext_call.return_data[0]) / -sub_9e4a8c9c
                require ext_code.size(sub_4f2e10b3Address)
                call sub_4f2e10b3Address.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[196 len 96] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, msg.sender, (sub_c607ca5a * balanceOf[msg.sender] * ext_call.return_data[0]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender] * ext_call.return_data[0]) / -sub_9e4a8c9c, mem[196 len 28]
                mem[260] = mem[288 len 4]
                call sub_4f2e10b3Address.mem[196 len 4] with:
                     gas gas_remaining wei
                    args mem[200 len 92]
                if not ext_call.success:
                    revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                require ext_code.size(sub_4f2e10b3Address)
                call sub_4f2e10b3Address.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                if (sub_c607ca5a * balanceOf[msg.sender] * ext_call.return_data[0]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender] * ext_call.return_data[0]) / -sub_9e4a8c9c != 0:
                    revert with 0, 'Unifi: Amount did not match'
        if not sub_d23faf0a[address(msg.sender)]:
            if not sub_c607ca5a:
                if sub_9e4a8c9c < sub_9e4a8c9c:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                if 0 > sub_9e4a8c9c:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
            else:
                if balanceOf[msg.sender] * sub_c607ca5a / sub_c607ca5a != balanceOf[msg.sender]:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c < sub_9e4a8c9c:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                if 0 > (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                sub_9e4a8c9c += balanceOf[msg.sender] * sub_c607ca5a
        else:
            if balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)] / sub_d23faf0a[address(msg.sender)] != balanceOf[msg.sender]:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            if not sub_c607ca5a:
                if sub_9e4a8c9c < sub_9e4a8c9c:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                if balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)] > sub_9e4a8c9c:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                sub_9e4a8c9c += -1 * balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)]
            else:
                if balanceOf[msg.sender] * sub_c607ca5a / sub_c607ca5a != balanceOf[msg.sender]:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c < sub_9e4a8c9c:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                if balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)] > (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                sub_9e4a8c9c = (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c - (balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)])
        sub_d23faf0a[address(msg.sender)] = sub_c607ca5a
        require ext_code.size(stor2)
        call stor2.claim(address rg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ((sub_c607ca5a * balanceOf[msg.sender] * ext_call.return_data[0]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender] * ext_call.return_data[0]) / -sub_9e4a8c9c)
    if sub_c607ca5a * totalSupply / totalSupply != sub_c607ca5a:
        revert with 0, 'SafeMath#mul: OVERFLOW'
    if sub_9e4a8c9c > sub_c607ca5a * totalSupply:
        revert with 0, 'SafeMath#sub: UNDERFLOW'
    if sub_d23faf0a[msg.sender] > sub_c607ca5a:
        revert with 0, 'SafeMath#sub: UNDERFLOW'
    if not balanceOf[msg.sender]:
        if (sub_c607ca5a * totalSupply) - sub_9e4a8c9c <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        require (sub_c607ca5a * totalSupply) - sub_9e4a8c9c
        if 0 / (sub_c607ca5a * totalSupply) - sub_9e4a8c9c > 0:
            if sub_d23faf0a[msg.sender] > 0:
                emit 0x3aef95db: msg.sender, 0 / (sub_c607ca5a * totalSupply) - sub_9e4a8c9c
                if (0 / (sub_c607ca5a * totalSupply) - sub_9e4a8c9c) + totalProfitOf[msg.sender] < totalProfitOf[msg.sender]:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                totalProfitOf[msg.sender] += 0 / (sub_c607ca5a * totalSupply) - sub_9e4a8c9c
                require ext_code.size(sub_4f2e10b3Address)
                call sub_4f2e10b3Address.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[196 len 96] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, msg.sender, 0 / (sub_c607ca5a * totalSupply) - sub_9e4a8c9c, mem[196 len 28]
                mem[260] = mem[288 len 4]
                call sub_4f2e10b3Address.mem[196 len 4] with:
                     gas gas_remaining wei
                    args mem[200 len 92]
                if not ext_call.success:
                    revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                require ext_code.size(sub_4f2e10b3Address)
                call sub_4f2e10b3Address.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                if 0 / (sub_c607ca5a * totalSupply) - sub_9e4a8c9c != 0:
                    revert with 0, 'Unifi: Amount did not match'
        if not sub_d23faf0a[address(msg.sender)]:
            if not sub_c607ca5a:
                if sub_9e4a8c9c < sub_9e4a8c9c:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                if 0 > sub_9e4a8c9c:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
            else:
                if balanceOf[msg.sender] * sub_c607ca5a / sub_c607ca5a != balanceOf[msg.sender]:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c < sub_9e4a8c9c:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                if 0 > (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                sub_9e4a8c9c += balanceOf[msg.sender] * sub_c607ca5a
        else:
            if balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)] / sub_d23faf0a[address(msg.sender)] != balanceOf[msg.sender]:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            if not sub_c607ca5a:
                if sub_9e4a8c9c < sub_9e4a8c9c:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                if balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)] > sub_9e4a8c9c:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                sub_9e4a8c9c += -1 * balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)]
            else:
                if balanceOf[msg.sender] * sub_c607ca5a / sub_c607ca5a != balanceOf[msg.sender]:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c < sub_9e4a8c9c:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                if balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)] > (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                sub_9e4a8c9c = (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c - (balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)])
        sub_d23faf0a[address(msg.sender)] = sub_c607ca5a
        require ext_code.size(stor2)
        call stor2.claim(address rg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return (0 / (sub_c607ca5a * totalSupply) - sub_9e4a8c9c)
    if (sub_c607ca5a * balanceOf[msg.sender]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender]) / balanceOf[msg.sender] != sub_c607ca5a - sub_d23faf0a[msg.sender]:
        revert with 0, 'SafeMath#mul: OVERFLOW'
    if not (sub_c607ca5a * balanceOf[msg.sender]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender]):
        if (sub_c607ca5a * totalSupply) - sub_9e4a8c9c <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        require (sub_c607ca5a * totalSupply) - sub_9e4a8c9c
        if 0 / (sub_c607ca5a * totalSupply) - sub_9e4a8c9c > 0:
            if sub_d23faf0a[msg.sender] > 0:
                emit 0x3aef95db: msg.sender, 0 / (sub_c607ca5a * totalSupply) - sub_9e4a8c9c
                if (0 / (sub_c607ca5a * totalSupply) - sub_9e4a8c9c) + totalProfitOf[msg.sender] < totalProfitOf[msg.sender]:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                totalProfitOf[msg.sender] += 0 / (sub_c607ca5a * totalSupply) - sub_9e4a8c9c
                require ext_code.size(sub_4f2e10b3Address)
                call sub_4f2e10b3Address.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[196 len 96] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, msg.sender, 0 / (sub_c607ca5a * totalSupply) - sub_9e4a8c9c, mem[196 len 28]
                mem[260] = mem[288 len 4]
                call sub_4f2e10b3Address.mem[196 len 4] with:
                     gas gas_remaining wei
                    args mem[200 len 92]
                if not ext_call.success:
                    revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                require ext_code.size(sub_4f2e10b3Address)
                call sub_4f2e10b3Address.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                if 0 / (sub_c607ca5a * totalSupply) - sub_9e4a8c9c != 0:
                    revert with 0, 'Unifi: Amount did not match'
        if not sub_d23faf0a[address(msg.sender)]:
            if not sub_c607ca5a:
                if sub_9e4a8c9c < sub_9e4a8c9c:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                if 0 > sub_9e4a8c9c:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
            else:
                if balanceOf[msg.sender] * sub_c607ca5a / sub_c607ca5a != balanceOf[msg.sender]:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c < sub_9e4a8c9c:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                if 0 > (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                sub_9e4a8c9c += balanceOf[msg.sender] * sub_c607ca5a
        else:
            if balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)] / sub_d23faf0a[address(msg.sender)] != balanceOf[msg.sender]:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            if not sub_c607ca5a:
                if sub_9e4a8c9c < sub_9e4a8c9c:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                if balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)] > sub_9e4a8c9c:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                sub_9e4a8c9c += -1 * balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)]
            else:
                if balanceOf[msg.sender] * sub_c607ca5a / sub_c607ca5a != balanceOf[msg.sender]:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c < sub_9e4a8c9c:
                    revert with 0, 'SafeMath#add: OVERFLOW'
                if balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)] > (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                sub_9e4a8c9c = (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c - (balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)])
        sub_d23faf0a[address(msg.sender)] = sub_c607ca5a
        require ext_code.size(stor2)
        call stor2.claim(address rg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return (0 / (sub_c607ca5a * totalSupply) - sub_9e4a8c9c)
    if (sub_c607ca5a * balanceOf[msg.sender] * ext_call.return_data[0]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender] * ext_call.return_data[0]) / (sub_c607ca5a * balanceOf[msg.sender]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender]) != ext_call.return_data[0]:
        revert with 0, 'SafeMath#mul: OVERFLOW'
    if (sub_c607ca5a * totalSupply) - sub_9e4a8c9c <= 0:
        revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
    require (sub_c607ca5a * totalSupply) - sub_9e4a8c9c
    if (sub_c607ca5a * balanceOf[msg.sender] * ext_call.return_data[0]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender] * ext_call.return_data[0]) / (sub_c607ca5a * totalSupply) - sub_9e4a8c9c > 0:
        if sub_d23faf0a[msg.sender] > 0:
            emit 0x3aef95db: msg.sender, (sub_c607ca5a * balanceOf[msg.sender] * ext_call.return_data[0]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender] * ext_call.return_data[0]) / (sub_c607ca5a * totalSupply) - sub_9e4a8c9c
            if ((sub_c607ca5a * balanceOf[msg.sender] * ext_call.return_data[0]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender] * ext_call.return_data[0]) / (sub_c607ca5a * totalSupply) - sub_9e4a8c9c) + totalProfitOf[msg.sender] < totalProfitOf[msg.sender]:
                revert with 0, 'SafeMath#add: OVERFLOW'
            totalProfitOf[msg.sender] += (sub_c607ca5a * balanceOf[msg.sender] * ext_call.return_data[0]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender] * ext_call.return_data[0]) / (sub_c607ca5a * totalSupply) - sub_9e4a8c9c
            require ext_code.size(sub_4f2e10b3Address)
            call sub_4f2e10b3Address.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[196 len 96] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, msg.sender, (sub_c607ca5a * balanceOf[msg.sender] * ext_call.return_data[0]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender] * ext_call.return_data[0]) / (sub_c607ca5a * totalSupply) - sub_9e4a8c9c, mem[196 len 28]
            mem[260] = mem[288 len 4]
            call sub_4f2e10b3Address.mem[196 len 4] with:
                 gas gas_remaining wei
                args mem[200 len 92]
            if not ext_call.success:
                revert with 0, 'Unifi: TRANSFERFROM_FAILED'
            require ext_code.size(sub_4f2e10b3Address)
            call sub_4f2e10b3Address.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            if (sub_c607ca5a * balanceOf[msg.sender] * ext_call.return_data[0]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender] * ext_call.return_data[0]) / (sub_c607ca5a * totalSupply) - sub_9e4a8c9c != 0:
                revert with 0, 'Unifi: Amount did not match'
    if not sub_d23faf0a[address(msg.sender)]:
        if not sub_c607ca5a:
            if sub_9e4a8c9c < sub_9e4a8c9c:
                revert with 0, 'SafeMath#add: OVERFLOW'
            if 0 > sub_9e4a8c9c:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
        else:
            if balanceOf[msg.sender] * sub_c607ca5a / sub_c607ca5a != balanceOf[msg.sender]:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            if (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c < sub_9e4a8c9c:
                revert with 0, 'SafeMath#add: OVERFLOW'
            if 0 > (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            sub_9e4a8c9c += balanceOf[msg.sender] * sub_c607ca5a
    else:
        if balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)] / sub_d23faf0a[address(msg.sender)] != balanceOf[msg.sender]:
            revert with 0, 'SafeMath#mul: OVERFLOW'
        if not sub_c607ca5a:
            if sub_9e4a8c9c < sub_9e4a8c9c:
                revert with 0, 'SafeMath#add: OVERFLOW'
            if balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)] > sub_9e4a8c9c:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            sub_9e4a8c9c += -1 * balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)]
        else:
            if balanceOf[msg.sender] * sub_c607ca5a / sub_c607ca5a != balanceOf[msg.sender]:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            if (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c < sub_9e4a8c9c:
                revert with 0, 'SafeMath#add: OVERFLOW'
            if balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)] > (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            sub_9e4a8c9c = (balanceOf[msg.sender] * sub_c607ca5a) + sub_9e4a8c9c - (balanceOf[msg.sender] * sub_d23faf0a[address(msg.sender)])
    sub_d23faf0a[address(msg.sender)] = sub_c607ca5a
    require ext_code.size(stor2)
    call stor2.claim(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ((sub_c607ca5a * balanceOf[msg.sender] * ext_call.return_data[0]) - (sub_d23faf0a[msg.sender] * balanceOf[msg.sender] * ext_call.return_data[0]) / (sub_c607ca5a * totalSupply) - sub_9e4a8c9c)
}

function Sell(uint256 arg1) {
    if stor22 != 1:
        revert with 0, 'Unifi: LOCKED'
    stor22 = 0
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: INVALID_AMOUNT'
    if not STATE:
        revert with 0, 'UnifiExchange#Sell: Pair Closed'
    require ext_code.size(sub_6f7815dcAddress)
    call sub_6f7815dcAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not eth.balance(this.address):
        if sub_bbaf5782 <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        require sub_bbaf5782
        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath#add: OVERFLOW'
        if not eth.balance(this.address):
            if arg1 + ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            require arg1 + ext_call.return_data[0]
            if not 0 / arg1 + ext_call.return_data[0]:
                if sub_bbaf5782 <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require sub_bbaf5782
                if 0 / sub_bbaf5782 > 0 / arg1 + ext_call.return_data[0]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                if sub_cb9385ce > 0:
                    if not 0 / sub_bbaf5782:
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if 0 / sub_bbaf5782 > 0:
                            require ext_code.size(stor5)
                            call stor5.0x5c6c8903 with:
                               value 0 / sub_bbaf5782 wei
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
                    else:
                        if sub_cb9385ce * 0 / sub_bbaf5782 / 0 / sub_bbaf5782 != sub_cb9385ce:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if sub_cb9385ce * 0 / sub_bbaf5782 / sub_bbaf5782 > 0:
                            require ext_code.size(stor5)
                            call stor5.0x5c6c8903 with:
                               value sub_cb9385ce * 0 / sub_bbaf5782 / sub_bbaf5782 wei
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
                if 0 / arg1 + ext_call.return_data[0] <= sub_e6892bd6:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell:Sell Amount below Minmum'
                if 0 / sub_bbaf5782 < 0 / arg1 + ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell:Sell Amount above Maximum'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[228 len 128] = Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224, msg.sender, this.address, arg1, mem[228 len 28]
                mem[324] = mem[352 len 4]
                call sub_6f7815dcAddress.mem[228 len 4] with:
                     gas gas_remaining wei
                    args mem[232 len 124]
                if not ext_call.success:
                    revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                if arg1 != 0:
                    revert with 0, 'Unifi: Amount did not match'
                call msg.sender with:
                   value (0 / arg1 + ext_call.return_data[0]) - (0 / sub_bbaf5782) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_4f2e10b3Address)
                call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
                   value 0 / sub_bbaf5782 wei
                     gas gas_remaining wei
                    args this.address, 0 / sub_bbaf5782
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x910f0165: 0, 0 / sub_bbaf5782, msg.sender, arg1, (0 / arg1 + ext_call.return_data[0]) - (0 / sub_bbaf5782)
                stor22 = 1
                return ((0 / arg1 + ext_call.return_data[0]) - (0 / sub_bbaf5782))
            if sub_eb260eab * 0 / arg1 + ext_call.return_data[0] / 0 / arg1 + ext_call.return_data[0] != sub_eb260eab:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            if sub_bbaf5782 <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            require sub_bbaf5782
            if sub_eb260eab * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782 > 0 / arg1 + ext_call.return_data[0]:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            if sub_cb9385ce > 0:
                if not sub_eb260eab * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782:
                    if sub_bbaf5782 <= 0:
                        revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                    require sub_bbaf5782
                    if 0 / sub_bbaf5782 > 0:
                        require ext_code.size(stor5)
                        call stor5.0x5c6c8903 with:
                           value 0 / sub_bbaf5782 wei
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
                else:
                    if sub_cb9385ce * sub_eb260eab * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782 / sub_eb260eab * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782 != sub_cb9385ce:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if sub_bbaf5782 <= 0:
                        revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                    require sub_bbaf5782
                    if sub_cb9385ce * sub_eb260eab * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782 / sub_bbaf5782 > 0:
                        require ext_code.size(stor5)
                        call stor5.0x5c6c8903 with:
                           value sub_cb9385ce * sub_eb260eab * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782 / sub_bbaf5782 wei
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
            if 0 / arg1 + ext_call.return_data[0] <= sub_e6892bd6:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell:Sell Amount below Minmum'
            if 0 / sub_bbaf5782 < 0 / arg1 + ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell:Sell Amount above Maximum'
            require ext_code.size(sub_6f7815dcAddress)
            call sub_6f7815dcAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[228 len 128] = Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224, msg.sender, this.address, arg1, mem[228 len 28]
            mem[324] = mem[352 len 4]
            call sub_6f7815dcAddress.mem[228 len 4] with:
                 gas gas_remaining wei
                args mem[232 len 124]
            if not ext_call.success:
                revert with 0, 'Unifi: TRANSFERFROM_FAILED'
            require ext_code.size(sub_6f7815dcAddress)
            call sub_6f7815dcAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            if arg1 != 0:
                revert with 0, 'Unifi: Amount did not match'
            call msg.sender with:
               value (0 / arg1 + ext_call.return_data[0]) - (sub_eb260eab * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_4f2e10b3Address)
            call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
               value sub_eb260eab * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782 wei
                 gas gas_remaining wei
                args this.address, sub_eb260eab * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x910f0165: 0, sub_eb260eab * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782, msg.sender, arg1, (0 / arg1 + ext_call.return_data[0]) - (sub_eb260eab * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782)
            stor22 = 1
            return ((0 / arg1 + ext_call.return_data[0]) - (sub_eb260eab * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782))
        if arg1 * eth.balance(this.address) / eth.balance(this.address) != arg1:
            revert with 0, 'SafeMath#mul: OVERFLOW'
        if arg1 + ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        require arg1 + ext_call.return_data[0]
        if not arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]:
            if sub_bbaf5782 <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            require sub_bbaf5782
            if 0 / sub_bbaf5782 > arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            if sub_cb9385ce > 0:
                if not 0 / sub_bbaf5782:
                    if sub_bbaf5782 <= 0:
                        revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                    require sub_bbaf5782
                    if 0 / sub_bbaf5782 > 0:
                        require ext_code.size(stor5)
                        call stor5.0x5c6c8903 with:
                           value 0 / sub_bbaf5782 wei
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
                else:
                    if sub_cb9385ce * 0 / sub_bbaf5782 / 0 / sub_bbaf5782 != sub_cb9385ce:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if sub_bbaf5782 <= 0:
                        revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                    require sub_bbaf5782
                    if sub_cb9385ce * 0 / sub_bbaf5782 / sub_bbaf5782 > 0:
                        require ext_code.size(stor5)
                        call stor5.0x5c6c8903 with:
                           value sub_cb9385ce * 0 / sub_bbaf5782 / sub_bbaf5782 wei
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
            if arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] <= sub_e6892bd6:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell:Sell Amount below Minmum'
            if 0 / sub_bbaf5782 < arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell:Sell Amount above Maximum'
            require ext_code.size(sub_6f7815dcAddress)
            call sub_6f7815dcAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[228 len 128] = Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224, msg.sender, this.address, arg1, mem[228 len 28]
            mem[324] = mem[352 len 4]
            call sub_6f7815dcAddress.mem[228 len 4] with:
                 gas gas_remaining wei
                args mem[232 len 124]
            if not ext_call.success:
                revert with 0, 'Unifi: TRANSFERFROM_FAILED'
            require ext_code.size(sub_6f7815dcAddress)
            call sub_6f7815dcAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            if arg1 != 0:
                revert with 0, 'Unifi: Amount did not match'
            call msg.sender with:
               value (arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]) - (0 / sub_bbaf5782) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_4f2e10b3Address)
            call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
               value 0 / sub_bbaf5782 wei
                 gas gas_remaining wei
                args this.address, 0 / sub_bbaf5782
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x910f0165: 0, 0 / sub_bbaf5782, msg.sender, arg1, (arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]) - (0 / sub_bbaf5782)
            stor22 = 1
            return ((arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]) - (0 / sub_bbaf5782))
        if sub_eb260eab * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] != sub_eb260eab:
            revert with 0, 'SafeMath#mul: OVERFLOW'
        if sub_bbaf5782 <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        require sub_bbaf5782
        if sub_eb260eab * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782 > arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]:
            revert with 0, 'SafeMath#sub: UNDERFLOW'
        if sub_cb9385ce > 0:
            if not sub_eb260eab * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782:
                if sub_bbaf5782 <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require sub_bbaf5782
                if 0 / sub_bbaf5782 > 0:
                    require ext_code.size(stor5)
                    call stor5.0x5c6c8903 with:
                       value 0 / sub_bbaf5782 wei
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
            else:
                if sub_cb9385ce * sub_eb260eab * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782 / sub_eb260eab * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782 != sub_cb9385ce:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if sub_bbaf5782 <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require sub_bbaf5782
                if sub_cb9385ce * sub_eb260eab * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782 / sub_bbaf5782 > 0:
                    require ext_code.size(stor5)
                    call stor5.0x5c6c8903 with:
                       value sub_cb9385ce * sub_eb260eab * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782 / sub_bbaf5782 wei
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
        if arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] <= sub_e6892bd6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell:Sell Amount below Minmum'
        if 0 / sub_bbaf5782 < arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell:Sell Amount above Maximum'
    else:
        if sub_a7c0b250 * eth.balance(this.address) / eth.balance(this.address) != sub_a7c0b250:
            revert with 0, 'SafeMath#mul: OVERFLOW'
        if sub_bbaf5782 <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        require sub_bbaf5782
        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath#add: OVERFLOW'
        if not eth.balance(this.address):
            if arg1 + ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            require arg1 + ext_call.return_data[0]
            if not 0 / arg1 + ext_call.return_data[0]:
                if sub_bbaf5782 <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require sub_bbaf5782
                if 0 / sub_bbaf5782 > 0 / arg1 + ext_call.return_data[0]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                if sub_cb9385ce > 0:
                    if not 0 / sub_bbaf5782:
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if 0 / sub_bbaf5782 > 0:
                            require ext_code.size(stor5)
                            call stor5.0x5c6c8903 with:
                               value 0 / sub_bbaf5782 wei
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
                    else:
                        if sub_cb9385ce * 0 / sub_bbaf5782 / 0 / sub_bbaf5782 != sub_cb9385ce:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if sub_cb9385ce * 0 / sub_bbaf5782 / sub_bbaf5782 > 0:
                            require ext_code.size(stor5)
                            call stor5.0x5c6c8903 with:
                               value sub_cb9385ce * 0 / sub_bbaf5782 / sub_bbaf5782 wei
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
                if 0 / arg1 + ext_call.return_data[0] <= sub_e6892bd6:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell:Sell Amount below Minmum'
                if sub_a7c0b250 * eth.balance(this.address) / sub_bbaf5782 < 0 / arg1 + ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell:Sell Amount above Maximum'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[228 len 128] = Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224, msg.sender, this.address, arg1, mem[228 len 28]
                mem[324] = mem[352 len 4]
                call sub_6f7815dcAddress.mem[228 len 4] with:
                     gas gas_remaining wei
                    args mem[232 len 124]
                if not ext_call.success:
                    revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                if arg1 != 0:
                    revert with 0, 'Unifi: Amount did not match'
                call msg.sender with:
                   value (0 / arg1 + ext_call.return_data[0]) - (0 / sub_bbaf5782) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_4f2e10b3Address)
                call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
                   value 0 / sub_bbaf5782 wei
                     gas gas_remaining wei
                    args this.address, 0 / sub_bbaf5782
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x910f0165: 0, 0 / sub_bbaf5782, msg.sender, arg1, (0 / arg1 + ext_call.return_data[0]) - (0 / sub_bbaf5782)
                stor22 = 1
                return ((0 / arg1 + ext_call.return_data[0]) - (0 / sub_bbaf5782))
            if sub_eb260eab * 0 / arg1 + ext_call.return_data[0] / 0 / arg1 + ext_call.return_data[0] != sub_eb260eab:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            if sub_bbaf5782 <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            require sub_bbaf5782
            if sub_eb260eab * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782 > 0 / arg1 + ext_call.return_data[0]:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            if sub_cb9385ce > 0:
                if not sub_eb260eab * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782:
                    if sub_bbaf5782 <= 0:
                        revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                    require sub_bbaf5782
                    if 0 / sub_bbaf5782 > 0:
                        require ext_code.size(stor5)
                        call stor5.0x5c6c8903 with:
                           value 0 / sub_bbaf5782 wei
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
                else:
                    if sub_cb9385ce * sub_eb260eab * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782 / sub_eb260eab * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782 != sub_cb9385ce:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if sub_bbaf5782 <= 0:
                        revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                    require sub_bbaf5782
                    if sub_cb9385ce * sub_eb260eab * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782 / sub_bbaf5782 > 0:
                        require ext_code.size(stor5)
                        call stor5.0x5c6c8903 with:
                           value sub_cb9385ce * sub_eb260eab * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782 / sub_bbaf5782 wei
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
            if 0 / arg1 + ext_call.return_data[0] <= sub_e6892bd6:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell:Sell Amount below Minmum'
            if sub_a7c0b250 * eth.balance(this.address) / sub_bbaf5782 < 0 / arg1 + ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell:Sell Amount above Maximum'
            require ext_code.size(sub_6f7815dcAddress)
            call sub_6f7815dcAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[228 len 128] = Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224, msg.sender, this.address, arg1, mem[228 len 28]
            mem[324] = mem[352 len 4]
            call sub_6f7815dcAddress.mem[228 len 4] with:
                 gas gas_remaining wei
                args mem[232 len 124]
            if not ext_call.success:
                revert with 0, 'Unifi: TRANSFERFROM_FAILED'
            require ext_code.size(sub_6f7815dcAddress)
            call sub_6f7815dcAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            if arg1 != 0:
                revert with 0, 'Unifi: Amount did not match'
            call msg.sender with:
               value (0 / arg1 + ext_call.return_data[0]) - (sub_eb260eab * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_4f2e10b3Address)
            call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
               value sub_eb260eab * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782 wei
                 gas gas_remaining wei
                args this.address, sub_eb260eab * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x910f0165: 0, sub_eb260eab * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782, msg.sender, arg1, (0 / arg1 + ext_call.return_data[0]) - (sub_eb260eab * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782)
            stor22 = 1
            return ((0 / arg1 + ext_call.return_data[0]) - (sub_eb260eab * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782))
        if arg1 * eth.balance(this.address) / eth.balance(this.address) != arg1:
            revert with 0, 'SafeMath#mul: OVERFLOW'
        if arg1 + ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        require arg1 + ext_call.return_data[0]
        if not arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]:
            if sub_bbaf5782 <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            require sub_bbaf5782
            if 0 / sub_bbaf5782 > arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            if sub_cb9385ce > 0:
                if not 0 / sub_bbaf5782:
                    if sub_bbaf5782 <= 0:
                        revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                    require sub_bbaf5782
                    if 0 / sub_bbaf5782 > 0:
                        require ext_code.size(stor5)
                        call stor5.0x5c6c8903 with:
                           value 0 / sub_bbaf5782 wei
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
                else:
                    if sub_cb9385ce * 0 / sub_bbaf5782 / 0 / sub_bbaf5782 != sub_cb9385ce:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if sub_bbaf5782 <= 0:
                        revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                    require sub_bbaf5782
                    if sub_cb9385ce * 0 / sub_bbaf5782 / sub_bbaf5782 > 0:
                        require ext_code.size(stor5)
                        call stor5.0x5c6c8903 with:
                           value sub_cb9385ce * 0 / sub_bbaf5782 / sub_bbaf5782 wei
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
            if arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] <= sub_e6892bd6:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell:Sell Amount below Minmum'
            if sub_a7c0b250 * eth.balance(this.address) / sub_bbaf5782 < arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell:Sell Amount above Maximum'
            require ext_code.size(sub_6f7815dcAddress)
            call sub_6f7815dcAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[228 len 128] = Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224, msg.sender, this.address, arg1, mem[228 len 28]
            mem[324] = mem[352 len 4]
            call sub_6f7815dcAddress.mem[228 len 4] with:
                 gas gas_remaining wei
                args mem[232 len 124]
            if not ext_call.success:
                revert with 0, 'Unifi: TRANSFERFROM_FAILED'
            require ext_code.size(sub_6f7815dcAddress)
            call sub_6f7815dcAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            if arg1 != 0:
                revert with 0, 'Unifi: Amount did not match'
            call msg.sender with:
               value (arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]) - (0 / sub_bbaf5782) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_4f2e10b3Address)
            call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
               value 0 / sub_bbaf5782 wei
                 gas gas_remaining wei
                args this.address, 0 / sub_bbaf5782
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x910f0165: 0, 0 / sub_bbaf5782, msg.sender, arg1, (arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]) - (0 / sub_bbaf5782)
            stor22 = 1
            return ((arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]) - (0 / sub_bbaf5782))
        if sub_eb260eab * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] != sub_eb260eab:
            revert with 0, 'SafeMath#mul: OVERFLOW'
        if sub_bbaf5782 <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        require sub_bbaf5782
        if sub_eb260eab * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782 > arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]:
            revert with 0, 'SafeMath#sub: UNDERFLOW'
        if sub_cb9385ce > 0:
            if not sub_eb260eab * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782:
                if sub_bbaf5782 <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require sub_bbaf5782
                if 0 / sub_bbaf5782 > 0:
                    require ext_code.size(stor5)
                    call stor5.0x5c6c8903 with:
                       value 0 / sub_bbaf5782 wei
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
            else:
                if sub_cb9385ce * sub_eb260eab * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782 / sub_eb260eab * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782 != sub_cb9385ce:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if sub_bbaf5782 <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require sub_bbaf5782
                if sub_cb9385ce * sub_eb260eab * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782 / sub_bbaf5782 > 0:
                    require ext_code.size(stor5)
                    call stor5.0x5c6c8903 with:
                       value sub_cb9385ce * sub_eb260eab * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782 / sub_bbaf5782 wei
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
        if arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] <= sub_e6892bd6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell:Sell Amount below Minmum'
        if sub_a7c0b250 * eth.balance(this.address) / sub_bbaf5782 < arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell:Sell Amount above Maximum'
    require ext_code.size(sub_6f7815dcAddress)
    call sub_6f7815dcAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[228 len 128] = Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224, msg.sender, this.address, arg1, mem[228 len 28]
    mem[324] = mem[352 len 4]
    call sub_6f7815dcAddress.mem[228 len 4] with:
         gas gas_remaining wei
        args mem[232 len 124]
    if not ext_call.success:
        revert with 0, 'Unifi: TRANSFERFROM_FAILED'
    require ext_code.size(sub_6f7815dcAddress)
    call sub_6f7815dcAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath#sub: UNDERFLOW'
    if arg1 != 0:
        revert with 0, 'Unifi: Amount did not match'
    call msg.sender with:
       value (arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]) - (sub_eb260eab * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_4f2e10b3Address)
    call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
       value sub_eb260eab * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782 wei
         gas gas_remaining wei
        args this.address, sub_eb260eab * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x910f0165: 0, sub_eb260eab * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782, msg.sender, arg1, (arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]) - (sub_eb260eab * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782)
    stor22 = 1
    return ((arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]) - (sub_eb260eab * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782))
}

function sub_21453715(?) {
    if stor22 != 1:
        revert with 0, 'Unifi: LOCKED'
    stor22 = 0
    if arg2 == this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: Invalid ADdress'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: INVALID_AMOUNT'
    if not STATE:
        revert with 0, 'UnifiExchange#Sell: Pair Closed'
    require ext_code.size(sub_6f7815dcAddress)
    call sub_6f7815dcAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not eth.balance(this.address):
        if sub_bbaf5782 <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        require sub_bbaf5782
        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath#add: OVERFLOW'
        if not eth.balance(this.address):
            if arg1 + ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            require arg1 + ext_call.return_data[0]
            if not 0 / arg1 + ext_call.return_data[0]:
                if sub_bbaf5782 <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require sub_bbaf5782
                if 0 / sub_bbaf5782 > 0 / arg1 + ext_call.return_data[0]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                if sub_cb9385ce > 0:
                    if not 0 / sub_bbaf5782:
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if 0 / sub_bbaf5782 > 0:
                            require ext_code.size(stor5)
                            call stor5.0x5c6c8903 with:
                               value 0 / sub_bbaf5782 wei
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
                    else:
                        if sub_cb9385ce * 0 / sub_bbaf5782 / 0 / sub_bbaf5782 != sub_cb9385ce:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if sub_cb9385ce * 0 / sub_bbaf5782 / sub_bbaf5782 > 0:
                            require ext_code.size(stor5)
                            call stor5.0x5c6c8903 with:
                               value sub_cb9385ce * 0 / sub_bbaf5782 / sub_bbaf5782 wei
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
                if 0 / sub_bbaf5782 < 0 / arg1 + ext_call.return_data[0]:
                    revert with 0, 'Sell Amount above Maximum'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[228 len 128] = Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224, msg.sender, this.address, arg1, mem[228 len 28]
                mem[324] = mem[352 len 4]
                call sub_6f7815dcAddress.mem[228 len 4] with:
                     gas gas_remaining wei
                    args mem[232 len 124]
                if not ext_call.success:
                    revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                if arg1 != 0:
                    revert with 0, 'Unifi: Amount did not match'
                require ext_code.size(sub_4f2e10b3Address)
                call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
                   value 0 / sub_bbaf5782 wei
                     gas gas_remaining wei
                    args this.address, 0 / sub_bbaf5782
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x910f0165: 0, 0 / sub_bbaf5782, msg.sender, arg1, (0 / arg1 + ext_call.return_data[0]) - (0 / sub_bbaf5782)
                require ext_code.size(arg2)
                call arg2.0x5c6c8903 with:
                   value (0 / arg1 + ext_call.return_data[0]) - (0 / sub_bbaf5782) wei
                     gas gas_remaining wei
                    args msg.sender
            else:
                if sub_2a04e715 * 0 / arg1 + ext_call.return_data[0] / 0 / arg1 + ext_call.return_data[0] != sub_2a04e715:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if sub_bbaf5782 <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require sub_bbaf5782
                if sub_2a04e715 * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782 > 0 / arg1 + ext_call.return_data[0]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                if sub_cb9385ce > 0:
                    if not sub_2a04e715 * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782:
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if 0 / sub_bbaf5782 > 0:
                            require ext_code.size(stor5)
                            call stor5.0x5c6c8903 with:
                               value 0 / sub_bbaf5782 wei
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
                    else:
                        if sub_cb9385ce * sub_2a04e715 * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782 / sub_2a04e715 * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782 != sub_cb9385ce:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if sub_cb9385ce * sub_2a04e715 * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782 / sub_bbaf5782 > 0:
                            require ext_code.size(stor5)
                            call stor5.0x5c6c8903 with:
                               value sub_cb9385ce * sub_2a04e715 * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782 / sub_bbaf5782 wei
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
                if 0 / sub_bbaf5782 < 0 / arg1 + ext_call.return_data[0]:
                    revert with 0, 'Sell Amount above Maximum'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[228 len 128] = Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224, msg.sender, this.address, arg1, mem[228 len 28]
                mem[324] = mem[352 len 4]
                call sub_6f7815dcAddress.mem[228 len 4] with:
                     gas gas_remaining wei
                    args mem[232 len 124]
                if not ext_call.success:
                    revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                if arg1 != 0:
                    revert with 0, 'Unifi: Amount did not match'
                require ext_code.size(sub_4f2e10b3Address)
                call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
                   value sub_2a04e715 * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782 wei
                     gas gas_remaining wei
                    args this.address, sub_2a04e715 * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x910f0165: 0, sub_2a04e715 * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782, msg.sender, arg1, (0 / arg1 + ext_call.return_data[0]) - (sub_2a04e715 * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782)
                require ext_code.size(arg2)
                call arg2.0x5c6c8903 with:
                   value (0 / arg1 + ext_call.return_data[0]) - (sub_2a04e715 * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782) wei
                     gas gas_remaining wei
                    args msg.sender
        else:
            if arg1 * eth.balance(this.address) / eth.balance(this.address) != arg1:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            if arg1 + ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            require arg1 + ext_call.return_data[0]
            if not arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]:
                if sub_bbaf5782 <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require sub_bbaf5782
                if 0 / sub_bbaf5782 > arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                if sub_cb9385ce > 0:
                    if not 0 / sub_bbaf5782:
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if 0 / sub_bbaf5782 > 0:
                            require ext_code.size(stor5)
                            call stor5.0x5c6c8903 with:
                               value 0 / sub_bbaf5782 wei
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
                    else:
                        if sub_cb9385ce * 0 / sub_bbaf5782 / 0 / sub_bbaf5782 != sub_cb9385ce:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if sub_cb9385ce * 0 / sub_bbaf5782 / sub_bbaf5782 > 0:
                            require ext_code.size(stor5)
                            call stor5.0x5c6c8903 with:
                               value sub_cb9385ce * 0 / sub_bbaf5782 / sub_bbaf5782 wei
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
                if 0 / sub_bbaf5782 < arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]:
                    revert with 0, 'Sell Amount above Maximum'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[228 len 128] = Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224, msg.sender, this.address, arg1, mem[228 len 28]
                mem[324] = mem[352 len 4]
                call sub_6f7815dcAddress.mem[228 len 4] with:
                     gas gas_remaining wei
                    args mem[232 len 124]
                if not ext_call.success:
                    revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                if arg1 != 0:
                    revert with 0, 'Unifi: Amount did not match'
                require ext_code.size(sub_4f2e10b3Address)
                call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
                   value 0 / sub_bbaf5782 wei
                     gas gas_remaining wei
                    args this.address, 0 / sub_bbaf5782
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x910f0165: 0, 0 / sub_bbaf5782, msg.sender, arg1, (arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]) - (0 / sub_bbaf5782)
                require ext_code.size(arg2)
                call arg2.0x5c6c8903 with:
                   value (arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]) - (0 / sub_bbaf5782) wei
                     gas gas_remaining wei
                    args msg.sender
            else:
                if sub_2a04e715 * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] != sub_2a04e715:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if sub_bbaf5782 <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require sub_bbaf5782
                if sub_2a04e715 * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782 > arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                if sub_cb9385ce > 0:
                    if not sub_2a04e715 * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782:
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if 0 / sub_bbaf5782 > 0:
                            require ext_code.size(stor5)
                            call stor5.0x5c6c8903 with:
                               value 0 / sub_bbaf5782 wei
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
                    else:
                        if sub_cb9385ce * sub_2a04e715 * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782 / sub_2a04e715 * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782 != sub_cb9385ce:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if sub_cb9385ce * sub_2a04e715 * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782 / sub_bbaf5782 > 0:
                            require ext_code.size(stor5)
                            call stor5.0x5c6c8903 with:
                               value sub_cb9385ce * sub_2a04e715 * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782 / sub_bbaf5782 wei
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
                if 0 / sub_bbaf5782 < arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]:
                    revert with 0, 'Sell Amount above Maximum'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[228 len 128] = Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224, msg.sender, this.address, arg1, mem[228 len 28]
                mem[324] = mem[352 len 4]
                call sub_6f7815dcAddress.mem[228 len 4] with:
                     gas gas_remaining wei
                    args mem[232 len 124]
                if not ext_call.success:
                    revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                if arg1 != 0:
                    revert with 0, 'Unifi: Amount did not match'
                require ext_code.size(sub_4f2e10b3Address)
                call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
                   value sub_2a04e715 * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782 wei
                     gas gas_remaining wei
                    args this.address, sub_2a04e715 * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x910f0165: 0, sub_2a04e715 * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782, msg.sender, arg1, (arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]) - (sub_2a04e715 * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782)
                require ext_code.size(arg2)
                call arg2.0x5c6c8903 with:
                   value (arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]) - (sub_2a04e715 * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782) wei
                     gas gas_remaining wei
                    args msg.sender
    else:
        if sub_a7c0b250 * eth.balance(this.address) / eth.balance(this.address) != sub_a7c0b250:
            revert with 0, 'SafeMath#mul: OVERFLOW'
        if sub_bbaf5782 <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        require sub_bbaf5782
        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath#add: OVERFLOW'
        if not eth.balance(this.address):
            if arg1 + ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            require arg1 + ext_call.return_data[0]
            if not 0 / arg1 + ext_call.return_data[0]:
                if sub_bbaf5782 <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require sub_bbaf5782
                if 0 / sub_bbaf5782 > 0 / arg1 + ext_call.return_data[0]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                if sub_cb9385ce > 0:
                    if not 0 / sub_bbaf5782:
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if 0 / sub_bbaf5782 > 0:
                            require ext_code.size(stor5)
                            call stor5.0x5c6c8903 with:
                               value 0 / sub_bbaf5782 wei
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
                    else:
                        if sub_cb9385ce * 0 / sub_bbaf5782 / 0 / sub_bbaf5782 != sub_cb9385ce:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if sub_cb9385ce * 0 / sub_bbaf5782 / sub_bbaf5782 > 0:
                            require ext_code.size(stor5)
                            call stor5.0x5c6c8903 with:
                               value sub_cb9385ce * 0 / sub_bbaf5782 / sub_bbaf5782 wei
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
                if sub_a7c0b250 * eth.balance(this.address) / sub_bbaf5782 < 0 / arg1 + ext_call.return_data[0]:
                    revert with 0, 'Sell Amount above Maximum'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[228 len 128] = Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224, msg.sender, this.address, arg1, mem[228 len 28]
                mem[324] = mem[352 len 4]
                call sub_6f7815dcAddress.mem[228 len 4] with:
                     gas gas_remaining wei
                    args mem[232 len 124]
                if not ext_call.success:
                    revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                if arg1 != 0:
                    revert with 0, 'Unifi: Amount did not match'
                require ext_code.size(sub_4f2e10b3Address)
                call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
                   value 0 / sub_bbaf5782 wei
                     gas gas_remaining wei
                    args this.address, 0 / sub_bbaf5782
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x910f0165: 0, 0 / sub_bbaf5782, msg.sender, arg1, (0 / arg1 + ext_call.return_data[0]) - (0 / sub_bbaf5782)
                require ext_code.size(arg2)
                call arg2.0x5c6c8903 with:
                   value (0 / arg1 + ext_call.return_data[0]) - (0 / sub_bbaf5782) wei
                     gas gas_remaining wei
                    args msg.sender
            else:
                if sub_2a04e715 * 0 / arg1 + ext_call.return_data[0] / 0 / arg1 + ext_call.return_data[0] != sub_2a04e715:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if sub_bbaf5782 <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require sub_bbaf5782
                if sub_2a04e715 * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782 > 0 / arg1 + ext_call.return_data[0]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                if sub_cb9385ce > 0:
                    if not sub_2a04e715 * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782:
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if 0 / sub_bbaf5782 > 0:
                            require ext_code.size(stor5)
                            call stor5.0x5c6c8903 with:
                               value 0 / sub_bbaf5782 wei
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
                    else:
                        if sub_cb9385ce * sub_2a04e715 * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782 / sub_2a04e715 * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782 != sub_cb9385ce:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if sub_cb9385ce * sub_2a04e715 * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782 / sub_bbaf5782 > 0:
                            require ext_code.size(stor5)
                            call stor5.0x5c6c8903 with:
                               value sub_cb9385ce * sub_2a04e715 * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782 / sub_bbaf5782 wei
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
                if sub_a7c0b250 * eth.balance(this.address) / sub_bbaf5782 < 0 / arg1 + ext_call.return_data[0]:
                    revert with 0, 'Sell Amount above Maximum'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[228 len 128] = Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224, msg.sender, this.address, arg1, mem[228 len 28]
                mem[324] = mem[352 len 4]
                call sub_6f7815dcAddress.mem[228 len 4] with:
                     gas gas_remaining wei
                    args mem[232 len 124]
                if not ext_call.success:
                    revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                if arg1 != 0:
                    revert with 0, 'Unifi: Amount did not match'
                require ext_code.size(sub_4f2e10b3Address)
                call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
                   value sub_2a04e715 * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782 wei
                     gas gas_remaining wei
                    args this.address, sub_2a04e715 * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x910f0165: 0, sub_2a04e715 * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782, msg.sender, arg1, (0 / arg1 + ext_call.return_data[0]) - (sub_2a04e715 * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782)
                require ext_code.size(arg2)
                call arg2.0x5c6c8903 with:
                   value (0 / arg1 + ext_call.return_data[0]) - (sub_2a04e715 * 0 / arg1 + ext_call.return_data[0] / sub_bbaf5782) wei
                     gas gas_remaining wei
                    args msg.sender
        else:
            if arg1 * eth.balance(this.address) / eth.balance(this.address) != arg1:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            if arg1 + ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            require arg1 + ext_call.return_data[0]
            if not arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]:
                if sub_bbaf5782 <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require sub_bbaf5782
                if 0 / sub_bbaf5782 > arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                if sub_cb9385ce > 0:
                    if not 0 / sub_bbaf5782:
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if 0 / sub_bbaf5782 > 0:
                            require ext_code.size(stor5)
                            call stor5.0x5c6c8903 with:
                               value 0 / sub_bbaf5782 wei
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
                    else:
                        if sub_cb9385ce * 0 / sub_bbaf5782 / 0 / sub_bbaf5782 != sub_cb9385ce:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if sub_cb9385ce * 0 / sub_bbaf5782 / sub_bbaf5782 > 0:
                            require ext_code.size(stor5)
                            call stor5.0x5c6c8903 with:
                               value sub_cb9385ce * 0 / sub_bbaf5782 / sub_bbaf5782 wei
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
                if sub_a7c0b250 * eth.balance(this.address) / sub_bbaf5782 < arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]:
                    revert with 0, 'Sell Amount above Maximum'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[228 len 128] = Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224, msg.sender, this.address, arg1, mem[228 len 28]
                mem[324] = mem[352 len 4]
                call sub_6f7815dcAddress.mem[228 len 4] with:
                     gas gas_remaining wei
                    args mem[232 len 124]
                if not ext_call.success:
                    revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                if arg1 != 0:
                    revert with 0, 'Unifi: Amount did not match'
                require ext_code.size(sub_4f2e10b3Address)
                call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
                   value 0 / sub_bbaf5782 wei
                     gas gas_remaining wei
                    args this.address, 0 / sub_bbaf5782
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x910f0165: 0, 0 / sub_bbaf5782, msg.sender, arg1, (arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]) - (0 / sub_bbaf5782)
                require ext_code.size(arg2)
                call arg2.0x5c6c8903 with:
                   value (arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]) - (0 / sub_bbaf5782) wei
                     gas gas_remaining wei
                    args msg.sender
            else:
                if sub_2a04e715 * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] != sub_2a04e715:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if sub_bbaf5782 <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require sub_bbaf5782
                if sub_2a04e715 * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782 > arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                if sub_cb9385ce > 0:
                    if not sub_2a04e715 * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782:
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if 0 / sub_bbaf5782 > 0:
                            require ext_code.size(stor5)
                            call stor5.0x5c6c8903 with:
                               value 0 / sub_bbaf5782 wei
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
                    else:
                        if sub_cb9385ce * sub_2a04e715 * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782 / sub_2a04e715 * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782 != sub_cb9385ce:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if sub_cb9385ce * sub_2a04e715 * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782 / sub_bbaf5782 > 0:
                            require ext_code.size(stor5)
                            call stor5.0x5c6c8903 with:
                               value sub_cb9385ce * sub_2a04e715 * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782 / sub_bbaf5782 wei
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Sell: BUY SEED failed'
                if sub_a7c0b250 * eth.balance(this.address) / sub_bbaf5782 < arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]:
                    revert with 0, 'Sell Amount above Maximum'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[228 len 128] = Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224, msg.sender, this.address, arg1, mem[228 len 28]
                mem[324] = mem[352 len 4]
                call sub_6f7815dcAddress.mem[228 len 4] with:
                     gas gas_remaining wei
                    args mem[232 len 124]
                if not ext_call.success:
                    revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                if arg1 != 0:
                    revert with 0, 'Unifi: Amount did not match'
                require ext_code.size(sub_4f2e10b3Address)
                call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
                   value sub_2a04e715 * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782 wei
                     gas gas_remaining wei
                    args this.address, sub_2a04e715 * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x910f0165: 0, sub_2a04e715 * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782, msg.sender, arg1, (arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]) - (sub_2a04e715 * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782)
                require ext_code.size(arg2)
                call arg2.0x5c6c8903 with:
                   value (arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0]) - (sub_2a04e715 * arg1 * eth.balance(this.address) / arg1 + ext_call.return_data[0] / sub_bbaf5782) wei
                     gas gas_remaining wei
                    args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'UnifiExchange#SellAndBuy: Sell and buy failed failed'
    stor22 = 1
    return ext_call.return_data[0]
}

function Buy(address arg1) payable {
    if stor22 != 1:
        revert with 0, 'Unifi: LOCKED'
    stor22 = 0
    if msg.value <= sub_e6892bd6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Buy: INVALID_AMOUNT'
    if not STATE:
        revert with 0, 'UnifiExchange#Buy: Pair Closed'
    if msg.value > eth.balance(this.address):
        revert with 0, 'SafeMath#sub: UNDERFLOW'
    require ext_code.size(sub_6f7815dcAddress)
    call sub_6f7815dcAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not msg.value:
        if sub_bbaf5782 <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        require sub_bbaf5782
        if 0 / sub_bbaf5782 > msg.value:
            revert with 0, 'SafeMath#sub: UNDERFLOW'
        if -0 / sub_bbaf5782 < -msg.value:
            revert with 0, 'SafeMath#add: OVERFLOW'
        if not msg.value - (0 / sub_bbaf5782):
            if -(0 / sub_bbaf5782) + eth.balance(this.address) <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            require -(0 / sub_bbaf5782) + eth.balance(this.address)
            if sub_cb9385ce <= 0:
                if not eth.balance(this.address):
                    if sub_bbaf5782 <= 0:
                        revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                    require sub_bbaf5782
                    if 0 / sub_bbaf5782 < msg.value:
                        revert with 0, 'Buy Amount above Maximum'
                else:
                    if sub_a7c0b250 * eth.balance(this.address) / eth.balance(this.address) != sub_a7c0b250:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if sub_bbaf5782 <= 0:
                        revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                    require sub_bbaf5782
                    if sub_a7c0b250 * eth.balance(this.address) / sub_bbaf5782 < msg.value:
                        revert with 0, 'Buy Amount above Maximum'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[196 len 96] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, address(arg1) << 64, 0, 0 / -(0 / sub_bbaf5782) + eth.balance(this.address), mem[196 len 28]
                mem[260] = mem[288 len 4]
                call sub_6f7815dcAddress.mem[196 len 4] with:
                     gas gas_remaining wei
                    args mem[200 len 92]
                if not ext_call.success:
                    revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                if 0 / -(0 / sub_bbaf5782) + eth.balance(this.address) != 0:
                    revert with 0, 'Unifi: Amount did not match'
                require ext_code.size(sub_4f2e10b3Address)
                call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
                   value 0 / sub_bbaf5782 wei
                     gas gas_remaining wei
                    args this.address, 0 / sub_bbaf5782
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(0, 0 / sub_bbaf5782, arg1, 0 / -(0 / sub_bbaf5782) + eth.balance(this.address), msg.value);
            else:
                if not 0 / sub_bbaf5782:
                    if sub_bbaf5782 <= 0:
                        revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                    require sub_bbaf5782
                    if 0 / sub_bbaf5782 <= 0:
                        if not eth.balance(this.address):
                            if sub_bbaf5782 <= 0:
                                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                            require sub_bbaf5782
                            if 0 / sub_bbaf5782 < msg.value:
                                revert with 0, 'Buy Amount above Maximum'
                        else:
                            if sub_a7c0b250 * eth.balance(this.address) / eth.balance(this.address) != sub_a7c0b250:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if sub_bbaf5782 <= 0:
                                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                            require sub_bbaf5782
                            if sub_a7c0b250 * eth.balance(this.address) / sub_bbaf5782 < msg.value:
                                revert with 0, 'Buy Amount above Maximum'
                        require ext_code.size(sub_6f7815dcAddress)
                        call sub_6f7815dcAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[196 len 96] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, address(arg1) << 64, 0, 0 / -(0 / sub_bbaf5782) + eth.balance(this.address), mem[196 len 28]
                        mem[260] = mem[288 len 4]
                        call sub_6f7815dcAddress.mem[196 len 4] with:
                             gas gas_remaining wei
                            args mem[200 len 92]
                        if not ext_call.success:
                            revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                        require ext_code.size(sub_6f7815dcAddress)
                        call sub_6f7815dcAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        if 0 / -(0 / sub_bbaf5782) + eth.balance(this.address) != 0:
                            revert with 0, 'Unifi: Amount did not match'
                        require ext_code.size(sub_4f2e10b3Address)
                        call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
                           value 0 / sub_bbaf5782 wei
                             gas gas_remaining wei
                            args this.address, 0 / sub_bbaf5782
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPurchase(0, 0 / sub_bbaf5782, arg1, 0 / -(0 / sub_bbaf5782) + eth.balance(this.address), msg.value);
                    else:
                        if 0 / sub_bbaf5782 > 0 / sub_bbaf5782:
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        require ext_code.size(stor5)
                        call stor5.0x5c6c8903 with:
                           value 0 / sub_bbaf5782 wei
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Buy: BUY SEED failed'
                        if not eth.balance(this.address):
                            if sub_bbaf5782 <= 0:
                                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                            require sub_bbaf5782
                            if 0 / sub_bbaf5782 < msg.value:
                                revert with 0, 'Buy Amount above Maximum'
                        else:
                            if sub_a7c0b250 * eth.balance(this.address) / eth.balance(this.address) != sub_a7c0b250:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if sub_bbaf5782 <= 0:
                                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                            require sub_bbaf5782
                            if sub_a7c0b250 * eth.balance(this.address) / sub_bbaf5782 < msg.value:
                                revert with 0, 'Buy Amount above Maximum'
                        require ext_code.size(sub_6f7815dcAddress)
                        call sub_6f7815dcAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[196 len 96] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, address(arg1) << 64, 0, 0 / -(0 / sub_bbaf5782) + eth.balance(this.address), mem[196 len 28]
                        mem[260] = mem[288 len 4]
                        call sub_6f7815dcAddress.mem[196 len 4] with:
                             gas gas_remaining wei
                            args mem[200 len 92]
                        if not ext_call.success:
                            revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                        require ext_code.size(sub_6f7815dcAddress)
                        call sub_6f7815dcAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        if 0 / -(0 / sub_bbaf5782) + eth.balance(this.address) != 0:
                            revert with 0, 'Unifi: Amount did not match'
                        require ext_code.size(sub_4f2e10b3Address)
                        call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args this.address, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPurchase(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5):
                                           0,
                                           arg1,
                                           0 / -(0 / sub_bbaf5782) + eth.balance(this.address),
                                           msg.value,
                else:
                    if sub_cb9385ce * 0 / sub_bbaf5782 / 0 / sub_bbaf5782 != sub_cb9385ce:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if sub_bbaf5782 <= 0:
                        revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                    require sub_bbaf5782
                    if sub_cb9385ce * 0 / sub_bbaf5782 / sub_bbaf5782 <= 0:
                        if not eth.balance(this.address):
                            if sub_bbaf5782 <= 0:
                                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                            require sub_bbaf5782
                            if 0 / sub_bbaf5782 < msg.value:
                                revert with 0, 'Buy Amount above Maximum'
                        else:
                            if sub_a7c0b250 * eth.balance(this.address) / eth.balance(this.address) != sub_a7c0b250:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if sub_bbaf5782 <= 0:
                                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                            require sub_bbaf5782
                            if sub_a7c0b250 * eth.balance(this.address) / sub_bbaf5782 < msg.value:
                                revert with 0, 'Buy Amount above Maximum'
                        require ext_code.size(sub_6f7815dcAddress)
                        call sub_6f7815dcAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[196 len 96] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, address(arg1) << 64, 0, 0 / -(0 / sub_bbaf5782) + eth.balance(this.address), mem[196 len 28]
                        mem[260] = mem[288 len 4]
                        call sub_6f7815dcAddress.mem[196 len 4] with:
                             gas gas_remaining wei
                            args mem[200 len 92]
                        if not ext_call.success:
                            revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                        require ext_code.size(sub_6f7815dcAddress)
                        call sub_6f7815dcAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        if 0 / -(0 / sub_bbaf5782) + eth.balance(this.address) != 0:
                            revert with 0, 'Unifi: Amount did not match'
                        require ext_code.size(sub_4f2e10b3Address)
                        call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
                           value 0 / sub_bbaf5782 wei
                             gas gas_remaining wei
                            args this.address, 0 / sub_bbaf5782
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPurchase(0, 0 / sub_bbaf5782, arg1, 0 / -(0 / sub_bbaf5782) + eth.balance(this.address), msg.value);
                    else:
                        if sub_cb9385ce * 0 / sub_bbaf5782 / sub_bbaf5782 > 0 / sub_bbaf5782:
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        require ext_code.size(stor5)
                        call stor5.0x5c6c8903 with:
                           value sub_cb9385ce * 0 / sub_bbaf5782 / sub_bbaf5782 wei
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Buy: BUY SEED failed'
                        if not eth.balance(this.address):
                            if sub_bbaf5782 <= 0:
                                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                            require sub_bbaf5782
                            if 0 / sub_bbaf5782 < msg.value:
                                revert with 0, 'Buy Amount above Maximum'
                        else:
                            if sub_a7c0b250 * eth.balance(this.address) / eth.balance(this.address) != sub_a7c0b250:
                                revert with 0, 'SafeMath#mul: OVERFLOW'
                            if sub_bbaf5782 <= 0:
                                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                            require sub_bbaf5782
                            if sub_a7c0b250 * eth.balance(this.address) / sub_bbaf5782 < msg.value:
                                revert with 0, 'Buy Amount above Maximum'
                        require ext_code.size(sub_6f7815dcAddress)
                        call sub_6f7815dcAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[196 len 96] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, address(arg1) << 64, 0, 0 / -(0 / sub_bbaf5782) + eth.balance(this.address), mem[196 len 28]
                        mem[260] = mem[288 len 4]
                        call sub_6f7815dcAddress.mem[196 len 4] with:
                             gas gas_remaining wei
                            args mem[200 len 92]
                        if not ext_call.success:
                            revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                        require ext_code.size(sub_6f7815dcAddress)
                        call sub_6f7815dcAddress.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath#sub: UNDERFLOW'
                        if 0 / -(0 / sub_bbaf5782) + eth.balance(this.address) != 0:
                            revert with 0, 'Unifi: Amount did not match'
                        require ext_code.size(sub_4f2e10b3Address)
                        call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
                           value (0 / sub_bbaf5782) - (sub_cb9385ce * 0 / sub_bbaf5782 / sub_bbaf5782) wei
                             gas gas_remaining wei
                            args this.address, (0 / sub_bbaf5782) - (sub_cb9385ce * 0 / sub_bbaf5782 / sub_bbaf5782)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPurchase(0, (0 / sub_bbaf5782) - (sub_cb9385ce * 0 / sub_bbaf5782 / sub_bbaf5782), arg1, 0 / -(0 / sub_bbaf5782) + eth.balance(this.address), msg.value);
            stor22 = 1
            return (0 / -(0 / sub_bbaf5782) + eth.balance(this.address))
        if (msg.value * ext_call.return_data[0]) - (0 / sub_bbaf5782 * ext_call.return_data[0]) / msg.value - (0 / sub_bbaf5782) != ext_call.return_data[0]:
            revert with 0, 'SafeMath#mul: OVERFLOW'
        if -(0 / sub_bbaf5782) + eth.balance(this.address) <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        require -(0 / sub_bbaf5782) + eth.balance(this.address)
        if sub_cb9385ce <= 0:
            if not eth.balance(this.address):
                if sub_bbaf5782 <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require sub_bbaf5782
                if 0 / sub_bbaf5782 < msg.value:
                    revert with 0, 'Buy Amount above Maximum'
            else:
                if sub_a7c0b250 * eth.balance(this.address) / eth.balance(this.address) != sub_a7c0b250:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if sub_bbaf5782 <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require sub_bbaf5782
                if sub_a7c0b250 * eth.balance(this.address) / sub_bbaf5782 < msg.value:
                    revert with 0, 'Buy Amount above Maximum'
            require ext_code.size(sub_6f7815dcAddress)
            call sub_6f7815dcAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[196 len 96] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, address(arg1) << 64, 0, (msg.value * ext_call.return_data[0]) - (0 / sub_bbaf5782 * ext_call.return_data[0]) / -(0 / sub_bbaf5782) + eth.balance(this.address), mem[196 len 28]
            mem[260] = mem[288 len 4]
            call sub_6f7815dcAddress.mem[196 len 4] with:
                 gas gas_remaining wei
                args mem[200 len 92]
            if not ext_call.success:
                revert with 0, 'Unifi: TRANSFERFROM_FAILED'
            require ext_code.size(sub_6f7815dcAddress)
            call sub_6f7815dcAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            if (msg.value * ext_call.return_data[0]) - (0 / sub_bbaf5782 * ext_call.return_data[0]) / -(0 / sub_bbaf5782) + eth.balance(this.address) != 0:
                revert with 0, 'Unifi: Amount did not match'
            require ext_code.size(sub_4f2e10b3Address)
            call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
               value 0 / sub_bbaf5782 wei
                 gas gas_remaining wei
                args this.address, 0 / sub_bbaf5782
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit TokenPurchase(0, 0 / sub_bbaf5782, arg1, (msg.value * ext_call.return_data[0]) - (0 / sub_bbaf5782 * ext_call.return_data[0]) / -(0 / sub_bbaf5782) + eth.balance(this.address), msg.value);
        else:
            if not 0 / sub_bbaf5782:
                if sub_bbaf5782 <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require sub_bbaf5782
                if 0 / sub_bbaf5782 <= 0:
                    if not eth.balance(this.address):
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if 0 / sub_bbaf5782 < msg.value:
                            revert with 0, 'Buy Amount above Maximum'
                    else:
                        if sub_a7c0b250 * eth.balance(this.address) / eth.balance(this.address) != sub_a7c0b250:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if sub_a7c0b250 * eth.balance(this.address) / sub_bbaf5782 < msg.value:
                            revert with 0, 'Buy Amount above Maximum'
                    require ext_code.size(sub_6f7815dcAddress)
                    call sub_6f7815dcAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[196 len 96] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, address(arg1) << 64, 0, (msg.value * ext_call.return_data[0]) - (0 / sub_bbaf5782 * ext_call.return_data[0]) / -(0 / sub_bbaf5782) + eth.balance(this.address), mem[196 len 28]
                    mem[260] = mem[288 len 4]
                    call sub_6f7815dcAddress.mem[196 len 4] with:
                         gas gas_remaining wei
                        args mem[200 len 92]
                    if not ext_call.success:
                        revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                    require ext_code.size(sub_6f7815dcAddress)
                    call sub_6f7815dcAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    if (msg.value * ext_call.return_data[0]) - (0 / sub_bbaf5782 * ext_call.return_data[0]) / -(0 / sub_bbaf5782) + eth.balance(this.address) != 0:
                        revert with 0, 'Unifi: Amount did not match'
                    require ext_code.size(sub_4f2e10b3Address)
                    call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
                       value 0 / sub_bbaf5782 wei
                         gas gas_remaining wei
                        args this.address, 0 / sub_bbaf5782
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(0, 0 / sub_bbaf5782, arg1, (msg.value * ext_call.return_data[0]) - (0 / sub_bbaf5782 * ext_call.return_data[0]) / -(0 / sub_bbaf5782) + eth.balance(this.address), msg.value);
                else:
                    if 0 / sub_bbaf5782 > 0 / sub_bbaf5782:
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    require ext_code.size(stor5)
                    call stor5.0x5c6c8903 with:
                       value 0 / sub_bbaf5782 wei
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Buy: BUY SEED failed'
                    if not eth.balance(this.address):
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if 0 / sub_bbaf5782 < msg.value:
                            revert with 0, 'Buy Amount above Maximum'
                    else:
                        if sub_a7c0b250 * eth.balance(this.address) / eth.balance(this.address) != sub_a7c0b250:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if sub_a7c0b250 * eth.balance(this.address) / sub_bbaf5782 < msg.value:
                            revert with 0, 'Buy Amount above Maximum'
                    require ext_code.size(sub_6f7815dcAddress)
                    call sub_6f7815dcAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[196 len 96] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, address(arg1) << 64, 0, (msg.value * ext_call.return_data[0]) - (0 / sub_bbaf5782 * ext_call.return_data[0]) / -(0 / sub_bbaf5782) + eth.balance(this.address), mem[196 len 28]
                    mem[260] = mem[288 len 4]
                    call sub_6f7815dcAddress.mem[196 len 4] with:
                         gas gas_remaining wei
                        args mem[200 len 92]
                    if not ext_call.success:
                        revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                    require ext_code.size(sub_6f7815dcAddress)
                    call sub_6f7815dcAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    if (msg.value * ext_call.return_data[0]) - (0 / sub_bbaf5782 * ext_call.return_data[0]) / -(0 / sub_bbaf5782) + eth.balance(this.address) != 0:
                        revert with 0, 'Unifi: Amount did not match'
                    require ext_code.size(sub_4f2e10b3Address)
                    call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args this.address, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5):
                                       0,
                                       arg1,
                                       (msg.value * ext_call.return_data[0]) - (0 / sub_bbaf5782 * ext_call.return_data[0]) / -(0 / sub_bbaf5782) + eth.balance(this.address),
                                       msg.value,
            else:
                if sub_cb9385ce * 0 / sub_bbaf5782 / 0 / sub_bbaf5782 != sub_cb9385ce:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if sub_bbaf5782 <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require sub_bbaf5782
                if sub_cb9385ce * 0 / sub_bbaf5782 / sub_bbaf5782 <= 0:
                    if not eth.balance(this.address):
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if 0 / sub_bbaf5782 < msg.value:
                            revert with 0, 'Buy Amount above Maximum'
                    else:
                        if sub_a7c0b250 * eth.balance(this.address) / eth.balance(this.address) != sub_a7c0b250:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if sub_a7c0b250 * eth.balance(this.address) / sub_bbaf5782 < msg.value:
                            revert with 0, 'Buy Amount above Maximum'
                    require ext_code.size(sub_6f7815dcAddress)
                    call sub_6f7815dcAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[196 len 96] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, address(arg1) << 64, 0, (msg.value * ext_call.return_data[0]) - (0 / sub_bbaf5782 * ext_call.return_data[0]) / -(0 / sub_bbaf5782) + eth.balance(this.address), mem[196 len 28]
                    mem[260] = mem[288 len 4]
                    call sub_6f7815dcAddress.mem[196 len 4] with:
                         gas gas_remaining wei
                        args mem[200 len 92]
                    if not ext_call.success:
                        revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                    require ext_code.size(sub_6f7815dcAddress)
                    call sub_6f7815dcAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    if (msg.value * ext_call.return_data[0]) - (0 / sub_bbaf5782 * ext_call.return_data[0]) / -(0 / sub_bbaf5782) + eth.balance(this.address) != 0:
                        revert with 0, 'Unifi: Amount did not match'
                    require ext_code.size(sub_4f2e10b3Address)
                    call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
                       value 0 / sub_bbaf5782 wei
                         gas gas_remaining wei
                        args this.address, 0 / sub_bbaf5782
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(0, 0 / sub_bbaf5782, arg1, (msg.value * ext_call.return_data[0]) - (0 / sub_bbaf5782 * ext_call.return_data[0]) / -(0 / sub_bbaf5782) + eth.balance(this.address), msg.value);
                else:
                    if sub_cb9385ce * 0 / sub_bbaf5782 / sub_bbaf5782 > 0 / sub_bbaf5782:
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    require ext_code.size(stor5)
                    call stor5.0x5c6c8903 with:
                       value sub_cb9385ce * 0 / sub_bbaf5782 / sub_bbaf5782 wei
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Buy: BUY SEED failed'
                    if not eth.balance(this.address):
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if 0 / sub_bbaf5782 < msg.value:
                            revert with 0, 'Buy Amount above Maximum'
                    else:
                        if sub_a7c0b250 * eth.balance(this.address) / eth.balance(this.address) != sub_a7c0b250:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if sub_a7c0b250 * eth.balance(this.address) / sub_bbaf5782 < msg.value:
                            revert with 0, 'Buy Amount above Maximum'
                    require ext_code.size(sub_6f7815dcAddress)
                    call sub_6f7815dcAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[196 len 96] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, address(arg1) << 64, 0, (msg.value * ext_call.return_data[0]) - (0 / sub_bbaf5782 * ext_call.return_data[0]) / -(0 / sub_bbaf5782) + eth.balance(this.address), mem[196 len 28]
                    mem[260] = mem[288 len 4]
                    call sub_6f7815dcAddress.mem[196 len 4] with:
                         gas gas_remaining wei
                        args mem[200 len 92]
                    if not ext_call.success:
                        revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                    require ext_code.size(sub_6f7815dcAddress)
                    call sub_6f7815dcAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    if (msg.value * ext_call.return_data[0]) - (0 / sub_bbaf5782 * ext_call.return_data[0]) / -(0 / sub_bbaf5782) + eth.balance(this.address) != 0:
                        revert with 0, 'Unifi: Amount did not match'
                    require ext_code.size(sub_4f2e10b3Address)
                    call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
                       value (0 / sub_bbaf5782) - (sub_cb9385ce * 0 / sub_bbaf5782 / sub_bbaf5782) wei
                         gas gas_remaining wei
                        args this.address, (0 / sub_bbaf5782) - (sub_cb9385ce * 0 / sub_bbaf5782 / sub_bbaf5782)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(0, (0 / sub_bbaf5782) - (sub_cb9385ce * 0 / sub_bbaf5782 / sub_bbaf5782), arg1, (msg.value * ext_call.return_data[0]) - (0 / sub_bbaf5782 * ext_call.return_data[0]) / -(0 / sub_bbaf5782) + eth.balance(this.address), msg.value);
        stor22 = 1
        return ((msg.value * ext_call.return_data[0]) - (0 / sub_bbaf5782 * ext_call.return_data[0]) / -(0 / sub_bbaf5782) + eth.balance(this.address))
    if sub_eb260eab * msg.value / msg.value != sub_eb260eab:
        revert with 0, 'SafeMath#mul: OVERFLOW'
    if sub_bbaf5782 <= 0:
        revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
    require sub_bbaf5782
    if sub_eb260eab * msg.value / sub_bbaf5782 > msg.value:
        revert with 0, 'SafeMath#sub: UNDERFLOW'
    if -sub_eb260eab * msg.value / sub_bbaf5782 < -msg.value:
        revert with 0, 'SafeMath#add: OVERFLOW'
    if not msg.value - (sub_eb260eab * msg.value / sub_bbaf5782):
        if -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address) <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        require -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address)
        if sub_cb9385ce <= 0:
            if not eth.balance(this.address):
                if sub_bbaf5782 <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require sub_bbaf5782
                if 0 / sub_bbaf5782 < msg.value:
                    revert with 0, 'Buy Amount above Maximum'
            else:
                if sub_a7c0b250 * eth.balance(this.address) / eth.balance(this.address) != sub_a7c0b250:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if sub_bbaf5782 <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require sub_bbaf5782
                if sub_a7c0b250 * eth.balance(this.address) / sub_bbaf5782 < msg.value:
                    revert with 0, 'Buy Amount above Maximum'
            require ext_code.size(sub_6f7815dcAddress)
            call sub_6f7815dcAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[196 len 96] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, address(arg1) << 64, 0, 0 / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address), mem[196 len 28]
            mem[260] = mem[288 len 4]
            call sub_6f7815dcAddress.mem[196 len 4] with:
                 gas gas_remaining wei
                args mem[200 len 92]
            if not ext_call.success:
                revert with 0, 'Unifi: TRANSFERFROM_FAILED'
            require ext_code.size(sub_6f7815dcAddress)
            call sub_6f7815dcAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath#sub: UNDERFLOW'
            if 0 / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address) != 0:
                revert with 0, 'Unifi: Amount did not match'
            require ext_code.size(sub_4f2e10b3Address)
            call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
               value sub_eb260eab * msg.value / sub_bbaf5782 wei
                 gas gas_remaining wei
                args this.address, sub_eb260eab * msg.value / sub_bbaf5782
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit TokenPurchase(0, sub_eb260eab * msg.value / sub_bbaf5782, arg1, 0 / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address), msg.value);
        else:
            if not sub_eb260eab * msg.value / sub_bbaf5782:
                if sub_bbaf5782 <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require sub_bbaf5782
                if 0 / sub_bbaf5782 <= 0:
                    if not eth.balance(this.address):
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if 0 / sub_bbaf5782 < msg.value:
                            revert with 0, 'Buy Amount above Maximum'
                    else:
                        if sub_a7c0b250 * eth.balance(this.address) / eth.balance(this.address) != sub_a7c0b250:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if sub_a7c0b250 * eth.balance(this.address) / sub_bbaf5782 < msg.value:
                            revert with 0, 'Buy Amount above Maximum'
                    require ext_code.size(sub_6f7815dcAddress)
                    call sub_6f7815dcAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[196 len 96] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, address(arg1) << 64, 0, 0 / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address), mem[196 len 28]
                    mem[260] = mem[288 len 4]
                    call sub_6f7815dcAddress.mem[196 len 4] with:
                         gas gas_remaining wei
                        args mem[200 len 92]
                    if not ext_call.success:
                        revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                    require ext_code.size(sub_6f7815dcAddress)
                    call sub_6f7815dcAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    if 0 / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address) != 0:
                        revert with 0, 'Unifi: Amount did not match'
                    require ext_code.size(sub_4f2e10b3Address)
                    call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
                       value sub_eb260eab * msg.value / sub_bbaf5782 wei
                         gas gas_remaining wei
                        args this.address, sub_eb260eab * msg.value / sub_bbaf5782
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(0, sub_eb260eab * msg.value / sub_bbaf5782, arg1, 0 / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address), msg.value);
                else:
                    if 0 / sub_bbaf5782 > sub_eb260eab * msg.value / sub_bbaf5782:
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    require ext_code.size(stor5)
                    call stor5.0x5c6c8903 with:
                       value 0 / sub_bbaf5782 wei
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Buy: BUY SEED failed'
                    if not eth.balance(this.address):
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if 0 / sub_bbaf5782 < msg.value:
                            revert with 0, 'Buy Amount above Maximum'
                    else:
                        if sub_a7c0b250 * eth.balance(this.address) / eth.balance(this.address) != sub_a7c0b250:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if sub_a7c0b250 * eth.balance(this.address) / sub_bbaf5782 < msg.value:
                            revert with 0, 'Buy Amount above Maximum'
                    require ext_code.size(sub_6f7815dcAddress)
                    call sub_6f7815dcAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[196 len 96] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, address(arg1) << 64, 0, 0 / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address), mem[196 len 28]
                    mem[260] = mem[288 len 4]
                    call sub_6f7815dcAddress.mem[196 len 4] with:
                         gas gas_remaining wei
                        args mem[200 len 92]
                    if not ext_call.success:
                        revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                    require ext_code.size(sub_6f7815dcAddress)
                    call sub_6f7815dcAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    if 0 / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address) != 0:
                        revert with 0, 'Unifi: Amount did not match'
                    require ext_code.size(sub_4f2e10b3Address)
                    call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
                       value (sub_eb260eab * msg.value / sub_bbaf5782) - (0 / sub_bbaf5782) wei
                         gas gas_remaining wei
                        args this.address, (sub_eb260eab * msg.value / sub_bbaf5782) - (0 / sub_bbaf5782)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(0, (sub_eb260eab * msg.value / sub_bbaf5782) - (0 / sub_bbaf5782), arg1, 0 / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address), msg.value);
            else:
                if sub_cb9385ce * sub_eb260eab * msg.value / sub_bbaf5782 / sub_eb260eab * msg.value / sub_bbaf5782 != sub_cb9385ce:
                    revert with 0, 'SafeMath#mul: OVERFLOW'
                if sub_bbaf5782 <= 0:
                    revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                require sub_bbaf5782
                if sub_cb9385ce * sub_eb260eab * msg.value / sub_bbaf5782 / sub_bbaf5782 <= 0:
                    if not eth.balance(this.address):
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if 0 / sub_bbaf5782 < msg.value:
                            revert with 0, 'Buy Amount above Maximum'
                    else:
                        if sub_a7c0b250 * eth.balance(this.address) / eth.balance(this.address) != sub_a7c0b250:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if sub_a7c0b250 * eth.balance(this.address) / sub_bbaf5782 < msg.value:
                            revert with 0, 'Buy Amount above Maximum'
                    require ext_code.size(sub_6f7815dcAddress)
                    call sub_6f7815dcAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[196 len 96] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, address(arg1) << 64, 0, 0 / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address), mem[196 len 28]
                    mem[260] = mem[288 len 4]
                    call sub_6f7815dcAddress.mem[196 len 4] with:
                         gas gas_remaining wei
                        args mem[200 len 92]
                    if not ext_call.success:
                        revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                    require ext_code.size(sub_6f7815dcAddress)
                    call sub_6f7815dcAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    if 0 / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address) != 0:
                        revert with 0, 'Unifi: Amount did not match'
                    require ext_code.size(sub_4f2e10b3Address)
                    call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
                       value sub_eb260eab * msg.value / sub_bbaf5782 wei
                         gas gas_remaining wei
                        args this.address, sub_eb260eab * msg.value / sub_bbaf5782
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(0, sub_eb260eab * msg.value / sub_bbaf5782, arg1, 0 / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address), msg.value);
                else:
                    if sub_cb9385ce * sub_eb260eab * msg.value / sub_bbaf5782 / sub_bbaf5782 > sub_eb260eab * msg.value / sub_bbaf5782:
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    require ext_code.size(stor5)
                    call stor5.0x5c6c8903 with:
                       value sub_cb9385ce * sub_eb260eab * msg.value / sub_bbaf5782 / sub_bbaf5782 wei
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Buy: BUY SEED failed'
                    if not eth.balance(this.address):
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if 0 / sub_bbaf5782 < msg.value:
                            revert with 0, 'Buy Amount above Maximum'
                    else:
                        if sub_a7c0b250 * eth.balance(this.address) / eth.balance(this.address) != sub_a7c0b250:
                            revert with 0, 'SafeMath#mul: OVERFLOW'
                        if sub_bbaf5782 <= 0:
                            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                        require sub_bbaf5782
                        if sub_a7c0b250 * eth.balance(this.address) / sub_bbaf5782 < msg.value:
                            revert with 0, 'Buy Amount above Maximum'
                    require ext_code.size(sub_6f7815dcAddress)
                    call sub_6f7815dcAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[196 len 96] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, address(arg1) << 64, 0, 0 / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address), mem[196 len 28]
                    mem[260] = mem[288 len 4]
                    call sub_6f7815dcAddress.mem[196 len 4] with:
                         gas gas_remaining wei
                        args mem[200 len 92]
                    if not ext_call.success:
                        revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                    require ext_code.size(sub_6f7815dcAddress)
                    call sub_6f7815dcAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath#sub: UNDERFLOW'
                    if 0 / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address) != 0:
                        revert with 0, 'Unifi: Amount did not match'
                    require ext_code.size(sub_4f2e10b3Address)
                    call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
                       value (sub_eb260eab * msg.value / sub_bbaf5782) - (sub_cb9385ce * sub_eb260eab * msg.value / sub_bbaf5782 / sub_bbaf5782) wei
                         gas gas_remaining wei
                        args this.address, (sub_eb260eab * msg.value / sub_bbaf5782) - (sub_cb9385ce * sub_eb260eab * msg.value / sub_bbaf5782 / sub_bbaf5782)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(0, (sub_eb260eab * msg.value / sub_bbaf5782) - (sub_cb9385ce * sub_eb260eab * msg.value / sub_bbaf5782 / sub_bbaf5782), arg1, 0 / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address), msg.value);
        stor22 = 1
        return (0 / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address))
    if (msg.value * ext_call.return_data[0]) - (sub_eb260eab * msg.value / sub_bbaf5782 * ext_call.return_data[0]) / msg.value - (sub_eb260eab * msg.value / sub_bbaf5782) != ext_call.return_data[0]:
        revert with 0, 'SafeMath#mul: OVERFLOW'
    if -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address) <= 0:
        revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
    require -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address)
    if sub_cb9385ce <= 0:
        if not eth.balance(this.address):
            if sub_bbaf5782 <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            require sub_bbaf5782
            if 0 / sub_bbaf5782 < msg.value:
                revert with 0, 'Buy Amount above Maximum'
        else:
            if sub_a7c0b250 * eth.balance(this.address) / eth.balance(this.address) != sub_a7c0b250:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            if sub_bbaf5782 <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            require sub_bbaf5782
            if sub_a7c0b250 * eth.balance(this.address) / sub_bbaf5782 < msg.value:
                revert with 0, 'Buy Amount above Maximum'
        require ext_code.size(sub_6f7815dcAddress)
        call sub_6f7815dcAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[196 len 96] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, address(arg1) << 64, 0, (msg.value * ext_call.return_data[0]) - (sub_eb260eab * msg.value / sub_bbaf5782 * ext_call.return_data[0]) / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address), mem[196 len 28]
        mem[260] = mem[288 len 4]
        call sub_6f7815dcAddress.mem[196 len 4] with:
             gas gas_remaining wei
            args mem[200 len 92]
        if not ext_call.success:
            revert with 0, 'Unifi: TRANSFERFROM_FAILED'
        require ext_code.size(sub_6f7815dcAddress)
        call sub_6f7815dcAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath#sub: UNDERFLOW'
        if (msg.value * ext_call.return_data[0]) - (sub_eb260eab * msg.value / sub_bbaf5782 * ext_call.return_data[0]) / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address) != 0:
            revert with 0, 'Unifi: Amount did not match'
        require ext_code.size(sub_4f2e10b3Address)
        call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
           value sub_eb260eab * msg.value / sub_bbaf5782 wei
             gas gas_remaining wei
            args this.address, sub_eb260eab * msg.value / sub_bbaf5782
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenPurchase(0, sub_eb260eab * msg.value / sub_bbaf5782, arg1, (msg.value * ext_call.return_data[0]) - (sub_eb260eab * msg.value / sub_bbaf5782 * ext_call.return_data[0]) / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address), msg.value);
    else:
        if not sub_eb260eab * msg.value / sub_bbaf5782:
            if sub_bbaf5782 <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            require sub_bbaf5782
            if 0 / sub_bbaf5782 <= 0:
                if not eth.balance(this.address):
                    if sub_bbaf5782 <= 0:
                        revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                    require sub_bbaf5782
                    if 0 / sub_bbaf5782 < msg.value:
                        revert with 0, 'Buy Amount above Maximum'
                else:
                    if sub_a7c0b250 * eth.balance(this.address) / eth.balance(this.address) != sub_a7c0b250:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if sub_bbaf5782 <= 0:
                        revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                    require sub_bbaf5782
                    if sub_a7c0b250 * eth.balance(this.address) / sub_bbaf5782 < msg.value:
                        revert with 0, 'Buy Amount above Maximum'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[196 len 96] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, address(arg1) << 64, 0, (msg.value * ext_call.return_data[0]) - (sub_eb260eab * msg.value / sub_bbaf5782 * ext_call.return_data[0]) / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address), mem[196 len 28]
                mem[260] = mem[288 len 4]
                call sub_6f7815dcAddress.mem[196 len 4] with:
                     gas gas_remaining wei
                    args mem[200 len 92]
                if not ext_call.success:
                    revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                if (msg.value * ext_call.return_data[0]) - (sub_eb260eab * msg.value / sub_bbaf5782 * ext_call.return_data[0]) / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address) != 0:
                    revert with 0, 'Unifi: Amount did not match'
                require ext_code.size(sub_4f2e10b3Address)
                call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
                   value sub_eb260eab * msg.value / sub_bbaf5782 wei
                     gas gas_remaining wei
                    args this.address, sub_eb260eab * msg.value / sub_bbaf5782
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(0, sub_eb260eab * msg.value / sub_bbaf5782, arg1, (msg.value * ext_call.return_data[0]) - (sub_eb260eab * msg.value / sub_bbaf5782 * ext_call.return_data[0]) / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address), msg.value);
            else:
                if 0 / sub_bbaf5782 > sub_eb260eab * msg.value / sub_bbaf5782:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                require ext_code.size(stor5)
                call stor5.0x5c6c8903 with:
                   value 0 / sub_bbaf5782 wei
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Buy: BUY SEED failed'
                if not eth.balance(this.address):
                    if sub_bbaf5782 <= 0:
                        revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                    require sub_bbaf5782
                    if 0 / sub_bbaf5782 < msg.value:
                        revert with 0, 'Buy Amount above Maximum'
                else:
                    if sub_a7c0b250 * eth.balance(this.address) / eth.balance(this.address) != sub_a7c0b250:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if sub_bbaf5782 <= 0:
                        revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                    require sub_bbaf5782
                    if sub_a7c0b250 * eth.balance(this.address) / sub_bbaf5782 < msg.value:
                        revert with 0, 'Buy Amount above Maximum'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[196 len 96] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, address(arg1) << 64, 0, (msg.value * ext_call.return_data[0]) - (sub_eb260eab * msg.value / sub_bbaf5782 * ext_call.return_data[0]) / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address), mem[196 len 28]
                mem[260] = mem[288 len 4]
                call sub_6f7815dcAddress.mem[196 len 4] with:
                     gas gas_remaining wei
                    args mem[200 len 92]
                if not ext_call.success:
                    revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                if (msg.value * ext_call.return_data[0]) - (sub_eb260eab * msg.value / sub_bbaf5782 * ext_call.return_data[0]) / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address) != 0:
                    revert with 0, 'Unifi: Amount did not match'
                require ext_code.size(sub_4f2e10b3Address)
                call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
                   value (sub_eb260eab * msg.value / sub_bbaf5782) - (0 / sub_bbaf5782) wei
                     gas gas_remaining wei
                    args this.address, (sub_eb260eab * msg.value / sub_bbaf5782) - (0 / sub_bbaf5782)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(0, (sub_eb260eab * msg.value / sub_bbaf5782) - (0 / sub_bbaf5782), arg1, (msg.value * ext_call.return_data[0]) - (sub_eb260eab * msg.value / sub_bbaf5782 * ext_call.return_data[0]) / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address), msg.value);
        else:
            if sub_cb9385ce * sub_eb260eab * msg.value / sub_bbaf5782 / sub_eb260eab * msg.value / sub_bbaf5782 != sub_cb9385ce:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            if sub_bbaf5782 <= 0:
                revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
            require sub_bbaf5782
            if sub_cb9385ce * sub_eb260eab * msg.value / sub_bbaf5782 / sub_bbaf5782 <= 0:
                if not eth.balance(this.address):
                    if sub_bbaf5782 <= 0:
                        revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                    require sub_bbaf5782
                    if 0 / sub_bbaf5782 < msg.value:
                        revert with 0, 'Buy Amount above Maximum'
                else:
                    if sub_a7c0b250 * eth.balance(this.address) / eth.balance(this.address) != sub_a7c0b250:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if sub_bbaf5782 <= 0:
                        revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                    require sub_bbaf5782
                    if sub_a7c0b250 * eth.balance(this.address) / sub_bbaf5782 < msg.value:
                        revert with 0, 'Buy Amount above Maximum'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[196 len 96] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, address(arg1) << 64, 0, (msg.value * ext_call.return_data[0]) - (sub_eb260eab * msg.value / sub_bbaf5782 * ext_call.return_data[0]) / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address), mem[196 len 28]
                mem[260] = mem[288 len 4]
                call sub_6f7815dcAddress.mem[196 len 4] with:
                     gas gas_remaining wei
                    args mem[200 len 92]
                if not ext_call.success:
                    revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                if (msg.value * ext_call.return_data[0]) - (sub_eb260eab * msg.value / sub_bbaf5782 * ext_call.return_data[0]) / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address) != 0:
                    revert with 0, 'Unifi: Amount did not match'
                require ext_code.size(sub_4f2e10b3Address)
                call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
                   value sub_eb260eab * msg.value / sub_bbaf5782 wei
                     gas gas_remaining wei
                    args this.address, sub_eb260eab * msg.value / sub_bbaf5782
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(0, sub_eb260eab * msg.value / sub_bbaf5782, arg1, (msg.value * ext_call.return_data[0]) - (sub_eb260eab * msg.value / sub_bbaf5782 * ext_call.return_data[0]) / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address), msg.value);
            else:
                if sub_cb9385ce * sub_eb260eab * msg.value / sub_bbaf5782 / sub_bbaf5782 > sub_eb260eab * msg.value / sub_bbaf5782:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                require ext_code.size(stor5)
                call stor5.0x5c6c8903 with:
                   value sub_cb9385ce * sub_eb260eab * msg.value / sub_bbaf5782 / sub_bbaf5782 wei
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UnifiExchange#Buy: BUY SEED failed'
                if not eth.balance(this.address):
                    if sub_bbaf5782 <= 0:
                        revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                    require sub_bbaf5782
                    if 0 / sub_bbaf5782 < msg.value:
                        revert with 0, 'Buy Amount above Maximum'
                else:
                    if sub_a7c0b250 * eth.balance(this.address) / eth.balance(this.address) != sub_a7c0b250:
                        revert with 0, 'SafeMath#mul: OVERFLOW'
                    if sub_bbaf5782 <= 0:
                        revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
                    require sub_bbaf5782
                    if sub_a7c0b250 * eth.balance(this.address) / sub_bbaf5782 < msg.value:
                        revert with 0, 'Buy Amount above Maximum'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[196 len 96] = Mask(32, 224, sha3('transfer(address,uint256)')) >> 224, address(arg1) << 64, 0, (msg.value * ext_call.return_data[0]) - (sub_eb260eab * msg.value / sub_bbaf5782 * ext_call.return_data[0]) / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address), mem[196 len 28]
                mem[260] = mem[288 len 4]
                call sub_6f7815dcAddress.mem[196 len 4] with:
                     gas gas_remaining wei
                    args mem[200 len 92]
                if not ext_call.success:
                    revert with 0, 'Unifi: TRANSFERFROM_FAILED'
                require ext_code.size(sub_6f7815dcAddress)
                call sub_6f7815dcAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath#sub: UNDERFLOW'
                if (msg.value * ext_call.return_data[0]) - (sub_eb260eab * msg.value / sub_bbaf5782 * ext_call.return_data[0]) / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address) != 0:
                    revert with 0, 'Unifi: Amount did not match'
                require ext_code.size(sub_4f2e10b3Address)
                call sub_4f2e10b3Address.mint(address rg1, uint256 rg2) with:
                   value (sub_eb260eab * msg.value / sub_bbaf5782) - (sub_cb9385ce * sub_eb260eab * msg.value / sub_bbaf5782 / sub_bbaf5782) wei
                     gas gas_remaining wei
                    args this.address, (sub_eb260eab * msg.value / sub_bbaf5782) - (sub_cb9385ce * sub_eb260eab * msg.value / sub_bbaf5782 / sub_bbaf5782)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(0, (sub_eb260eab * msg.value / sub_bbaf5782) - (sub_cb9385ce * sub_eb260eab * msg.value / sub_bbaf5782 / sub_bbaf5782), arg1, (msg.value * ext_call.return_data[0]) - (sub_eb260eab * msg.value / sub_bbaf5782 * ext_call.return_data[0]) / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address), msg.value);
    stor22 = 1
    return ((msg.value * ext_call.return_data[0]) - (sub_eb260eab * msg.value / sub_bbaf5782 * ext_call.return_data[0]) / -(sub_eb260eab * msg.value / sub_bbaf5782) + eth.balance(this.address))
}



}
