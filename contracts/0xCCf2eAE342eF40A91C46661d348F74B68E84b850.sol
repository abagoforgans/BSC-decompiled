contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - setDeposit(uint256 arg1)
#
const name = 'HydrogenSonata'

const decimals = 9

const symbol = 'HydrogenSonata'


address owner;
mapping of uint8 stor1;
address stor3;
address stor4;
uint256 totalSupply;
uint256 _maxTxAmount;
uint256 _maxWalletToken;
uint256 stor8;
uint256 stor9;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor12;
mapping of uint8 stor13;
mapping of uint8 stor14;
mapping of uint8 stor15;
mapping of uint8 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
address pairAddress;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint8 stor29;
uint8 stor29; offset 8
uint256 stor29; offset 16
uint8 stor33;
uint256 stor34;
uint256 stor35;
uint8 stor36;
uint256 stor37;
address stor39;
address stor40;
address stor41;
address stor42;
address stor43;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function _maxWalletToken() {
    return _maxWalletToken
}

function _maxTxAmount() {
    return _maxTxAmount
}

function pair() {
    return pairAddress
}

function Owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    return (owner == arg1)
}

function sub_1bffe26b(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor33 = 1
}

function renounceOwnership() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    owner = 0
    emit OwnershipTransferred(0);
}

function sub_9017ab2d(?) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor39 = arg1
}

function setGasAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor26 = arg1
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function sub_77cfbd02(?) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor25 = arg1
    stor22 = arg2
}

function sub_beb476e7(?) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor27 = arg1
    stor28 = arg2
}

function sub_f6612af2(?) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor23 = arg1
    stor24 = arg2
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor1[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor1[address(arg1)] = 0
}

function sub_5f3a9b94(?) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor9 = totalSupply * arg1 / 100000
}

function sub_72d5347e(?) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor14[address(arg1)] = uint8(arg2)
}

function sub_d099d35a(?) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor13[address(arg1)] = uint8(arg2)
}

function sub_e68736dc(?) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor16[address(arg2)] = uint8(arg1)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setMaxTransfer(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor8 = totalSupply * arg1 / 10000
}

function setMaxTx(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    _maxTxAmount = totalSupply * arg1 / 10000
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    _maxWalletToken = totalSupply * arg1 / 10000
}

function setFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor12[address(arg1)] = uint8(arg2)
}

function setTransferFees(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor34 = arg2
    stor35 = arg1
}

function sub_d0e10326(?) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor36 = uint8(arg1)
    stor37 = arg2 * totalSupply / 100000
}

function setMaxWalletExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor15[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    owner = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function sub_e93e12f2(?) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    uint8(stor29.field_0) = uint8(arg1)
    uint8(stor29.field_8) = arg2
    Mask(240, 0, stor29.field_16) = Mask(240, 16, arg1) >> 16
}

function getCirculatingSupply() {
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (totalSupply - balanceOf[stor3] - balanceOf[stor4])
}

function sub_b5dce526(?) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor43 = arg1
    stor12[address(arg1)] = 1
    stor13[address(arg1)] = 1
    stor14[address(arg1)] = 1
    stor15[address(arg1)] = 1
    stor16[address(arg1)] = 1
}

function setMarketingAddress(address arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor42 = arg1
    stor12[address(arg1)] = 1
    stor13[address(arg1)] = 1
    stor14[address(arg1)] = 1
    stor15[address(arg1)] = 1
    stor16[address(arg1)] = 1
}

function setWhitelist(bool arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor12[address(arg2)] = uint8(arg1)
    stor13[address(arg2)] = uint8(arg1)
    stor14[address(arg2)] = uint8(arg1)
    stor15[address(arg2)] = uint8(arg1)
    stor16[address(arg2)] = uint8(arg1)
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor17 = arg1
    stor18 = arg2
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    stor19 = arg2 + arg1
    stor20 = arg3
    require stor19 < arg3 / 3
}

function sub_8c232838(?) {
    require calldata.size - 4 >= 32
    if pairAddress == arg1:
        if not stor34:
            return 0
        if stor34 / stor34 != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return stor34
    if not stor35:
        return 0
    if stor35 / stor35 != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return stor35
}

function approval(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not eth.balance(this.address):
        call stor43 with:
             gas 2300 wei
    else:
        if arg1 * eth.balance(this.address) / eth.balance(this.address) != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        call stor43 with:
           value arg1 * eth.balance(this.address) / 100 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setAddress(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor40 = arg1
    stor12[address(arg1)] = 1
    stor13[address(arg1)] = 1
    stor14[address(arg1)] = 1
    stor15[address(arg1)] = 1
    stor16[address(arg1)] = 1
    stor41 = arg2
    stor12[address(arg2)] = 1
    stor13[address(arg2)] = 1
    stor14[address(arg2)] = 1
    stor15[address(arg2)] = 1
    stor16[address(arg2)] = 1
    stor42 = arg3
    stor12[address(arg3)] = 1
    stor13[address(arg3)] = 1
    stor14[address(arg3)] = 1
    stor15[address(arg3)] = 1
    stor16[address(arg3)] = 1
    stor43 = arg4
    stor12[address(arg4)] = 1
    stor13[address(arg4)] = 1
    stor14[address(arg4)] = 1
    stor15[address(arg4)] = 1
    stor16[address(arg4)] = 1
}

function maxTL() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not totalSupply:
        _maxTxAmount = 0
        _maxWalletToken = 0
    else:
        if totalSupply / totalSupply != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        _maxTxAmount = totalSupply
        if not totalSupply:
            _maxWalletToken = 0
        else:
            if totalSupply / totalSupply != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            _maxWalletToken = totalSupply
}

function sub_f4536007(?) {
    require calldata.size - 4 >= 128
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not arg4:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), 0 / arg4
    else:
        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not arg4:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3 * ext_call.return_data[0] / arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[stor21]:
        if arg1:
            if 0 / arg1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
    if 2 * balanceOf[stor21] / balanceOf[stor21] != 2:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not arg1:
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
    if 2 * balanceOf[stor21] * arg1 / arg1 != 2 * balanceOf[stor21]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
        revert with 0, 'SafeMath: division by zero'
    return (2 * balanceOf[stor21] * arg1 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[stor21]:
        if arg2:
            if 0 / arg2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
    if 2 * balanceOf[stor21] / balanceOf[stor21] != 2:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not arg2:
        if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
    if 2 * balanceOf[stor21] * arg2 / arg2 != 2 * balanceOf[stor21]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
        revert with 0, 'SafeMath: division by zero'
    return (2 * balanceOf[stor21] * arg2 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
}

function approvals(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not eth.balance(this.address):
        if not arg2:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / arg2:
            if not 0 / arg2:
                call stor40 with:
                     gas stor26 wei
                call stor41 with:
                     gas stor26 wei
            else:
                if 0 / arg2 / 0 / arg2 != 1:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                call stor40 with:
                     gas stor26 wei
                call stor41 with:
                   value 0 / arg2 / 2 wei
                     gas stor26 wei
        else:
            if 0 / arg2 / 0 / arg2 != 1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not 0 / arg2:
                call stor40 with:
                   value 0 / arg2 / 2 wei
                     gas stor26 wei
                call stor41 with:
                     gas stor26 wei
            else:
                if 0 / arg2 / 0 / arg2 != 1:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                call stor40 with:
                   value 0 / arg2 / 2 wei
                     gas stor26 wei
                call stor41 with:
                   value 0 / arg2 / 2 wei
                     gas stor26 wei
    else:
        if arg1 * eth.balance(this.address) / eth.balance(this.address) != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not arg2:
            revert with 0, 'SafeMath: division by zero'
        if not arg1 * eth.balance(this.address) / arg2:
            if not arg1 * eth.balance(this.address) / arg2:
                call stor40 with:
                     gas stor26 wei
                call stor41 with:
                     gas stor26 wei
            else:
                if arg1 * eth.balance(this.address) / arg2 / arg1 * eth.balance(this.address) / arg2 != 1:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                call stor40 with:
                     gas stor26 wei
                call stor41 with:
                   value arg1 * eth.balance(this.address) / arg2 / 2 wei
                     gas stor26 wei
        else:
            if arg1 * eth.balance(this.address) / arg2 / arg1 * eth.balance(this.address) / arg2 != 1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not arg1 * eth.balance(this.address) / arg2:
                call stor40 with:
                   value arg1 * eth.balance(this.address) / arg2 / 2 wei
                     gas stor26 wei
                call stor41 with:
                     gas stor26 wei
            else:
                if arg1 * eth.balance(this.address) / arg2 / arg1 * eth.balance(this.address) / arg2 != 1:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                call stor40 with:
                   value arg1 * eth.balance(this.address) / arg2 / 2 wei
                     gas stor26 wei
                call stor41 with:
                   value arg1 * eth.balance(this.address) / arg2 / 2 wei
                     gas stor26 wei
}



}
