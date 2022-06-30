contract main {




// =====================  Runtime code  =====================


const sub_fe9f72cd(?) = 1


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

function _fallback() payable {
    if msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0xfe57426570323044656c656761746f723a66616c6c6261636b3a2063616e6e6f742073656e642076616c756520746f2066616c6c626163,
                    mem[219 len 9]
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function _acceptAdmin() {
    mem[128 len 4] = unknown_0xe9c714f2(?????)
    mem[132 len 0] = None
    mem[160 len 4] = mem[156 len 4]
    delegate implementationAddress.mem[132 len 4] with:
         gas gas_remaining wei
        args 
    if not return_data.size:
        require not delegate.return_code
        revert with memory
          from 128
           len return_data.size
    mem[164 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 133] = mem[164]
    return memory
      from ceil32(return_data.size) + 133
       len 32
}

function accrueInterest() {
    mem[128 len 4] = unknown_0xa6afed95(?????)
    mem[132 len 0] = None
    mem[160 len 4] = mem[156 len 4]
    delegate implementationAddress.mem[132 len 4] with:
         gas gas_remaining wei
        args 
    if not return_data.size:
        require not delegate.return_code
        revert with memory
          from 128
           len return_data.size
    mem[164 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 133] = mem[164]
    return memory
      from ceil32(return_data.size) + 133
       len 32
}

function totalBorrowsCurrent() {
    mem[128 len 4] = unknown_0x73acee98(?????)
    mem[132 len 0] = None
    mem[160 len 4] = mem[156 len 4]
    delegate implementationAddress.mem[132 len 4] with:
         gas gas_remaining wei
        args 
    if not return_data.size:
        require not delegate.return_code
        revert with memory
          from 128
           len return_data.size
    mem[164 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 133] = mem[164]
    return memory
      from ceil32(return_data.size) + 133
       len 32
}

function exchangeRateCurrent() {
    mem[128 len 4] = unknown_0xbd6d894d(?????)
    mem[132 len 0] = None
    mem[160 len 4] = mem[156 len 4]
    delegate implementationAddress.mem[132 len 4] with:
         gas gas_remaining wei
        args 
    if not return_data.size:
        require not delegate.return_code
        revert with memory
          from 128
           len return_data.size
    mem[164 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 133] = mem[164]
    return memory
      from ceil32(return_data.size) + 133
       len 32
}

function mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[132] = arg1
    mem[132 len 28] = Mask(224, 32, arg1) >> 32
    mem[128 len 4] = unknown_0xa0712d68(?????)
    mem[164] = unknown_0xa0712d68(?????), Mask(224, 32, arg1) >> 32
    mem[224 len 4] = uint32(arg1)
    delegate implementationAddress.0xa0712d68 with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) >> 32, mem[196 len 4]
    if not return_data.size:
        if not delegate.return_code:
            revert with memory
              from 128
               len return_data.size
        return unknown_0xa0712d68(?????), Mask(224, 32, arg1) >> 32
    mem[196 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 165] = mem[196 len 28], uint32(arg1)
    return memory
      from ceil32(return_data.size) + 165
       len 32
}

function borrow(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[132] = arg1
    mem[132 len 28] = Mask(224, 32, arg1) >> 32
    mem[128 len 4] = unknown_0xc5ebeaec(?????)
    mem[164] = unknown_0xc5ebeaec(?????), Mask(224, 32, arg1) >> 32
    mem[224 len 4] = uint32(arg1)
    delegate implementationAddress.0xc5ebeaec with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) >> 32, mem[196 len 4]
    if not return_data.size:
        if not delegate.return_code:
            revert with memory
              from 128
               len return_data.size
        return unknown_0xc5ebeaec(?????), Mask(224, 32, arg1) >> 32
    mem[196 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 165] = mem[196 len 28], uint32(arg1)
    return memory
      from ceil32(return_data.size) + 165
       len 32
}

function redeem(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[132] = arg1
    mem[132 len 28] = Mask(224, 32, arg1) >> 32
    mem[128 len 4] = unknown_0xdb006a75(?????)
    mem[164] = unknown_0xdb006a75(?????), Mask(224, 32, arg1) >> 32
    mem[224 len 4] = uint32(arg1)
    delegate implementationAddress.0xdb006a75 with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) >> 32, mem[196 len 4]
    if not return_data.size:
        if not delegate.return_code:
            revert with memory
              from 128
               len return_data.size
        return unknown_0xdb006a75(?????), Mask(224, 32, arg1) >> 32
    mem[196 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 165] = mem[196 len 28], uint32(arg1)
    return memory
      from ceil32(return_data.size) + 165
       len 32
}

function _addReserves(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[132] = arg1
    mem[132 len 28] = Mask(224, 32, arg1) >> 32
    mem[128 len 4] = unknown_0x3e941010(?????)
    mem[164] = unknown_0x3e941010(?????), Mask(224, 32, arg1) >> 32
    mem[224 len 4] = uint32(arg1)
    delegate implementationAddress.0x3e941010 with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) >> 32, mem[196 len 4]
    if not return_data.size:
        if not delegate.return_code:
            revert with memory
              from 128
               len return_data.size
        return unknown_0x3e941010(?????), Mask(224, 32, arg1) >> 32
    mem[196 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 165] = mem[196 len 28], uint32(arg1)
    return memory
      from ceil32(return_data.size) + 165
       len 32
}

function _reduceReserves(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[132] = arg1
    mem[132 len 28] = Mask(224, 32, arg1) >> 32
    mem[128 len 4] = unknown_0x601a0bf1(?????)
    mem[164] = unknown_0x601a0bf1(?????), Mask(224, 32, arg1) >> 32
    mem[224 len 4] = uint32(arg1)
    delegate implementationAddress.0x601a0bf1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) >> 32, mem[196 len 4]
    if not return_data.size:
        if not delegate.return_code:
            revert with memory
              from 128
               len return_data.size
        return unknown_0x601a0bf1(?????), Mask(224, 32, arg1) >> 32
    mem[196 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 165] = mem[196 len 28], uint32(arg1)
    return memory
      from ceil32(return_data.size) + 165
       len 32
}

function redeemUnderlying(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[132] = arg1
    mem[132 len 28] = Mask(224, 32, arg1) >> 32
    mem[128 len 4] = unknown_0x852a12e3(?????)
    mem[164] = unknown_0x852a12e3(?????), Mask(224, 32, arg1) >> 32
    mem[224 len 4] = uint32(arg1)
    delegate implementationAddress.0x852a12e3 with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) >> 32, mem[196 len 4]
    if not return_data.size:
        if not delegate.return_code:
            revert with memory
              from 128
               len return_data.size
        return unknown_0x852a12e3(?????), Mask(224, 32, arg1) >> 32
    mem[196 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 165] = mem[196 len 28], uint32(arg1)
    return memory
      from ceil32(return_data.size) + 165
       len 32
}

function _setReserveFactor(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[132] = arg1
    mem[132 len 28] = Mask(224, 32, arg1) >> 32
    mem[128 len 4] = unknown_0xfca7820b(?????)
    mem[164] = unknown_0xfca7820b(?????), Mask(224, 32, arg1) >> 32
    mem[224 len 4] = uint32(arg1)
    delegate implementationAddress.0xfca7820b with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) >> 32, mem[196 len 4]
    if not return_data.size:
        if not delegate.return_code:
            revert with memory
              from 128
               len return_data.size
        return unknown_0xfca7820b(?????), Mask(224, 32, arg1) >> 32
    mem[196 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 165] = mem[196 len 28], uint32(arg1)
    return memory
      from ceil32(return_data.size) + 165
       len 32
}

function repayBorrow(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[132] = arg1
    mem[132 len 28] = Mask(224, 32, arg1) >> 32
    mem[128 len 4] = repayBorrow(uint256 arg1)
    mem[164] = repayBorrow(uint256 arg1), Mask(224, 32, arg1) >> 32
    mem[224 len 4] = uint32(arg1)
    delegate implementationAddress.repayBorrow(uint256 arg1) with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) >> 32, mem[196 len 4]
    if not return_data.size:
        if not delegate.return_code:
            revert with memory
              from 128
               len return_data.size
        return repayBorrow(uint256 arg1), Mask(224, 32, arg1) >> 32
    mem[196 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 165] = mem[196 len 28], uint32(arg1)
    return memory
      from ceil32(return_data.size) + 165
       len 32
}

function _setComptroller(address arg1) {
    require calldata.size - 4 >= 32
    mem[132] = arg1
    mem[132 len 28] = address(arg1) << 64
    mem[128 len 4] = unknown_0x4576b5db(?????)
    mem[164] = unknown_0x4576b5db(?????), address(arg1) << 64
    mem[224 len 4] = 0
    mem[196 len 0] = 0
    delegate implementationAddress.0x0 with:
         gas gas_remaining wei
        args Mask(224, 0, unknown_0x4576b5db(?????), address(arg1) << 64), mem[196 len 4]
    if not return_data.size:
        if not delegate.return_code:
            revert with memory
              from 128
               len return_data.size
        return unknown_0x4576b5db(?????), address(arg1) << 64
    mem[196 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 165] = mem[196 len 28], 0
    return memory
      from ceil32(return_data.size) + 165
       len 32
}

function _setPendingAdmin(address arg1) {
    require calldata.size - 4 >= 32
    mem[132] = arg1
    mem[132 len 28] = address(arg1) << 64
    mem[128 len 4] = unknown_0xb71d1a0c(?????)
    mem[164] = unknown_0xb71d1a0c(?????), address(arg1) << 64
    mem[224 len 4] = 0
    mem[196 len 0] = 0
    delegate implementationAddress.0x0 with:
         gas gas_remaining wei
        args Mask(224, 0, unknown_0xb71d1a0c(?????), address(arg1) << 64), mem[196 len 4]
    if not return_data.size:
        if not delegate.return_code:
            revert with memory
              from 128
               len return_data.size
        return unknown_0xb71d1a0c(?????), address(arg1) << 64
    mem[196 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 165] = mem[196 len 28], 0
    return memory
      from ceil32(return_data.size) + 165
       len 32
}

function balanceOfUnderlying(address arg1) {
    require calldata.size - 4 >= 32
    mem[132] = arg1
    mem[132 len 28] = address(arg1) << 64
    mem[128 len 4] = unknown_0x3af9e669(?????)
    mem[164] = unknown_0x3af9e669(?????), address(arg1) << 64
    mem[224 len 4] = 0
    mem[196 len 0] = 0
    delegate implementationAddress.0x0 with:
         gas gas_remaining wei
        args Mask(224, 0, unknown_0x3af9e669(?????), address(arg1) << 64), mem[196 len 4]
    if not return_data.size:
        if not delegate.return_code:
            revert with memory
              from 128
               len return_data.size
        return unknown_0x3af9e669(?????), address(arg1) << 64
    mem[196 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 165] = mem[196 len 28], 0
    return memory
      from ceil32(return_data.size) + 165
       len 32
}

function borrowBalanceCurrent(address arg1) {
    require calldata.size - 4 >= 32
    mem[132] = arg1
    mem[132 len 28] = address(arg1) << 64
    mem[128 len 4] = unknown_0x17bfdfbc(?????)
    mem[164] = unknown_0x17bfdfbc(?????), address(arg1) << 64
    mem[224 len 4] = 0
    mem[196 len 0] = 0
    delegate implementationAddress.0x0 with:
         gas gas_remaining wei
        args Mask(224, 0, unknown_0x17bfdfbc(?????), address(arg1) << 64), mem[196 len 4]
    if not return_data.size:
        if not delegate.return_code:
            revert with memory
              from 128
               len return_data.size
        return unknown_0x17bfdfbc(?????), address(arg1) << 64
    mem[196 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 165] = mem[196 len 28], 0
    return memory
      from ceil32(return_data.size) + 165
       len 32
}

function _setInterestRateModel(address arg1) {
    require calldata.size - 4 >= 32
    mem[132] = arg1
    mem[132 len 28] = address(arg1) << 64
    mem[128 len 4] = unknown_0xf2b3abbd(?????)
    mem[164] = unknown_0xf2b3abbd(?????), address(arg1) << 64
    mem[224 len 4] = 0
    mem[196 len 0] = 0
    delegate implementationAddress.0x0 with:
         gas gas_remaining wei
        args Mask(224, 0, unknown_0xf2b3abbd(?????), address(arg1) << 64), mem[196 len 4]
    if not return_data.size:
        if not delegate.return_code:
            revert with memory
              from 128
               len return_data.size
        return unknown_0xf2b3abbd(?????), address(arg1) << 64
    mem[196 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 165] = mem[196 len 28], 0
    return memory
      from ceil32(return_data.size) + 165
       len 32
}

function mintBehalf(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    mem[132] = arg1
    mem[164] = arg2
    mem[132 len 28] = address(arg1) << 64
    mem[128 len 4] = unknown_0x23323e03(?????)
    mem[196 len 64] = unknown_0x23323e03(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
    mem[288 len 4] = uint32(arg2)
    delegate implementationAddress.0x0 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not delegate.return_code:
            revert with memory
              from 128
               len return_data.size
        return unknown_0x23323e03(?????), address(arg1) << 64
    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 197] = mem[228]
    return memory
      from ceil32(return_data.size) + 197
       len 32
}

function repayBorrowBehalf(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    mem[132] = arg1
    mem[164] = arg2
    mem[132 len 28] = address(arg1) << 64
    mem[128 len 4] = unknown_0x2608f818(?????)
    mem[196 len 64] = unknown_0x2608f818(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
    mem[288 len 4] = uint32(arg2)
    delegate implementationAddress.0x0 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not delegate.return_code:
            revert with memory
              from 128
               len return_data.size
        return unknown_0x2608f818(?????), address(arg1) << 64
    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 197] = mem[228]
    return memory
      from ceil32(return_data.size) + 197
       len 32
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    mem[132] = arg1
    mem[164] = arg2
    mem[132 len 28] = address(arg1) << 64
    mem[128 len 4] = unknown_0xa9059cbb(?????)
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
    mem[288 len 4] = uint32(arg2)
    delegate implementationAddress.0x0 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not delegate.return_code:
            revert with memory
              from 128
               len return_data.size
        return bool(unknown_0xa9059cbb(?????), address(arg1) << 64)
    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 197] = bool(mem[228])
    return memory
      from ceil32(return_data.size) + 197
       len 32
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    mem[132] = arg1
    mem[164] = arg2
    mem[132 len 28] = address(arg1) << 64
    mem[128 len 4] = approve(address arg1, uint256 arg2)
    mem[196 len 64] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
    mem[288 len 4] = uint32(arg2)
    delegate implementationAddress.0x0 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not delegate.return_code:
            revert with memory
              from 128
               len return_data.size
        return bool(approve(address arg1, uint256 arg2), address(arg1) << 64)
    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 197] = bool(mem[228])
    return memory
      from ceil32(return_data.size) + 197
       len 32
}

function seize(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    mem[132] = arg1
    mem[164] = arg2
    mem[196] = arg3
    mem[132 len 28] = address(arg1) << 64
    mem[128 len 4] = unknown_0xb2a02ff1(?????)
    mem[228 len 96] = unknown_0xb2a02ff1(?????), address(arg1) << 64, 0, address(arg2), Mask(224, 32, arg3) >> 32
    mem[352 len 4] = uint32(arg3)
    delegate implementationAddress.0x0 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 480, mem[324 len 4]
    if not return_data.size:
        if not delegate.return_code:
            revert with memory
              from 128
               len return_data.size
        return unknown_0xb2a02ff1(?????), address(arg1) << 64
    mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 229] = mem[260]
    return memory
      from ceil32(return_data.size) + 229
       len 32
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    mem[132] = arg1
    mem[164] = arg2
    mem[196] = arg3
    mem[132 len 28] = address(arg1) << 64
    mem[128 len 4] = unknown_0x23b872dd(?????)
    mem[228 len 96] = unknown_0x23b872dd(?????), address(arg1) << 64, 0, address(arg2), Mask(224, 32, arg3) >> 32
    mem[352 len 4] = uint32(arg3)
    delegate implementationAddress.0x0 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 480, mem[324 len 4]
    if not return_data.size:
        if not delegate.return_code:
            revert with memory
              from 128
               len return_data.size
        return bool(unknown_0x23b872dd(?????), address(arg1) << 64)
    mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 229] = bool(mem[260])
    return memory
      from ceil32(return_data.size) + 229
       len 32
}

function liquidateBorrow(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    mem[132] = arg1
    mem[164] = arg2
    mem[196] = arg3
    mem[132 len 28] = address(arg1) << 64
    mem[128 len 4] = unknown_0xf5e3c462(?????)
    mem[228 len 96] = unknown_0xf5e3c462(?????), address(arg1) << 64, 0, arg2, address(arg3) << 64
    mem[352 len 4] = 0
    delegate implementationAddress with:
       funct uint32(arg2)
         gas gas_remaining wei
        args Mask(736, -512, unknown_0xf5e3c462(?????), address(arg1) << 64, 0, arg2, address(arg3) << 64) << 512, mem[324 len 4]
    if not return_data.size:
        if not delegate.return_code:
            revert with memory
              from 128
               len return_data.size
        return unknown_0xf5e3c462(?????), address(arg1) << 64
    mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 229] = mem[260]
    return memory
      from ceil32(return_data.size) + 229
       len 32
}

function getCash() {
    mem[128 len 4] = unknown_0x3b1d21a2(?????)
    mem[168] = 32
    mem[200] = 4
    mem[232] = mem[156 len 4]
    mem[132] = 100
    mem[168 len 28] = 0
    mem[164 len 4] = delegateToImplementation(bytes arg1)
    mem[264 len 96] = delegateToImplementation(bytes arg1), 0, 0, 4, mem[232 len 28]
    mem[388 len 4] = mem[252 len 4]
    staticcall this.address.0x4 with:
            gas gas_remaining wei
           args Mask(736, -512, mem[232 len 28]) << 512, mem[360 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with memory
          from 128
           len return_data.size
    mem[264] = return_data.size
    mem[296 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _186 = mem[296]
    require mem[296] <= 4294967296
    require mem[296] + 64 <= return_data.size + 32
    require return_data.size + 32 >= mem[mem[296] + 296] + mem[296] + 64 and mem[mem[296] + 296] <= 4294967296
    mem[ceil32(return_data.size) + 265] = mem[mem[296] + 296]
    _195 = mem[_186 + 296]
    mem[ceil32(return_data.size) + 297 len ceil32(mem[_186 + 296])] = mem[_186 + 328 len ceil32(mem[_186 + 296])]
    if not _195 % 32:
        require mem[ceil32(return_data.size) + 265] >= 32
        mem[_195 + ceil32(return_data.size) + 297] = mem[ceil32(return_data.size) + 297]
        return memory
          from _195 + ceil32(return_data.size) + 297
           len 32
    mem[floor32(_195) + ceil32(return_data.size) + 297] = mem[floor32(_195) + ceil32(return_data.size) + -(_195 % 32) + 329 len _195 % 32]
    require mem[ceil32(return_data.size) + 265] >= 32
    return memory
      from ceil32(return_data.size) + 297
       len 32
}

function exchangeRateStored() {
    mem[128 len 4] = unknown_0x182df0f5(?????)
    mem[168] = 32
    mem[200] = 4
    mem[232] = mem[156 len 4]
    mem[132] = 100
    mem[168 len 28] = 0
    mem[164 len 4] = delegateToImplementation(bytes arg1)
    mem[264 len 96] = delegateToImplementation(bytes arg1), 0, 0, 4, mem[232 len 28]
    mem[388 len 4] = mem[252 len 4]
    staticcall this.address.0x4 with:
            gas gas_remaining wei
           args Mask(736, -512, mem[232 len 28]) << 512, mem[360 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with memory
          from 128
           len return_data.size
    mem[264] = return_data.size
    mem[296 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _186 = mem[296]
    require mem[296] <= 4294967296
    require mem[296] + 64 <= return_data.size + 32
    require return_data.size + 32 >= mem[mem[296] + 296] + mem[296] + 64 and mem[mem[296] + 296] <= 4294967296
    mem[ceil32(return_data.size) + 265] = mem[mem[296] + 296]
    _195 = mem[_186 + 296]
    mem[ceil32(return_data.size) + 297 len ceil32(mem[_186 + 296])] = mem[_186 + 328 len ceil32(mem[_186 + 296])]
    if not _195 % 32:
        require mem[ceil32(return_data.size) + 265] >= 32
        mem[_195 + ceil32(return_data.size) + 297] = mem[ceil32(return_data.size) + 297]
        return memory
          from _195 + ceil32(return_data.size) + 297
           len 32
    mem[floor32(_195) + ceil32(return_data.size) + 297] = mem[floor32(_195) + ceil32(return_data.size) + -(_195 % 32) + 329 len _195 % 32]
    require mem[ceil32(return_data.size) + 265] >= 32
    return memory
      from ceil32(return_data.size) + 297
       len 32
}

function supplyRatePerBlock() {
    mem[128 len 4] = unknown_0xae9d70b0(?????)
    mem[168] = 32
    mem[200] = 4
    mem[232] = mem[156 len 4]
    mem[132] = 100
    mem[168 len 28] = 0
    mem[164 len 4] = delegateToImplementation(bytes arg1)
    mem[264 len 96] = delegateToImplementation(bytes arg1), 0, 0, 4, mem[232 len 28]
    mem[388 len 4] = mem[252 len 4]
    staticcall this.address.0x4 with:
            gas gas_remaining wei
           args Mask(736, -512, mem[232 len 28]) << 512, mem[360 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with memory
          from 128
           len return_data.size
    mem[264] = return_data.size
    mem[296 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _186 = mem[296]
    require mem[296] <= 4294967296
    require mem[296] + 64 <= return_data.size + 32
    require return_data.size + 32 >= mem[mem[296] + 296] + mem[296] + 64 and mem[mem[296] + 296] <= 4294967296
    mem[ceil32(return_data.size) + 265] = mem[mem[296] + 296]
    _195 = mem[_186 + 296]
    mem[ceil32(return_data.size) + 297 len ceil32(mem[_186 + 296])] = mem[_186 + 328 len ceil32(mem[_186 + 296])]
    if not _195 % 32:
        require mem[ceil32(return_data.size) + 265] >= 32
        mem[_195 + ceil32(return_data.size) + 297] = mem[ceil32(return_data.size) + 297]
        return memory
          from _195 + ceil32(return_data.size) + 297
           len 32
    mem[floor32(_195) + ceil32(return_data.size) + 297] = mem[floor32(_195) + ceil32(return_data.size) + -(_195 % 32) + 329 len _195 % 32]
    require mem[ceil32(return_data.size) + 265] >= 32
    return memory
      from ceil32(return_data.size) + 297
       len 32
}

function borrowRatePerBlock() {
    mem[128 len 4] = unknown_0xf8f9da28(?????)
    mem[168] = 32
    mem[200] = 4
    mem[232] = mem[156 len 4]
    mem[132] = 100
    mem[168 len 28] = 0
    mem[164 len 4] = delegateToImplementation(bytes arg1)
    mem[264 len 96] = delegateToImplementation(bytes arg1), 0, 0, 4, mem[232 len 28]
    mem[388 len 4] = mem[252 len 4]
    staticcall this.address.0x4 with:
            gas gas_remaining wei
           args Mask(736, -512, mem[232 len 28]) << 512, mem[360 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with memory
          from 128
           len return_data.size
    mem[264] = return_data.size
    mem[296 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _186 = mem[296]
    require mem[296] <= 4294967296
    require mem[296] + 64 <= return_data.size + 32
    require return_data.size + 32 >= mem[mem[296] + 296] + mem[296] + 64 and mem[mem[296] + 296] <= 4294967296
    mem[ceil32(return_data.size) + 265] = mem[mem[296] + 296]
    _195 = mem[_186 + 296]
    mem[ceil32(return_data.size) + 297 len ceil32(mem[_186 + 296])] = mem[_186 + 328 len ceil32(mem[_186 + 296])]
    if not _195 % 32:
        require mem[ceil32(return_data.size) + 265] >= 32
        mem[_195 + ceil32(return_data.size) + 297] = mem[ceil32(return_data.size) + 297]
        return memory
          from _195 + ceil32(return_data.size) + 297
           len 32
    mem[floor32(_195) + ceil32(return_data.size) + 297] = mem[floor32(_195) + ceil32(return_data.size) + -(_195 % 32) + 329 len _195 % 32]
    require mem[ceil32(return_data.size) + 265] >= 32
    return memory
      from ceil32(return_data.size) + 297
       len 32
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

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    mem[132] = arg1
    mem[96] = 36
    mem[132 len 28] = address(arg1) << 64
    mem[128 len 4] = unknown_0x70a08231(?????)
    mem[200] = 32
    mem[232] = 36
    mem[264 len 64] = unknown_0x70a08231(?????), address(arg1) << 64, 0, mem[164 len 28]
    mem[296] = 0
    mem[164] = 132
    mem[64] = 328
    mem[200 len 28] = 0
    mem[196 len 4] = delegateToImplementation(bytes arg1)
    mem[328 len 128] = delegateToImplementation(bytes arg1), 0, 0, 36, mem[264], 0
    mem[484 len 4] = 0
    staticcall this.address.mem[292 len 4] with:
            gas gas_remaining wei
           args Mask(992, -768, mem[264], 0) << 768, mem[456 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with memory
              from 128
               len return_data.size
        require unknown_0x70a08231(?????), address(arg1) << 64 <= 4294967296
        require unknown_0x70a08231(?????), address(arg1) << 64 + 160 <= 164
        require 164 >= mem[unknown_0x70a08231(?????), address(arg1) << 64 + 128] + unknown_0x70a08231(?????), address(arg1) << 64 + 160 and mem[unknown_0x70a08231(?????), address(arg1) << 64 + 128] <= 4294967296
        mem[328] = mem[unknown_0x70a08231(?????), address(arg1) << 64 + 128]
        _195 = mem[unknown_0x70a08231(?????), address(arg1) << 64 + 128]
        mem[360 len ceil32(mem[unknown_0x70a08231(?????), address(arg1) << 64 + 128])] = mem[unknown_0x70a08231(?????), address(arg1) << 64 + 160 len ceil32(mem[unknown_0x70a08231(?????), address(arg1) << 64 + 128])]
        if not _195 % 32:
            require mem[328] >= 32
            mem[_195 + 360] = mem[360]
            return memory
              from _195 + 360
               len 32
        mem[floor32(_195) + 360] = mem[floor32(_195) + -(_195 % 32) + 392 len _195 % 32]
        require mem[328] >= 32
        return memory
          from 360
           len 32
    mem[328] = return_data.size
    mem[360 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _187 = mem[360]
    require mem[360] <= 4294967296
    require mem[360] + 64 <= return_data.size + 32
    require return_data.size + 32 >= mem[mem[360] + 360] + mem[360] + 64 and mem[mem[360] + 360] <= 4294967296
    mem[ceil32(return_data.size) + 329] = mem[mem[360] + 360]
    _196 = mem[_187 + 360]
    mem[ceil32(return_data.size) + 361 len ceil32(mem[_187 + 360])] = mem[_187 + 392 len ceil32(mem[_187 + 360])]
    if not _196 % 32:
        require mem[ceil32(return_data.size) + 329] >= 32
        mem[_196 + ceil32(return_data.size) + 361] = mem[ceil32(return_data.size) + 361]
        return memory
          from _196 + ceil32(return_data.size) + 361
           len 32
    mem[floor32(_196) + ceil32(return_data.size) + 361] = mem[floor32(_196) + ceil32(return_data.size) + -(_196 % 32) + 393 len _196 % 32]
    require mem[ceil32(return_data.size) + 329] >= 32
    return memory
      from ceil32(return_data.size) + 361
       len 32
}

function borrowBalanceStored(address arg1) {
    require calldata.size - 4 >= 32
    mem[132] = arg1
    mem[96] = 36
    mem[132 len 28] = address(arg1) << 64
    mem[128 len 4] = unknown_0x95dd9193(?????)
    mem[200] = 32
    mem[232] = 36
    mem[264 len 64] = unknown_0x95dd9193(?????), address(arg1) << 64, 0, mem[164 len 28]
    mem[296] = 0
    mem[164] = 132
    mem[64] = 328
    mem[200 len 28] = 0
    mem[196 len 4] = delegateToImplementation(bytes arg1)
    mem[328 len 128] = delegateToImplementation(bytes arg1), 0, 0, 36, mem[264], 0
    mem[484 len 4] = 0
    staticcall this.address.mem[292 len 4] with:
            gas gas_remaining wei
           args Mask(992, -768, mem[264], 0) << 768, mem[456 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with memory
              from 128
               len return_data.size
        require unknown_0x95dd9193(?????), address(arg1) << 64 <= 4294967296
        require unknown_0x95dd9193(?????), address(arg1) << 64 + 160 <= 164
        require 164 >= mem[unknown_0x95dd9193(?????), address(arg1) << 64 + 128] + unknown_0x95dd9193(?????), address(arg1) << 64 + 160 and mem[unknown_0x95dd9193(?????), address(arg1) << 64 + 128] <= 4294967296
        mem[328] = mem[unknown_0x95dd9193(?????), address(arg1) << 64 + 128]
        _195 = mem[unknown_0x95dd9193(?????), address(arg1) << 64 + 128]
        mem[360 len ceil32(mem[unknown_0x95dd9193(?????), address(arg1) << 64 + 128])] = mem[unknown_0x95dd9193(?????), address(arg1) << 64 + 160 len ceil32(mem[unknown_0x95dd9193(?????), address(arg1) << 64 + 128])]
        if not _195 % 32:
            require mem[328] >= 32
            mem[_195 + 360] = mem[360]
            return memory
              from _195 + 360
               len 32
        mem[floor32(_195) + 360] = mem[floor32(_195) + -(_195 % 32) + 392 len _195 % 32]
        require mem[328] >= 32
        return memory
          from 360
           len 32
    mem[328] = return_data.size
    mem[360 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _187 = mem[360]
    require mem[360] <= 4294967296
    require mem[360] + 64 <= return_data.size + 32
    require return_data.size + 32 >= mem[mem[360] + 360] + mem[360] + 64 and mem[mem[360] + 360] <= 4294967296
    mem[ceil32(return_data.size) + 329] = mem[mem[360] + 360]
    _196 = mem[_187 + 360]
    mem[ceil32(return_data.size) + 361 len ceil32(mem[_187 + 360])] = mem[_187 + 392 len ceil32(mem[_187 + 360])]
    if not _196 % 32:
        require mem[ceil32(return_data.size) + 329] >= 32
        mem[_196 + ceil32(return_data.size) + 361] = mem[ceil32(return_data.size) + 361]
        return memory
          from _196 + ceil32(return_data.size) + 361
           len 32
    mem[floor32(_196) + ceil32(return_data.size) + 361] = mem[floor32(_196) + ceil32(return_data.size) + -(_196 % 32) + 393 len _196 % 32]
    require mem[ceil32(return_data.size) + 329] >= 32
    return memory
      from ceil32(return_data.size) + 361
       len 32
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    mem[132] = arg1
    mem[164] = arg2
    mem[96] = 68
    mem[132 len 28] = address(arg1) << 64
    mem[128 len 4] = unknown_0xdd62ed3e(?????)
    mem[232] = 32
    mem[264] = 68
    mem[296 len 96] = unknown_0xdd62ed3e(?????), address(arg1) << 64, 0, address(arg2), mem[196 len 28]
    mem[360] = 0
    mem[196] = 164
    mem[64] = 392
    mem[232 len 28] = 0
    mem[228 len 4] = delegateToImplementation(bytes arg1)
    mem[392 len 160] = delegateToImplementation(bytes arg1), 0, 0, 68, mem[296 len 64], 0
    mem[580 len 4] = 0
    staticcall this.address.mem[356 len 4] with:
            gas gas_remaining wei
           args Mask(1248, -1024, mem[296 len 64], 0) << 1024, mem[552 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with memory
              from 128
               len return_data.size
        require unknown_0xdd62ed3e(?????), address(arg1) << 64 <= 4294967296
        require unknown_0xdd62ed3e(?????), address(arg1) << 64 + 160 <= 196
        require 196 >= mem[unknown_0xdd62ed3e(?????), address(arg1) << 64 + 128] + unknown_0xdd62ed3e(?????), address(arg1) << 64 + 160 and mem[unknown_0xdd62ed3e(?????), address(arg1) << 64 + 128] <= 4294967296
        mem[392] = mem[unknown_0xdd62ed3e(?????), address(arg1) << 64 + 128]
        _195 = mem[unknown_0xdd62ed3e(?????), address(arg1) << 64 + 128]
        mem[424 len ceil32(mem[unknown_0xdd62ed3e(?????), address(arg1) << 64 + 128])] = mem[unknown_0xdd62ed3e(?????), address(arg1) << 64 + 160 len ceil32(mem[unknown_0xdd62ed3e(?????), address(arg1) << 64 + 128])]
        if not _195 % 32:
            require mem[392] >= 32
            mem[_195 + 424] = mem[424]
            return memory
              from _195 + 424
               len 32
        mem[floor32(_195) + 424] = mem[floor32(_195) + -(_195 % 32) + 456 len _195 % 32]
        require mem[392] >= 32
        return memory
          from 424
           len 32
    mem[392] = return_data.size
    mem[424 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _187 = mem[424]
    require mem[424] <= 4294967296
    require mem[424] + 64 <= return_data.size + 32
    require return_data.size + 32 >= mem[mem[424] + 424] + mem[424] + 64 and mem[mem[424] + 424] <= 4294967296
    mem[ceil32(return_data.size) + 393] = mem[mem[424] + 424]
    _196 = mem[_187 + 424]
    mem[ceil32(return_data.size) + 425 len ceil32(mem[_187 + 424])] = mem[_187 + 456 len ceil32(mem[_187 + 424])]
    if not _196 % 32:
        require mem[ceil32(return_data.size) + 393] >= 32
        mem[_196 + ceil32(return_data.size) + 425] = mem[ceil32(return_data.size) + 425]
        return memory
          from _196 + ceil32(return_data.size) + 425
           len 32
    mem[floor32(_196) + ceil32(return_data.size) + 425] = mem[floor32(_196) + ceil32(return_data.size) + -(_196 % 32) + 457 len _196 % 32]
    require mem[ceil32(return_data.size) + 393] >= 32
    return memory
      from ceil32(return_data.size) + 425
       len 32
}

function getAccountSnapshot(address arg1) {
    require calldata.size - 4 >= 32
    mem[132] = arg1
    mem[96] = 36
    mem[132 len 28] = address(arg1) << 64
    mem[128 len 4] = unknown_0xc37f68e2(?????)
    mem[200] = 32
    mem[232] = 36
    mem[264 len 64] = unknown_0xc37f68e2(?????), address(arg1) << 64, 0, mem[164 len 28]
    mem[296] = 0
    mem[164] = 132
    mem[64] = 328
    mem[200 len 28] = 0
    mem[196 len 4] = delegateToImplementation(bytes arg1)
    mem[328 len 128] = delegateToImplementation(bytes arg1), 0, 0, 36, mem[264], 0
    mem[484 len 4] = 0
    staticcall this.address.mem[292 len 4] with:
            gas gas_remaining wei
           args Mask(992, -768, mem[264], 0) << 768, mem[456 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with memory
              from 128
               len return_data.size
        require unknown_0xc37f68e2(?????), address(arg1) << 64 <= 4294967296
        require unknown_0xc37f68e2(?????), address(arg1) << 64 + 160 <= 164
        require 164 >= mem[unknown_0xc37f68e2(?????), address(arg1) << 64 + 128] + unknown_0xc37f68e2(?????), address(arg1) << 64 + 160 and mem[unknown_0xc37f68e2(?????), address(arg1) << 64 + 128] <= 4294967296
        mem[328] = mem[unknown_0xc37f68e2(?????), address(arg1) << 64 + 128]
        _243 = mem[unknown_0xc37f68e2(?????), address(arg1) << 64 + 128]
        mem[360 len ceil32(mem[unknown_0xc37f68e2(?????), address(arg1) << 64 + 128])] = mem[unknown_0xc37f68e2(?????), address(arg1) << 64 + 160 len ceil32(mem[unknown_0xc37f68e2(?????), address(arg1) << 64 + 128])]
        if _243 % 32:
            mem[floor32(_243) + 360] = mem[floor32(_243) + -(_243 % 32) + 392 len _243 % 32]
            require mem[328] >= 128
            return mem[360], mem[392], mem[424], mem[456 len 28], 0
        require mem[328] >= 128
        _332 = mem[392]
        _333 = mem[424]
        _334 = mem[456 len 28], 0
        mem[_243 + 360] = mem[360]
        return mem[_243 + 360], _332, _333, _334
    mem[328] = return_data.size
    mem[360 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _235 = mem[360]
    require mem[360] <= 4294967296
    require mem[360] + 64 <= return_data.size + 32
    require return_data.size + 32 >= mem[mem[360] + 360] + mem[360] + 64 and mem[mem[360] + 360] <= 4294967296
    mem[ceil32(return_data.size) + 329] = mem[mem[360] + 360]
    _244 = mem[_235 + 360]
    mem[ceil32(return_data.size) + 361 len ceil32(mem[_235 + 360])] = mem[_235 + 392 len ceil32(mem[_235 + 360])]
    if _244 % 32:
        mem[floor32(_244) + ceil32(return_data.size) + 361] = mem[floor32(_244) + ceil32(return_data.size) + -(_244 % 32) + 393 len _244 % 32]
        require mem[ceil32(return_data.size) + 329] >= 128
        return mem[ceil32(return_data.size) + 361], 
               mem[ceil32(return_data.size) + 393],
               mem[ceil32(return_data.size) + 425],
               mem[ceil32(return_data.size) + 457]
    require mem[ceil32(return_data.size) + 329] >= 128
    _337 = mem[ceil32(return_data.size) + 393]
    _338 = mem[ceil32(return_data.size) + 425]
    _339 = mem[ceil32(return_data.size) + 457]
    mem[_244 + ceil32(return_data.size) + 361] = mem[ceil32(return_data.size) + 361]
    return mem[_244 + ceil32(return_data.size) + 361], _337, _338, _339
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
                    0x6b57426570323044656c656761746f723a3a5f736574496d706c656d656e746174696f6e3a2043616c6c6572206d7573742062652061646d69,
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
            mem[ceil32(arg3.length) + 160 len 4] = _becomeImplementation(bytes arg1)
            _118 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[arg3.length + ceil32(arg3.length) + 228 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            mem[arg3.length + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 260 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] = mem[ceil32(arg3.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
            delegate implementationAddress.mem[arg3.length + ceil32(arg3.length) + 228 len 4] with:
                 gas gas_remaining wei
                args mem[arg3.length + ceil32(arg3.length) + 232 len _118 - 4]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 228] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 260 len arg3.length % 32]
            mem[ceil32(arg3.length) + 128] = floor32(arg3.length) + 100
            mem[64] = floor32(arg3.length) + ceil32(arg3.length) + 260
            mem[ceil32(arg3.length) + 164 len 28] = 0
            mem[ceil32(arg3.length) + 160 len 4] = _becomeImplementation(bytes arg1)
            _120 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[floor32(arg3.length) + ceil32(arg3.length) + 260 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            mem[floor32(arg3.length) + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 260] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[floor32(arg3.length) + ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 260])
            delegate implementationAddress.mem[floor32(arg3.length) + ceil32(arg3.length) + 260 len 4] with:
                 gas gas_remaining wei
                args mem[floor32(arg3.length) + ceil32(arg3.length) + 264 len _120 - 4]
    else:
        mem[ceil32(arg3.length) + 128] = 4
        mem[64] = ceil32(arg3.length) + 164
        mem[ceil32(arg3.length) + 160 len 4] = _resignImplementation()
        _11 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[ceil32(arg3.length) + 164 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 164] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 164])
        delegate implementationAddress.mem[ceil32(arg3.length) + 164 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + 168 len _11 - 4]
        if return_data.size:
            mem[ceil32(arg3.length) + 164] = return_data.size
            mem[ceil32(arg3.length) + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            implementationAddress = arg1
            mem[ceil32(arg3.length) + ceil32(return_data.size) + 201] = 32
            mem[ceil32(arg3.length) + ceil32(return_data.size) + 233] = arg3.length
            mem[ceil32(arg3.length) + ceil32(return_data.size) + 265 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                delegate implementationAddress.mem[ceil32(arg3.length) + ceil32(return_data.size) + floor32(arg3.length + 68) + 165 len 4] with:
                     gas gas_remaining wei
                    args Mask(8 * floor32(arg3.length + 68) - 4, -(8 * floor32(arg3.length + 68)) + 256, mem[ceil32(arg3.length) + ceil32(return_data.size) + 233 len floor32(arg3.length + 68) - 36]) << (8 * floor32(arg3.length + 68)) - 256, mem[arg3.length + ceil32(arg3.length) + ceil32(return_data.size) + floor32(arg3.length + 68) + 265 len arg3.length + -floor32(arg3.length + 68) + 68]
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + 265] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + -(arg3.length % 32) + 297 len arg3.length % 32]
                delegate implementationAddress.mem[ceil32(arg3.length) + ceil32(return_data.size) + floor32(floor32(arg3.length) + 100) + 165 len 4] with:
                     gas gas_remaining wei
                    args Mask(8 * floor32(floor32(arg3.length) + 100) - 4, -(8 * floor32(floor32(arg3.length) + 100)) + 256, mem[ceil32(arg3.length) + ceil32(return_data.size) + 265 len floor32(floor32(arg3.length) + 100) - 68]) << (8 * floor32(floor32(arg3.length) + 100)) - 256, mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(return_data.size) + floor32(floor32(arg3.length) + 100) + 297 len floor32(arg3.length) + -floor32(floor32(arg3.length) + 100) + 100]
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
                mem[ceil32(arg3.length) + 196 len 4] = _becomeImplementation(bytes arg1)
                mem[arg3.length + ceil32(arg3.length) + 264 len floor32(arg3.length + 68)] = 0, 32, mem[ceil32(arg3.length) + 232 len floor32(arg3.length + 68) - 36]
                mem[arg3.length + ceil32(arg3.length) + floor32(arg3.length + 68) + -(arg3.length + 68 % 32) + 296 len arg3.length + 68 % 32] = mem[ceil32(arg3.length) + (3 * floor32(arg3.length + 68)) + (-2 * arg3.length) + 60 len arg3.length + -floor32(arg3.length + 68) + 68]
                delegate implementationAddress.mem[ceil32(arg3.length) + floor32(arg3.length + 68) + 164 len 4] with:
                     gas gas_remaining wei
                    args Mask(8 * floor32(arg3.length + 68) - 4, -(8 * floor32(arg3.length + 68)) + 256, mem[ceil32(arg3.length) + 232 len floor32(arg3.length + 68) - 36]) << (8 * floor32(arg3.length + 68)) - 256, mem[arg3.length + ceil32(arg3.length) + floor32(arg3.length + 68) + 264 len arg3.length + -floor32(arg3.length + 68) + 68]
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 264] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 296 len arg3.length % 32]
                mem[ceil32(arg3.length) + 164] = floor32(arg3.length) + 100
                mem[ceil32(arg3.length) + 196 len 4] = _becomeImplementation(bytes arg1)
                mem[floor32(arg3.length) + ceil32(arg3.length) + 296 len floor32(floor32(arg3.length) + 100)] = 0, 32, arg3.length, mem[ceil32(arg3.length) + 264 len floor32(floor32(arg3.length) + 100) - 68]
                mem[floor32(arg3.length) + ceil32(arg3.length) + floor32(floor32(arg3.length) + 100) + -(floor32(arg3.length) + 100 % 32) + 328 len floor32(arg3.length) + 100 % 32] = mem[ceil32(arg3.length) + (3 * floor32(floor32(arg3.length) + 100)) + (-2 * floor32(arg3.length)) - 4 len floor32(arg3.length) + -floor32(floor32(arg3.length) + 100) + 100]
                delegate implementationAddress.mem[ceil32(arg3.length) + floor32(floor32(arg3.length) + 100) + 164 len 4] with:
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
        mem[ceil32(arg1.length) + 160 len 4] = delegateToImplementation(bytes arg1)
        _113 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[arg1.length + ceil32(arg1.length) + 228 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        mem[arg1.length + ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 228] = mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 192 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) + 256, mem[arg1.length + ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 228])
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
    mem[ceil32(arg1.length) + 160 len 4] = delegateToImplementation(bytes arg1)
    _118 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[floor32(arg1.length) + ceil32(arg1.length) + 260 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    mem[floor32(arg1.length) + ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 260] = mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 192 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) + 256, mem[floor32(arg1.length) + ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 260])
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
