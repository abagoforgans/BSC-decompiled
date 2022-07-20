contract main {




// =====================  Runtime code  =====================


const name = 'Lucas Coin', 0

const decimals = 18

const symbol = 'LCA', 0


address owner;
address uniswapV2RouterAddress;
address uniswapV2PairAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor5;
uint256 totalSupply;
uint256 sub_6b678ea0;
uint256 sub_cf9a3557;
uint256 _rewardPercent;
uint256 sub_fb290e0a;
uint256 sub_a06293cb;
uint256 _marketingPercent;
uint256 sub_c951d264;
uint256 sub_6b551c64;
uint256 totalAirdrop;
address sub_a4f4a765Address;
address sub_73c73379Address;
address sub_1f512d64Address;
address sub_bde6b210Address;
address _marketingWalletAddress;
address sub_bf2e3258Address;
uint256 stor22;
uint256 stor23;

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function sub_1f512d64(?) {
    return sub_1f512d64Address
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function _rewardPercent() {
    return _rewardPercent
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[address(arg1)])
}

function totalAirdrop() {
    return totalAirdrop
}

function sub_6b551c64(?) {
    return sub_6b551c64
}

function sub_6b678ea0(?) {
    return sub_6b678ea0
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_73c73379(?) {
    return sub_73c73379Address
}

function _marketingPercent() {
    return _marketingPercent
}

function owner() {
    return owner
}

function _marketingWallet() {
    return _marketingWalletAddress
}

function sub_a06293cb(?) {
    return sub_a06293cb
}

function sub_a4f4a765(?) {
    return sub_a4f4a765Address
}

function sub_bde6b210(?) {
    return sub_bde6b210Address
}

function sub_bf2e3258(?) {
    return sub_bf2e3258Address
}

function sub_c951d264(?) {
    return sub_c951d264
}

function sub_cf9a3557(?) {
    return sub_cf9a3557
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_fb290e0a(?) {
    return sub_fb290e0a
}

function _fallback() payable {
    revert
}

function sub_0769b697(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    stor23 = arg1
}

function sub_2d4b7cf4(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    sub_cf9a3557 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_dcd1efed(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a06293cb = arg1
}

function sub_f452575e(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6b551c64 = arg1
}

function setDevPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c951d264 = arg1
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = 0
}

function setSecurityPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fb290e0a = arg1
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = 1
}

function setRewardWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a4f4a765Address = arg1
}

function setPresaleWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_bde6b210Address = arg1
}

function setMarketingPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _marketingPercent = arg1
}

function setSecurityWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_bf2e3258Address = arg1
}

function sub_0616e303(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1f512d64Address = address(arg1)
}

function sub_82eb71cd(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_73c73379Address = address(arg1)
}

function sub_a564ce17(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a4f4a765Address = address(arg1)
}

function setMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _marketingWalletAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not totalSupply / 100:
        if balanceOf[address(arg1)] + arg2 >= 0:
            if not stor5[address(arg1)]:
                revert with 0, 'User can't has over 1% of totalSupply.'
    else:
        if totalSupply / 100 and sub_6b678ea0 > -1 / totalSupply / 100:
            revert with 'NH{q', 17
        if not totalSupply / 100:
            revert with 'NH{q', 18
        if totalSupply / 100 * sub_6b678ea0 / totalSupply / 100 != sub_6b678ea0:
            revert with 0, 'SafeMath: multiplication overflow'
        if balanceOf[address(arg1)] + arg2 >= totalSupply / 100 * sub_6b678ea0:
            if not stor5[address(arg1)]:
                revert with 0, 'User can't has over 1% of totalSupply.'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function getAirdrop(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor22 > -stor23 - 1:
        revert with 'NH{q', 17
    stor22 += stor23
    if totalAirdrop <= stor22:
        revert with 0, 'Airdrop finished!'
    if not owner:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
    if stor23 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if balanceOf[address(arg1)] > -stor23 - 1:
        revert with 'NH{q', 17
    if not totalSupply / 100:
        if balanceOf[address(arg1)] + stor23 >= 0:
            if not stor5[address(arg1)]:
                revert with 0, 'User can't has over 1% of totalSupply.'
    else:
        if totalSupply / 100 and sub_6b678ea0 > -1 / totalSupply / 100:
            revert with 'NH{q', 17
        if not totalSupply / 100:
            revert with 'NH{q', 18
        if totalSupply / 100 * sub_6b678ea0 / totalSupply / 100 != sub_6b678ea0:
            revert with 0, 'SafeMath: multiplication overflow'
        if balanceOf[address(arg1)] + stor23 >= totalSupply / 100 * sub_6b678ea0:
            if not stor5[address(arg1)]:
                revert with 0, 'User can't has over 1% of totalSupply.'
    if balanceOf[stor0] < stor23:
        revert with 'NH{q', 17
    balanceOf[stor0] -= stor23
    if balanceOf[address(arg1)] > -stor23 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += stor23
    emit Transfer(stor23, owner, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if balanceOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    if not totalSupply / 100:
        if balanceOf[address(arg2)] + arg3 >= 0:
            if not stor5[address(arg2)]:
                revert with 0, 'User can't has over 1% of totalSupply.'
    else:
        if totalSupply / 100 and sub_6b678ea0 > -1 / totalSupply / 100:
            revert with 'NH{q', 17
        if not totalSupply / 100:
            revert with 'NH{q', 18
        if totalSupply / 100 * sub_6b678ea0 / totalSupply / 100 != sub_6b678ea0:
            revert with 0, 'SafeMath: multiplication overflow'
        if balanceOf[address(arg2)] + arg3 >= totalSupply / 100 * sub_6b678ea0:
            if not stor5[address(arg2)]:
                revert with 0, 'User can't has over 1% of totalSupply.'
    if balanceOf[address(arg1)] < arg3:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 'NH{q', 17
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
