contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - manualswap()
#  - _fallback()
#
const name = '', 0

const totalSupply = 100 * 10^18

const decimals = 9

const symbol = '', 0


address owner;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor5;
uint256 stor6;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
address stor14;
address stor15;
address uniswapV2RouterAddress;
uint128 stor17; offset 168
address uniswapV2PairAddress;

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function toggleSwap(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if stor14 != msg.sender:
            revert with 0, 'Caller is not the dev'
    stor17 = Mask(88, 0, arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_758dbe03(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if stor14 != msg.sender:
            revert with 0, 'Caller is not the dev'
    emit 0xa64373a6: stor15, address(arg1)
    stor15 = address(arg1)
    stor5[address(arg1)] = 1
}

function sub_aad5c023(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if stor14 != msg.sender:
            revert with 0, 'Caller is not the dev'
    emit 0xfbbc3294: stor14, address(arg1)
    stor14 = address(arg1)
    stor5[address(arg1)] = 1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2[address(arg1)] > stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if not stor6 / 100 * 10^18:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor2[address(arg1)] / stor6 / 100 * 10^18)
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

function manualsend() {
    if stor14 != msg.sender:
        if stor15 != msg.sender:
            require msg.sender == owner
    call stor14 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor15 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFee(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        if stor14 != msg.sender:
            revert with 0, 'Caller is not the dev'
    if arg1 >= 11:
        revert with 0, 'Redis cannot be more than 10.'
    if arg2 >= 11:
        revert with 0, 'Redis cannot be more than 10.'
    if arg3 >= 7:
        revert with 0, 'Tax cannot be more than 6.'
    if arg4 >= 7:
        revert with 0, 'Tax cannot be more than 6.'
    stor8 = arg1
    stor10 = arg2
    stor9 = arg3
    stor11 = arg4
}

function sub_e293d316(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        if stor14 != msg.sender:
            revert with 0, 'Caller is not the dev'
    emit 0x47c33aa2: arg3, address(arg1), address(arg2)
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function excludeMultipleAccountsFromFees(address[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 5
        stor5[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
