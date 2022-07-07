contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
const name = '', 0

const decimals = 18

const symbol = '', 0


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor3;
mapping of uint8 stor4;
uint256 totalSupply;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint8 stor16;
address stor16;
address sub_c66b7968Address; offset 8
address sub_6a757b64Address;
address stor18;
address uniswapV2RouterAddress;
address uniswapV2PairAddress;
uint256 _maxTxAmount;

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[address(arg1)])
}

function sub_6a757b64(?) {
    return sub_6a757b64Address
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function _maxTxAmount() {
    return _maxTxAmount
}

function owner() {
    return owner
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function sub_c66b7968(?) {
    return sub_c66b7968Address
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setMaxTx(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _maxTxAmount = arg1
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 1
}

function sub_fe00e22d(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13 = arg1
    stor8 = arg2
    emit 0x8df0cc9a: arg1, arg2
}

function setMarketingAdd(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c66b7968Address = arg1
}

function setDevelopmentAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6a757b64Address = arg1
}

function setBuyFees(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11 = arg1
    stor6 = arg2
    emit 0x1a24597c: arg1, arg2
}

function setSellFees(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = arg1
    stor7 = arg2
    emit 0x3e9b299c: arg1, arg2
}

function RescueBNB() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_d13ac9f3(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function Burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if balanceOf[address(msg.sender)] < 10^18 * arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] += -1 * 10^18 * arg1
    if totalSupply < 10^18 * arg1:
        revert with 0, 17
    totalSupply += -1 * 10^18 * arg1
    emit 0x65ddf252: (10^18 * arg1), msg.sender, stor18
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0xef42455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if not msg.sender:
        revert with 0, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uniswapV2PairAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Brain: The PancakeSwap pair cannot be removed from automatedMarketMakerPairs'
    if arg2 == bool(stor3[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Brain: Automated market maker pair is already set to that value'
    stor3[address(arg1)] = uint8(arg2)
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall arg1.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    uniswapV2PairAddress = ext_call.return_data[12 len 20]
    uniswapV2RouterAddress = arg1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if owner != msg.sender:
        if owner != arg1:
            if arg2 > _maxTxAmount:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
    if stor3[address(arg1)]:
        stor9 = stor7
        stor14 = stor12
    else:
        if not stor3[address(msg.sender)]:
            stor9 = stor8
            stor14 = stor13
        else:
            stor9 = stor6
            stor14 = stor11
    uint8(stor16.field_0) = 1
    if stor4[address(msg.sender)]:
        uint8(stor16.field_0) = 0
    else:
        if stor4[address(arg1)]:
            uint8(stor16.field_0) = 0
    if not uint8(stor16.field_0):
        if stor9:
            stor10 = stor9
            stor15 = stor14
            stor9 = 0
            stor14 = 0
        else:
            if stor14:
                stor10 = stor9
                stor15 = stor14
                stor9 = 0
                stor14 = 0
    if arg2 and stor9 > -1 / arg2:
        revert with 0, 17
    if arg2 and stor14 > -1 / arg2:
        revert with 0, 17
    if arg2 < arg2 * stor9 / 100:
        revert with 0, 17
    if arg2 - (arg2 * stor9 / 100) < arg2 * stor14 / 100:
        revert with 0, 17
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 17
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !(arg2 - (arg2 * stor9 / 100) - (arg2 * stor14 / 100)):
        revert with 0, 17
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2 - (arg2 * stor9 / 100) - (arg2 * stor14 / 100)
    if balanceOf[address(stor16.field_0)] > !(arg2 * stor9 / 100):
        revert with 0, 17
    balanceOf[address(stor16.field_0)] += arg2 * stor9 / 100
    if balanceOf[stor17] > !(arg2 * stor14 / 100):
        revert with 0, 17
    balanceOf[stor17] += arg2 * stor14 / 100
    if arg2 * stor9 / 100:
        emit 0x65ddf252: (arg2 * stor9 / 100), msg.sender, sub_c66b7968Address
    if arg2 * stor14 / 100:
        emit 0x65ddf252: (arg2 * stor14 / 100), msg.sender, sub_6a757b64Address
    emit 0x65ddf252: (arg2 - (arg2 * stor9 / 100) - (arg2 * stor14 / 100)), msg.sender, arg1
    if not uint8(stor16.field_0):
        stor9 = stor10
        stor14 = stor15
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if owner != arg1:
        if owner != arg2:
            if arg3 > _maxTxAmount:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
    if stor3[address(arg2)]:
        stor9 = stor7
        stor14 = stor12
    else:
        if not stor3[address(arg1)]:
            stor9 = stor8
            stor14 = stor13
        else:
            stor9 = stor6
            stor14 = stor11
    uint8(stor16.field_0) = 1
    if stor4[address(arg1)]:
        uint8(stor16.field_0) = 0
    else:
        if stor4[address(arg2)]:
            uint8(stor16.field_0) = 0
    if not uint8(stor16.field_0):
        if stor9:
            stor10 = stor9
            stor15 = stor14
            stor9 = 0
            stor14 = 0
        else:
            if stor14:
                stor10 = stor9
                stor15 = stor14
                stor9 = 0
                stor14 = 0
    if arg3 and stor9 > -1 / arg3:
        revert with 0, 17
    if arg3 and stor14 > -1 / arg3:
        revert with 0, 17
    if arg3 < arg3 * stor9 / 100:
        revert with 0, 17
    if arg3 - (arg3 * stor9 / 100) < arg3 * stor14 / 100:
        revert with 0, 17
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 17
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !(arg3 - (arg3 * stor9 / 100) - (arg3 * stor14 / 100)):
        revert with 0, 17
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3 - (arg3 * stor9 / 100) - (arg3 * stor14 / 100)
    if balanceOf[address(stor16.field_0)] > !(arg3 * stor9 / 100):
        revert with 0, 17
    balanceOf[address(stor16.field_0)] += arg3 * stor9 / 100
    if balanceOf[stor17] > !(arg3 * stor14 / 100):
        revert with 0, 17
    balanceOf[stor17] += arg3 * stor14 / 100
    if arg3 * stor9 / 100:
        emit 0x65ddf252: (arg3 * stor9 / 100), arg1, sub_c66b7968Address
    if arg3 * stor14 / 100:
        emit 0x65ddf252: (arg3 * stor14 / 100), arg1, sub_6a757b64Address
    emit 0x65ddf252: (arg3 - (arg3 * stor9 / 100) - (arg3 * stor14 / 100)), arg1, arg2
    if not uint8(stor16.field_0):
        stor9 = stor10
        stor14 = stor15
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[168 len 24] >> 64, 0
    if not arg1:
        revert with 0, 'BEP20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'BEP20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}



}
