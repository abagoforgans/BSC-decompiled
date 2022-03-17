contract main {




// =====================  Runtime code  =====================


const isCToken = 1


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address adminAddress; offset 8
address pendingAdminAddress;
address comptrollerAddress;
address interestRateModelAddress;
uint256 reserveFactorMantissa;
uint256 accrualBlockNumber;
uint256 borrowIndex;
uint256 totalBorrows;
uint256 totalReserves;
uint256 totalSupply;
address underlyingAddress;
address implementationAddress;

function name() {
    return name[0 len name.length]
}

function reserveFactorMantissa() {
    return reserveFactorMantissa
}

function totalSupply() {
    return totalSupply
}

function pendingAdmin() {
    return pendingAdminAddress
}

function decimals() {
    return decimals
}

function totalBorrows() {
    return totalBorrows
}

function implementation() {
    return implementationAddress
}

function comptroller() {
    return comptrollerAddress
}

function accrualBlockNumber() {
    return accrualBlockNumber
}

function underlying() {
    return underlyingAddress
}

function totalReserves() {
    return totalReserves
}

function symbol() {
    return symbol[0 len symbol.length]
}

function borrowIndex() {
    return borrowIndex
}

function interestRateModel() {
    return interestRateModelAddress
}

function admin() {
    return adminAddress
}

function _acceptAdmin() {
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function accrueInterest() {
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function totalBorrowsCurrent() {
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function exchangeRateCurrent() {
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function borrow(uint256 arg1) {
    require calldata.size - 4 >= 32
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function redeem(uint256 arg1) {
    require calldata.size - 4 >= 32
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function repayBorrow(uint256 arg1) {
    require calldata.size - 4 >= 32
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function _addReserves(uint256 arg1) {
    require calldata.size - 4 >= 32
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function _setComptroller(address arg1) {
    require calldata.size - 4 >= 32
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function _reduceReserves(uint256 arg1) {
    require calldata.size - 4 >= 32
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function redeemUnderlying(uint256 arg1) {
    require calldata.size - 4 >= 32
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function _setPendingAdmin(address arg1) {
    require calldata.size - 4 >= 32
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function _setReserveFactor(uint256 arg1) {
    require calldata.size - 4 >= 32
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function balanceOfUnderlying(address arg1) {
    require calldata.size - 4 >= 32
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function borrowBalanceCurrent(address arg1) {
    require calldata.size - 4 >= 32
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function _setInterestRateModel(address arg1) {
    require calldata.size - 4 >= 32
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function repayBorrowBehalf(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function seize(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function liquidateBorrow(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0xfe43457263323044656c656761746f723a66616c6c6261636b3a2063616e6e6f742073656e642076616c756520746f2066616c6c626163,
                    mem[219 len 9]
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function getCash() {
    mem[164] = calldata.size
    mem[196 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + 196] = 0
    mem[ceil32(calldata.size) + 196 len floor32(ceil32(calldata.size) + 68)] = delegateToImplementation(bytes rg1), 0, 32, calldata.size, mem[196 len floor32(ceil32(calldata.size) + 68) - 68]
    mem[ceil32(calldata.size) + floor32(ceil32(calldata.size) + 68) + -(ceil32(calldata.size) + 68 % 32) + 228 len ceil32(calldata.size) + 68 % 32] = mem[(3 * floor32(ceil32(calldata.size) + 68)) + (-2 * ceil32(calldata.size)) - 8 len ceil32(calldata.size) + -floor32(ceil32(calldata.size) + 68) + 68]
    staticcall this.address.mem[floor32(ceil32(calldata.size) + 68) + 96 len 4] with:
            gas gas_remaining wei
           args Mask(8 * floor32(ceil32(calldata.size) + 68) - 4, -(8 * floor32(ceil32(calldata.size) + 68)) + 256, mem[196 len floor32(ceil32(calldata.size) + 68) - 68]) << (8 * floor32(ceil32(calldata.size) + 68)) - 256, mem[ceil32(calldata.size) + floor32(ceil32(calldata.size) + 68) + 196 len ceil32(calldata.size) + -floor32(ceil32(calldata.size) + 68) + 68]
    if not return_data.size:
        mem[ceil32(calldata.size) + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return memory
          from ceil32(calldata.size) + 260
           len return_data.size
    mem[ceil32(calldata.size) + ceil32(return_data.size) + 197 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return memory
      from ceil32(calldata.size) + ceil32(return_data.size) + 261
       len return_data.size
}

function getOwner() {
    mem[164] = calldata.size
    mem[196 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + 196] = 0
    mem[ceil32(calldata.size) + 196 len floor32(ceil32(calldata.size) + 68)] = delegateToImplementation(bytes rg1), 0, 32, calldata.size, mem[196 len floor32(ceil32(calldata.size) + 68) - 68]
    mem[ceil32(calldata.size) + floor32(ceil32(calldata.size) + 68) + -(ceil32(calldata.size) + 68 % 32) + 228 len ceil32(calldata.size) + 68 % 32] = mem[(3 * floor32(ceil32(calldata.size) + 68)) + (-2 * ceil32(calldata.size)) - 8 len ceil32(calldata.size) + -floor32(ceil32(calldata.size) + 68) + 68]
    staticcall this.address.mem[floor32(ceil32(calldata.size) + 68) + 96 len 4] with:
            gas gas_remaining wei
           args Mask(8 * floor32(ceil32(calldata.size) + 68) - 4, -(8 * floor32(ceil32(calldata.size) + 68)) + 256, mem[196 len floor32(ceil32(calldata.size) + 68) - 68]) << (8 * floor32(ceil32(calldata.size) + 68)) - 256, mem[ceil32(calldata.size) + floor32(ceil32(calldata.size) + 68) + 196 len ceil32(calldata.size) + -floor32(ceil32(calldata.size) + 68) + 68]
    if not return_data.size:
        mem[ceil32(calldata.size) + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return memory
          from ceil32(calldata.size) + 260
           len return_data.size
    mem[ceil32(calldata.size) + ceil32(return_data.size) + 197 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return memory
      from ceil32(calldata.size) + ceil32(return_data.size) + 261
       len return_data.size
}

function exchangeRateStored() {
    mem[164] = calldata.size
    mem[196 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + 196] = 0
    mem[ceil32(calldata.size) + 196 len floor32(ceil32(calldata.size) + 68)] = delegateToImplementation(bytes rg1), 0, 32, calldata.size, mem[196 len floor32(ceil32(calldata.size) + 68) - 68]
    mem[ceil32(calldata.size) + floor32(ceil32(calldata.size) + 68) + -(ceil32(calldata.size) + 68 % 32) + 228 len ceil32(calldata.size) + 68 % 32] = mem[(3 * floor32(ceil32(calldata.size) + 68)) + (-2 * ceil32(calldata.size)) - 8 len ceil32(calldata.size) + -floor32(ceil32(calldata.size) + 68) + 68]
    staticcall this.address.mem[floor32(ceil32(calldata.size) + 68) + 96 len 4] with:
            gas gas_remaining wei
           args Mask(8 * floor32(ceil32(calldata.size) + 68) - 4, -(8 * floor32(ceil32(calldata.size) + 68)) + 256, mem[196 len floor32(ceil32(calldata.size) + 68) - 68]) << (8 * floor32(ceil32(calldata.size) + 68)) - 256, mem[ceil32(calldata.size) + floor32(ceil32(calldata.size) + 68) + 196 len ceil32(calldata.size) + -floor32(ceil32(calldata.size) + 68) + 68]
    if not return_data.size:
        mem[ceil32(calldata.size) + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return memory
          from ceil32(calldata.size) + 260
           len return_data.size
    mem[ceil32(calldata.size) + ceil32(return_data.size) + 197 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return memory
      from ceil32(calldata.size) + ceil32(return_data.size) + 261
       len return_data.size
}

function supplyRatePerBlock() {
    mem[164] = calldata.size
    mem[196 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + 196] = 0
    mem[ceil32(calldata.size) + 196 len floor32(ceil32(calldata.size) + 68)] = delegateToImplementation(bytes rg1), 0, 32, calldata.size, mem[196 len floor32(ceil32(calldata.size) + 68) - 68]
    mem[ceil32(calldata.size) + floor32(ceil32(calldata.size) + 68) + -(ceil32(calldata.size) + 68 % 32) + 228 len ceil32(calldata.size) + 68 % 32] = mem[(3 * floor32(ceil32(calldata.size) + 68)) + (-2 * ceil32(calldata.size)) - 8 len ceil32(calldata.size) + -floor32(ceil32(calldata.size) + 68) + 68]
    staticcall this.address.mem[floor32(ceil32(calldata.size) + 68) + 96 len 4] with:
            gas gas_remaining wei
           args Mask(8 * floor32(ceil32(calldata.size) + 68) - 4, -(8 * floor32(ceil32(calldata.size) + 68)) + 256, mem[196 len floor32(ceil32(calldata.size) + 68) - 68]) << (8 * floor32(ceil32(calldata.size) + 68)) - 256, mem[ceil32(calldata.size) + floor32(ceil32(calldata.size) + 68) + 196 len ceil32(calldata.size) + -floor32(ceil32(calldata.size) + 68) + 68]
    if not return_data.size:
        mem[ceil32(calldata.size) + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return memory
          from ceil32(calldata.size) + 260
           len return_data.size
    mem[ceil32(calldata.size) + ceil32(return_data.size) + 197 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return memory
      from ceil32(calldata.size) + ceil32(return_data.size) + 261
       len return_data.size
}

function borrowRatePerBlock() {
    mem[164] = calldata.size
    mem[196 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + 196] = 0
    mem[ceil32(calldata.size) + 196 len floor32(ceil32(calldata.size) + 68)] = delegateToImplementation(bytes rg1), 0, 32, calldata.size, mem[196 len floor32(ceil32(calldata.size) + 68) - 68]
    mem[ceil32(calldata.size) + floor32(ceil32(calldata.size) + 68) + -(ceil32(calldata.size) + 68 % 32) + 228 len ceil32(calldata.size) + 68 % 32] = mem[(3 * floor32(ceil32(calldata.size) + 68)) + (-2 * ceil32(calldata.size)) - 8 len ceil32(calldata.size) + -floor32(ceil32(calldata.size) + 68) + 68]
    staticcall this.address.mem[floor32(ceil32(calldata.size) + 68) + 96 len 4] with:
            gas gas_remaining wei
           args Mask(8 * floor32(ceil32(calldata.size) + 68) - 4, -(8 * floor32(ceil32(calldata.size) + 68)) + 256, mem[196 len floor32(ceil32(calldata.size) + 68) - 68]) << (8 * floor32(ceil32(calldata.size) + 68)) - 256, mem[ceil32(calldata.size) + floor32(ceil32(calldata.size) + 68) + 196 len ceil32(calldata.size) + -floor32(ceil32(calldata.size) + 68) + 68]
    if not return_data.size:
        mem[ceil32(calldata.size) + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return memory
          from ceil32(calldata.size) + 260
           len return_data.size
    mem[ceil32(calldata.size) + ceil32(return_data.size) + 197 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return memory
      from ceil32(calldata.size) + ceil32(return_data.size) + 261
       len return_data.size
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    mem[164] = calldata.size
    mem[196 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + 196] = 0
    mem[ceil32(calldata.size) + 196 len floor32(ceil32(calldata.size) + 68)] = delegateToImplementation(bytes rg1), 0, 32, calldata.size, mem[196 len floor32(ceil32(calldata.size) + 68) - 68]
    mem[ceil32(calldata.size) + floor32(ceil32(calldata.size) + 68) + -(ceil32(calldata.size) + 68 % 32) + 228 len ceil32(calldata.size) + 68 % 32] = mem[(3 * floor32(ceil32(calldata.size) + 68)) + (-2 * ceil32(calldata.size)) - 8 len ceil32(calldata.size) + -floor32(ceil32(calldata.size) + 68) + 68]
    staticcall this.address.mem[floor32(ceil32(calldata.size) + 68) + 96 len 4] with:
            gas gas_remaining wei
           args Mask(8 * floor32(ceil32(calldata.size) + 68) - 4, -(8 * floor32(ceil32(calldata.size) + 68)) + 256, mem[196 len floor32(ceil32(calldata.size) + 68) - 68]) << (8 * floor32(ceil32(calldata.size) + 68)) - 256, mem[ceil32(calldata.size) + floor32(ceil32(calldata.size) + 68) + 196 len ceil32(calldata.size) + -floor32(ceil32(calldata.size) + 68) + 68]
    if not return_data.size:
        mem[ceil32(calldata.size) + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return memory
          from ceil32(calldata.size) + 260
           len return_data.size
    mem[ceil32(calldata.size) + ceil32(return_data.size) + 197 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return memory
      from ceil32(calldata.size) + ceil32(return_data.size) + 261
       len return_data.size
}

function getAccountSnapshot(address arg1) {
    require calldata.size - 4 >= 32
    mem[164] = calldata.size
    mem[196 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + 196] = 0
    mem[ceil32(calldata.size) + 196 len floor32(ceil32(calldata.size) + 68)] = delegateToImplementation(bytes rg1), 0, 32, calldata.size, mem[196 len floor32(ceil32(calldata.size) + 68) - 68]
    mem[ceil32(calldata.size) + floor32(ceil32(calldata.size) + 68) + -(ceil32(calldata.size) + 68 % 32) + 228 len ceil32(calldata.size) + 68 % 32] = mem[(3 * floor32(ceil32(calldata.size) + 68)) + (-2 * ceil32(calldata.size)) - 8 len ceil32(calldata.size) + -floor32(ceil32(calldata.size) + 68) + 68]
    staticcall this.address.mem[floor32(ceil32(calldata.size) + 68) + 96 len 4] with:
            gas gas_remaining wei
           args Mask(8 * floor32(ceil32(calldata.size) + 68) - 4, -(8 * floor32(ceil32(calldata.size) + 68)) + 256, mem[196 len floor32(ceil32(calldata.size) + 68) - 68]) << (8 * floor32(ceil32(calldata.size) + 68)) - 256, mem[ceil32(calldata.size) + floor32(ceil32(calldata.size) + 68) + 196 len ceil32(calldata.size) + -floor32(ceil32(calldata.size) + 68) + 68]
    if not return_data.size:
        mem[ceil32(calldata.size) + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return memory
          from ceil32(calldata.size) + 260
           len return_data.size
    mem[ceil32(calldata.size) + ceil32(return_data.size) + 197 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return memory
      from ceil32(calldata.size) + ceil32(return_data.size) + 261
       len return_data.size
}

function borrowBalanceStored(address arg1) {
    require calldata.size - 4 >= 32
    mem[164] = calldata.size
    mem[196 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + 196] = 0
    mem[ceil32(calldata.size) + 196 len floor32(ceil32(calldata.size) + 68)] = delegateToImplementation(bytes rg1), 0, 32, calldata.size, mem[196 len floor32(ceil32(calldata.size) + 68) - 68]
    mem[ceil32(calldata.size) + floor32(ceil32(calldata.size) + 68) + -(ceil32(calldata.size) + 68 % 32) + 228 len ceil32(calldata.size) + 68 % 32] = mem[(3 * floor32(ceil32(calldata.size) + 68)) + (-2 * ceil32(calldata.size)) - 8 len ceil32(calldata.size) + -floor32(ceil32(calldata.size) + 68) + 68]
    staticcall this.address.mem[floor32(ceil32(calldata.size) + 68) + 96 len 4] with:
            gas gas_remaining wei
           args Mask(8 * floor32(ceil32(calldata.size) + 68) - 4, -(8 * floor32(ceil32(calldata.size) + 68)) + 256, mem[196 len floor32(ceil32(calldata.size) + 68) - 68]) << (8 * floor32(ceil32(calldata.size) + 68)) - 256, mem[ceil32(calldata.size) + floor32(ceil32(calldata.size) + 68) + 196 len ceil32(calldata.size) + -floor32(ceil32(calldata.size) + 68) + 68]
    if not return_data.size:
        mem[ceil32(calldata.size) + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return memory
          from ceil32(calldata.size) + 260
           len return_data.size
    mem[ceil32(calldata.size) + ceil32(return_data.size) + 197 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return memory
      from ceil32(calldata.size) + ceil32(return_data.size) + 261
       len return_data.size
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    mem[164] = calldata.size
    mem[196 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + 196] = 0
    mem[ceil32(calldata.size) + 196 len floor32(ceil32(calldata.size) + 68)] = delegateToImplementation(bytes rg1), 0, 32, calldata.size, mem[196 len floor32(ceil32(calldata.size) + 68) - 68]
    mem[ceil32(calldata.size) + floor32(ceil32(calldata.size) + 68) + -(ceil32(calldata.size) + 68 % 32) + 228 len ceil32(calldata.size) + 68 % 32] = mem[(3 * floor32(ceil32(calldata.size) + 68)) + (-2 * ceil32(calldata.size)) - 8 len ceil32(calldata.size) + -floor32(ceil32(calldata.size) + 68) + 68]
    staticcall this.address.mem[floor32(ceil32(calldata.size) + 68) + 96 len 4] with:
            gas gas_remaining wei
           args Mask(8 * floor32(ceil32(calldata.size) + 68) - 4, -(8 * floor32(ceil32(calldata.size) + 68)) + 256, mem[196 len floor32(ceil32(calldata.size) + 68) - 68]) << (8 * floor32(ceil32(calldata.size) + 68)) - 256, mem[ceil32(calldata.size) + floor32(ceil32(calldata.size) + 68) + 196 len ceil32(calldata.size) + -floor32(ceil32(calldata.size) + 68) + 68]
    if not return_data.size:
        mem[ceil32(calldata.size) + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return memory
          from ceil32(calldata.size) + 260
           len return_data.size
    mem[ceil32(calldata.size) + ceil32(return_data.size) + 197 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return memory
      from ceil32(calldata.size) + ceil32(return_data.size) + 261
       len return_data.size
}

function delegateToImplementation(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    delegate implementationAddress with:
       funct (Mask(32, -(8 * ceil32(arg1.length) + -arg1.length + 4) + 256, 0) >> -(8 * ceil32(arg1.length) + -arg1.length + 4) + 256)
         gas gas_remaining wei
        args mem[ceil32(arg1.length) + 132 len arg1.length - 4]
    if return_data.size:
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    if not delegate.return_code:
        revert with memory
          from 128
           len return_data.size
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = arg1.length
    mem[ceil32(arg1.length) + 192 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), 
               mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
               Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    mem[floor32(arg1.length) + ceil32(arg1.length) + 192] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), 
           mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
           Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
           mem[(2 * ceil32(arg1.length)) + 192 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
}

function _setImplementation(address arg1, bool arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if adminAddress != msg.sender:
        revert with 0, 
                    32,
                    57,
                    0x6b43457263323044656c656761746f723a3a5f736574496d706c656d656e746174696f6e3a2043616c6c6572206d7573742062652061646d69,
                    mem[ceil32(arg3.length) + 253 len 7]
    if not arg2:
        implementationAddress = arg1
        mem[ceil32(arg3.length) + 164] = 32
        mem[ceil32(arg3.length) + 196] = arg3.length
        mem[ceil32(arg3.length) + 228 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[ceil32(arg3.length) + 128] = arg3.length + 68
            mem[64] = arg3.length + ceil32(arg3.length) + 228
            mem[ceil32(arg3.length) + 164 len 28] = 0
            mem[ceil32(arg3.length) + 160 len 4] = _becomeImplementation(bytes rg1)
            mem[arg3.length + ceil32(arg3.length) + 228 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            mem[arg3.length + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 260 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] = mem[ceil32(arg3.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
            delegate implementationAddress.mem[arg3.length + ceil32(arg3.length) + 228 len 4] with:
                 gas gas_remaining wei
                args mem[arg3.length + ceil32(arg3.length) + 232 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] - 4]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 228] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 260 len arg3.length % 32]
            mem[ceil32(arg3.length) + 128] = floor32(arg3.length) + 100
            mem[64] = floor32(arg3.length) + ceil32(arg3.length) + 260
            mem[ceil32(arg3.length) + 164 len 28] = 0
            mem[ceil32(arg3.length) + 160 len 4] = _becomeImplementation(bytes rg1)
            mem[floor32(arg3.length) + ceil32(arg3.length) + 260 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            mem[floor32(arg3.length) + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 292 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] = mem[ceil32(arg3.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
            delegate implementationAddress.mem[floor32(arg3.length) + ceil32(arg3.length) + 260 len 4] with:
                 gas gas_remaining wei
                args mem[floor32(arg3.length) + ceil32(arg3.length) + 264 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] - 4]
        if not return_data.size:
            if not delegate.return_code:
                revert with memory
                  from 128
                   len return_data.size
        else:
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
        ('bool', 'delegate.return_code')
        emit NewImplementation(implementationAddress, implementationAddress);
    else:
        mem[ceil32(arg3.length) + 128] = 4
        mem[64] = ceil32(arg3.length) + 164
        mem[ceil32(arg3.length) + 160 len 4] = _resignImplementation()
        mem[ceil32(arg3.length) + 164 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 196 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] = mem[ceil32(arg3.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
        delegate implementationAddress.mem[ceil32(arg3.length) + 164 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + 168 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] - 4]
        if return_data.size:
            mem[ceil32(arg3.length) + 164] = return_data.size
            mem[ceil32(arg3.length) + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            implementationAddress = arg1
            mem[ceil32(arg3.length) + ceil32(return_data.size) + 233] = arg3.length
            mem[ceil32(arg3.length) + ceil32(return_data.size) + 265 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + 265 len floor32(arg3.length + 68)] = _becomeImplementation(bytes rg1), 0, 32, mem[ceil32(arg3.length) + ceil32(return_data.size) + 233 len floor32(arg3.length + 68) - 36]
                mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + floor32(arg3.length + 68) + -(arg3.length + 68 % 32) + 297 len arg3.length + 68 % 32] = mem[ceil32(arg3.length) + ceil32(return_data.size) + (3 * floor32(arg3.length + 68)) + (-2 * arg3.length) + 61 len arg3.length + -floor32(arg3.length + 68) + 68]
                delegate implementationAddress with:
                   funct (Mask(32, 224, _becomeImplementation(bytes rg1), 0, 32, mem[ceil32(arg3.length) + ceil32(return_data.size) + 233 len floor32(arg3.length + 68) - 36]) >> 224)
                     gas gas_remaining wei
                    args Mask(8 * floor32(arg3.length + 68) - 4, -(8 * floor32(arg3.length + 68)) + 256, mem[ceil32(arg3.length) + ceil32(return_data.size) + 233 len floor32(arg3.length + 68) - 36]) << (8 * floor32(arg3.length + 68)) - 256, mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + floor32(arg3.length + 68) + 265 len arg3.length + -floor32(arg3.length + 68) + 68]
                if not return_data.size:
                    if not delegate.return_code:
                        revert with memory
                          from 128
                           len return_data.size
                    emit NewImplementation(implementationAddress, implementationAddress);
                else:
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit NewImplementation(address rg1, address rg2):
                                           implementationAddress,
                                           implementationAddress,
                                           mem[arg3.length + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 330 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + 265] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + -(arg3.length % 32) + 297 len arg3.length % 32]
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + 297 len floor32(floor32(arg3.length) + 100)] = _becomeImplementation(bytes rg1), 0, 32, arg3.length, mem[ceil32(arg3.length) + ceil32(return_data.size) + 265 len floor32(floor32(arg3.length) + 100) - 68]
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + floor32(floor32(arg3.length) + 100) + -(floor32(arg3.length) + 100 % 32) + 329 len floor32(arg3.length) + 100 % 32] = mem[ceil32(arg3.length) + ceil32(return_data.size) + (3 * floor32(floor32(arg3.length) + 100)) + (-2 * floor32(arg3.length)) - 3 len floor32(arg3.length) + -floor32(floor32(arg3.length) + 100) + 100]
                delegate implementationAddress with:
                   funct (Mask(32, 224, _becomeImplementation(bytes rg1), 0, 32, arg3.length, mem[ceil32(arg3.length) + ceil32(return_data.size) + 265 len floor32(floor32(arg3.length) + 100) - 68]) >> 224)
                     gas gas_remaining wei
                    args Mask(8 * floor32(floor32(arg3.length) + 100) - 4, -(8 * floor32(floor32(arg3.length) + 100)) + 256, mem[ceil32(arg3.length) + ceil32(return_data.size) + 265 len floor32(floor32(arg3.length) + 100) - 68]) << (8 * floor32(floor32(arg3.length) + 100)) - 256, mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + floor32(floor32(arg3.length) + 100) + 297 len floor32(arg3.length) + -floor32(floor32(arg3.length) + 100) + 100]
                if not return_data.size:
                    if not delegate.return_code:
                        revert with memory
                          from 128
                           len return_data.size
                    emit NewImplementation(implementationAddress, implementationAddress);
                else:
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit NewImplementation(address rg1, address rg2):
                                           implementationAddress,
                                           implementationAddress,
                                           mem[floor32(arg3.length) + ceil32(arg3.length) + (2 * ceil32(return_data.size)) + 362 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
        else:
            if not delegate.return_code:
                revert with memory
                  from 128
                   len return_data.size
            implementationAddress = arg1
            mem[ceil32(arg3.length) + 200] = 32
            mem[ceil32(arg3.length) + 232] = arg3.length
            mem[ceil32(arg3.length) + 264 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                mem[ceil32(arg3.length) + 164] = arg3.length + 68
                mem[ceil32(arg3.length) + 200 len 28] = 0
                mem[ceil32(arg3.length) + 196 len 4] = _becomeImplementation(bytes rg1)
                mem[arg3.length + ceil32(arg3.length) + 264 len floor32(arg3.length + 68)] = _becomeImplementation(bytes rg1), 0, 0, mem[ceil32(arg3.length) + 232 len floor32(arg3.length + 68) - 36]
                mem[arg3.length + ceil32(arg3.length) + floor32(arg3.length + 68) + -(arg3.length + 68 % 32) + 296 len arg3.length + 68 % 32] = mem[ceil32(arg3.length) + (3 * floor32(arg3.length + 68)) + (-2 * arg3.length) + 60 len arg3.length + -floor32(arg3.length + 68) + 68]
                delegate implementationAddress with:
                   funct (Mask(32, 224, _becomeImplementation(bytes rg1), 0, 0, mem[ceil32(arg3.length) + 232 len floor32(arg3.length + 68) - 36]) >> 224)
                     gas gas_remaining wei
                    args Mask(8 * floor32(arg3.length + 68) - 4, -(8 * floor32(arg3.length + 68)) + 256, mem[ceil32(arg3.length) + 232 len floor32(arg3.length + 68) - 36]) << (8 * floor32(arg3.length + 68)) - 256, mem[arg3.length + ceil32(arg3.length) + floor32(arg3.length + 68) + 264 len arg3.length + -floor32(arg3.length + 68) + 68]
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 264] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 296 len arg3.length % 32]
                mem[ceil32(arg3.length) + 164] = floor32(arg3.length) + 100
                mem[ceil32(arg3.length) + 200 len 28] = 0
                mem[ceil32(arg3.length) + 196 len 4] = _becomeImplementation(bytes rg1)
                mem[floor32(arg3.length) + ceil32(arg3.length) + 296 len floor32(floor32(arg3.length) + 100)] = _becomeImplementation(bytes rg1), 0, 0, arg3.length, mem[ceil32(arg3.length) + 264 len floor32(floor32(arg3.length) + 100) - 68]
                mem[floor32(arg3.length) + ceil32(arg3.length) + floor32(floor32(arg3.length) + 100) + -(floor32(arg3.length) + 100 % 32) + 328 len floor32(arg3.length) + 100 % 32] = mem[ceil32(arg3.length) + (3 * floor32(floor32(arg3.length) + 100)) + (-2 * floor32(arg3.length)) - 4 len floor32(arg3.length) + -floor32(floor32(arg3.length) + 100) + 100]
                delegate implementationAddress with:
                   funct (Mask(32, 224, _becomeImplementation(bytes rg1), 0, 0, arg3.length, mem[ceil32(arg3.length) + 264 len floor32(floor32(arg3.length) + 100) - 68]) >> 224)
                     gas gas_remaining wei
                    args Mask(8 * floor32(floor32(arg3.length) + 100) - 4, -(8 * floor32(floor32(arg3.length) + 100)) + 256, mem[ceil32(arg3.length) + 264 len floor32(floor32(arg3.length) + 100) - 68]) << (8 * floor32(floor32(arg3.length) + 100)) - 256, mem[floor32(arg3.length) + ceil32(arg3.length) + floor32(floor32(arg3.length) + 100) + 296 len floor32(arg3.length) + -floor32(floor32(arg3.length) + 100) + 100]
            if not return_data.size:
                if not delegate.return_code:
                    revert with memory
                      from 128
                       len return_data.size
            else:
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
            ('bool', 'delegate.return_code')
            emit NewImplementation(implementationAddress, implementationAddress);
}

function delegateToViewImplementation(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 164] = 32
    mem[ceil32(arg1.length) + 196] = arg1.length
    mem[ceil32(arg1.length) + 228 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[ceil32(arg1.length) + 128] = arg1.length + 68
        mem[64] = arg1.length + ceil32(arg1.length) + 228
        mem[ceil32(arg1.length) + 164 len 28] = 0
        mem[ceil32(arg1.length) + 160 len 4] = delegateToImplementation(bytes rg1)
        _113 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[arg1.length + ceil32(arg1.length) + 228 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        mem[arg1.length + ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 260 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32] = mem[ceil32(arg1.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 192 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
        staticcall this.address.mem[arg1.length + ceil32(arg1.length) + 228 len 4] with:
                gas gas_remaining wei
               args mem[arg1.length + ceil32(arg1.length) + 232 len _113 - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with memory
                  from 128
                   len return_data.size
            require arg1.length >= 32
            require mem[128] <= 4294967296
            require mem[128] + 160 <= arg1.length + 128
            require arg1.length + 128 >= mem[mem[128] + 128] + mem[128] + 160 and mem[mem[128] + 128] <= 4294967296
            mem[arg1.length + ceil32(arg1.length) + 228] = mem[mem[128] + 128]
            _239 = mem[mem[128] + 128]
            mem[arg1.length + ceil32(arg1.length) + 260 len ceil32(mem[mem[128] + 128])] = mem[mem[128] + 160 len ceil32(mem[mem[128] + 128])]
            if not _239 % 32:
                mem[64] = _239 + arg1.length + ceil32(arg1.length) + 260
                mem[_239 + arg1.length + ceil32(arg1.length) + 260] = 32
                mem[_239 + arg1.length + ceil32(arg1.length) + 292] = mem[arg1.length + ceil32(arg1.length) + 228]
                mem[_239 + arg1.length + ceil32(arg1.length) + 324 len ceil32(mem[arg1.length + ceil32(arg1.length) + 228])] = mem[arg1.length + ceil32(arg1.length) + 260 len ceil32(mem[arg1.length + ceil32(arg1.length) + 228])]
                if not mem[arg1.length + ceil32(arg1.length) + 228] % 32:
                    return 32, mem[_239 + arg1.length + ceil32(arg1.length) + 292 len mem[arg1.length + ceil32(arg1.length) + 228] + 32]
                mem[floor32(mem[arg1.length + ceil32(arg1.length) + 228]) + _239 + arg1.length + ceil32(arg1.length) + 324] = mem[floor32(mem[arg1.length + ceil32(arg1.length) + 228]) + _239 + arg1.length + ceil32(arg1.length) + -(mem[arg1.length + ceil32(arg1.length) + 228] % 32) + 356 len mem[arg1.length + ceil32(arg1.length) + 228] % 32]
                return Array(len=mem[arg1.length + ceil32(arg1.length) + 228], data=mem[_239 + arg1.length + ceil32(arg1.length) + 324 len floor32(mem[arg1.length + ceil32(arg1.length) + 228]) + 32]), 
            mem[floor32(_239) + arg1.length + ceil32(arg1.length) + 260] = mem[floor32(_239) + arg1.length + ceil32(arg1.length) + -(_239 % 32) + 292 len _239 % 32]
            mem[64] = floor32(_239) + arg1.length + ceil32(arg1.length) + 292
            mem[floor32(_239) + arg1.length + ceil32(arg1.length) + 292] = 32
            mem[floor32(_239) + arg1.length + ceil32(arg1.length) + 324] = mem[arg1.length + ceil32(arg1.length) + 228]
            mem[floor32(_239) + arg1.length + ceil32(arg1.length) + 356 len ceil32(mem[arg1.length + ceil32(arg1.length) + 228])] = mem[arg1.length + ceil32(arg1.length) + 260 len ceil32(mem[arg1.length + ceil32(arg1.length) + 228])]
            if not mem[arg1.length + ceil32(arg1.length) + 228] % 32:
                return 32, mem[floor32(_239) + arg1.length + ceil32(arg1.length) + 324 len mem[arg1.length + ceil32(arg1.length) + 228] + 32]
            mem[floor32(mem[arg1.length + ceil32(arg1.length) + 228]) + floor32(_239) + arg1.length + ceil32(arg1.length) + 356] = mem[floor32(mem[arg1.length + ceil32(arg1.length) + 228]) + floor32(_239) + arg1.length + ceil32(arg1.length) + -(mem[arg1.length + ceil32(arg1.length) + 228] % 32) + 388 len mem[arg1.length + ceil32(arg1.length) + 228] % 32]
            return Array(len=mem[arg1.length + ceil32(arg1.length) + 228], data=mem[floor32(_239) + arg1.length + ceil32(arg1.length) + 356 len floor32(mem[arg1.length + ceil32(arg1.length) + 228]) + 32]), 
        mem[64] = arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 229
        mem[arg1.length + ceil32(arg1.length) + 228] = return_data.size
        mem[arg1.length + ceil32(arg1.length) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _229 = mem[arg1.length + ceil32(arg1.length) + 260]
        require mem[arg1.length + ceil32(arg1.length) + 260] <= 4294967296
        require mem[arg1.length + ceil32(arg1.length) + 260] + 64 <= return_data.size + 32
        require return_data.size + 32 >= mem[arg1.length + ceil32(arg1.length) + mem[arg1.length + ceil32(arg1.length) + 260] + 260] + mem[arg1.length + ceil32(arg1.length) + 260] + 64 and mem[arg1.length + ceil32(arg1.length) + mem[arg1.length + ceil32(arg1.length) + 260] + 260] <= 4294967296
        mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 229] = mem[arg1.length + ceil32(arg1.length) + mem[arg1.length + ceil32(arg1.length) + 260] + 260]
        _240 = mem[arg1.length + ceil32(arg1.length) + _229 + 260]
        mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 261 len ceil32(mem[arg1.length + ceil32(arg1.length) + _229 + 260])] = mem[arg1.length + ceil32(arg1.length) + _229 + 292 len ceil32(mem[arg1.length + ceil32(arg1.length) + _229 + 260])]
        if not _240 % 32:
            mem[64] = _240 + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 261
            mem[_240 + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 261] = 32
            mem[_240 + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 293] = mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 229]
            mem[_240 + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 325 len ceil32(mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 229])] = mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 261 len ceil32(mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 229])]
            if not mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 229] % 32:
                return 32, mem[_240 + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 293 len mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 229] + 32], 
            mem[floor32(mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 229]) + _240 + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 325] = mem[floor32(mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 229]) + _240 + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + -(mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 229] % 32) + 357 len mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 229] % 32]
            return Array(len=mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 229], data=mem[_240 + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 325 len floor32(mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 229]) + 32]), 
        mem[floor32(_240) + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 261] = mem[floor32(_240) + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + -(_240 % 32) + 293 len _240 % 32]
        mem[64] = floor32(_240) + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 293
        mem[floor32(_240) + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 293] = 32
        mem[floor32(_240) + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 325] = mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 229]
        mem[floor32(_240) + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 357 len ceil32(mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 229])] = mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 261 len ceil32(mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 229])]
        if not mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 229] % 32:
            return 32, mem[floor32(_240) + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 325 len mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 229] + 32], 
        mem[floor32(mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 229]) + floor32(_240) + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 357] = mem[floor32(mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 229]) + floor32(_240) + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + -(mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 229] % 32) + 389 len mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 229] % 32]
        return Array(len=mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 229], data=mem[floor32(_240) + arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 357 len floor32(mem[arg1.length + ceil32(arg1.length) + ceil32(return_data.size) + 229]) + 32]), 
    mem[floor32(arg1.length) + ceil32(arg1.length) + 228] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 260 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = floor32(arg1.length) + 100
    mem[64] = floor32(arg1.length) + ceil32(arg1.length) + 260
    mem[ceil32(arg1.length) + 164 len 28] = 0
    mem[ceil32(arg1.length) + 160 len 4] = delegateToImplementation(bytes rg1)
    _118 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[floor32(arg1.length) + ceil32(arg1.length) + 260 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    mem[floor32(arg1.length) + ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 292 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32] = mem[ceil32(arg1.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 192 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
    staticcall this.address.mem[floor32(arg1.length) + ceil32(arg1.length) + 260 len 4] with:
            gas gas_remaining wei
           args mem[floor32(arg1.length) + ceil32(arg1.length) + 264 len _118 - 4]
    if not return_data.size:
        if not ext_call.success:
            revert with memory
              from 128
               len return_data.size
        require arg1.length >= 32
        require mem[128] <= 4294967296
        require mem[128] + 160 <= arg1.length + 128
        require arg1.length + 128 >= mem[mem[128] + 128] + mem[128] + 160 and mem[mem[128] + 128] <= 4294967296
        mem[floor32(arg1.length) + ceil32(arg1.length) + 260] = mem[mem[128] + 128]
        _241 = mem[mem[128] + 128]
        mem[floor32(arg1.length) + ceil32(arg1.length) + 292 len ceil32(mem[mem[128] + 128])] = mem[mem[128] + 160 len ceil32(mem[mem[128] + 128])]
        if not _241 % 32:
            mem[_241 + floor32(arg1.length) + ceil32(arg1.length) + 292] = 32
            mem[_241 + floor32(arg1.length) + ceil32(arg1.length) + 324] = mem[floor32(arg1.length) + ceil32(arg1.length) + 260]
            mem[_241 + floor32(arg1.length) + ceil32(arg1.length) + 356 len ceil32(mem[floor32(arg1.length) + ceil32(arg1.length) + 260])] = mem[floor32(arg1.length) + ceil32(arg1.length) + 292 len ceil32(mem[floor32(arg1.length) + ceil32(arg1.length) + 260])]
            if not mem[floor32(arg1.length) + ceil32(arg1.length) + 260] % 32:
                return 32, mem[_241 + floor32(arg1.length) + ceil32(arg1.length) + 324 len mem[floor32(arg1.length) + ceil32(arg1.length) + 260] + 32], 
            mem[floor32(mem[floor32(arg1.length) + ceil32(arg1.length) + 260]) + _241 + floor32(arg1.length) + ceil32(arg1.length) + 356] = mem[floor32(mem[floor32(arg1.length) + ceil32(arg1.length) + 260]) + _241 + floor32(arg1.length) + ceil32(arg1.length) + -(mem[floor32(arg1.length) + ceil32(arg1.length) + 260] % 32) + 388 len mem[floor32(arg1.length) + ceil32(arg1.length) + 260] % 32]
            return Array(len=mem[floor32(arg1.length) + ceil32(arg1.length) + 260], data=mem[_241 + floor32(arg1.length) + ceil32(arg1.length) + 356 len floor32(mem[floor32(arg1.length) + ceil32(arg1.length) + 260]) + 32]), 
        mem[floor32(_241) + floor32(arg1.length) + ceil32(arg1.length) + 292] = mem[floor32(_241) + floor32(arg1.length) + ceil32(arg1.length) + -(_241 % 32) + 324 len _241 % 32]
        mem[floor32(_241) + floor32(arg1.length) + ceil32(arg1.length) + 324] = 32
        mem[floor32(_241) + floor32(arg1.length) + ceil32(arg1.length) + 356] = mem[floor32(arg1.length) + ceil32(arg1.length) + 260]
        mem[floor32(_241) + floor32(arg1.length) + ceil32(arg1.length) + 388 len ceil32(mem[floor32(arg1.length) + ceil32(arg1.length) + 260])] = mem[floor32(arg1.length) + ceil32(arg1.length) + 292 len ceil32(mem[floor32(arg1.length) + ceil32(arg1.length) + 260])]
        if not mem[floor32(arg1.length) + ceil32(arg1.length) + 260] % 32:
            return 32, mem[floor32(_241) + floor32(arg1.length) + ceil32(arg1.length) + 356 len mem[floor32(arg1.length) + ceil32(arg1.length) + 260] + 32], 
        mem[floor32(mem[floor32(arg1.length) + ceil32(arg1.length) + 260]) + floor32(_241) + floor32(arg1.length) + ceil32(arg1.length) + 388] = mem[floor32(mem[floor32(arg1.length) + ceil32(arg1.length) + 260]) + floor32(_241) + floor32(arg1.length) + ceil32(arg1.length) + -(mem[floor32(arg1.length) + ceil32(arg1.length) + 260] % 32) + 420 len mem[floor32(arg1.length) + ceil32(arg1.length) + 260] % 32]
        return Array(len=mem[floor32(arg1.length) + ceil32(arg1.length) + 260], data=mem[floor32(_241) + floor32(arg1.length) + ceil32(arg1.length) + 388 len floor32(mem[floor32(arg1.length) + ceil32(arg1.length) + 260]) + 32]), 
    mem[64] = floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 261
    mem[floor32(arg1.length) + ceil32(arg1.length) + 260] = return_data.size
    mem[floor32(arg1.length) + ceil32(arg1.length) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _233 = mem[floor32(arg1.length) + ceil32(arg1.length) + 292]
    require mem[floor32(arg1.length) + ceil32(arg1.length) + 292] <= 4294967296
    require mem[floor32(arg1.length) + ceil32(arg1.length) + 292] + 64 <= return_data.size + 32
    require return_data.size + 32 >= mem[floor32(arg1.length) + ceil32(arg1.length) + mem[floor32(arg1.length) + ceil32(arg1.length) + 292] + 292] + mem[floor32(arg1.length) + ceil32(arg1.length) + 292] + 64 and mem[floor32(arg1.length) + ceil32(arg1.length) + mem[floor32(arg1.length) + ceil32(arg1.length) + 292] + 292] <= 4294967296
    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 261] = mem[floor32(arg1.length) + ceil32(arg1.length) + mem[floor32(arg1.length) + ceil32(arg1.length) + 292] + 292]
    _242 = mem[floor32(arg1.length) + ceil32(arg1.length) + _233 + 292]
    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 293 len ceil32(mem[floor32(arg1.length) + ceil32(arg1.length) + _233 + 292])] = mem[floor32(arg1.length) + ceil32(arg1.length) + _233 + 324 len ceil32(mem[floor32(arg1.length) + ceil32(arg1.length) + _233 + 292])]
    if not _242 % 32:
        mem[_242 + floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 293] = 32
        mem[_242 + floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 325] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 261]
        mem[_242 + floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 357 len ceil32(mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 261])] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 293 len ceil32(mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 261])]
        if not mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 261] % 32:
            return 32, mem[_242 + floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 325 len mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 261] + 32], 
        mem[floor32(mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 261]) + _242 + floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 357] = mem[floor32(mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 261]) + _242 + floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + -(mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 261] % 32) + 389 len mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 261] % 32]
        return Array(len=mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 261], data=mem[_242 + floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 357 len floor32(mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 261]) + 32]), 
    mem[floor32(_242) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 293] = mem[floor32(_242) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + -(_242 % 32) + 325 len _242 % 32]
    mem[floor32(_242) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 325] = 32
    mem[floor32(_242) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 357] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 261]
    mem[floor32(_242) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 389 len ceil32(mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 261])] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 293 len ceil32(mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 261])]
    if not mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 261] % 32:
        return 32, mem[floor32(_242) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 357 len mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 261] + 32], 
    mem[floor32(mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 261]) + floor32(_242) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 389] = mem[floor32(mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 261]) + floor32(_242) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + -(mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 261] % 32) + 421 len mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 261] % 32]
    return Array(len=mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 261], data=mem[floor32(_242) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 389 len floor32(mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(return_data.size) + 261]) + 32]), 
}



}
