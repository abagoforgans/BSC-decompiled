contract main {




// =====================  Runtime code  =====================


const getCash = eth.balance(this.address)

const isCToken = 1


uint8 stor0;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor3;
address adminAddress; offset 8
uint256 stor3; offset 8
address pendingAdminAddress;
uint256 reserveFactorMantissa;
uint256 accrualBlockNumber;
uint256 totalReserves;
uint256 totalSupply;
uint256 sub_c1006679;
uint256 sub_def972e1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of struct sub_48b3bc92;
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

function sub_48b3bc92(?) {
    require calldata.size - 4 >= 32
    return sub_48b3bc92[arg1].field_0, 
           sub_48b3bc92[arg1].field_256,
           sub_48b3bc92[arg1].field_512,
           sub_48b3bc92[arg1].field_768,
           bool(sub_48b3bc92[arg1].field_928)
}

function implementation() {
    return implementationAddress
}

function accrualBlockNumber() {
    return accrualBlockNumber
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function totalReserves() {
    return totalReserves
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_c1006679(?) {
    return sub_c1006679
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_def972e1(?) {
    return sub_def972e1
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function balanceOfUnderlying(address arg1) {
    require calldata.size - 4 >= 32
    return eth.balance(arg1)
}

function exchangeRateCurrent() {
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 1
    return sub_c1006679
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function _setPendingAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        emit Failure(1, 69, 0);
        return 1
    pendingAdminAddress = arg1
    emit NewPendingAdmin(pendingAdminAddress, arg1);
    return 0
}

function recoverSigner2(bytes32 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4) {
    require calldata.size - 4 >= 128
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1), arg2 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function _resignImplementation() {
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x2e6f6e6c79207468652061646d696e206d61792063616c6c205f72657369676e496d706c656d656e746174696f,
                    mem[209 len 19]
}

function _setReserveFactor(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    if adminAddress != msg.sender:
        emit Failure(1, 71, 0);
        stor0 = 1
        return 1
    if arg1 > 10^18:
        emit Failure(2, 73, 0);
        stor0 = 1
        return 2
    reserveFactorMantissa = arg1
    emit NewReserveFactor(reserveFactorMantissa, arg1);
    stor0 = 1
    return 0
}

function sub_6913a669(?) {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe6f6e6c792061646d696e206d617920696e697469616c697a6520746865206d61726b65,
                    mem[200 len 28]
    sub_c1006679 = arg1
    stor0 = 1
    return arg1
}

function _becomeImplementation(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0, 
                    32,
                    45,
                    0x776f6e6c79207468652061646d696e206d61792063616c6c205f6265636f6d65496d706c656d656e746174696f,
                    mem[ceil32(arg1.length) + 241 len 19]
}

function _acceptAdmin() {
    if pendingAdminAddress != msg.sender:
        emit Failure(1, 0, 0);
        return 1
    if not msg.sender:
        emit Failure(1, 0, 0);
        return 1
    Mask(248, 0, stor3.field_8) = pendingAdminAddress
    pendingAdminAddress = 0
    emit NewAdmin(address rg1, address rg2):
                  address(stor3.field_0),
                  0,
                  pendingAdminAddress,
    emit NewPendingAdmin(address rg1, address rg2):
                         pendingAdminAddress,
                         0,
                         pendingAdminAddress,
    return 0
}

function stringToUint(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if uint8(mem[idx + 128]) >> 248 < 48:
            idx = idx + 1
            s = s
            continue 
        if uint8(mem[idx + 128]) >> 248 > 57:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = (10 * s) + (uint8(mem[idx + 128]) >> 248) - 48
        continue 
    mem[ceil32(arg1.length) + 128] = s
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function _reduceReserves(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    if adminAddress != msg.sender:
        emit Failure(1, 49, 0);
        stor0 = 1
        return 1
    if eth.balance(this.address) < arg1:
        emit Failure(14, 50, 0);
        stor0 = 1
        return 14
    if arg1 > totalReserves:
        emit Failure(2, 52, 0);
        stor0 = 1
        return 2
    if totalReserves - arg1 > totalReserves:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6f72656475636520726573657276657320756e657870656374656420756e646572666c6f,
                    mem[200 len 28]
    totalReserves -= arg1
    call adminAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ReservesReduced(address(stor3.field_0), arg1, totalReserves - arg1);
    stor0 = 1
    return 0
}

function sub_8a35c563(?) {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0, 
                    32,
                    36,
                    0xfe6f6e6c792061646d696e206d617920696e697469616c697a6520746865206d61726b65,
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 264 len 28]
    sub_c1006679 = arg1
    if not arg1:
        revert with 0, 
                    32,
                    48,
                    0x74696e697469616c2065786368616e67652072617465206d7573742062652067726561746572207468616e207a65726f,
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 276 len 16]
    accrualBlockNumber = block.number
    name[] = Array(len=arg2.length, data=arg2[all])
    symbol[] = Array(len=arg3.length, data=arg3[all])
    decimals = arg4
    stor0 = 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    if arg1 == arg2:
        emit Failure(2, 75, 0);
        stor0 = 1
        return 0
    if arg1 == msg.sender:
        if arg3 > -1:
            emit Failure(9, 75, 0);
            stor0 = 1
            return 0
        if arg3 > balanceOf[address(arg1)]:
            emit Failure(9, 76, 0);
            stor0 = 1
            return 0
        if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
            emit Failure(9, 77, 0);
            stor0 = 1
            return 0
        balanceOf[address(arg1)] -= arg3
        balanceOf[arg2] = arg3 + balanceOf[address(arg2)]
    else:
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            emit Failure(9, 75, 0);
            stor0 = 1
            return 0
        if arg3 > balanceOf[address(arg1)]:
            emit Failure(9, 76, 0);
            stor0 = 1
            return 0
        if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
            emit Failure(9, 77, 0);
            stor0 = 1
            return 0
        balanceOf[address(arg1)] -= arg3
        balanceOf[arg2] = arg3 + balanceOf[address(arg2)]
        if allowance[address(arg1)][address(msg.sender)] != -1:
            allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    stor0 = 1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    if msg.sender == arg1:
        emit Failure(2, 75, 0);
        stor0 = 1
        return 0
    if msg.sender == msg.sender:
        if arg2 > -1:
            emit Failure(9, 75, 0);
            stor0 = 1
            return 0
        if arg2 > balanceOf[address(msg.sender)]:
            emit Failure(9, 76, 0);
            stor0 = 1
            return 0
        if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
            emit Failure(9, 77, 0);
            stor0 = 1
            return 0
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[arg1] = arg2 + balanceOf[address(arg1)]
    else:
        if arg2 > allowance[address(msg.sender)][address(msg.sender)]:
            emit Failure(9, 75, 0);
            stor0 = 1
            return 0
        if arg2 > balanceOf[address(msg.sender)]:
            emit Failure(9, 76, 0);
            stor0 = 1
            return 0
        if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
            emit Failure(9, 77, 0);
            stor0 = 1
            return 0
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[arg1] = arg2 + balanceOf[address(arg1)]
        if allowance[address(msg.sender)][address(msg.sender)] != -1:
            allowance[address(msg.sender)][address(msg.sender)] -= arg2
    emit Transfer(arg2, msg.sender, arg1);
    stor0 = 1
    return 1
}

function substring(string arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128] = arg3 - arg2
    mem[64] = ceil32(arg1.length) + floor32(arg3 + -arg2 + 31) + 160
    if not arg3 - arg2:
        idx = arg2
        while idx < arg3:
            require idx < mem[96]
            require idx - arg2 < mem[ceil32(arg1.length) + 128]
            mem[idx + -arg2 + ceil32(arg1.length) + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            continue 
        _29 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[ceil32(arg1.length) + 128]
        _31 = mem[ceil32(arg1.length) + 128]
        mem[mem[64] + 64 len ceil32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len ceil32(mem[ceil32(arg1.length) + 128])]
        if not _31 % 32:
            return 32, mem[mem[64] + 32 len _31 + 32]
        mem[floor32(_31) + mem[64] + 64] = mem[floor32(_31) + mem[64] + -(_31 % 32) + 96 len _31 % 32]
        return memory
          from mem[64]
           len floor32(_31) + _29 + -mem[64] + 96
    mem[ceil32(arg1.length) + 160 len arg3 - arg2] = code.data[13173 len arg3 - arg2]
    idx = arg2
    while idx < arg3:
        require idx < mem[96]
        require idx - arg2 < mem[ceil32(arg1.length) + 128]
        mem[idx + -arg2 + ceil32(arg1.length) + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        continue 
    _32 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(arg1.length) + 128]
    _34 = mem[ceil32(arg1.length) + 128]
    mem[mem[64] + 64 len ceil32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len ceil32(mem[ceil32(arg1.length) + 128])]
    if not _34 % 32:
        return 32, mem[mem[64] + 32 len _34 + 32]
    mem[floor32(_34) + mem[64] + 64] = mem[floor32(_34) + mem[64] + -(_34 % 32) + 96 len _34 % 32]
    return memory
      from mem[64]
       len floor32(_34) + _32 + -mem[64] + 96
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    if msg.sender != msg.sender:
        revert with 0, 'sender mismatch'
    if arg1 != msg.value:
        revert with 0, 'value mismatch'
    if 10^18 * arg1 / 10^18 != arg1:
        revert with 0, 'MINT_EXCHANGE_CALCULATION_FAILED'
    if not 10^18 * arg1:
        if not sub_c1006679:
            revert with 0, 'MINT_EXCHANGE_CALCULATION_FAILED'
        if (0 / sub_c1006679 / 10^18) + totalSupply < totalSupply:
            revert with 0, 32, 40, 0x444d494e545f4e45575f544f54414c5f535550504c595f43414c43554c4154494f4e5f4641494c45, mem[588 len 24]
        if (0 / sub_c1006679 / 10^18) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 32, 43, 0x6e4d494e545f4e45575f4143434f554e545f42414c414e43455f43414c43554c4154494f4e5f4641494c45, mem[591 len 21]
        totalSupply += 0 / sub_c1006679 / 10^18
        balanceOf[address(msg.sender)] += 0 / sub_c1006679 / 10^18
        emit Mint(msg.sender, arg1, 0 / sub_c1006679 / 10^18);
        emit Transfer((0 / sub_c1006679 / 10^18), this.address, msg.sender);
    else:
        if 1000000000000000000 * 10^18 * arg1 / 10^18 * arg1 != 10^18:
            revert with 0, 'MINT_EXCHANGE_CALCULATION_FAILED'
        if not sub_c1006679:
            revert with 0, 'MINT_EXCHANGE_CALCULATION_FAILED'
        if (1000000000000000000 * 10^18 * arg1 / sub_c1006679 / 10^18) + totalSupply < totalSupply:
            revert with 0, 32, 40, 0x444d494e545f4e45575f544f54414c5f535550504c595f43414c43554c4154494f4e5f4641494c45, mem[588 len 24]
        if (1000000000000000000 * 10^18 * arg1 / sub_c1006679 / 10^18) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 32, 43, 0x6e4d494e545f4e45575f4143434f554e545f42414c414e43455f43414c43554c4154494f4e5f4641494c45, mem[591 len 21]
        totalSupply += 1000000000000000000 * 10^18 * arg1 / sub_c1006679 / 10^18
        balanceOf[address(msg.sender)] += 1000000000000000000 * 10^18 * arg1 / sub_c1006679 / 10^18
        emit Mint(msg.sender, arg1, 1000000000000000000 * 10^18 * arg1 / sub_c1006679 / 10^18);
        emit Transfer((1000000000000000000 * 10^18 * arg1 / sub_c1006679 / 10^18), this.address, msg.sender);
    stor0 = 1
    return 0
}

function redeemUnderlying(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    if 10^18 * arg1 / 10^18 != arg1:
        emit Failure(9, 42, 2);
        stor0 = 1
        return 9
    if not 10^18 * arg1:
        if not sub_c1006679:
            emit Failure(9, 42, 1);
            stor0 = 1
            return 9
        if 0 / sub_c1006679 / 10^18 > totalSupply:
            emit Failure(9, 46, 3);
            stor0 = 1
            return 9
        if 0 / sub_c1006679 / 10^18 > balanceOf[address(msg.sender)]:
            emit Failure(9, 45, 3);
            stor0 = 1
            return 9
        if eth.balance(this.address) < arg1:
            emit Failure(14, 47, 0);
            stor0 = 1
            return 14
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        totalSupply -= 0 / sub_c1006679 / 10^18
        balanceOf[address(msg.sender)] -= 0 / sub_c1006679 / 10^18
        emit Transfer((0 / sub_c1006679 / 10^18), msg.sender, this.address);
        emit Redeem(msg.sender, arg1, 0 / sub_c1006679 / 10^18);
    else:
        if 1000000000000000000 * 10^18 * arg1 / 10^18 * arg1 != 10^18:
            emit Failure(9, 42, 2);
            stor0 = 1
            return 9
        if not sub_c1006679:
            emit Failure(9, 42, 1);
            stor0 = 1
            return 9
        if 1000000000000000000 * 10^18 * arg1 / sub_c1006679 / 10^18 > totalSupply:
            emit Failure(9, 46, 3);
            stor0 = 1
            return 9
        if 1000000000000000000 * 10^18 * arg1 / sub_c1006679 / 10^18 > balanceOf[address(msg.sender)]:
            emit Failure(9, 45, 3);
            stor0 = 1
            return 9
        if eth.balance(this.address) < arg1:
            emit Failure(14, 47, 0);
            stor0 = 1
            return 14
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        totalSupply -= 1000000000000000000 * 10^18 * arg1 / sub_c1006679 / 10^18
        balanceOf[address(msg.sender)] -= 1000000000000000000 * 10^18 * arg1 / sub_c1006679 / 10^18
        emit Transfer((1000000000000000000 * 10^18 * arg1 / sub_c1006679 / 10^18), msg.sender, this.address);
        emit Redeem(msg.sender, arg1, 1000000000000000000 * 10^18 * arg1 / sub_c1006679 / 10^18);
    stor0 = 1
    return 0
}

function redeem(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    if not arg1:
        if not sub_c1006679:
            emit Failure(9, 42, 1);
            stor0 = 1
            return 9
        if 0 / sub_c1006679 / 10^18 > totalSupply:
            emit Failure(9, 46, 3);
            stor0 = 1
            return 9
        if 0 / sub_c1006679 / 10^18 > balanceOf[address(msg.sender)]:
            emit Failure(9, 45, 3);
            stor0 = 1
            return 9
        if eth.balance(this.address) < 0:
            emit Failure(14, 47, 0);
            stor0 = 1
            return 14
        call msg.sender with:
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        totalSupply -= 0 / sub_c1006679 / 10^18
        balanceOf[address(msg.sender)] -= 0 / sub_c1006679 / 10^18
        emit Transfer((0 / sub_c1006679 / 10^18), msg.sender, this.address);
        emit Redeem(msg.sender, 0, 0 / sub_c1006679 / 10^18);
    else:
        if not sub_c1006679:
            if arg1 > totalSupply:
                emit Failure(9, 46, 3);
                stor0 = 1
                return 9
            if arg1 > balanceOf[address(msg.sender)]:
                emit Failure(9, 45, 3);
                stor0 = 1
                return 9
            if eth.balance(this.address) < 0:
                emit Failure(14, 47, 0);
                stor0 = 1
                return 14
            call msg.sender with:
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            totalSupply -= arg1
            balanceOf[address(msg.sender)] -= arg1
            emit Transfer(arg1, msg.sender, this.address);
            emit Redeem(msg.sender, 0, arg1);
        else:
            if arg1 * sub_c1006679 / sub_c1006679 != arg1:
                emit Failure(9, 41, 2);
                stor0 = 1
                return 9
            if arg1 > totalSupply:
                emit Failure(9, 46, 3);
                stor0 = 1
                return 9
            if arg1 > balanceOf[address(msg.sender)]:
                emit Failure(9, 45, 3);
                stor0 = 1
                return 9
            if eth.balance(this.address) < arg1 * sub_c1006679 / 10^18:
                emit Failure(14, 47, 0);
                stor0 = 1
                return 14
            call msg.sender with:
               value arg1 * sub_c1006679 / 10^18 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            totalSupply -= arg1
            balanceOf[address(msg.sender)] -= arg1
            emit Transfer(arg1, msg.sender, this.address);
            emit Redeem(msg.sender, arg1 * sub_c1006679 / 10^18, arg1);
    stor0 = 1
    return 0
}

function sub_d8c981a3(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    require sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]) == arg2
    require sub_48b3bc92[arg2].field_0
    require not sub_48b3bc92[arg2].field_928
    mem[arg1.length + ceil32(arg1.length) + 192 len 2] = code.data[13173 len 2]
    idx = 0
    while idx < 2:
        require idx < arg1.length
        require idx < 2
        mem[idx + arg1.length + ceil32(arg1.length) + 192 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < 2:
        require idx < 2
        if uint8(mem[idx + arg1.length + ceil32(arg1.length) + 192]) >> 248 < 48:
            idx = idx + 1
            s = s
            continue 
        if uint8(mem[idx + arg1.length + ceil32(arg1.length) + 192]) >> 248 > 57:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = (10 * s) + (uint8(mem[idx + arg1.length + ceil32(arg1.length) + 192]) >> 248) - 48
        continue 
    if s >= sub_48b3bc92[arg2].field_256:
        sub_48b3bc92[arg2].field_928 = 1
        sub_48b3bc92[arg2].field_512 = s
    else:
        if not sub_48b3bc92[arg2].field_0:
            if not sub_48b3bc92[arg2].field_256:
                revert with 0, 
                            32,
                            40,
                            0x444d494e545f4e45575f544f54414c5f535550504c595f43414c43554c4154494f4e5f4641494c45,
                            mem[arg1.length + ceil32(arg1.length) + 332 len 24]
            sub_48b3bc92[arg2].field_928 = 1
            sub_48b3bc92[arg2].field_512 = s
            call 0 or sub_48b3bc92[arg2].field_768 with:
               value 0 / sub_48b3bc92[arg2].field_256 wei
                 gas 2300 * is_zero(value) wei
        else:
            if 99 * sub_48b3bc92[arg2].field_0 / sub_48b3bc92[arg2].field_0 != 99:
                revert with 0, 
                            32,
                            40,
                            0x444d494e545f4e45575f544f54414c5f535550504c595f43414c43554c4154494f4e5f4641494c45,
                            mem[arg1.length + ceil32(arg1.length) + 332 len 24]
            if not sub_48b3bc92[arg2].field_256:
                revert with 0, 
                            32,
                            40,
                            0x444d494e545f4e45575f544f54414c5f535550504c595f43414c43554c4154494f4e5f4641494c45,
                            mem[arg1.length + ceil32(arg1.length) + 332 len 24]
            sub_48b3bc92[arg2].field_928 = 1
            sub_48b3bc92[arg2].field_512 = s
            call 0 or sub_48b3bc92[arg2].field_768 with:
               value 99 * sub_48b3bc92[arg2].field_0 / sub_48b3bc92[arg2].field_256 wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0xa41ba6b9: sub_48b3bc92[arg2].field_0, s, sub_48b3bc92[arg2].field_256, block.timestamp, sub_48b3bc92[arg2].field_768, arg2
    stor0 = 1
    return 1
}

function sub_a8cc80db(?) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    if arg4.length != 65:
        revert with 0, 'Require correct length'
    if msg.value <= 0:
        revert with 0, 'Require correct amount'
    if msg.value > 1000 * 10^18:
        revert with 0, 'Require correct amount'
    if arg2 <= 0:
        revert with 0, 'Choose num error'
    if arg2 >= 99:
        revert with 0, 'Choose num error'
    if not eth.balance(this.address):
        if 0 < msg.value:
            revert with 0, 'MAX_AMOUNT_ERROR3'
        _21 = mem[128]
        _22 = mem[160]
        _23 = mem[192]
        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
            revert with 0, 'Signature version not match'
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                revert with 0, 'Signature version not match'
        mem[64] = ceil32(arg4.length) + 192
        mem[ceil32(arg4.length) + 128] = 28
        mem[ceil32(arg4.length) + 160] = '\x19Ethereum Signed Message:\n32'
        mem[ceil32(arg4.length) + 224 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
        mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 224] = 256^(-(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) - 1 and mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 224] or mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) - 1)
        signer = erecover(sha3(mem[ceil32(arg4.length) + 224 len 28], arg3), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_23')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_23')), 0) - 256) + 27 << 248, _21, _22) 
    else:
        if arg2 * eth.balance(this.address) / eth.balance(this.address) != arg2:
            revert with 0, 'MAX_AMOUNT_ERROR'
        if arg2 * eth.balance(this.address) / 990 < msg.value:
            revert with 0, 'MAX_AMOUNT_ERROR3'
        _24 = mem[128]
        _25 = mem[160]
        _26 = mem[192]
        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256 >= 27:
            revert with 0, 'Signature version not match'
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                revert with 0, 'Signature version not match'
        mem[64] = ceil32(arg4.length) + 192
        mem[ceil32(arg4.length) + 128] = 28
        mem[ceil32(arg4.length) + 160] = '\x19Ethereum Signed Message:\n32'
        mem[ceil32(arg4.length) + 224 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
        mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 224] = 256^(-(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) - 1 and mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 224] or mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 32) - 1)
        signer = erecover(sha3(mem[ceil32(arg4.length) + 224 len 28], arg3), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_26')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_26')), 0) - 256) + 27 << 248, _24, _25) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require 0x7b75d33d50a4d734c520051b955f3e57e9031604 == address(signer)
    require not sub_48b3bc92[arg3].field_0
    sub_48b3bc92[arg3].field_0 = msg.value
    sub_48b3bc92[arg3].field_256 = arg2
    sub_48b3bc92[arg3].field_768 = msg.sender or Mask(96, 160, sub_48b3bc92[arg3].field_768)
    emit 0xc4c791f9: msg.value, arg2, block.timestamp, msg.sender, arg3
    if msg.sender != msg.sender:
        revert with 0, 'sender mismatch'
    if arg1 != msg.value:
        revert with 0, 'value mismatch'
    if not arg1:
        if not totalSupply:
            revert with 0, 'err4 error'
        if (0 / totalSupply) + sub_c1006679 < sub_c1006679:
            revert with 0, 'err5 error'
        sub_c1006679 += 0 / totalSupply
        require ext_code.size(0x9468dec2e19240d6e287f27e1d757ae7b9f15f7d)
        staticcall 0x9468dec2e19240d6e287f27e1d757ae7b9f15f7d.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= arg1 / 500:
            require ext_code.size(0x9468dec2e19240d6e287f27e1d757ae7b9f15f7d)
            call 0x9468dec2e19240d6e287f27e1d757ae7b9f15f7d.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1 / 500
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        call 0x9dd195880694a695344979404aa2cfde239ee080 with:
             gas 2300 wei
    else:
        if 3 * 10^18 * arg1 / arg1 != 3 * 10^18:
            revert with 0, 'err3 error'
        if not totalSupply:
            revert with 0, 'err4 error'
        if (3 * 10^18 * arg1 / 1000 / totalSupply) + sub_c1006679 < sub_c1006679:
            revert with 0, 'err5 error'
        sub_c1006679 += 3 * 10^18 * arg1 / 1000 / totalSupply
        require ext_code.size(0x9468dec2e19240d6e287f27e1d757ae7b9f15f7d)
        staticcall 0x9468dec2e19240d6e287f27e1d757ae7b9f15f7d.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= arg1 / 500:
            require ext_code.size(0x9468dec2e19240d6e287f27e1d757ae7b9f15f7d)
            call 0x9468dec2e19240d6e287f27e1d757ae7b9f15f7d.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1 / 500
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        call 0x9dd195880694a695344979404aa2cfde239ee080 with:
           value 3 * 10^18 * arg1 / 1000 / 10^18 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
    return 1
}



}
