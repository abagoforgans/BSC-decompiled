contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'SuperSun', 0

const totalSupply = 10^17

const decimals = 9

const symbol = 'SUPERSUN', 0

const BURN_WALLET = 57005


address owner;
uint8 stor2;
uint8 stor2; offset 8
uint8 stor2; offset 16
uint8 stor2; offset 24
uint8 stor2; offset 32
uint8 _transferFee; offset 40
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor5;
uint8 stor5; offset 8
uint8 stor5; offset 16
uint256 stor5; offset 16
uint256 stor5; offset 8
uint256 tokenSwapThreshold;
uint256 totalFeesPooled;
uint256 totalBNBLiquidityAddedFromFees;
mapping of uint8 stor9;
mapping of uint8 stor10;
uint256 sub_21988ae5;
uint256 sub_8303e37e;
uint8 stor13;
uint256 holdLimit;
uint8 stor15;
mapping of uint8 stor16;
mapping of uint8 stor17;
mapping of uint8 stor18;
uint256 sub_85f54a79;
uint8 sub_287a5eb8;
uint256 stor21;
address marketingWalletAddress;
address devWalletAddress;
address pancakeSwapRouterAddress;
address stor25;
address pancakeSwapPairAddress;
address autoLiquidityWalletAddress;

function _whiteList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor16[arg1])
}

function sub_0bd8909d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor10[address(arg1)])
}

function autoLiquidityWallet() {
    return autoLiquidityWalletAddress
}

function tokenSwapThreshold() {
    return tokenSwapThreshold
}

function isFeeEnabled() {
    return bool(uint8(stor5.field_8))
}

function isWhitelistedExternalProcessor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor18[address(arg1)])
}

function sub_21988ae5(?) {
    return sub_21988ae5
}

function sub_287a5eb8(?) {
    return bool(sub_287a5eb8)
}

function isSwapEnabled() {
    return bool(uint8(stor5.field_0))
}

function pancakeSwapPairAddress() {
    return pancakeSwapPairAddress
}

function _transferFee() {
    return _transferFee
}

function isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[address(arg1)])
}

function totalFeesPooled() {
    return totalFeesPooled
}

function holdLimit() {
    return holdLimit
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function marketingWallet() {
    return marketingWalletAddress
}

function totalBNBLiquidityAddedFromFees() {
    return totalBNBLiquidityAddedFromFees
}

function sub_8303e37e(?) {
    return sub_8303e37e
}

function sub_85f54a79(?) {
    return sub_85f54a79
}

function pancakeSwapRouterAddress() {
    return pancakeSwapRouterAddress
}

function sub_8ac31ffc(?) {
    return bool(uint8(stor5.field_16))
}

function owner() {
    return owner
}

function devWallet() {
    return devWalletAddress
}

function _blacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor17[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (ext_code.size(arg1) > 0)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_6fd009e4(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    holdLimit = arg1
}

function sub_3f96f548(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8303e37e = arg1
}

function sub_5f7775d5(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_21988ae5 = arg1
}

function setTrading(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor15 = uint8(arg1)
}

function sub_3e12bd1a(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13 = uint8(bool(arg1))
}

function updateBlockNum(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_85f54a79 = arg1
}

function setSwapEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor5.field_0) = uint8(arg1)
}

function setFeeEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor5.field_8) = Mask(248, 0, arg1)
}

function sub_0cf02732(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(240, 0, stor5.field_16) = Mask(240, 0, bool(arg1))
}

function sub_0ae8885b(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16[address(arg1)] = uint8(bool(arg2))
}

function sub_3bac7ba2(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10[address(arg1)] = uint8(bool(arg2))
}

function setBlacklist(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor17[address(arg1)] = uint8(arg2)
}

function setExcludedFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9[address(arg1)] = uint8(arg2)
}

function amountUntilSwap() {
    if balanceOf[address(this.address)] > tokenSwapThreshold:
        return 0
    if tokenSwapThreshold < balanceOf[address(this.address)]:
        revert with 'NH{q', 17
    return (tokenSwapThreshold - balanceOf[address(this.address)])
}

function setDevWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 == arg1:
        revert with 0, 'Address cannot be zero address'
    devWalletAddress = arg1
}

function setMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 == arg1:
        revert with 0, 'Address cannot be zero address'
    marketingWalletAddress = arg1
}

function setTokenSwapThreshold(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 10^13:
        revert with 0, 'Threshold must be greater than 0'
    tokenSwapThreshold = arg1
}

function setAutoLiquidityWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 == arg1:
        revert with 0, 'Address cannot be zero address'
    autoLiquidityWalletAddress = arg1
}

function setAntiBotEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_287a5eb8 = uint8(arg1)
    if block.timestamp > -sub_85f54a79 - 1:
        revert with 'NH{q', 17
    stor21 = block.timestamp + sub_85f54a79
}

function setWhitelistedExternalProcessor(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid address'
    stor18[address(arg1)] = uint8(arg2)
}

function setTransferFee(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 25:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer fee must be between 0% and 25%'
    _transferFee = arg1
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

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function activate() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor5.field_0) = 1
    Mask(248, 0, stor5.field_8) = 1
    stor15 = 1
    Mask(240, 0, stor5.field_16) = 1
    if 0 == owner:
        revert with 0, 'Address cannot be zero address'
    autoLiquidityWalletAddress = owner
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_21988ae5 = 4 * 10^14
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8303e37e = 6 * 10^14
    stor13 = 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot approve to the zero address'
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
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function setFees(uint8 arg1, uint8 arg2, uint8 arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Liquidity fee must be between 0% and 5%'
    if arg2 > 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Reward fee must be between 0% and 10%'
    if arg3 > 5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Marketing fee must be between 0% and 5%'
    if arg4 > 5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Dev fee must be between 0% and 5%'
    uint8(stor2.field_0) = arg1
    uint8(stor2.field_8) = arg2
    uint8(stor2.field_16) = arg3
    uint8(stor2.field_24) = arg4
    if uint8(stor2.field_8) > -uint8(stor2.field_0) + 255:
        revert with 'NH{q', 17
    if uint8(uint8(stor2.field_8) + uint8(stor2.field_0)) > -uint8(stor2.field_16) + 255:
        revert with 'NH{q', 17
    if uint8(uint8(uint8(stor2.field_8) + uint8(stor2.field_0)) + uint8(stor2.field_16)) > -uint8(stor2.field_24) + 255:
        revert with 'NH{q', 17
    uint8(stor2.field_32) = uint8(uint8(uint8(uint8(stor2.field_8) + uint8(stor2.field_0)) + uint8(stor2.field_16)) + uint8(stor2.field_24))
}

function setPancakeSwapRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot use the zero address as router address'
    pancakeSwapRouterAddress = arg1
    stor25 = pancakeSwapRouterAddress
    require ext_code.size(stor25)
    staticcall stor25.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor25)
    staticcall stor25.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        require ext_code.size(stor25)
        staticcall stor25.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(stor25)
        staticcall stor25.WETH() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(this.address), address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    pancakeSwapPairAddress = ext_call.return_data[12 len 20]
}



}
