contract main {




// =====================  Runtime code  =====================


#
#  - commit(address arg1)
#  - purchaseCoupons(uint256 arg1)
#  - advance()
#
const name = 'Champion Warior Dollar Stake', 0

const decimals = 18

const epochTime = (block.timestamp - 1610698787 / 4 * 3600)

const symbol = '', 0


uint256 epoch;
uint256 totalSupply;
uint256 totalBonded;
uint256 totalStaged;
uint256 totalRedeemable;
uint256 totalDebt;
uint256 totalCoupons;
address dollarAddress;
address oracleAddress;
address poolAddress;
mapping of struct fluidUntil;
mapping of struct periodFor;
address implementationAddress;
uint256 stor3608;

function couponsExpiration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return couponsExpiration[arg1].field_512
}

function periodFor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return periodFor[address(arg1)].field_256
}

function pool() payable {
    return poolAddress
}

function totalSupply() payable {
    return totalSupply
}

function totalRedeemable() payable {
    return totalRedeemable
}

function rejectFor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return periodFor[address(arg1)].field_768
}

function isNominated(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(periodFor[address(arg1)].field_0)
}

function recordedVote(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require periodFor[address(arg2)][4][address(arg1)].field_0 < 3
    return periodFor[address(arg2)][4][address(arg1)].field_0
}

function totalBonded() payable {
    return totalBonded
}

function expiringCouponsAtIndex(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < couponsExpiration[arg1].field_768
    return stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'couponsExpiration', 13))) + arg2].field_0
}

function dollar() payable {
    return dollarAddress
}

function fluidUntil(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return fluidUntil[address(arg1)].field_1024
}

function implementation() payable {
    return address(implementationAddress)
}

function approveFor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return periodFor[address(arg1)].field_512
}

function expiringCoupons(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return couponsExpiration[arg1].field_768
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return fluidUntil[address(arg1)].field_256
}

function oracle() payable {
    return oracleAddress
}

function balanceOfStaged(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return fluidUntil[address(arg1)].field_0
}

function epoch() payable {
    return epoch
}

function totalCoupons() payable {
    return totalCoupons
}

function lockedUntil(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return fluidUntil[address(arg1)].field_1280
}

function allowanceCoupons(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return fluidUntil[address(arg1)][3][address(arg2)].field_0
}

function outstandingCoupons(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return couponsExpiration[arg1].field_256
}

function totalStaged() payable {
    return totalStaged
}

function isInitialized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(periodFor[address(arg1)].field_1280)
}

function startFor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return periodFor[address(arg1)].field_0
}

function totalDebt() payable {
    return totalDebt
}

function totalBondedAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return couponsExpiration[arg1].field_0
}

function _fallback() payable {
    revert
}

function bootstrappingAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return arg1 <= 60
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 0
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 0
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    return 0
}

function statusOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if fluidUntil[address(arg1)].field_1280 > epoch:
        return 2
    if epoch >= fluidUntil[address(arg1)].field_1024:
        return 0
    return 1
}

function balanceOfCoupons(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if couponsExpiration[arg2].field_256:
        return fluidUntil[address(arg1)][2][arg2].field_0
    else:
        return 0
}

function votesFor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if periodFor[address(arg1)].field_768 + periodFor[address(arg1)].field_512 < periodFor[address(arg1)].field_512:
        revert with 0, 'SafeMath: addition overflow'
    return (periodFor[address(arg1)].field_768 + periodFor[address(arg1)].field_512)
}

function approveCoupons(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Market: Coupon approve to the zero address'
    fluidUntil[address(msg.sender)][3][address(arg1)].field_0 = arg2
    emit CouponApproval(arg2, msg.sender, arg1);
}

function totalNet() payable {
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if totalDebt > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return (ext_call.return_data[0] - totalDebt)
}

function balanceOfBonded(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not totalSupply:
        return 0
    if not totalBonded:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply)
    if fluidUntil[address(arg1)].field_256 * totalBonded / totalBonded != fluidUntil[address(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (fluidUntil[address(arg1)].field_256 * totalBonded / totalSupply)
}

function transferCoupons(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Market: Coupon transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Market: Coupon transfer to the zero address'
    if arg4 > fluidUntil[address(arg1)][2][arg3].field_0:
        revert with 0, 32, 35, 0xfe4d61726b65743a20496e73756666696369656e7420636f75706f6e2062616c616e63, mem[163 len 29] >> 24, 0
    fluidUntil[address(arg1)][2][arg3].field_0 -= arg4
    if arg4 > couponsExpiration[arg3].field_256:
        revert with 0, 32, 35, 0xfe4d61726b65743a20496e73756666696369656e7420636f75706f6e2062616c616e63, mem[163 len 29] >> 24, 0
    couponsExpiration[arg3].field_256 -= arg4
    if arg4 > totalCoupons:
        revert with 0, 32, 35, 0xfe4d61726b65743a20496e73756666696369656e7420636f75706f6e2062616c616e63, mem[163 len 29] >> 24, 0
    totalCoupons -= arg4
    if arg4 + fluidUntil[address(arg2)][2][arg3].field_0 < fluidUntil[address(arg2)][2][arg3].field_0:
        revert with 0, 'SafeMath: addition overflow'
    fluidUntil[address(arg2)][2][arg3].field_0 += arg4
    if arg4 + couponsExpiration[arg3].field_256 < couponsExpiration[arg3].field_256:
        revert with 0, 'SafeMath: addition overflow'
    couponsExpiration[arg3].field_256 += arg4
    if arg4 + totalCoupons < totalCoupons:
        revert with 0, 'SafeMath: addition overflow'
    totalCoupons += arg4
    if arg1 != msg.sender:
        if fluidUntil[address(arg1)][3][address(msg.sender)].field_0 != -1:
            if arg4 > fluidUntil[address(arg1)][3][address(msg.sender)].field_0:
                revert with 0, 32, 36, 0x654d61726b65743a20496e73756666696369656e7420636f75706f6e20617070726f7661, mem[260 len 28] >> 32, 0
            fluidUntil[address(arg1)][3][address(msg.sender)].field_0 -= arg4
    emit CouponTransfer(arg4, arg1, arg2, arg3);
}

function redeemCoupons(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 > epoch:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if epoch - arg1 < 2:
        revert with 0, 'Market: Too early to redeem'
    if arg2 > fluidUntil[address(msg.sender)][2][arg1].field_0:
        revert with 0, 32, 35, 0xfe4d61726b65743a20496e73756666696369656e7420636f75706f6e2062616c616e63, mem[227 len 29] >> 24, 0
    fluidUntil[address(msg.sender)][2][arg1].field_0 -= arg2
    if arg2 > couponsExpiration[arg1].field_256:
        revert with 0, 32, 35, 0xfe4d61726b65743a20496e73756666696369656e7420636f75706f6e2062616c616e63, mem[227 len 29] >> 24, 0
    couponsExpiration[arg1].field_256 -= arg2
    if arg2 > totalCoupons:
        revert with 0, 32, 35, 0xfe4d61726b65743a20496e73756666696369656e7420636f75706f6e2062616c616e63, mem[227 len 29] >> 24, 0
    totalCoupons -= arg2
    require ext_code.size(dollarAddress)
    call dollarAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 256] = 42
    mem[ceil32(return_data.size) + 288 len 42] = 0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63
    if arg2 > totalRedeemable:
        revert with 0, 
                    32,
                    42,
                    0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63, mem[ceil32(return_data.size) + 330 len 22] >> 80,
                    0
    totalRedeemable -= arg2
    if totalStaged + totalBonded < totalBonded:
        revert with 0, 'SafeMath: addition overflow'
    if totalRedeemable < 0:
        revert with 0, 'SafeMath: addition overflow'
    mem[ceil32(return_data.size) + 356] = this.address
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 352] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= totalRedeemable + totalStaged + totalBonded:
        emit CouponRedemption(arg2, msg.sender, arg1);
    mem[(2 * ceil32(return_data.size)) + 384] = 0x436f6d7074726f6c6c6572000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 352] = 32
    idx = 32
    while idx:
        require idx - 1 < 32
        if not Mask(8, 248, mem[idx + (2 * ceil32(return_data.size)) + 383]):
            idx = idx - 1
            continue 
        mem[(2 * ceil32(return_data.size)) + 448] = 'Inconsistent balances' << 88
        mem[(2 * ceil32(return_data.size)) + 416] = 32
        s = 32
        while s:
            require s - 1 < 32
            if not Mask(8, 248, mem[s + (2 * ceil32(return_data.size)) + 447]):
                s = s - 1
                continue 
            mem[(2 * ceil32(return_data.size)) + 416] = s
            t = 0
            while t < idx:
                mem[t + (2 * ceil32(return_data.size)) + 512] = mem[t + (2 * ceil32(return_data.size)) + 384]
                t = t + 32
                continue 
            mem[idx + (2 * ceil32(return_data.size)) + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            t = 0
            while t < s:
                mem[t + idx + (2 * ceil32(return_data.size)) + 514] = mem[t + (2 * ceil32(return_data.size)) + 448]
                t = t + 32
                continue 
            mem[s + idx + (2 * ceil32(return_data.size)) + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[s + idx + (2 * ceil32(return_data.size)) + 518] = 32
            mem[s + idx + (2 * ceil32(return_data.size)) + 550] = s + idx + 2
            t = 0
            while t < s + idx + 2:
                mem[t + s + idx + (2 * ceil32(return_data.size)) + 582] = mem[t + (2 * ceil32(return_data.size)) + 512]
                t = t + 32
                continue 
            if floor32(s + idx + 33) > s + idx + 2:
                mem[(2 * s) + (2 * idx) + (2 * ceil32(return_data.size)) + 584] = 0
            revert with 0, 32, s + idx + 2, mem[s + idx + (2 * ceil32(return_data.size)) + 582 len floor32(s + idx + 33)]
        mem[(2 * ceil32(return_data.size)) + 480] = 0
        s = 0
        while s < idx:
            mem[s + (2 * ceil32(return_data.size)) + 544] = mem[s + (2 * ceil32(return_data.size)) + 384]
            s = s + 32
            continue 
        mem[idx + (2 * ceil32(return_data.size)) + 544] = 0x3a20000000000000000000000000000000000000000000000000000000000000
        s = 0
        while s < 0:
            mem[s + idx + (2 * ceil32(return_data.size)) + 546] = mem[s + (2 * ceil32(return_data.size)) + 512]
            s = s + 32
            continue 
        mem[idx + (2 * ceil32(return_data.size)) + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[idx + (2 * ceil32(return_data.size)) + 550] = 32
        mem[idx + (2 * ceil32(return_data.size)) + 582] = idx + 2
        s = 0
        while s < idx + 2:
            mem[s + idx + (2 * ceil32(return_data.size)) + 614] = mem[s + (2 * ceil32(return_data.size)) + 544]
            s = s + 32
            continue 
        if floor32(idx + 33) > idx + 2:
            mem[(2 * idx) + (2 * ceil32(return_data.size)) + 616] = 0
        revert with 0, 32, idx + 2, mem[idx + (2 * ceil32(return_data.size)) + 614 len floor32(idx + 33)]
    mem[(2 * ceil32(return_data.size)) + 480] = 'Inconsistent balances' << 88
    mem[(2 * ceil32(return_data.size)) + 448] = 32
    idx = 32
    while idx:
        require idx - 1 < 32
        if not Mask(8, 248, mem[idx + (2 * ceil32(return_data.size)) + 479]):
            idx = idx - 1
            continue 
        mem[(2 * ceil32(return_data.size)) + 448] = idx
        s = 0
        while s < 0:
            mem[s + (2 * ceil32(return_data.size)) + 544] = mem[s + (2 * ceil32(return_data.size)) + 448]
            s = s + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 544] = 0x3a20000000000000000000000000000000000000000000000000000000000000
        s = 0
        while s < idx:
            mem[s + (2 * ceil32(return_data.size)) + 546] = mem[s + (2 * ceil32(return_data.size)) + 480]
            s = s + 32
            continue 
        mem[idx + (2 * ceil32(return_data.size)) + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[idx + (2 * ceil32(return_data.size)) + 550] = 32
        mem[idx + (2 * ceil32(return_data.size)) + 582] = idx + 2
        s = 0
        while s < idx + 2:
            mem[s + idx + (2 * ceil32(return_data.size)) + 614] = mem[s + (2 * ceil32(return_data.size)) + 544]
            s = s + 32
            continue 
        if floor32(idx + 33) > idx + 2:
            mem[(2 * idx) + (2 * ceil32(return_data.size)) + 616] = 0
        revert with 0, 32, idx + 2, mem[idx + (2 * ceil32(return_data.size)) + 614 len floor32(idx + 33)]
    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if fluidUntil[address(msg.sender)].field_1280 <= epoch:
        mem[0] = msg.sender
        mem[32] = 12
        if epoch < fluidUntil[address(msg.sender)].field_1024:
            mem[128] = 0x5065726d697373696f6e00000000000000000000000000000000000000000000
            mem[96] = 32
            mem[64] = 160
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 127]):
                    idx = idx - 1
                    continue 
                mem[96] = idx
                mem[192] = 0x4e6f742066726f7a656e206f72206c6f636b6564000000000000000000000000
                mem[160] = 32
                mem[64] = 224
                s = 32
                while s:
                    require s - 1 < 32
                    if not Mask(8, 248, mem[s + 191]):
                        s = s - 1
                        continue 
                    mem[160] = s
                    s = 0
                    while s < idx:
                        mem[s + 256] = mem[s + 128]
                        s = s + 32
                        continue 
                    mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    if ceil32(idx) <= idx:
                        _251 = mem[160]
                        s = 0
                        while s < mem[160]:
                            mem[s + idx + 258] = mem[s + 192]
                            s = s + 32
                            continue 
                        if ceil32(mem[160]) <= mem[160]:
                            _361 = mem[64]
                            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                            mem[64] = _251 + idx + 258
                            mem[_251 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_251 + idx + 262] = 32
                            _377 = mem[_361]
                            mem[_251 + idx + 294] = mem[_361]
                            s = 0
                            while s < _377:
                                mem[s + _251 + idx + 326] = mem[s + _361 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_377) > _377:
                                mem[_377 + _251 + idx + 326] = 0
                            revert with 0, 32, mem[_251 + idx + 294 len ceil32(_377) + 32]
                        mem[mem[160] + idx + 258] = 0
                        _362 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _251 + idx + 258
                        mem[_251 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_251 + idx + 262] = 32
                        _378 = mem[_362]
                        mem[_251 + idx + 294] = mem[_362]
                        s = 0
                        while s < _378:
                            mem[s + _251 + idx + 326] = mem[s + _362 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_378) > _378:
                            mem[_378 + _251 + idx + 326] = 0
                        revert with 0, 32, mem[_251 + idx + 294 len ceil32(_378) + 32]
                    _252 = mem[160]
                    s = 0
                    while s < mem[160]:
                        mem[s + idx + 258] = mem[s + 192]
                        s = s + 32
                        continue 
                    if ceil32(mem[160]) <= mem[160]:
                        _363 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _252 + idx + 258
                        mem[_252 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_252 + idx + 262] = 32
                        _379 = mem[_363]
                        mem[_252 + idx + 294] = mem[_363]
                        s = 0
                        while s < _379:
                            mem[s + _252 + idx + 326] = mem[s + _363 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_379) > _379:
                            mem[_379 + _252 + idx + 326] = 0
                        revert with 0, 32, mem[_252 + idx + 294 len ceil32(_379) + 32]
                    mem[mem[160] + idx + 258] = 0
                    _364 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _252 + idx + 258
                    mem[_252 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_252 + idx + 262] = 32
                    _380 = mem[_364]
                    mem[_252 + idx + 294] = mem[_364]
                    s = 0
                    while s < _380:
                        mem[s + _252 + idx + 326] = mem[s + _364 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_380) > _380:
                        mem[_380 + _252 + idx + 326] = 0
                    revert with 0, 32, mem[_252 + idx + 294 len ceil32(_380) + 32]
                mem[224] = 0
                mem[64] = 256
                s = 0
                while s < idx:
                    mem[s + 288] = mem[s + 128]
                    s = s + 32
                    continue 
                mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                if ceil32(idx) <= idx:
                    _249 = mem[224]
                    s = 0
                    while s < mem[224]:
                        mem[s + idx + 290] = mem[s + 256]
                        s = s + 32
                        continue 
                    if ceil32(mem[224]) <= mem[224]:
                        _357 = mem[64]
                        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                        mem[64] = _249 + idx + 290
                        mem[_249 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_249 + idx + 294] = 32
                        _373 = mem[_357]
                        mem[_249 + idx + 326] = mem[_357]
                        s = 0
                        while s < _373:
                            mem[s + _249 + idx + 358] = mem[s + _357 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_373) > _373:
                            mem[_373 + _249 + idx + 358] = 0
                        revert with 0, 32, mem[_249 + idx + 326 len ceil32(_373) + 32]
                    mem[mem[224] + idx + 290] = 0
                    _358 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _249 + idx + 290
                    mem[_249 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_249 + idx + 294] = 32
                    _374 = mem[_358]
                    mem[_249 + idx + 326] = mem[_358]
                    s = 0
                    while s < _374:
                        mem[s + _249 + idx + 358] = mem[s + _358 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_374) > _374:
                        mem[_374 + _249 + idx + 358] = 0
                    revert with 0, 32, mem[_249 + idx + 326 len ceil32(_374) + 32]
                _250 = mem[224]
                s = 0
                while s < mem[224]:
                    mem[s + idx + 290] = mem[s + 256]
                    s = s + 32
                    continue 
                if ceil32(mem[224]) <= mem[224]:
                    _359 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _250 + idx + 290
                    mem[_250 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_250 + idx + 294] = 32
                    _375 = mem[_359]
                    mem[_250 + idx + 326] = mem[_359]
                    s = 0
                    while s < _375:
                        mem[s + _250 + idx + 358] = mem[s + _359 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_375) > _375:
                        mem[_375 + _250 + idx + 358] = 0
                    revert with 0, 32, mem[_250 + idx + 326 len ceil32(_375) + 32]
                mem[mem[224] + idx + 290] = 0
                _360 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _250 + idx + 290
                mem[_250 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_250 + idx + 294] = 32
                _376 = mem[_360]
                mem[_250 + idx + 326] = mem[_360]
                s = 0
                while s < _376:
                    mem[s + _250 + idx + 358] = mem[s + _360 + 32]
                    s = s + 32
                    continue 
                if ceil32(_376) > _376:
                    mem[_376 + _250 + idx + 358] = 0
                revert with 0, 32, mem[_250 + idx + 326 len ceil32(_376) + 32]
            mem[160] = 0
            mem[224] = 0x4e6f742066726f7a656e206f72206c6f636b6564000000000000000000000000
            mem[192] = 32
            mem[64] = 256
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 223]):
                    idx = idx - 1
                    continue 
                mem[192] = idx
                s = 0
                while s < 0:
                    mem[s + 288] = mem[s + 192]
                    s = s + 32
                    continue 
                mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                s = 0
                while s < idx:
                    mem[s + 290] = mem[s + 224]
                    s = s + 32
                    continue 
                mem[256] = idx + 2
                mem[64] = idx + 290
                mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[idx + 294] = 32
                mem[idx + 326] = idx + 2
                s = 0
                while s < idx + 2:
                    mem[s + idx + 358] = mem[s + 288]
                    s = s + 32
                    continue 
                if floor32(idx + 33) > idx + 2:
                    mem[(2 * idx) + 360] = 0
                revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
            revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
    require ext_code.size(dollarAddress)
    call dollarAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    fluidUntil[address(msg.sender)].field_0 += arg1
    if arg1 + totalStaged < totalStaged:
        revert with 0, 'SafeMath: addition overflow'
    totalStaged += arg1
    emit Deposit(arg1, msg.sender);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if fluidUntil[address(msg.sender)].field_1280 <= epoch:
        mem[0] = msg.sender
        mem[32] = 12
        if epoch < fluidUntil[address(msg.sender)].field_1024:
            mem[128] = 0x5065726d697373696f6e00000000000000000000000000000000000000000000
            mem[96] = 32
            mem[64] = 160
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 127]):
                    idx = idx - 1
                    continue 
                mem[96] = idx
                mem[192] = 0x4e6f742066726f7a656e206f72206c6f636b6564000000000000000000000000
                mem[160] = 32
                mem[64] = 224
                s = 32
                while s:
                    require s - 1 < 32
                    if not Mask(8, 248, mem[s + 191]):
                        s = s - 1
                        continue 
                    mem[160] = s
                    s = 0
                    while s < idx:
                        mem[s + 256] = mem[s + 128]
                        s = s + 32
                        continue 
                    mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    if ceil32(idx) <= idx:
                        _277 = mem[160]
                        s = 0
                        while s < mem[160]:
                            mem[s + idx + 258] = mem[s + 192]
                            s = s + 32
                            continue 
                        if ceil32(mem[160]) <= mem[160]:
                            _387 = mem[64]
                            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                            mem[64] = _277 + idx + 258
                            mem[_277 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_277 + idx + 262] = 32
                            _403 = mem[_387]
                            mem[_277 + idx + 294] = mem[_387]
                            s = 0
                            while s < _403:
                                mem[s + _277 + idx + 326] = mem[s + _387 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_403) > _403:
                                mem[_403 + _277 + idx + 326] = 0
                            revert with 0, 32, mem[_277 + idx + 294 len ceil32(_403) + 32]
                        mem[mem[160] + idx + 258] = 0
                        _388 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _277 + idx + 258
                        mem[_277 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_277 + idx + 262] = 32
                        _404 = mem[_388]
                        mem[_277 + idx + 294] = mem[_388]
                        s = 0
                        while s < _404:
                            mem[s + _277 + idx + 326] = mem[s + _388 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_404) > _404:
                            mem[_404 + _277 + idx + 326] = 0
                        revert with 0, 32, mem[_277 + idx + 294 len ceil32(_404) + 32]
                    _278 = mem[160]
                    s = 0
                    while s < mem[160]:
                        mem[s + idx + 258] = mem[s + 192]
                        s = s + 32
                        continue 
                    if ceil32(mem[160]) <= mem[160]:
                        _389 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _278 + idx + 258
                        mem[_278 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_278 + idx + 262] = 32
                        _405 = mem[_389]
                        mem[_278 + idx + 294] = mem[_389]
                        s = 0
                        while s < _405:
                            mem[s + _278 + idx + 326] = mem[s + _389 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_405) > _405:
                            mem[_405 + _278 + idx + 326] = 0
                        revert with 0, 32, mem[_278 + idx + 294 len ceil32(_405) + 32]
                    mem[mem[160] + idx + 258] = 0
                    _390 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _278 + idx + 258
                    mem[_278 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_278 + idx + 262] = 32
                    _406 = mem[_390]
                    mem[_278 + idx + 294] = mem[_390]
                    s = 0
                    while s < _406:
                        mem[s + _278 + idx + 326] = mem[s + _390 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_406) > _406:
                        mem[_406 + _278 + idx + 326] = 0
                    revert with 0, 32, mem[_278 + idx + 294 len ceil32(_406) + 32]
                mem[224] = 0
                mem[64] = 256
                s = 0
                while s < idx:
                    mem[s + 288] = mem[s + 128]
                    s = s + 32
                    continue 
                mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                if ceil32(idx) <= idx:
                    _275 = mem[224]
                    s = 0
                    while s < mem[224]:
                        mem[s + idx + 290] = mem[s + 256]
                        s = s + 32
                        continue 
                    if ceil32(mem[224]) <= mem[224]:
                        _383 = mem[64]
                        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                        mem[64] = _275 + idx + 290
                        mem[_275 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_275 + idx + 294] = 32
                        _399 = mem[_383]
                        mem[_275 + idx + 326] = mem[_383]
                        s = 0
                        while s < _399:
                            mem[s + _275 + idx + 358] = mem[s + _383 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_399) > _399:
                            mem[_399 + _275 + idx + 358] = 0
                        revert with 0, 32, mem[_275 + idx + 326 len ceil32(_399) + 32]
                    mem[mem[224] + idx + 290] = 0
                    _384 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _275 + idx + 290
                    mem[_275 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_275 + idx + 294] = 32
                    _400 = mem[_384]
                    mem[_275 + idx + 326] = mem[_384]
                    s = 0
                    while s < _400:
                        mem[s + _275 + idx + 358] = mem[s + _384 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_400) > _400:
                        mem[_400 + _275 + idx + 358] = 0
                    revert with 0, 32, mem[_275 + idx + 326 len ceil32(_400) + 32]
                _276 = mem[224]
                s = 0
                while s < mem[224]:
                    mem[s + idx + 290] = mem[s + 256]
                    s = s + 32
                    continue 
                if ceil32(mem[224]) <= mem[224]:
                    _385 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _276 + idx + 290
                    mem[_276 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_276 + idx + 294] = 32
                    _401 = mem[_385]
                    mem[_276 + idx + 326] = mem[_385]
                    s = 0
                    while s < _401:
                        mem[s + _276 + idx + 358] = mem[s + _385 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_401) > _401:
                        mem[_401 + _276 + idx + 358] = 0
                    revert with 0, 32, mem[_276 + idx + 326 len ceil32(_401) + 32]
                mem[mem[224] + idx + 290] = 0
                _386 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _276 + idx + 290
                mem[_276 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_276 + idx + 294] = 32
                _402 = mem[_386]
                mem[_276 + idx + 326] = mem[_386]
                s = 0
                while s < _402:
                    mem[s + _276 + idx + 358] = mem[s + _386 + 32]
                    s = s + 32
                    continue 
                if ceil32(_402) > _402:
                    mem[_402 + _276 + idx + 358] = 0
                revert with 0, 32, mem[_276 + idx + 326 len ceil32(_402) + 32]
            mem[160] = 0
            mem[224] = 0x4e6f742066726f7a656e206f72206c6f636b6564000000000000000000000000
            mem[192] = 32
            mem[64] = 256
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 223]):
                    idx = idx - 1
                    continue 
                mem[192] = idx
                s = 0
                while s < 0:
                    mem[s + 288] = mem[s + 192]
                    s = s + 32
                    continue 
                mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                s = 0
                while s < idx:
                    mem[s + 290] = mem[s + 224]
                    s = s + 32
                    continue 
                mem[256] = idx + 2
                mem[64] = idx + 290
                mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[idx + 294] = 32
                mem[idx + 326] = idx + 2
                s = 0
                while s < idx + 2:
                    mem[s + idx + 358] = mem[s + 288]
                    s = s + 32
                    continue 
                if floor32(idx + 33) > idx + 2:
                    mem[(2 * idx) + 360] = 0
                revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
            revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
    require ext_code.size(dollarAddress)
    call dollarAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 > fluidUntil[address(msg.sender)].field_0:
        revert with 0, 
                    32,
                    36,
                    0x65426f6e64696e673a20696e73756666696369656e74207374616765642062616c616e63, mem[ceil32(return_data.size) + 164 len 28] >> 32,
                    0
    fluidUntil[address(msg.sender)].field_0 -= arg1
    if arg1 > totalStaged:
        revert with 0, 
                    32,
                    36,
                    0x65426f6e64696e673a20696e73756666696369656e74207374616765642062616c616e63, mem[ceil32(return_data.size) + 164 len 28] >> 32,
                    0
    totalStaged -= arg1
    emit Withdraw(arg1, msg.sender);
}

function unbondUnderlying(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = 12
    if fluidUntil[address(msg.sender)].field_1280 > epoch:
        mem[128] = 0x5065726d697373696f6e00000000000000000000000000000000000000000000
        mem[96] = 32
        mem[64] = 160
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + 127]):
                idx = idx - 1
                continue 
            mem[96] = idx
            mem[192] = 0x4e6f742066726f7a656e206f7220666c75696400000000000000000000000000
            mem[160] = 32
            mem[64] = 224
            s = 32
            while s:
                require s - 1 < 32
                if not Mask(8, 248, mem[s + 191]):
                    s = s - 1
                    continue 
                mem[160] = s
                s = 0
                while s < idx:
                    mem[s + 256] = mem[s + 128]
                    s = s + 32
                    continue 
                mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                if ceil32(idx) <= idx:
                    _433 = mem[160]
                    s = 0
                    while s < mem[160]:
                        mem[s + idx + 258] = mem[s + 192]
                        s = s + 32
                        continue 
                    if ceil32(mem[160]) <= mem[160]:
                        _543 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _433 + idx + 258
                        mem[_433 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_433 + idx + 262] = 32
                        _559 = mem[_543]
                        mem[_433 + idx + 294] = mem[_543]
                        s = 0
                        while s < _559:
                            mem[s + _433 + idx + 326] = mem[s + _543 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_559) > _559:
                            mem[_559 + _433 + idx + 326] = 0
                        revert with 0, 32, mem[_433 + idx + 294 len ceil32(_559) + 32]
                    mem[mem[160] + idx + 258] = 0
                    _544 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _433 + idx + 258
                    mem[_433 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_433 + idx + 262] = 32
                    _560 = mem[_544]
                    mem[_433 + idx + 294] = mem[_544]
                    s = 0
                    while s < _560:
                        mem[s + _433 + idx + 326] = mem[s + _544 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_560) > _560:
                        mem[_560 + _433 + idx + 326] = 0
                    revert with 0, 32, mem[_433 + idx + 294 len ceil32(_560) + 32]
                _434 = mem[160]
                s = 0
                while s < mem[160]:
                    mem[s + idx + 258] = mem[s + 192]
                    s = s + 32
                    continue 
                if ceil32(mem[160]) <= mem[160]:
                    _545 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _434 + idx + 258
                    mem[_434 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_434 + idx + 262] = 32
                    _561 = mem[_545]
                    mem[_434 + idx + 294] = mem[_545]
                    s = 0
                    while s < _561:
                        mem[s + _434 + idx + 326] = mem[s + _545 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_561) > _561:
                        mem[_561 + _434 + idx + 326] = 0
                    revert with 0, 32, mem[_434 + idx + 294 len ceil32(_561) + 32]
                mem[mem[160] + idx + 258] = 0
                _546 = mem[64]
                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                mem[64] = _434 + idx + 258
                mem[_434 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_434 + idx + 262] = 32
                _562 = mem[_546]
                mem[_434 + idx + 294] = mem[_546]
                s = 0
                while s < _562:
                    mem[s + _434 + idx + 326] = mem[s + _546 + 32]
                    s = s + 32
                    continue 
                if ceil32(_562) > _562:
                    mem[_562 + _434 + idx + 326] = 0
                revert with 0, 32, mem[_434 + idx + 294 len ceil32(_562) + 32]
            mem[224] = 0
            mem[64] = 256
            s = 0
            while s < idx:
                mem[s + 288] = mem[s + 128]
                s = s + 32
                continue 
            mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            if ceil32(idx) <= idx:
                _431 = mem[224]
                s = 0
                while s < mem[224]:
                    mem[s + idx + 290] = mem[s + 256]
                    s = s + 32
                    continue 
                if ceil32(mem[224]) <= mem[224]:
                    _539 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _431 + idx + 290
                    mem[_431 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_431 + idx + 294] = 32
                    _555 = mem[_539]
                    mem[_431 + idx + 326] = mem[_539]
                    s = 0
                    while s < _555:
                        mem[s + _431 + idx + 358] = mem[s + _539 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_555) > _555:
                        mem[_555 + _431 + idx + 358] = 0
                    revert with 0, 32, mem[_431 + idx + 326 len ceil32(_555) + 32]
                mem[mem[224] + idx + 290] = 0
                _540 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _431 + idx + 290
                mem[_431 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_431 + idx + 294] = 32
                _556 = mem[_540]
                mem[_431 + idx + 326] = mem[_540]
                s = 0
                while s < _556:
                    mem[s + _431 + idx + 358] = mem[s + _540 + 32]
                    s = s + 32
                    continue 
                if ceil32(_556) > _556:
                    mem[_556 + _431 + idx + 358] = 0
                revert with 0, 32, mem[_431 + idx + 326 len ceil32(_556) + 32]
            _432 = mem[224]
            s = 0
            while s < mem[224]:
                mem[s + idx + 290] = mem[s + 256]
                s = s + 32
                continue 
            if ceil32(mem[224]) <= mem[224]:
                _541 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _432 + idx + 290
                mem[_432 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_432 + idx + 294] = 32
                _557 = mem[_541]
                mem[_432 + idx + 326] = mem[_541]
                s = 0
                while s < _557:
                    mem[s + _432 + idx + 358] = mem[s + _541 + 32]
                    s = s + 32
                    continue 
                if ceil32(_557) > _557:
                    mem[_557 + _432 + idx + 358] = 0
                revert with 0, 32, mem[_432 + idx + 326 len ceil32(_557) + 32]
            mem[mem[224] + idx + 290] = 0
            _542 = mem[64]
            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
            mem[64] = _432 + idx + 290
            mem[_432 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_432 + idx + 294] = 32
            _558 = mem[_542]
            mem[_432 + idx + 326] = mem[_542]
            s = 0
            while s < _558:
                mem[s + _432 + idx + 358] = mem[s + _542 + 32]
                s = s + 32
                continue 
            if ceil32(_558) > _558:
                mem[_558 + _432 + idx + 358] = 0
            revert with 0, 32, mem[_432 + idx + 326 len ceil32(_558) + 32]
        mem[160] = 0
        mem[224] = 0x4e6f742066726f7a656e206f7220666c75696400000000000000000000000000
        mem[192] = 32
        mem[64] = 256
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + 223]):
                idx = idx - 1
                continue 
            mem[192] = idx
            s = 0
            while s < 0:
                mem[s + 288] = mem[s + 192]
                s = s + 32
                continue 
            mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            s = 0
            while s < idx:
                mem[s + 290] = mem[s + 224]
                s = s + 32
                continue 
            mem[256] = idx + 2
            mem[64] = idx + 290
            mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[idx + 294] = 32
            mem[idx + 326] = idx + 2
            s = 0
            while s < idx + 2:
                mem[s + idx + 358] = mem[s + 288]
                s = s + 32
                continue 
            if floor32(idx + 33) > idx + 2:
                mem[(2 * idx) + 360] = 0
            revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
        revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
    if epoch + 30 < epoch:
        revert with 0, 'SafeMath: addition overflow'
    fluidUntil[address(msg.sender)].field_1024 = epoch + 30
    if not arg1:
        if not totalBonded:
            revert with 0, 'SafeMath: division by zero', 0
        if arg1 + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        fluidUntil[address(msg.sender)].field_0 += arg1
        if arg1 + totalStaged < totalStaged:
            revert with 0, 'SafeMath: addition overflow'
        totalStaged += arg1
        if arg1 > totalBonded:
            revert with 0, 32, 34, 0x6c426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[226 len 30] >> 16, 0
        totalBonded -= arg1
        if 0 / totalBonded > fluidUntil[address(msg.sender)].field_256:
            revert with 0, 'Bonding: insufficient balance', 0
        fluidUntil[address(msg.sender)].field_256 -= 0 / totalBonded
        if 0 / totalBonded > totalSupply:
            revert with 0, 'Bonding: insufficient balance', 0
        totalSupply -= 0 / totalBonded
        emit Transfer((0 / totalBonded), msg.sender, 0);
        if epoch + 1 < epoch:
            revert with 0, 'SafeMath: addition overflow'
        emit Unbond(epoch + 1, 0 / totalBonded, arg1, msg.sender);
    else:
        if totalSupply * arg1 / arg1 != totalSupply:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not totalBonded:
            revert with 0, 'SafeMath: division by zero', 0
        if arg1 + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        fluidUntil[address(msg.sender)].field_0 += arg1
        if arg1 + totalStaged < totalStaged:
            revert with 0, 'SafeMath: addition overflow'
        totalStaged += arg1
        if arg1 > totalBonded:
            revert with 0, 32, 34, 0x6c426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[226 len 30] >> 16, 0
        totalBonded -= arg1
        if totalSupply * arg1 / totalBonded > fluidUntil[address(msg.sender)].field_256:
            revert with 0, 'Bonding: insufficient balance', 0
        fluidUntil[address(msg.sender)].field_256 -= totalSupply * arg1 / totalBonded
        if totalSupply * arg1 / totalBonded > totalSupply:
            revert with 0, 'Bonding: insufficient balance', 0
        totalSupply -= totalSupply * arg1 / totalBonded
        emit Transfer((totalSupply * arg1 / totalBonded), msg.sender, 0);
        if epoch + 1 < epoch:
            revert with 0, 'SafeMath: addition overflow'
        emit Unbond(epoch + 1, totalSupply * arg1 / totalBonded, arg1, msg.sender);
}

function bond(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = 12
    if fluidUntil[address(msg.sender)].field_1280 > epoch:
        mem[128] = 0x5065726d697373696f6e00000000000000000000000000000000000000000000
        mem[96] = 32
        mem[64] = 160
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + 127]):
                idx = idx - 1
                continue 
            mem[96] = idx
            mem[192] = 0x4e6f742066726f7a656e206f7220666c75696400000000000000000000000000
            mem[160] = 32
            mem[64] = 224
            s = 32
            while s:
                require s - 1 < 32
                if not Mask(8, 248, mem[s + 191]):
                    s = s - 1
                    continue 
                mem[160] = s
                s = 0
                while s < idx:
                    mem[s + 256] = mem[s + 128]
                    s = s + 32
                    continue 
                mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                if ceil32(idx) <= idx:
                    _541 = mem[160]
                    s = 0
                    while s < mem[160]:
                        mem[s + idx + 258] = mem[s + 192]
                        s = s + 32
                        continue 
                    if ceil32(mem[160]) <= mem[160]:
                        _651 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _541 + idx + 258
                        mem[_541 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_541 + idx + 262] = 32
                        _667 = mem[_651]
                        mem[_541 + idx + 294] = mem[_651]
                        s = 0
                        while s < _667:
                            mem[s + _541 + idx + 326] = mem[s + _651 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_667) > _667:
                            mem[_667 + _541 + idx + 326] = 0
                        revert with 0, 32, mem[_541 + idx + 294 len ceil32(_667) + 32]
                    mem[mem[160] + idx + 258] = 0
                    _652 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _541 + idx + 258
                    mem[_541 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_541 + idx + 262] = 32
                    _668 = mem[_652]
                    mem[_541 + idx + 294] = mem[_652]
                    s = 0
                    while s < _668:
                        mem[s + _541 + idx + 326] = mem[s + _652 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_668) > _668:
                        mem[_668 + _541 + idx + 326] = 0
                    revert with 0, 32, mem[_541 + idx + 294 len ceil32(_668) + 32]
                _542 = mem[160]
                s = 0
                while s < mem[160]:
                    mem[s + idx + 258] = mem[s + 192]
                    s = s + 32
                    continue 
                if ceil32(mem[160]) <= mem[160]:
                    _653 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _542 + idx + 258
                    mem[_542 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_542 + idx + 262] = 32
                    _669 = mem[_653]
                    mem[_542 + idx + 294] = mem[_653]
                    s = 0
                    while s < _669:
                        mem[s + _542 + idx + 326] = mem[s + _653 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_669) > _669:
                        mem[_669 + _542 + idx + 326] = 0
                    revert with 0, 32, mem[_542 + idx + 294 len ceil32(_669) + 32]
                mem[mem[160] + idx + 258] = 0
                _654 = mem[64]
                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                mem[64] = _542 + idx + 258
                mem[_542 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_542 + idx + 262] = 32
                _670 = mem[_654]
                mem[_542 + idx + 294] = mem[_654]
                s = 0
                while s < _670:
                    mem[s + _542 + idx + 326] = mem[s + _654 + 32]
                    s = s + 32
                    continue 
                if ceil32(_670) > _670:
                    mem[_670 + _542 + idx + 326] = 0
                revert with 0, 32, mem[_542 + idx + 294 len ceil32(_670) + 32]
            mem[224] = 0
            mem[64] = 256
            s = 0
            while s < idx:
                mem[s + 288] = mem[s + 128]
                s = s + 32
                continue 
            mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            if ceil32(idx) <= idx:
                _539 = mem[224]
                s = 0
                while s < mem[224]:
                    mem[s + idx + 290] = mem[s + 256]
                    s = s + 32
                    continue 
                if ceil32(mem[224]) <= mem[224]:
                    _647 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _539 + idx + 290
                    mem[_539 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_539 + idx + 294] = 32
                    _663 = mem[_647]
                    mem[_539 + idx + 326] = mem[_647]
                    s = 0
                    while s < _663:
                        mem[s + _539 + idx + 358] = mem[s + _647 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_663) > _663:
                        mem[_663 + _539 + idx + 358] = 0
                    revert with 0, 32, mem[_539 + idx + 326 len ceil32(_663) + 32]
                mem[mem[224] + idx + 290] = 0
                _648 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _539 + idx + 290
                mem[_539 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_539 + idx + 294] = 32
                _664 = mem[_648]
                mem[_539 + idx + 326] = mem[_648]
                s = 0
                while s < _664:
                    mem[s + _539 + idx + 358] = mem[s + _648 + 32]
                    s = s + 32
                    continue 
                if ceil32(_664) > _664:
                    mem[_664 + _539 + idx + 358] = 0
                revert with 0, 32, mem[_539 + idx + 326 len ceil32(_664) + 32]
            _540 = mem[224]
            s = 0
            while s < mem[224]:
                mem[s + idx + 290] = mem[s + 256]
                s = s + 32
                continue 
            if ceil32(mem[224]) <= mem[224]:
                _649 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _540 + idx + 290
                mem[_540 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_540 + idx + 294] = 32
                _665 = mem[_649]
                mem[_540 + idx + 326] = mem[_649]
                s = 0
                while s < _665:
                    mem[s + _540 + idx + 358] = mem[s + _649 + 32]
                    s = s + 32
                    continue 
                if ceil32(_665) > _665:
                    mem[_665 + _540 + idx + 358] = 0
                revert with 0, 32, mem[_540 + idx + 326 len ceil32(_665) + 32]
            mem[mem[224] + idx + 290] = 0
            _650 = mem[64]
            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
            mem[64] = _540 + idx + 290
            mem[_540 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_540 + idx + 294] = 32
            _666 = mem[_650]
            mem[_540 + idx + 326] = mem[_650]
            s = 0
            while s < _666:
                mem[s + _540 + idx + 358] = mem[s + _650 + 32]
                s = s + 32
                continue 
            if ceil32(_666) > _666:
                mem[_666 + _540 + idx + 358] = 0
            revert with 0, 32, mem[_540 + idx + 326 len ceil32(_666) + 32]
        mem[160] = 0
        mem[224] = 0x4e6f742066726f7a656e206f7220666c75696400000000000000000000000000
        mem[192] = 32
        mem[64] = 256
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + 223]):
                idx = idx - 1
                continue 
            mem[192] = idx
            s = 0
            while s < 0:
                mem[s + 288] = mem[s + 192]
                s = s + 32
                continue 
            mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            s = 0
            while s < idx:
                mem[s + 290] = mem[s + 224]
                s = s + 32
                continue 
            mem[256] = idx + 2
            mem[64] = idx + 290
            mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[idx + 294] = 32
            mem[idx + 326] = idx + 2
            s = 0
            while s < idx + 2:
                mem[s + idx + 358] = mem[s + 288]
                s = s + 32
                continue 
            if floor32(idx + 33) > idx + 2:
                mem[(2 * idx) + 360] = 0
            revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
        revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
    if epoch + 30 < epoch:
        revert with 0, 'SafeMath: addition overflow'
    fluidUntil[address(msg.sender)].field_1024 = epoch + 30
    if not totalBonded:
        if not arg1:
            if fluidUntil[address(msg.sender)].field_256 < fluidUntil[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(0, 0, msg.sender);
            if arg1 + totalBonded < totalBonded:
                revert with 0, 'SafeMath: addition overflow'
            totalBonded += arg1
            if arg1 > fluidUntil[address(msg.sender)].field_0:
                revert with 0, 32, 36, 0x65426f6e64696e673a20696e73756666696369656e74207374616765642062616c616e63, mem[164 len 28] >> 32, 0
            fluidUntil[address(msg.sender)].field_0 -= arg1
            if arg1 > totalStaged:
                revert with 0, 32, 36, 0x65426f6e64696e673a20696e73756666696369656e74207374616765642062616c616e63, mem[164 len 28] >> 32, 0
            totalStaged -= arg1
            if epoch + 1 < epoch:
                revert with 0, 'SafeMath: addition overflow'
            emit Bond(epoch + 1, 0, arg1, msg.sender);
        else:
            if 10^6 * arg1 / arg1 != 10^6:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if (10^6 * arg1) + fluidUntil[address(msg.sender)].field_256 < fluidUntil[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            fluidUntil[address(msg.sender)].field_256 += 10^6 * arg1
            if (10^6 * arg1) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += 10^6 * arg1
            emit Transfer((10^6 * arg1), 0, msg.sender);
            if arg1 + totalBonded < totalBonded:
                revert with 0, 'SafeMath: addition overflow'
            totalBonded += arg1
            if arg1 > fluidUntil[address(msg.sender)].field_0:
                revert with 0, 32, 36, 0x65426f6e64696e673a20696e73756666696369656e74207374616765642062616c616e63, mem[164 len 28] >> 32, 0
            fluidUntil[address(msg.sender)].field_0 -= arg1
            if arg1 > totalStaged:
                revert with 0, 32, 36, 0x65426f6e64696e673a20696e73756666696369656e74207374616765642062616c616e63, mem[164 len 28] >> 32, 0
            totalStaged -= arg1
            if epoch + 1 < epoch:
                revert with 0, 'SafeMath: addition overflow'
            emit Bond(epoch + 1, 10^6 * arg1, arg1, msg.sender);
    else:
        if not arg1:
            if not totalBonded:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / totalBonded) + fluidUntil[address(msg.sender)].field_256 < fluidUntil[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            fluidUntil[address(msg.sender)].field_256 += 0 / totalBonded
            if (0 / totalBonded) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += 0 / totalBonded
            emit Transfer((0 / totalBonded), 0, msg.sender);
            if arg1 + totalBonded < totalBonded:
                revert with 0, 'SafeMath: addition overflow'
            totalBonded += arg1
            if arg1 > fluidUntil[address(msg.sender)].field_0:
                revert with 0, 32, 36, 0x65426f6e64696e673a20696e73756666696369656e74207374616765642062616c616e63, mem[228 len 28] >> 32, 0
            fluidUntil[address(msg.sender)].field_0 -= arg1
            if arg1 > totalStaged:
                revert with 0, 32, 36, 0x65426f6e64696e673a20696e73756666696369656e74207374616765642062616c616e63, mem[228 len 28] >> 32, 0
            totalStaged -= arg1
            if epoch + 1 < epoch:
                revert with 0, 'SafeMath: addition overflow'
            emit Bond(epoch + 1, 0 / totalBonded, arg1, msg.sender);
        else:
            if totalSupply * arg1 / arg1 != totalSupply:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not totalBonded:
                revert with 0, 'SafeMath: division by zero', 0
            if (totalSupply * arg1 / totalBonded) + fluidUntil[address(msg.sender)].field_256 < fluidUntil[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            fluidUntil[address(msg.sender)].field_256 += totalSupply * arg1 / totalBonded
            if (totalSupply * arg1 / totalBonded) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += totalSupply * arg1 / totalBonded
            emit Transfer((totalSupply * arg1 / totalBonded), 0, msg.sender);
            if arg1 + totalBonded < totalBonded:
                revert with 0, 'SafeMath: addition overflow'
            totalBonded += arg1
            if arg1 > fluidUntil[address(msg.sender)].field_0:
                revert with 0, 32, 36, 0x65426f6e64696e673a20696e73756666696369656e74207374616765642062616c616e63, mem[228 len 28] >> 32, 0
            fluidUntil[address(msg.sender)].field_0 -= arg1
            if arg1 > totalStaged:
                revert with 0, 32, 36, 0x65426f6e64696e673a20696e73756666696369656e74207374616765642062616c616e63, mem[228 len 28] >> 32, 0
            totalStaged -= arg1
            if epoch + 1 < epoch:
                revert with 0, 'SafeMath: addition overflow'
            emit Bond(epoch + 1, totalSupply * arg1 / totalBonded, arg1, msg.sender);
}

function unbond(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = 12
    if fluidUntil[address(msg.sender)].field_1280 > epoch:
        mem[128] = 0x5065726d697373696f6e00000000000000000000000000000000000000000000
        mem[96] = 32
        mem[64] = 160
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + 127]):
                idx = idx - 1
                continue 
            mem[96] = idx
            mem[192] = 0x4e6f742066726f7a656e206f7220666c75696400000000000000000000000000
            mem[160] = 32
            mem[64] = 224
            s = 32
            while s:
                require s - 1 < 32
                if not Mask(8, 248, mem[s + 191]):
                    s = s - 1
                    continue 
                mem[160] = s
                s = 0
                while s < idx:
                    mem[s + 256] = mem[s + 128]
                    s = s + 32
                    continue 
                mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                if ceil32(idx) <= idx:
                    _877 = mem[160]
                    s = 0
                    while s < mem[160]:
                        mem[s + idx + 258] = mem[s + 192]
                        s = s + 32
                        continue 
                    if ceil32(mem[160]) <= mem[160]:
                        _987 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _877 + idx + 258
                        mem[_877 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_877 + idx + 262] = 32
                        _1003 = mem[_987]
                        mem[_877 + idx + 294] = mem[_987]
                        s = 0
                        while s < _1003:
                            mem[s + _877 + idx + 326] = mem[s + _987 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1003) > _1003:
                            mem[_1003 + _877 + idx + 326] = 0
                        revert with 0, 32, mem[_877 + idx + 294 len ceil32(_1003) + 32]
                    mem[mem[160] + idx + 258] = 0
                    _988 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _877 + idx + 258
                    mem[_877 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_877 + idx + 262] = 32
                    _1004 = mem[_988]
                    mem[_877 + idx + 294] = mem[_988]
                    s = 0
                    while s < _1004:
                        mem[s + _877 + idx + 326] = mem[s + _988 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1004) > _1004:
                        mem[_1004 + _877 + idx + 326] = 0
                    revert with 0, 32, mem[_877 + idx + 294 len ceil32(_1004) + 32]
                _878 = mem[160]
                s = 0
                while s < mem[160]:
                    mem[s + idx + 258] = mem[s + 192]
                    s = s + 32
                    continue 
                if ceil32(mem[160]) <= mem[160]:
                    _989 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _878 + idx + 258
                    mem[_878 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_878 + idx + 262] = 32
                    _1005 = mem[_989]
                    mem[_878 + idx + 294] = mem[_989]
                    s = 0
                    while s < _1005:
                        mem[s + _878 + idx + 326] = mem[s + _989 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1005) > _1005:
                        mem[_1005 + _878 + idx + 326] = 0
                    revert with 0, 32, mem[_878 + idx + 294 len ceil32(_1005) + 32]
                mem[mem[160] + idx + 258] = 0
                _990 = mem[64]
                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                mem[64] = _878 + idx + 258
                mem[_878 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_878 + idx + 262] = 32
                _1006 = mem[_990]
                mem[_878 + idx + 294] = mem[_990]
                s = 0
                while s < _1006:
                    mem[s + _878 + idx + 326] = mem[s + _990 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1006) > _1006:
                    mem[_1006 + _878 + idx + 326] = 0
                revert with 0, 32, mem[_878 + idx + 294 len ceil32(_1006) + 32]
            mem[224] = 0
            mem[64] = 256
            s = 0
            while s < idx:
                mem[s + 288] = mem[s + 128]
                s = s + 32
                continue 
            mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            if ceil32(idx) <= idx:
                _875 = mem[224]
                s = 0
                while s < mem[224]:
                    mem[s + idx + 290] = mem[s + 256]
                    s = s + 32
                    continue 
                if ceil32(mem[224]) <= mem[224]:
                    _983 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _875 + idx + 290
                    mem[_875 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_875 + idx + 294] = 32
                    _999 = mem[_983]
                    mem[_875 + idx + 326] = mem[_983]
                    s = 0
                    while s < _999:
                        mem[s + _875 + idx + 358] = mem[s + _983 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_999) > _999:
                        mem[_999 + _875 + idx + 358] = 0
                    revert with 0, 32, mem[_875 + idx + 326 len ceil32(_999) + 32]
                mem[mem[224] + idx + 290] = 0
                _984 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _875 + idx + 290
                mem[_875 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_875 + idx + 294] = 32
                _1000 = mem[_984]
                mem[_875 + idx + 326] = mem[_984]
                s = 0
                while s < _1000:
                    mem[s + _875 + idx + 358] = mem[s + _984 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1000) > _1000:
                    mem[_1000 + _875 + idx + 358] = 0
                revert with 0, 32, mem[_875 + idx + 326 len ceil32(_1000) + 32]
            _876 = mem[224]
            s = 0
            while s < mem[224]:
                mem[s + idx + 290] = mem[s + 256]
                s = s + 32
                continue 
            if ceil32(mem[224]) <= mem[224]:
                _985 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _876 + idx + 290
                mem[_876 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_876 + idx + 294] = 32
                _1001 = mem[_985]
                mem[_876 + idx + 326] = mem[_985]
                s = 0
                while s < _1001:
                    mem[s + _876 + idx + 358] = mem[s + _985 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1001) > _1001:
                    mem[_1001 + _876 + idx + 358] = 0
                revert with 0, 32, mem[_876 + idx + 326 len ceil32(_1001) + 32]
            mem[mem[224] + idx + 290] = 0
            _986 = mem[64]
            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
            mem[64] = _876 + idx + 290
            mem[_876 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_876 + idx + 294] = 32
            _1002 = mem[_986]
            mem[_876 + idx + 326] = mem[_986]
            s = 0
            while s < _1002:
                mem[s + _876 + idx + 358] = mem[s + _986 + 32]
                s = s + 32
                continue 
            if ceil32(_1002) > _1002:
                mem[_1002 + _876 + idx + 358] = 0
            revert with 0, 32, mem[_876 + idx + 326 len ceil32(_1002) + 32]
        mem[160] = 0
        mem[224] = 0x4e6f742066726f7a656e206f7220666c75696400000000000000000000000000
        mem[192] = 32
        mem[64] = 256
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + 223]):
                idx = idx - 1
                continue 
            mem[192] = idx
            s = 0
            while s < 0:
                mem[s + 288] = mem[s + 192]
                s = s + 32
                continue 
            mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            s = 0
            while s < idx:
                mem[s + 290] = mem[s + 224]
                s = s + 32
                continue 
            mem[256] = idx + 2
            mem[64] = idx + 290
            mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[idx + 294] = 32
            mem[idx + 326] = idx + 2
            s = 0
            while s < idx + 2:
                mem[s + idx + 358] = mem[s + 288]
                s = s + 32
                continue 
            if floor32(idx + 33) > idx + 2:
                mem[(2 * idx) + 360] = 0
            revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
        revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
    if epoch + 30 < epoch:
        revert with 0, 'SafeMath: addition overflow'
    fluidUntil[address(msg.sender)].field_1024 = epoch + 30
    if not totalSupply:
        if arg1:
            if 0 / arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not fluidUntil[address(msg.sender)].field_256:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / fluidUntil[address(msg.sender)].field_256) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        fluidUntil[address(msg.sender)].field_0 += 0 / fluidUntil[address(msg.sender)].field_256
        if (0 / fluidUntil[address(msg.sender)].field_256) + totalStaged < totalStaged:
            revert with 0, 'SafeMath: addition overflow'
        totalStaged += 0 / fluidUntil[address(msg.sender)].field_256
        if 0 / fluidUntil[address(msg.sender)].field_256 > totalBonded:
            revert with 0, 32, 34, 0x6c426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[226 len 30] >> 16, 0
        totalBonded -= 0 / fluidUntil[address(msg.sender)].field_256
        if arg1 > fluidUntil[address(msg.sender)].field_256:
            revert with 0, 'Bonding: insufficient balance', 0
        fluidUntil[address(msg.sender)].field_256 -= arg1
        if arg1 > totalSupply:
            revert with 0, 'Bonding: insufficient balance', 0
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        if epoch + 1 < epoch:
            revert with 0, 'SafeMath: addition overflow'
        emit Unbond(epoch + 1, arg1, 0 / fluidUntil[address(msg.sender)].field_256, msg.sender);
    else:
        if not totalBonded:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not fluidUntil[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: division by zero', 0
                if (0 / fluidUntil[address(msg.sender)].field_256) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                fluidUntil[address(msg.sender)].field_0 += 0 / fluidUntil[address(msg.sender)].field_256
                if (0 / fluidUntil[address(msg.sender)].field_256) + totalStaged < totalStaged:
                    revert with 0, 'SafeMath: addition overflow'
                totalStaged += 0 / fluidUntil[address(msg.sender)].field_256
                if 0 / fluidUntil[address(msg.sender)].field_256 > totalBonded:
                    revert with 0, 32, 34, 0x6c426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[290 len 30] >> 16, 0
                totalBonded -= 0 / fluidUntil[address(msg.sender)].field_256
                if arg1 > fluidUntil[address(msg.sender)].field_256:
                    revert with 0, 'Bonding: insufficient balance', 0
                fluidUntil[address(msg.sender)].field_256 -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'Bonding: insufficient balance', 0
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                if epoch + 1 < epoch:
                    revert with 0, 'SafeMath: addition overflow'
                emit Unbond(epoch + 1, arg1, 0 / fluidUntil[address(msg.sender)].field_256, msg.sender);
            else:
                if 0 / totalSupply * arg1 / arg1 != 0 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not fluidUntil[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: division by zero', 0
                if (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                fluidUntil[address(msg.sender)].field_0 += 0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256
                if (0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) + totalStaged < totalStaged:
                    revert with 0, 'SafeMath: addition overflow'
                totalStaged += 0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256
                if 0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 > totalBonded:
                    revert with 0, 32, 34, 0x6c426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[290 len 30] >> 16, 0
                totalBonded -= 0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256
                if arg1 > fluidUntil[address(msg.sender)].field_256:
                    revert with 0, 'Bonding: insufficient balance', 0
                fluidUntil[address(msg.sender)].field_256 -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'Bonding: insufficient balance', 0
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                if epoch + 1 < epoch:
                    revert with 0, 'SafeMath: addition overflow'
                emit Unbond(epoch + 1, arg1, 0 / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256, msg.sender);
        else:
            if fluidUntil[address(msg.sender)].field_256 * totalBonded / totalBonded != fluidUntil[address(msg.sender)].field_256:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not fluidUntil[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: division by zero', 0
                if (0 / fluidUntil[address(msg.sender)].field_256) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                fluidUntil[address(msg.sender)].field_0 += 0 / fluidUntil[address(msg.sender)].field_256
                if (0 / fluidUntil[address(msg.sender)].field_256) + totalStaged < totalStaged:
                    revert with 0, 'SafeMath: addition overflow'
                totalStaged += 0 / fluidUntil[address(msg.sender)].field_256
                if 0 / fluidUntil[address(msg.sender)].field_256 > totalBonded:
                    revert with 0, 32, 34, 0x6c426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[290 len 30] >> 16, 0
                totalBonded -= 0 / fluidUntil[address(msg.sender)].field_256
                if arg1 > fluidUntil[address(msg.sender)].field_256:
                    revert with 0, 'Bonding: insufficient balance', 0
                fluidUntil[address(msg.sender)].field_256 -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'Bonding: insufficient balance', 0
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                if epoch + 1 < epoch:
                    revert with 0, 'SafeMath: addition overflow'
                emit Unbond(epoch + 1, arg1, 0 / fluidUntil[address(msg.sender)].field_256, msg.sender);
            else:
                if fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / arg1 != fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not fluidUntil[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: division by zero', 0
                if (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) + fluidUntil[address(msg.sender)].field_0 < fluidUntil[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                fluidUntil[address(msg.sender)].field_0 += fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256
                if (fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256) + totalStaged < totalStaged:
                    revert with 0, 'SafeMath: addition overflow'
                totalStaged += fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256
                if fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256 > totalBonded:
                    revert with 0, 32, 34, 0x6c426f6e64696e673a20696e73756666696369656e7420746f74616c20626f6e6465, mem[290 len 30] >> 16, 0
                totalBonded -= fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256
                if arg1 > fluidUntil[address(msg.sender)].field_256:
                    revert with 0, 'Bonding: insufficient balance', 0
                fluidUntil[address(msg.sender)].field_256 -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'Bonding: insufficient balance', 0
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                if epoch + 1 < epoch:
                    revert with 0, 'SafeMath: addition overflow'
                emit Unbond(epoch + 1, arg1, fluidUntil[address(msg.sender)].field_256 * totalBonded / totalSupply * arg1 / fluidUntil[address(msg.sender)].field_256, msg.sender);
}

function initialize() payable {
    mem[0] = address(implementationAddress)
    mem[32] = 14
    if periodFor[address(stor3608)].field_1280:
        mem[128] = 0x5065726d697373696f6e00000000000000000000000000000000000000000000
        mem[96] = 32
        mem[64] = 160
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + 127]):
                idx = idx - 1
                continue 
            mem[96] = idx
            mem[192] = 0x416c726561647920696e697469616c697a656400000000000000000000000000
            mem[160] = 32
            mem[64] = 224
            s = 32
            while s:
                require s - 1 < 32
                if not Mask(8, 248, mem[s + 191]):
                    s = s - 1
                    continue 
                mem[160] = s
                s = 0
                while s < idx:
                    mem[s + 256] = mem[s + 128]
                    s = s + 32
                    continue 
                mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                if ceil32(idx) <= idx:
                    _2722 = mem[160]
                    s = 0
                    while s < mem[160]:
                        mem[s + idx + 258] = mem[s + 192]
                        s = s + 32
                        continue 
                    if ceil32(mem[160]) <= mem[160]:
                        _4248 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _2722 + idx + 258
                        mem[_2722 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2722 + idx + 262] = 32
                        _4408 = mem[_4248]
                        mem[_2722 + idx + 294] = mem[_4248]
                        s = 0
                        while s < _4408:
                            mem[s + _2722 + idx + 326] = mem[s + _4248 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4408) > _4408:
                            mem[_4408 + _2722 + idx + 326] = 0
                        revert with 0, 32, mem[_2722 + idx + 294 len ceil32(_4408) + 32]
                    mem[mem[160] + idx + 258] = 0
                    _4249 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _2722 + idx + 258
                    mem[_2722 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2722 + idx + 262] = 32
                    _4409 = mem[_4249]
                    mem[_2722 + idx + 294] = mem[_4249]
                    s = 0
                    while s < _4409:
                        mem[s + _2722 + idx + 326] = mem[s + _4249 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4409) > _4409:
                        mem[_4409 + _2722 + idx + 326] = 0
                    revert with 0, 32, mem[_2722 + idx + 294 len ceil32(_4409) + 32]
                _2723 = mem[160]
                s = 0
                while s < mem[160]:
                    mem[s + idx + 258] = mem[s + 192]
                    s = s + 32
                    continue 
                if ceil32(mem[160]) <= mem[160]:
                    _4250 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _2723 + idx + 258
                    mem[_2723 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2723 + idx + 262] = 32
                    _4410 = mem[_4250]
                    mem[_2723 + idx + 294] = mem[_4250]
                    s = 0
                    while s < _4410:
                        mem[s + _2723 + idx + 326] = mem[s + _4250 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4410) > _4410:
                        mem[_4410 + _2723 + idx + 326] = 0
                    revert with 0, 32, mem[_2723 + idx + 294 len ceil32(_4410) + 32]
                mem[mem[160] + idx + 258] = 0
                _4251 = mem[64]
                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                mem[64] = _2723 + idx + 258
                mem[_2723 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2723 + idx + 262] = 32
                _4411 = mem[_4251]
                mem[_2723 + idx + 294] = mem[_4251]
                s = 0
                while s < _4411:
                    mem[s + _2723 + idx + 326] = mem[s + _4251 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4411) > _4411:
                    mem[_4411 + _2723 + idx + 326] = 0
                revert with 0, 32, mem[_2723 + idx + 294 len ceil32(_4411) + 32]
            mem[224] = 0
            mem[64] = 256
            s = 0
            while s < idx:
                mem[s + 288] = mem[s + 128]
                s = s + 32
                continue 
            mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            if ceil32(idx) <= idx:
                _2720 = mem[224]
                s = 0
                while s < mem[224]:
                    mem[s + idx + 290] = mem[s + 256]
                    s = s + 32
                    continue 
                if ceil32(mem[224]) <= mem[224]:
                    _4244 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _2720 + idx + 290
                    mem[_2720 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2720 + idx + 294] = 32
                    _4404 = mem[_4244]
                    mem[_2720 + idx + 326] = mem[_4244]
                    s = 0
                    while s < _4404:
                        mem[s + _2720 + idx + 358] = mem[s + _4244 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4404) > _4404:
                        mem[_4404 + _2720 + idx + 358] = 0
                    revert with 0, 32, mem[_2720 + idx + 326 len ceil32(_4404) + 32]
                mem[mem[224] + idx + 290] = 0
                _4245 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _2720 + idx + 290
                mem[_2720 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2720 + idx + 294] = 32
                _4405 = mem[_4245]
                mem[_2720 + idx + 326] = mem[_4245]
                s = 0
                while s < _4405:
                    mem[s + _2720 + idx + 358] = mem[s + _4245 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4405) > _4405:
                    mem[_4405 + _2720 + idx + 358] = 0
                revert with 0, 32, mem[_2720 + idx + 326 len ceil32(_4405) + 32]
            _2721 = mem[224]
            s = 0
            while s < mem[224]:
                mem[s + idx + 290] = mem[s + 256]
                s = s + 32
                continue 
            if ceil32(mem[224]) <= mem[224]:
                _4246 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _2721 + idx + 290
                mem[_2721 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2721 + idx + 294] = 32
                _4406 = mem[_4246]
                mem[_2721 + idx + 326] = mem[_4246]
                s = 0
                while s < _4406:
                    mem[s + _2721 + idx + 358] = mem[s + _4246 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4406) > _4406:
                    mem[_4406 + _2721 + idx + 358] = 0
                revert with 0, 32, mem[_2721 + idx + 326 len ceil32(_4406) + 32]
            mem[mem[224] + idx + 290] = 0
            _4247 = mem[64]
            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
            mem[64] = _2721 + idx + 290
            mem[_2721 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_2721 + idx + 294] = 32
            _4407 = mem[_4247]
            mem[_2721 + idx + 326] = mem[_4247]
            s = 0
            while s < _4407:
                mem[s + _2721 + idx + 358] = mem[s + _4247 + 32]
                s = s + 32
                continue 
            if ceil32(_4407) > _4407:
                mem[_4407 + _2721 + idx + 358] = 0
            revert with 0, 32, mem[_2721 + idx + 326 len ceil32(_4407) + 32]
        mem[160] = 0
        mem[224] = 0x416c726561647920696e697469616c697a656400000000000000000000000000
        mem[192] = 32
        mem[64] = 256
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + 223]):
                idx = idx - 1
                continue 
            mem[192] = idx
            s = 0
            while s < 0:
                mem[s + 288] = mem[s + 192]
                s = s + 32
                continue 
            mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            s = 0
            while s < idx:
                mem[s + 290] = mem[s + 224]
                s = s + 32
                continue 
            mem[256] = idx + 2
            mem[64] = idx + 290
            mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[idx + 294] = 32
            mem[idx + 326] = idx + 2
            s = 0
            while s < idx + 2:
                mem[s + idx + 358] = mem[s + 288]
                s = s + 32
                continue 
            if floor32(idx + 33) > idx + 2:
                mem[(2 * idx) + 360] = 0
            revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
    else:
        periodFor[address(stor3608)].field_1280 = 1
        mem[132] = 10 * 10^18
        require ext_code.size(dollarAddress)
        call dollarAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 10 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if epoch <= 60:
            if totalStaged + totalBonded < totalBonded:
                revert with 0, 'SafeMath: addition overflow'
            if totalRedeemable < 0:
                revert with 0, 'SafeMath: addition overflow'
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(dollarAddress)
            staticcall dollarAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= totalRedeemable + totalStaged + totalBonded:
            mem[(2 * ceil32(return_data.size)) + 128] = 0x436f6d7074726f6c6c6572000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 96] = 32
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + (2 * ceil32(return_data.size)) + 127]):
                    idx = idx - 1
                    continue 
                mem[(2 * ceil32(return_data.size)) + 192] = 'Inconsistent balances' << 88
                mem[(2 * ceil32(return_data.size)) + 160] = 32
                s = 32
                while s:
                    require s - 1 < 32
                    if not Mask(8, 248, mem[s + (2 * ceil32(return_data.size)) + 191]):
                        s = s - 1
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 160] = s
                    t = 0
                    while t < idx:
                        mem[t + (2 * ceil32(return_data.size)) + 256] = mem[t + (2 * ceil32(return_data.size)) + 128]
                        t = t + 32
                        continue 
                    mem[idx + (2 * ceil32(return_data.size)) + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    t = 0
                    while t < s:
                        mem[t + idx + (2 * ceil32(return_data.size)) + 258] = mem[t + (2 * ceil32(return_data.size)) + 192]
                        t = t + 32
                        continue 
                    mem[s + idx + (2 * ceil32(return_data.size)) + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[s + idx + (2 * ceil32(return_data.size)) + 262] = 32
                    mem[s + idx + (2 * ceil32(return_data.size)) + 294] = s + idx + 2
                    t = 0
                    while t < s + idx + 2:
                        mem[t + s + idx + (2 * ceil32(return_data.size)) + 326] = mem[t + (2 * ceil32(return_data.size)) + 256]
                        t = t + 32
                        continue 
                    if floor32(s + idx + 33) > s + idx + 2:
                        mem[(2 * s) + (2 * idx) + (2 * ceil32(return_data.size)) + 328] = 0
                    revert with 0, 32, s + idx + 2, mem[s + idx + (2 * ceil32(return_data.size)) + 326 len floor32(s + idx + 33)]
                mem[(2 * ceil32(return_data.size)) + 224] = 0
                s = 0
                while s < idx:
                    mem[s + (2 * ceil32(return_data.size)) + 288] = mem[s + (2 * ceil32(return_data.size)) + 128]
                    s = s + 32
                    continue 
                mem[idx + (2 * ceil32(return_data.size)) + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                s = 0
                while s < 0:
                    mem[s + idx + (2 * ceil32(return_data.size)) + 290] = mem[s + (2 * ceil32(return_data.size)) + 256]
                    s = s + 32
                    continue 
                mem[idx + (2 * ceil32(return_data.size)) + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[idx + (2 * ceil32(return_data.size)) + 294] = 32
                mem[idx + (2 * ceil32(return_data.size)) + 326] = idx + 2
                s = 0
                while s < idx + 2:
                    mem[s + idx + (2 * ceil32(return_data.size)) + 358] = mem[s + (2 * ceil32(return_data.size)) + 288]
                    s = s + 32
                    continue 
                if floor32(idx + 33) > idx + 2:
                    mem[(2 * idx) + (2 * ceil32(return_data.size)) + 360] = 0
                revert with 0, 32, idx + 2, mem[idx + (2 * ceil32(return_data.size)) + 358 len floor32(idx + 33)]
            mem[(2 * ceil32(return_data.size)) + 224] = 'Inconsistent balances' << 88
            mem[(2 * ceil32(return_data.size)) + 192] = 32
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + (2 * ceil32(return_data.size)) + 223]):
                    idx = idx - 1
                    continue 
                mem[(2 * ceil32(return_data.size)) + 192] = idx
                s = 0
                while s < 0:
                    mem[s + (2 * ceil32(return_data.size)) + 288] = mem[s + (2 * ceil32(return_data.size)) + 192]
                    s = s + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                s = 0
                while s < idx:
                    mem[s + (2 * ceil32(return_data.size)) + 290] = mem[s + (2 * ceil32(return_data.size)) + 224]
                    s = s + 32
                    continue 
                mem[idx + (2 * ceil32(return_data.size)) + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[idx + (2 * ceil32(return_data.size)) + 294] = 32
                mem[idx + (2 * ceil32(return_data.size)) + 326] = idx + 2
                s = 0
                while s < idx + 2:
                    mem[s + idx + (2 * ceil32(return_data.size)) + 358] = mem[s + (2 * ceil32(return_data.size)) + 288]
                    s = s + 32
                    continue 
                if floor32(idx + 33) > idx + 2:
                    mem[(2 * idx) + (2 * ceil32(return_data.size)) + 360] = 0
                revert with 0, 32, idx + 2, mem[idx + (2 * ceil32(return_data.size)) + 358 len floor32(idx + 33)]
        else:
            if totalDebt + 10 * 10^18 < totalDebt:
                revert with 0, 'SafeMath: addition overflow'
            totalDebt += 10 * 10^18
            mem[ceil32(return_data.size) + 96] = 0
            mem[ceil32(return_data.size) + 128] = 15 * 10^16
            require ext_code.size(dollarAddress)
            staticcall dollarAddress.0x18160ddd with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 160] = 0
            if 15 * 10^16 * ext_call.return_data[0] / 15 * 10^16 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[(2 * ceil32(return_data.size)) + 192] = 15 * 10^16 * ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 224] = 26
            mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
            if totalDebt <= 15 * 10^16 * ext_call.return_data[0] / 10^18:
                if totalStaged + totalBonded < totalBonded:
                    revert with 0, 'SafeMath: addition overflow'
                if totalRedeemable < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(2 * ceil32(return_data.size)) + 292] = this.address
                require ext_code.size(dollarAddress)
                staticcall dollarAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < totalRedeemable + totalStaged + totalBonded:
                    mem[(4 * ceil32(return_data.size)) + 320] = 0x436f6d7074726f6c6c6572000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 288] = 32
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + (4 * ceil32(return_data.size)) + 319]):
                            idx = idx - 1
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 384] = 'Inconsistent balances' << 88
                        mem[(4 * ceil32(return_data.size)) + 352] = 32
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + (4 * ceil32(return_data.size)) + 383]):
                                s = s - 1
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 352] = s
                            t = 0
                            while t < idx:
                                mem[t + (4 * ceil32(return_data.size)) + 448] = mem[t + (4 * ceil32(return_data.size)) + 320]
                                t = t + 32
                                continue 
                            mem[idx + (4 * ceil32(return_data.size)) + 448] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            t = 0
                            while t < s:
                                mem[t + idx + (4 * ceil32(return_data.size)) + 450] = mem[t + (4 * ceil32(return_data.size)) + 384]
                                t = t + 32
                                continue 
                            mem[s + idx + (4 * ceil32(return_data.size)) + 450] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[s + idx + (4 * ceil32(return_data.size)) + 454] = 32
                            mem[s + idx + (4 * ceil32(return_data.size)) + 486] = s + idx + 2
                            t = 0
                            while t < s + idx + 2:
                                mem[t + s + idx + (4 * ceil32(return_data.size)) + 518] = mem[t + (4 * ceil32(return_data.size)) + 448]
                                t = t + 32
                                continue 
                            if floor32(s + idx + 33) > s + idx + 2:
                                mem[(2 * s) + (2 * idx) + (4 * ceil32(return_data.size)) + 520] = 0
                            revert with 0, 32, s + idx + 2, mem[s + idx + (4 * ceil32(return_data.size)) + 518 len floor32(s + idx + 33)]
                        mem[(4 * ceil32(return_data.size)) + 416] = 0
                        s = 0
                        while s < idx:
                            mem[s + (4 * ceil32(return_data.size)) + 480] = mem[s + (4 * ceil32(return_data.size)) + 320]
                            s = s + 32
                            continue 
                        mem[idx + (4 * ceil32(return_data.size)) + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < 0:
                            mem[s + idx + (4 * ceil32(return_data.size)) + 482] = mem[s + (4 * ceil32(return_data.size)) + 448]
                            s = s + 32
                            continue 
                        mem[idx + (4 * ceil32(return_data.size)) + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + (4 * ceil32(return_data.size)) + 486] = 32
                        mem[idx + (4 * ceil32(return_data.size)) + 518] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + (4 * ceil32(return_data.size)) + 550] = mem[s + (4 * ceil32(return_data.size)) + 480]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + (4 * ceil32(return_data.size)) + 552] = 0
                        revert with 0, 32, idx + 2, mem[idx + (4 * ceil32(return_data.size)) + 550 len floor32(idx + 33)]
                    mem[(4 * ceil32(return_data.size)) + 416] = 'Inconsistent balances' << 88
                    mem[(4 * ceil32(return_data.size)) + 384] = 32
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + (4 * ceil32(return_data.size)) + 415]):
                            idx = idx - 1
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 384] = idx
                        s = 0
                        while s < 0:
                            mem[s + (4 * ceil32(return_data.size)) + 480] = mem[s + (4 * ceil32(return_data.size)) + 384]
                            s = s + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + (4 * ceil32(return_data.size)) + 482] = mem[s + (4 * ceil32(return_data.size)) + 416]
                            s = s + 32
                            continue 
                        mem[idx + (4 * ceil32(return_data.size)) + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + (4 * ceil32(return_data.size)) + 486] = 32
                        mem[idx + (4 * ceil32(return_data.size)) + 518] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + (4 * ceil32(return_data.size)) + 550] = mem[s + (4 * ceil32(return_data.size)) + 480]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + (4 * ceil32(return_data.size)) + 552] = 0
                        revert with 0, 32, idx + 2, mem[idx + (4 * ceil32(return_data.size)) + 550 len floor32(idx + 33)]
                else:
                    if totalStaged + totalBonded < totalBonded:
                        revert with 0, 'SafeMath: addition overflow'
                    if totalRedeemable < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(4 * ceil32(return_data.size)) + 356] = this.address
                    require ext_code.size(dollarAddress)
                    staticcall dollarAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] >= totalRedeemable + totalStaged + totalBonded:
                    mem[(6 * ceil32(return_data.size)) + 384] = 0x436f6d7074726f6c6c6572000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 352] = 32
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + (6 * ceil32(return_data.size)) + 383]):
                            idx = idx - 1
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 448] = 'Inconsistent balances' << 88
                        mem[(6 * ceil32(return_data.size)) + 416] = 32
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + (6 * ceil32(return_data.size)) + 447]):
                                s = s - 1
                                continue 
                            mem[(6 * ceil32(return_data.size)) + 416] = s
                            t = 0
                            while t < idx:
                                mem[t + (6 * ceil32(return_data.size)) + 512] = mem[t + (6 * ceil32(return_data.size)) + 384]
                                t = t + 32
                                continue 
                            mem[idx + (6 * ceil32(return_data.size)) + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            t = 0
                            while t < s:
                                mem[t + idx + (6 * ceil32(return_data.size)) + 514] = mem[t + (6 * ceil32(return_data.size)) + 448]
                                t = t + 32
                                continue 
                            mem[s + idx + (6 * ceil32(return_data.size)) + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[s + idx + (6 * ceil32(return_data.size)) + 518] = 32
                            mem[s + idx + (6 * ceil32(return_data.size)) + 550] = s + idx + 2
                            t = 0
                            while t < s + idx + 2:
                                mem[t + s + idx + (6 * ceil32(return_data.size)) + 582] = mem[t + (6 * ceil32(return_data.size)) + 512]
                                t = t + 32
                                continue 
                            if floor32(s + idx + 33) > s + idx + 2:
                                mem[(2 * s) + (2 * idx) + (6 * ceil32(return_data.size)) + 584] = 0
                            revert with 0, 32, s + idx + 2, mem[s + idx + (6 * ceil32(return_data.size)) + 582 len floor32(s + idx + 33)]
                        mem[(6 * ceil32(return_data.size)) + 480] = 0
                        s = 0
                        while s < idx:
                            mem[s + (6 * ceil32(return_data.size)) + 544] = mem[s + (6 * ceil32(return_data.size)) + 384]
                            s = s + 32
                            continue 
                        mem[idx + (6 * ceil32(return_data.size)) + 544] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < 0:
                            mem[s + idx + (6 * ceil32(return_data.size)) + 546] = mem[s + (6 * ceil32(return_data.size)) + 512]
                            s = s + 32
                            continue 
                        mem[idx + (6 * ceil32(return_data.size)) + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + (6 * ceil32(return_data.size)) + 550] = 32
                        mem[idx + (6 * ceil32(return_data.size)) + 582] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + (6 * ceil32(return_data.size)) + 614] = mem[s + (6 * ceil32(return_data.size)) + 544]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + (6 * ceil32(return_data.size)) + 616] = 0
                        revert with 0, 32, idx + 2, mem[idx + (6 * ceil32(return_data.size)) + 614 len floor32(idx + 33)]
                    mem[(6 * ceil32(return_data.size)) + 480] = 'Inconsistent balances' << 88
                    mem[(6 * ceil32(return_data.size)) + 448] = 32
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + (6 * ceil32(return_data.size)) + 479]):
                            idx = idx - 1
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 448] = idx
                        s = 0
                        while s < 0:
                            mem[s + (6 * ceil32(return_data.size)) + 544] = mem[s + (6 * ceil32(return_data.size)) + 448]
                            s = s + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 544] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + (6 * ceil32(return_data.size)) + 546] = mem[s + (6 * ceil32(return_data.size)) + 480]
                            s = s + 32
                            continue 
                        mem[idx + (6 * ceil32(return_data.size)) + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + (6 * ceil32(return_data.size)) + 550] = 32
                        mem[idx + (6 * ceil32(return_data.size)) + 582] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + (6 * ceil32(return_data.size)) + 614] = mem[s + (6 * ceil32(return_data.size)) + 544]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + (6 * ceil32(return_data.size)) + 616] = 0
                        revert with 0, 32, idx + 2, mem[idx + (6 * ceil32(return_data.size)) + 614 len floor32(idx + 33)]
            else:
                mem[(2 * ceil32(return_data.size)) + 288] = 30
                mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction overflow'
                if 15 * 10^16 * ext_call.return_data[0] / 10^18 > totalDebt:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[(2 * ceil32(return_data.size)) + 352] = 28
                mem[(2 * ceil32(return_data.size)) + 384] = 'Comptroller: not enough debt'
                if totalDebt - (15 * 10^16 * ext_call.return_data[0] / 10^18) > totalDebt:
                    revert with 0, 'Comptroller: not enough debt', 0
                totalDebt = 15 * 10^16 * ext_call.return_data[0] / 10^18
                if totalStaged + totalBonded < totalBonded:
                    revert with 0, 'SafeMath: addition overflow'
                if totalRedeemable < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(2 * ceil32(return_data.size)) + 420] = this.address
                require ext_code.size(dollarAddress)
                staticcall dollarAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < totalRedeemable + totalStaged + totalBonded:
                    mem[(4 * ceil32(return_data.size)) + 448] = 0x436f6d7074726f6c6c6572000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 416] = 32
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + (4 * ceil32(return_data.size)) + 447]):
                            idx = idx - 1
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 512] = 'Inconsistent balances' << 88
                        mem[(4 * ceil32(return_data.size)) + 480] = 32
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + (4 * ceil32(return_data.size)) + 511]):
                                s = s - 1
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 480] = s
                            t = 0
                            while t < idx:
                                mem[t + (4 * ceil32(return_data.size)) + 576] = mem[t + (4 * ceil32(return_data.size)) + 448]
                                t = t + 32
                                continue 
                            mem[idx + (4 * ceil32(return_data.size)) + 576] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            t = 0
                            while t < s:
                                mem[t + idx + (4 * ceil32(return_data.size)) + 578] = mem[t + (4 * ceil32(return_data.size)) + 512]
                                t = t + 32
                                continue 
                            mem[s + idx + (4 * ceil32(return_data.size)) + 578] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[s + idx + (4 * ceil32(return_data.size)) + 582] = 32
                            mem[s + idx + (4 * ceil32(return_data.size)) + 614] = s + idx + 2
                            t = 0
                            while t < s + idx + 2:
                                mem[t + s + idx + (4 * ceil32(return_data.size)) + 646] = mem[t + (4 * ceil32(return_data.size)) + 576]
                                t = t + 32
                                continue 
                            if floor32(s + idx + 33) > s + idx + 2:
                                mem[(2 * s) + (2 * idx) + (4 * ceil32(return_data.size)) + 648] = 0
                            revert with 0, 32, s + idx + 2, mem[s + idx + (4 * ceil32(return_data.size)) + 646 len floor32(s + idx + 33)]
                        mem[(4 * ceil32(return_data.size)) + 544] = 0
                        s = 0
                        while s < idx:
                            mem[s + (4 * ceil32(return_data.size)) + 608] = mem[s + (4 * ceil32(return_data.size)) + 448]
                            s = s + 32
                            continue 
                        mem[idx + (4 * ceil32(return_data.size)) + 608] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < 0:
                            mem[s + idx + (4 * ceil32(return_data.size)) + 610] = mem[s + (4 * ceil32(return_data.size)) + 576]
                            s = s + 32
                            continue 
                        mem[idx + (4 * ceil32(return_data.size)) + 610] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + (4 * ceil32(return_data.size)) + 614] = 32
                        mem[idx + (4 * ceil32(return_data.size)) + 646] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + (4 * ceil32(return_data.size)) + 678] = mem[s + (4 * ceil32(return_data.size)) + 608]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + (4 * ceil32(return_data.size)) + 680] = 0
                        revert with 0, 32, idx + 2, mem[idx + (4 * ceil32(return_data.size)) + 678 len floor32(idx + 33)]
                    mem[(4 * ceil32(return_data.size)) + 544] = 'Inconsistent balances' << 88
                    mem[(4 * ceil32(return_data.size)) + 512] = 32
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + (4 * ceil32(return_data.size)) + 543]):
                            idx = idx - 1
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 512] = idx
                        s = 0
                        while s < 0:
                            mem[s + (4 * ceil32(return_data.size)) + 608] = mem[s + (4 * ceil32(return_data.size)) + 512]
                            s = s + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 608] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + (4 * ceil32(return_data.size)) + 610] = mem[s + (4 * ceil32(return_data.size)) + 544]
                            s = s + 32
                            continue 
                        mem[idx + (4 * ceil32(return_data.size)) + 610] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + (4 * ceil32(return_data.size)) + 614] = 32
                        mem[idx + (4 * ceil32(return_data.size)) + 646] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + (4 * ceil32(return_data.size)) + 678] = mem[s + (4 * ceil32(return_data.size)) + 608]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + (4 * ceil32(return_data.size)) + 680] = 0
                        revert with 0, 32, idx + 2, mem[idx + (4 * ceil32(return_data.size)) + 678 len floor32(idx + 33)]
                else:
                    if totalStaged + totalBonded < totalBonded:
                        revert with 0, 'SafeMath: addition overflow'
                    if totalRedeemable < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(4 * ceil32(return_data.size)) + 420] = this.address
                    require ext_code.size(dollarAddress)
                    staticcall dollarAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] < totalRedeemable + totalStaged + totalBonded:
                        mem[(6 * ceil32(return_data.size)) + 448] = 0x436f6d7074726f6c6c6572000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 416] = 32
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + (6 * ceil32(return_data.size)) + 447]):
                                idx = idx - 1
                                continue 
                            mem[(6 * ceil32(return_data.size)) + 512] = 'Inconsistent balances' << 88
                            mem[(6 * ceil32(return_data.size)) + 480] = 32
                            s = 32
                            while s:
                                require s - 1 < 32
                                if not Mask(8, 248, mem[s + (6 * ceil32(return_data.size)) + 511]):
                                    s = s - 1
                                    continue 
                                mem[(6 * ceil32(return_data.size)) + 480] = s
                                t = 0
                                while t < idx:
                                    mem[t + (6 * ceil32(return_data.size)) + 576] = mem[t + (6 * ceil32(return_data.size)) + 448]
                                    t = t + 32
                                    continue 
                                mem[idx + (6 * ceil32(return_data.size)) + 576] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                t = 0
                                while t < s:
                                    mem[t + idx + (6 * ceil32(return_data.size)) + 578] = mem[t + (6 * ceil32(return_data.size)) + 512]
                                    t = t + 32
                                    continue 
                                mem[s + idx + (6 * ceil32(return_data.size)) + 578] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[s + idx + (6 * ceil32(return_data.size)) + 582] = 32
                                mem[s + idx + (6 * ceil32(return_data.size)) + 614] = s + idx + 2
                                t = 0
                                while t < s + idx + 2:
                                    mem[t + s + idx + (6 * ceil32(return_data.size)) + 646] = mem[t + (6 * ceil32(return_data.size)) + 576]
                                    t = t + 32
                                    continue 
                                if floor32(s + idx + 33) > s + idx + 2:
                                    mem[(2 * s) + (2 * idx) + (6 * ceil32(return_data.size)) + 648] = 0
                                revert with 0, 32, s + idx + 2, mem[s + idx + (6 * ceil32(return_data.size)) + 646 len floor32(s + idx + 33)]
                            mem[(6 * ceil32(return_data.size)) + 544] = 0
                            s = 0
                            while s < idx:
                                mem[s + (6 * ceil32(return_data.size)) + 608] = mem[s + (6 * ceil32(return_data.size)) + 448]
                                s = s + 32
                                continue 
                            mem[idx + (6 * ceil32(return_data.size)) + 608] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < 0:
                                mem[s + idx + (6 * ceil32(return_data.size)) + 610] = mem[s + (6 * ceil32(return_data.size)) + 576]
                                s = s + 32
                                continue 
                            mem[idx + (6 * ceil32(return_data.size)) + 610] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + (6 * ceil32(return_data.size)) + 614] = 32
                            mem[idx + (6 * ceil32(return_data.size)) + 646] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + (6 * ceil32(return_data.size)) + 678] = mem[s + (6 * ceil32(return_data.size)) + 608]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + (6 * ceil32(return_data.size)) + 680] = 0
                            revert with 0, 32, idx + 2, mem[idx + (6 * ceil32(return_data.size)) + 678 len floor32(idx + 33)]
                        mem[(6 * ceil32(return_data.size)) + 544] = 'Inconsistent balances' << 88
                        mem[(6 * ceil32(return_data.size)) + 512] = 32
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + (6 * ceil32(return_data.size)) + 543]):
                                idx = idx - 1
                                continue 
                            mem[(6 * ceil32(return_data.size)) + 512] = idx
                            s = 0
                            while s < 0:
                                mem[s + (6 * ceil32(return_data.size)) + 608] = mem[s + (6 * ceil32(return_data.size)) + 512]
                                s = s + 32
                                continue 
                            mem[(6 * ceil32(return_data.size)) + 608] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < idx:
                                mem[s + (6 * ceil32(return_data.size)) + 610] = mem[s + (6 * ceil32(return_data.size)) + 544]
                                s = s + 32
                                continue 
                            mem[idx + (6 * ceil32(return_data.size)) + 610] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + (6 * ceil32(return_data.size)) + 614] = 32
                            mem[idx + (6 * ceil32(return_data.size)) + 646] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + (6 * ceil32(return_data.size)) + 678] = mem[s + (6 * ceil32(return_data.size)) + 608]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + (6 * ceil32(return_data.size)) + 680] = 0
                            revert with 0, 32, idx + 2, mem[idx + (6 * ceil32(return_data.size)) + 678 len floor32(idx + 33)]
                    else:
                        if totalStaged + totalBonded < totalBonded:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalRedeemable < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalDebt - (15 * 10^16 * ext_call.return_data[0] / 10^18) > 10 * 10^18:
                            mem[(6 * ceil32(return_data.size)) + 420] = this.address
                            require ext_code.size(dollarAddress)
                            staticcall dollarAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] >= totalRedeemable + totalStaged + totalBonded:
                            mem[(7 * ceil32(return_data.size)) + 448] = 0x436f6d7074726f6c6c6572000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + 416] = 32
                            idx = 32
                            while idx:
                                require idx - 1 < 32
                                if not Mask(8, 248, mem[idx + (7 * ceil32(return_data.size)) + 447]):
                                    idx = idx - 1
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 512] = 'Inconsistent balances' << 88
                                mem[(7 * ceil32(return_data.size)) + 480] = 32
                                s = 32
                                while s:
                                    require s - 1 < 32
                                    if not Mask(8, 248, mem[s + (7 * ceil32(return_data.size)) + 511]):
                                        s = s - 1
                                        continue 
                                    mem[(7 * ceil32(return_data.size)) + 480] = s
                                    t = 0
                                    while t < idx:
                                        mem[t + (7 * ceil32(return_data.size)) + 576] = mem[t + (7 * ceil32(return_data.size)) + 448]
                                        t = t + 32
                                        continue 
                                    mem[idx + (7 * ceil32(return_data.size)) + 576] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                    t = 0
                                    while t < s:
                                        mem[t + idx + (7 * ceil32(return_data.size)) + 578] = mem[t + (7 * ceil32(return_data.size)) + 512]
                                        t = t + 32
                                        continue 
                                    mem[s + idx + (7 * ceil32(return_data.size)) + 578] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[s + idx + (7 * ceil32(return_data.size)) + 582] = 32
                                    mem[s + idx + (7 * ceil32(return_data.size)) + 614] = s + idx + 2
                                    t = 0
                                    while t < s + idx + 2:
                                        mem[t + s + idx + (7 * ceil32(return_data.size)) + 646] = mem[t + (7 * ceil32(return_data.size)) + 576]
                                        t = t + 32
                                        continue 
                                    if floor32(s + idx + 33) > s + idx + 2:
                                        mem[(2 * s) + (2 * idx) + (7 * ceil32(return_data.size)) + 648] = 0
                                    revert with 0, 32, s + idx + 2, mem[s + idx + (7 * ceil32(return_data.size)) + 646 len floor32(s + idx + 33)]
                                mem[(7 * ceil32(return_data.size)) + 544] = 0
                                s = 0
                                while s < idx:
                                    mem[s + (7 * ceil32(return_data.size)) + 608] = mem[s + (7 * ceil32(return_data.size)) + 448]
                                    s = s + 32
                                    continue 
                                mem[idx + (7 * ceil32(return_data.size)) + 608] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                s = 0
                                while s < 0:
                                    mem[s + idx + (7 * ceil32(return_data.size)) + 610] = mem[s + (7 * ceil32(return_data.size)) + 576]
                                    s = s + 32
                                    continue 
                                mem[idx + (7 * ceil32(return_data.size)) + 610] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[idx + (7 * ceil32(return_data.size)) + 614] = 32
                                mem[idx + (7 * ceil32(return_data.size)) + 646] = idx + 2
                                s = 0
                                while s < idx + 2:
                                    mem[s + idx + (7 * ceil32(return_data.size)) + 678] = mem[s + (7 * ceil32(return_data.size)) + 608]
                                    s = s + 32
                                    continue 
                                if floor32(idx + 33) > idx + 2:
                                    mem[(2 * idx) + (7 * ceil32(return_data.size)) + 680] = 0
                                revert with 0, 32, idx + 2, mem[idx + (7 * ceil32(return_data.size)) + 678 len floor32(idx + 33)]
                            mem[(7 * ceil32(return_data.size)) + 544] = 'Inconsistent balances' << 88
                            mem[(7 * ceil32(return_data.size)) + 512] = 32
                            idx = 32
                            while idx:
                                require idx - 1 < 32
                                if not Mask(8, 248, mem[idx + (7 * ceil32(return_data.size)) + 543]):
                                    idx = idx - 1
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 512] = idx
                                s = 0
                                while s < 0:
                                    mem[s + (7 * ceil32(return_data.size)) + 608] = mem[s + (7 * ceil32(return_data.size)) + 512]
                                    s = s + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 608] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                s = 0
                                while s < idx:
                                    mem[s + (7 * ceil32(return_data.size)) + 610] = mem[s + (7 * ceil32(return_data.size)) + 544]
                                    s = s + 32
                                    continue 
                                mem[idx + (7 * ceil32(return_data.size)) + 610] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[idx + (7 * ceil32(return_data.size)) + 614] = 32
                                mem[idx + (7 * ceil32(return_data.size)) + 646] = idx + 2
                                s = 0
                                while s < idx + 2:
                                    mem[s + idx + (7 * ceil32(return_data.size)) + 678] = mem[s + (7 * ceil32(return_data.size)) + 608]
                                    s = s + 32
                                    continue 
                                if floor32(idx + 33) > idx + 2:
                                    mem[(2 * idx) + (7 * ceil32(return_data.size)) + 680] = 0
                                revert with 0, 32, idx + 2, mem[idx + (7 * ceil32(return_data.size)) + 678 len floor32(idx + 33)]
                        else:
                            mem[(6 * ceil32(return_data.size)) + 484] = this.address
                            require ext_code.size(dollarAddress)
                            staticcall dollarAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] >= totalRedeemable + totalStaged + totalBonded:
                            mem[(7 * ceil32(return_data.size)) + 512] = 0x436f6d7074726f6c6c6572000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + 480] = 32
                            idx = 32
                            while idx:
                                require idx - 1 < 32
                                if not Mask(8, 248, mem[idx + (7 * ceil32(return_data.size)) + 511]):
                                    idx = idx - 1
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 576] = 'Inconsistent balances' << 88
                                mem[(7 * ceil32(return_data.size)) + 544] = 32
                                s = 32
                                while s:
                                    require s - 1 < 32
                                    if not Mask(8, 248, mem[s + (7 * ceil32(return_data.size)) + 575]):
                                        s = s - 1
                                        continue 
                                    mem[(7 * ceil32(return_data.size)) + 544] = s
                                    t = 0
                                    while t < idx:
                                        mem[t + (7 * ceil32(return_data.size)) + 640] = mem[t + (7 * ceil32(return_data.size)) + 512]
                                        t = t + 32
                                        continue 
                                    mem[idx + (7 * ceil32(return_data.size)) + 640] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                    t = 0
                                    while t < s:
                                        mem[t + idx + (7 * ceil32(return_data.size)) + 642] = mem[t + (7 * ceil32(return_data.size)) + 576]
                                        t = t + 32
                                        continue 
                                    mem[s + idx + (7 * ceil32(return_data.size)) + 642] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[s + idx + (7 * ceil32(return_data.size)) + 646] = 32
                                    mem[s + idx + (7 * ceil32(return_data.size)) + 678] = s + idx + 2
                                    t = 0
                                    while t < s + idx + 2:
                                        mem[t + s + idx + (7 * ceil32(return_data.size)) + 710] = mem[t + (7 * ceil32(return_data.size)) + 640]
                                        t = t + 32
                                        continue 
                                    if floor32(s + idx + 33) > s + idx + 2:
                                        mem[(2 * s) + (2 * idx) + (7 * ceil32(return_data.size)) + 712] = 0
                                    revert with 0, 32, s + idx + 2, mem[s + idx + (7 * ceil32(return_data.size)) + 710 len floor32(s + idx + 33)]
                                mem[(7 * ceil32(return_data.size)) + 608] = 0
                                s = 0
                                while s < idx:
                                    mem[s + (7 * ceil32(return_data.size)) + 672] = mem[s + (7 * ceil32(return_data.size)) + 512]
                                    s = s + 32
                                    continue 
                                mem[idx + (7 * ceil32(return_data.size)) + 672] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                s = 0
                                while s < 0:
                                    mem[s + idx + (7 * ceil32(return_data.size)) + 674] = mem[s + (7 * ceil32(return_data.size)) + 640]
                                    s = s + 32
                                    continue 
                                mem[idx + (7 * ceil32(return_data.size)) + 674] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[idx + (7 * ceil32(return_data.size)) + 678] = 32
                                mem[idx + (7 * ceil32(return_data.size)) + 710] = idx + 2
                                s = 0
                                while s < idx + 2:
                                    mem[s + idx + (7 * ceil32(return_data.size)) + 742] = mem[s + (7 * ceil32(return_data.size)) + 672]
                                    s = s + 32
                                    continue 
                                if floor32(idx + 33) > idx + 2:
                                    mem[(2 * idx) + (7 * ceil32(return_data.size)) + 744] = 0
                                revert with 0, 32, idx + 2, mem[idx + (7 * ceil32(return_data.size)) + 742 len floor32(idx + 33)]
                            mem[(7 * ceil32(return_data.size)) + 608] = 'Inconsistent balances' << 88
                            mem[(7 * ceil32(return_data.size)) + 576] = 32
                            idx = 32
                            while idx:
                                require idx - 1 < 32
                                if not Mask(8, 248, mem[idx + (7 * ceil32(return_data.size)) + 607]):
                                    idx = idx - 1
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 576] = idx
                                s = 0
                                while s < 0:
                                    mem[s + (7 * ceil32(return_data.size)) + 672] = mem[s + (7 * ceil32(return_data.size)) + 576]
                                    s = s + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + 672] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                s = 0
                                while s < idx:
                                    mem[s + (7 * ceil32(return_data.size)) + 674] = mem[s + (7 * ceil32(return_data.size)) + 608]
                                    s = s + 32
                                    continue 
                                mem[idx + (7 * ceil32(return_data.size)) + 674] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[idx + (7 * ceil32(return_data.size)) + 678] = 32
                                mem[idx + (7 * ceil32(return_data.size)) + 710] = idx + 2
                                s = 0
                                while s < idx + 2:
                                    mem[s + idx + (7 * ceil32(return_data.size)) + 742] = mem[s + (7 * ceil32(return_data.size)) + 672]
                                    s = s + 32
                                    continue 
                                if floor32(idx + 33) > idx + 2:
                                    mem[(2 * idx) + (7 * ceil32(return_data.size)) + 744] = 0
                                revert with 0, 32, idx + 2, mem[idx + (7 * ceil32(return_data.size)) + 742 len floor32(idx + 33)]
    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
}

function emergencyCommit(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 14
    if not periodFor[address(arg1)].field_0:
        mem[128] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
        mem[96] = 32
        mem[64] = 160
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + 127]):
                idx = idx - 1
                continue 
            mem[96] = idx
            mem[192] = 0x4e6f74206e6f6d696e6174656400000000000000000000000000000000000000
            mem[160] = 32
            mem[64] = 224
            s = 32
            while s:
                require s - 1 < 32
                if not Mask(8, 248, mem[s + 191]):
                    s = s - 1
                    continue 
                mem[160] = s
                s = 0
                while s < idx:
                    mem[s + 256] = mem[s + 128]
                    s = s + 32
                    continue 
                mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                if ceil32(idx) <= idx:
                    _2041 = mem[160]
                    s = 0
                    while s < mem[160]:
                        mem[s + idx + 258] = mem[s + 192]
                        s = s + 32
                        continue 
                    if ceil32(mem[160]) <= mem[160]:
                        _2935 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _2041 + idx + 258
                        mem[_2041 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2041 + idx + 262] = 32
                        _3063 = mem[_2935]
                        mem[_2041 + idx + 294] = mem[_2935]
                        s = 0
                        while s < _3063:
                            mem[s + _2041 + idx + 326] = mem[s + _2935 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3063) > _3063:
                            mem[_3063 + _2041 + idx + 326] = 0
                        revert with 0, 32, mem[_2041 + idx + 294 len ceil32(_3063) + 32]
                    mem[mem[160] + idx + 258] = 0
                    _2936 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _2041 + idx + 258
                    mem[_2041 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2041 + idx + 262] = 32
                    _3064 = mem[_2936]
                    mem[_2041 + idx + 294] = mem[_2936]
                    s = 0
                    while s < _3064:
                        mem[s + _2041 + idx + 326] = mem[s + _2936 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3064) > _3064:
                        mem[_3064 + _2041 + idx + 326] = 0
                    revert with 0, 32, mem[_2041 + idx + 294 len ceil32(_3064) + 32]
                _2042 = mem[160]
                s = 0
                while s < mem[160]:
                    mem[s + idx + 258] = mem[s + 192]
                    s = s + 32
                    continue 
                if ceil32(mem[160]) <= mem[160]:
                    _2937 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _2042 + idx + 258
                    mem[_2042 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2042 + idx + 262] = 32
                    _3065 = mem[_2937]
                    mem[_2042 + idx + 294] = mem[_2937]
                    s = 0
                    while s < _3065:
                        mem[s + _2042 + idx + 326] = mem[s + _2937 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3065) > _3065:
                        mem[_3065 + _2042 + idx + 326] = 0
                    revert with 0, 32, mem[_2042 + idx + 294 len ceil32(_3065) + 32]
                mem[mem[160] + idx + 258] = 0
                _2938 = mem[64]
                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                mem[64] = _2042 + idx + 258
                mem[_2042 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2042 + idx + 262] = 32
                _3066 = mem[_2938]
                mem[_2042 + idx + 294] = mem[_2938]
                s = 0
                while s < _3066:
                    mem[s + _2042 + idx + 326] = mem[s + _2938 + 32]
                    s = s + 32
                    continue 
                if ceil32(_3066) > _3066:
                    mem[_3066 + _2042 + idx + 326] = 0
                revert with 0, 32, mem[_2042 + idx + 294 len ceil32(_3066) + 32]
            mem[224] = 0
            mem[64] = 256
            s = 0
            while s < idx:
                mem[s + 288] = mem[s + 128]
                s = s + 32
                continue 
            mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            if ceil32(idx) <= idx:
                _2039 = mem[224]
                s = 0
                while s < mem[224]:
                    mem[s + idx + 290] = mem[s + 256]
                    s = s + 32
                    continue 
                if ceil32(mem[224]) <= mem[224]:
                    _2931 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _2039 + idx + 290
                    mem[_2039 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2039 + idx + 294] = 32
                    _3059 = mem[_2931]
                    mem[_2039 + idx + 326] = mem[_2931]
                    s = 0
                    while s < _3059:
                        mem[s + _2039 + idx + 358] = mem[s + _2931 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3059) > _3059:
                        mem[_3059 + _2039 + idx + 358] = 0
                    revert with 0, 32, mem[_2039 + idx + 326 len ceil32(_3059) + 32]
                mem[mem[224] + idx + 290] = 0
                _2932 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _2039 + idx + 290
                mem[_2039 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2039 + idx + 294] = 32
                _3060 = mem[_2932]
                mem[_2039 + idx + 326] = mem[_2932]
                s = 0
                while s < _3060:
                    mem[s + _2039 + idx + 358] = mem[s + _2932 + 32]
                    s = s + 32
                    continue 
                if ceil32(_3060) > _3060:
                    mem[_3060 + _2039 + idx + 358] = 0
                revert with 0, 32, mem[_2039 + idx + 326 len ceil32(_3060) + 32]
            _2040 = mem[224]
            s = 0
            while s < mem[224]:
                mem[s + idx + 290] = mem[s + 256]
                s = s + 32
                continue 
            if ceil32(mem[224]) <= mem[224]:
                _2933 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _2040 + idx + 290
                mem[_2040 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2040 + idx + 294] = 32
                _3061 = mem[_2933]
                mem[_2040 + idx + 326] = mem[_2933]
                s = 0
                while s < _3061:
                    mem[s + _2040 + idx + 358] = mem[s + _2933 + 32]
                    s = s + 32
                    continue 
                if ceil32(_3061) > _3061:
                    mem[_3061 + _2040 + idx + 358] = 0
                revert with 0, 32, mem[_2040 + idx + 326 len ceil32(_3061) + 32]
            mem[mem[224] + idx + 290] = 0
            _2934 = mem[64]
            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
            mem[64] = _2040 + idx + 290
            mem[_2040 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_2040 + idx + 294] = 32
            _3062 = mem[_2934]
            mem[_2040 + idx + 326] = mem[_2934]
            s = 0
            while s < _3062:
                mem[s + _2040 + idx + 358] = mem[s + _2934 + 32]
                s = s + 32
                continue 
            if ceil32(_3062) > _3062:
                mem[_3062 + _2040 + idx + 358] = 0
            revert with 0, 32, mem[_2040 + idx + 326 len ceil32(_3062) + 32]
        mem[160] = 0
        mem[224] = 0x4e6f74206e6f6d696e6174656400000000000000000000000000000000000000
        mem[192] = 32
        mem[64] = 256
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + 223]):
                idx = idx - 1
                continue 
            mem[192] = idx
            s = 0
            while s < 0:
                mem[s + 288] = mem[s + 192]
                s = s + 32
                continue 
            mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            s = 0
            while s < idx:
                mem[s + 290] = mem[s + 224]
                s = s + 32
                continue 
            mem[256] = idx + 2
            mem[64] = idx + 290
            mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[idx + 294] = 32
            mem[idx + 326] = idx + 2
            s = 0
            while s < idx + 2:
                mem[s + idx + 358] = mem[s + 288]
                s = s + 32
                continue 
            if floor32(idx + 33) > idx + 2:
                mem[(2 * idx) + 360] = 0
            revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
    else:
        if epoch + 4 < epoch:
            revert with 0, 'SafeMath: addition overflow'
        mem[96] = 0
        mem[128] = 0
        mem[160] = 0
        mem[192] = 0
        mem[224] = 0
        mem[256] = 0
        mem[288] = 0
        mem[320] = 1610698787
        mem[352] = 4 * 3600
        mem[384] = 30
        mem[416] = 'SafeMath: subtraction overflow'
        if 1610698787 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[448] = 26
        mem[480] = 'SafeMath: division by zero'
        if block.timestamp - 1610698787 / 4 * 3600 < block.timestamp - 1610698787 / 4 * 3600:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp - 1610698787 / 4 * 3600 <= epoch + 4:
            mem[544] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
            mem[512] = 32
            mem[64] = 576
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 543]):
                    idx = idx - 1
                    continue 
                mem[512] = idx
                mem[608] = 0x45706f63682073796e6365640000000000000000000000000000000000000000
                mem[576] = 32
                mem[64] = 640
                s = 32
                while s:
                    require s - 1 < 32
                    if not Mask(8, 248, mem[s + 607]):
                        s = s - 1
                        continue 
                    mem[576] = s
                    s = 0
                    while s < idx:
                        mem[s + 672] = mem[s + 544]
                        s = s + 32
                        continue 
                    mem[idx + 672] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    if ceil32(idx) <= idx:
                        _2033 = mem[576]
                        s = 0
                        while s < mem[576]:
                            mem[s + idx + 674] = mem[s + 608]
                            s = s + 32
                            continue 
                        if ceil32(mem[576]) <= mem[576]:
                            _2919 = mem[64]
                            mem[mem[64]] = mem[576] + idx + -mem[64] + 642
                            mem[64] = _2033 + idx + 674
                            mem[_2033 + idx + 674] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2033 + idx + 678] = 32
                            _3047 = mem[_2919]
                            mem[_2033 + idx + 710] = mem[_2919]
                            s = 0
                            while s < _3047:
                                mem[s + _2033 + idx + 742] = mem[s + _2919 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3047) > _3047:
                                mem[_3047 + _2033 + idx + 742] = 0
                            revert with 0, 32, mem[_2033 + idx + 710 len ceil32(_3047) + 32]
                        mem[mem[576] + idx + 674] = 0
                        _2920 = mem[64]
                        mem[mem[64]] = mem[576] + idx + -mem[64] + 642
                        mem[64] = _2033 + idx + 674
                        mem[_2033 + idx + 674] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2033 + idx + 678] = 32
                        _3048 = mem[_2920]
                        mem[_2033 + idx + 710] = mem[_2920]
                        s = 0
                        while s < _3048:
                            mem[s + _2033 + idx + 742] = mem[s + _2920 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3048) > _3048:
                            mem[_3048 + _2033 + idx + 742] = 0
                        revert with 0, 32, mem[_2033 + idx + 710 len ceil32(_3048) + 32]
                    _2034 = mem[576]
                    s = 0
                    while s < mem[576]:
                        mem[s + idx + 674] = mem[s + 608]
                        s = s + 32
                        continue 
                    if ceil32(mem[576]) <= mem[576]:
                        _2921 = mem[64]
                        mem[mem[64]] = mem[576] + idx + -mem[64] + 642
                        mem[64] = _2034 + idx + 674
                        mem[_2034 + idx + 674] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2034 + idx + 678] = 32
                        _3049 = mem[_2921]
                        mem[_2034 + idx + 710] = mem[_2921]
                        s = 0
                        while s < _3049:
                            mem[s + _2034 + idx + 742] = mem[s + _2921 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3049) > _3049:
                            mem[_3049 + _2034 + idx + 742] = 0
                        revert with 0, 32, mem[_2034 + idx + 710 len ceil32(_3049) + 32]
                    mem[mem[576] + idx + 674] = 0
                    _2922 = mem[64]
                    mem[mem[64]] = mem[576] + idx + -mem[64] + 642
                    mem[64] = _2034 + idx + 674
                    mem[_2034 + idx + 674] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2034 + idx + 678] = 32
                    _3050 = mem[_2922]
                    mem[_2034 + idx + 710] = mem[_2922]
                    s = 0
                    while s < _3050:
                        mem[s + _2034 + idx + 742] = mem[s + _2922 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3050) > _3050:
                        mem[_3050 + _2034 + idx + 742] = 0
                    revert with 0, 32, mem[_2034 + idx + 710 len ceil32(_3050) + 32]
                mem[640] = 0
                mem[64] = 672
                s = 0
                while s < idx:
                    mem[s + 704] = mem[s + 544]
                    s = s + 32
                    continue 
                mem[idx + 704] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                if ceil32(idx) <= idx:
                    _2031 = mem[640]
                    s = 0
                    while s < mem[640]:
                        mem[s + idx + 706] = mem[s + 672]
                        s = s + 32
                        continue 
                    if ceil32(mem[640]) <= mem[640]:
                        _2915 = mem[64]
                        mem[mem[64]] = mem[640] + idx + -mem[64] + 674
                        mem[64] = _2031 + idx + 706
                        mem[_2031 + idx + 706] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2031 + idx + 710] = 32
                        _3043 = mem[_2915]
                        mem[_2031 + idx + 742] = mem[_2915]
                        s = 0
                        while s < _3043:
                            mem[s + _2031 + idx + 774] = mem[s + _2915 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3043) > _3043:
                            mem[_3043 + _2031 + idx + 774] = 0
                        revert with 0, 32, mem[_2031 + idx + 742 len ceil32(_3043) + 32]
                    mem[mem[640] + idx + 706] = 0
                    _2916 = mem[64]
                    mem[mem[64]] = mem[640] + idx + -mem[64] + 674
                    mem[64] = _2031 + idx + 706
                    mem[_2031 + idx + 706] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2031 + idx + 710] = 32
                    _3044 = mem[_2916]
                    mem[_2031 + idx + 742] = mem[_2916]
                    s = 0
                    while s < _3044:
                        mem[s + _2031 + idx + 774] = mem[s + _2916 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3044) > _3044:
                        mem[_3044 + _2031 + idx + 774] = 0
                    revert with 0, 32, mem[_2031 + idx + 742 len ceil32(_3044) + 32]
                _2032 = mem[640]
                s = 0
                while s < mem[640]:
                    mem[s + idx + 706] = mem[s + 672]
                    s = s + 32
                    continue 
                if ceil32(mem[640]) <= mem[640]:
                    _2917 = mem[64]
                    mem[mem[64]] = mem[640] + idx + -mem[64] + 674
                    mem[64] = _2032 + idx + 706
                    mem[_2032 + idx + 706] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2032 + idx + 710] = 32
                    _3045 = mem[_2917]
                    mem[_2032 + idx + 742] = mem[_2917]
                    s = 0
                    while s < _3045:
                        mem[s + _2032 + idx + 774] = mem[s + _2917 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3045) > _3045:
                        mem[_3045 + _2032 + idx + 774] = 0
                    revert with 0, 32, mem[_2032 + idx + 742 len ceil32(_3045) + 32]
                mem[mem[640] + idx + 706] = 0
                _2918 = mem[64]
                mem[mem[64]] = mem[640] + idx + -mem[64] + 674
                mem[64] = _2032 + idx + 706
                mem[_2032 + idx + 706] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2032 + idx + 710] = 32
                _3046 = mem[_2918]
                mem[_2032 + idx + 742] = mem[_2918]
                s = 0
                while s < _3046:
                    mem[s + _2032 + idx + 774] = mem[s + _2918 + 32]
                    s = s + 32
                    continue 
                if ceil32(_3046) > _3046:
                    mem[_3046 + _2032 + idx + 774] = 0
                revert with 0, 32, mem[_2032 + idx + 742 len ceil32(_3046) + 32]
            mem[576] = 0
            mem[640] = 0x45706f63682073796e6365640000000000000000000000000000000000000000
            mem[608] = 32
            mem[64] = 672
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 639]):
                    idx = idx - 1
                    continue 
                mem[608] = idx
                s = 0
                while s < 0:
                    mem[s + 704] = mem[s + 608]
                    s = s + 32
                    continue 
                mem[704] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                s = 0
                while s < idx:
                    mem[s + 706] = mem[s + 640]
                    s = s + 32
                    continue 
                mem[672] = idx + 2
                mem[64] = idx + 706
                mem[idx + 706] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[idx + 710] = 32
                mem[idx + 742] = idx + 2
                s = 0
                while s < idx + 2:
                    mem[s + idx + 774] = mem[s + 704]
                    s = s + 32
                    continue 
                if floor32(idx + 33) > idx + 2:
                    mem[(2 * idx) + 776] = 0
                revert with 0, 32, idx + 2, mem[idx + 774 len floor32(idx + 33)]
        else:
            mem[512] = 0
            mem[544] = 66 * 10^16
            mem[0] = arg1
            mem[32] = 14
            mem[576] = 0
            if not periodFor[address(arg1)].field_512:
                mem[640] = 26
                mem[672] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[608] = 0 / totalSupply
                if 66 * 10^16 == 0 / totalSupply:
                    mem[736] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[704] = 32
                    mem[64] = 768
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 735]):
                            idx = idx - 1
                            continue 
                        mem[704] = idx
                        mem[800] = 'Must have super majority'
                        mem[768] = 32
                        mem[64] = 832
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 799]):
                                s = s - 1
                                continue 
                            mem[768] = s
                            s = 0
                            while s < idx:
                                mem[s + 864] = mem[s + 736]
                                s = s + 32
                                continue 
                            mem[idx + 864] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _2025 = mem[768]
                                s = 0
                                while s < mem[768]:
                                    mem[s + idx + 866] = mem[s + 800]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[768]) <= mem[768]:
                                    _2903 = mem[64]
                                    mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                    mem[64] = _2025 + idx + 866
                                    mem[_2025 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2025 + idx + 870] = 32
                                    _3031 = mem[_2903]
                                    mem[_2025 + idx + 902] = mem[_2903]
                                    s = 0
                                    while s < _3031:
                                        mem[s + _2025 + idx + 934] = mem[s + _2903 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_3031) > _3031:
                                        mem[_3031 + _2025 + idx + 934] = 0
                                    revert with 0, 32, mem[_2025 + idx + 902 len ceil32(_3031) + 32]
                                mem[mem[768] + idx + 866] = 0
                                _2904 = mem[64]
                                mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                mem[64] = _2025 + idx + 866
                                mem[_2025 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2025 + idx + 870] = 32
                                _3032 = mem[_2904]
                                mem[_2025 + idx + 902] = mem[_2904]
                                s = 0
                                while s < _3032:
                                    mem[s + _2025 + idx + 934] = mem[s + _2904 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3032) > _3032:
                                    mem[_3032 + _2025 + idx + 934] = 0
                                revert with 0, 32, mem[_2025 + idx + 902 len ceil32(_3032) + 32]
                            _2026 = mem[768]
                            s = 0
                            while s < mem[768]:
                                mem[s + idx + 866] = mem[s + 800]
                                s = s + 32
                                continue 
                            if ceil32(mem[768]) <= mem[768]:
                                _2905 = mem[64]
                                mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                mem[64] = _2026 + idx + 866
                                mem[_2026 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2026 + idx + 870] = 32
                                _3033 = mem[_2905]
                                mem[_2026 + idx + 902] = mem[_2905]
                                s = 0
                                while s < _3033:
                                    mem[s + _2026 + idx + 934] = mem[s + _2905 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3033) > _3033:
                                    mem[_3033 + _2026 + idx + 934] = 0
                                revert with 0, 32, mem[_2026 + idx + 902 len ceil32(_3033) + 32]
                            mem[mem[768] + idx + 866] = 0
                            _2906 = mem[64]
                            mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                            mem[64] = _2026 + idx + 866
                            mem[_2026 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2026 + idx + 870] = 32
                            _3034 = mem[_2906]
                            mem[_2026 + idx + 902] = mem[_2906]
                            s = 0
                            while s < _3034:
                                mem[s + _2026 + idx + 934] = mem[s + _2906 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3034) > _3034:
                                mem[_3034 + _2026 + idx + 934] = 0
                            revert with 0, 32, mem[_2026 + idx + 902 len ceil32(_3034) + 32]
                        mem[832] = 0
                        mem[64] = 864
                        s = 0
                        while s < idx:
                            mem[s + 896] = mem[s + 736]
                            s = s + 32
                            continue 
                        mem[idx + 896] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _2023 = mem[832]
                            s = 0
                            while s < mem[832]:
                                mem[s + idx + 898] = mem[s + 864]
                                s = s + 32
                                continue 
                            if ceil32(mem[832]) <= mem[832]:
                                _2899 = mem[64]
                                mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                                mem[64] = _2023 + idx + 898
                                mem[_2023 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2023 + idx + 902] = 32
                                _3027 = mem[_2899]
                                mem[_2023 + idx + 934] = mem[_2899]
                                s = 0
                                while s < _3027:
                                    mem[s + _2023 + idx + 966] = mem[s + _2899 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3027) > _3027:
                                    mem[_3027 + _2023 + idx + 966] = 0
                                revert with 0, 32, mem[_2023 + idx + 934 len ceil32(_3027) + 32]
                            mem[mem[832] + idx + 898] = 0
                            _2900 = mem[64]
                            mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                            mem[64] = _2023 + idx + 898
                            mem[_2023 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2023 + idx + 902] = 32
                            _3028 = mem[_2900]
                            mem[_2023 + idx + 934] = mem[_2900]
                            s = 0
                            while s < _3028:
                                mem[s + _2023 + idx + 966] = mem[s + _2900 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3028) > _3028:
                                mem[_3028 + _2023 + idx + 966] = 0
                            revert with 0, 32, mem[_2023 + idx + 934 len ceil32(_3028) + 32]
                        _2024 = mem[832]
                        s = 0
                        while s < mem[832]:
                            mem[s + idx + 898] = mem[s + 864]
                            s = s + 32
                            continue 
                        if ceil32(mem[832]) <= mem[832]:
                            _2901 = mem[64]
                            mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                            mem[64] = _2024 + idx + 898
                            mem[_2024 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2024 + idx + 902] = 32
                            _3029 = mem[_2901]
                            mem[_2024 + idx + 934] = mem[_2901]
                            s = 0
                            while s < _3029:
                                mem[s + _2024 + idx + 966] = mem[s + _2901 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3029) > _3029:
                                mem[_3029 + _2024 + idx + 966] = 0
                            revert with 0, 32, mem[_2024 + idx + 934 len ceil32(_3029) + 32]
                        mem[mem[832] + idx + 898] = 0
                        _2902 = mem[64]
                        mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                        mem[64] = _2024 + idx + 898
                        mem[_2024 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2024 + idx + 902] = 32
                        _3030 = mem[_2902]
                        mem[_2024 + idx + 934] = mem[_2902]
                        s = 0
                        while s < _3030:
                            mem[s + _2024 + idx + 966] = mem[s + _2902 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3030) > _3030:
                            mem[_3030 + _2024 + idx + 966] = 0
                        revert with 0, 32, mem[_2024 + idx + 934 len ceil32(_3030) + 32]
                    mem[768] = 0
                    mem[832] = 'Must have super majority'
                    mem[800] = 32
                    mem[64] = 864
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 831]):
                            idx = idx - 1
                            continue 
                        mem[800] = idx
                        s = 0
                        while s < 0:
                            mem[s + 896] = mem[s + 800]
                            s = s + 32
                            continue 
                        mem[896] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 898] = mem[s + 832]
                            s = s + 32
                            continue 
                        mem[864] = idx + 2
                        mem[64] = idx + 898
                        mem[idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 902] = 32
                        mem[idx + 934] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 966] = mem[s + 896]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 968] = 0
                        revert with 0, 32, idx + 2, mem[idx + 966 len floor32(idx + 33)]
                else:
                    if 0 / totalSupply <= 66 * 10^16:
                        mem[736] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                        mem[704] = 32
                        mem[64] = 768
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 735]):
                                idx = idx - 1
                                continue 
                            mem[704] = idx
                            mem[800] = 'Must have super majority'
                            mem[768] = 32
                            mem[64] = 832
                            s = 32
                            while s:
                                require s - 1 < 32
                                if not Mask(8, 248, mem[s + 799]):
                                    s = s - 1
                                    continue 
                                mem[768] = s
                                s = 0
                                while s < idx:
                                    mem[s + 864] = mem[s + 736]
                                    s = s + 32
                                    continue 
                                mem[idx + 864] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                if ceil32(idx) <= idx:
                                    _2017 = mem[768]
                                    s = 0
                                    while s < mem[768]:
                                        mem[s + idx + 866] = mem[s + 800]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[768]) <= mem[768]:
                                        _2887 = mem[64]
                                        mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                        mem[64] = _2017 + idx + 866
                                        mem[_2017 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2017 + idx + 870] = 32
                                        _3015 = mem[_2887]
                                        mem[_2017 + idx + 902] = mem[_2887]
                                        s = 0
                                        while s < _3015:
                                            mem[s + _2017 + idx + 934] = mem[s + _2887 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_3015) > _3015:
                                            mem[_3015 + _2017 + idx + 934] = 0
                                        revert with 0, 32, mem[_2017 + idx + 902 len ceil32(_3015) + 32]
                                    mem[mem[768] + idx + 866] = 0
                                    _2888 = mem[64]
                                    mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                    mem[64] = _2017 + idx + 866
                                    mem[_2017 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2017 + idx + 870] = 32
                                    _3016 = mem[_2888]
                                    mem[_2017 + idx + 902] = mem[_2888]
                                    s = 0
                                    while s < _3016:
                                        mem[s + _2017 + idx + 934] = mem[s + _2888 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_3016) > _3016:
                                        mem[_3016 + _2017 + idx + 934] = 0
                                    revert with 0, 32, mem[_2017 + idx + 902 len ceil32(_3016) + 32]
                                _2018 = mem[768]
                                s = 0
                                while s < mem[768]:
                                    mem[s + idx + 866] = mem[s + 800]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[768]) <= mem[768]:
                                    _2889 = mem[64]
                                    mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                    mem[64] = _2018 + idx + 866
                                    mem[_2018 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2018 + idx + 870] = 32
                                    _3017 = mem[_2889]
                                    mem[_2018 + idx + 902] = mem[_2889]
                                    s = 0
                                    while s < _3017:
                                        mem[s + _2018 + idx + 934] = mem[s + _2889 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_3017) > _3017:
                                        mem[_3017 + _2018 + idx + 934] = 0
                                    revert with 0, 32, mem[_2018 + idx + 902 len ceil32(_3017) + 32]
                                mem[mem[768] + idx + 866] = 0
                                _2890 = mem[64]
                                mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                mem[64] = _2018 + idx + 866
                                mem[_2018 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2018 + idx + 870] = 32
                                _3018 = mem[_2890]
                                mem[_2018 + idx + 902] = mem[_2890]
                                s = 0
                                while s < _3018:
                                    mem[s + _2018 + idx + 934] = mem[s + _2890 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3018) > _3018:
                                    mem[_3018 + _2018 + idx + 934] = 0
                                revert with 0, 32, mem[_2018 + idx + 902 len ceil32(_3018) + 32]
                            mem[832] = 0
                            mem[64] = 864
                            s = 0
                            while s < idx:
                                mem[s + 896] = mem[s + 736]
                                s = s + 32
                                continue 
                            mem[idx + 896] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _2015 = mem[832]
                                s = 0
                                while s < mem[832]:
                                    mem[s + idx + 898] = mem[s + 864]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[832]) <= mem[832]:
                                    _2883 = mem[64]
                                    mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                                    mem[64] = _2015 + idx + 898
                                    mem[_2015 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2015 + idx + 902] = 32
                                    _3011 = mem[_2883]
                                    mem[_2015 + idx + 934] = mem[_2883]
                                    s = 0
                                    while s < _3011:
                                        mem[s + _2015 + idx + 966] = mem[s + _2883 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_3011) > _3011:
                                        mem[_3011 + _2015 + idx + 966] = 0
                                    revert with 0, 32, mem[_2015 + idx + 934 len ceil32(_3011) + 32]
                                mem[mem[832] + idx + 898] = 0
                                _2884 = mem[64]
                                mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                                mem[64] = _2015 + idx + 898
                                mem[_2015 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2015 + idx + 902] = 32
                                _3012 = mem[_2884]
                                mem[_2015 + idx + 934] = mem[_2884]
                                s = 0
                                while s < _3012:
                                    mem[s + _2015 + idx + 966] = mem[s + _2884 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3012) > _3012:
                                    mem[_3012 + _2015 + idx + 966] = 0
                                revert with 0, 32, mem[_2015 + idx + 934 len ceil32(_3012) + 32]
                            _2016 = mem[832]
                            s = 0
                            while s < mem[832]:
                                mem[s + idx + 898] = mem[s + 864]
                                s = s + 32
                                continue 
                            if ceil32(mem[832]) <= mem[832]:
                                _2885 = mem[64]
                                mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                                mem[64] = _2016 + idx + 898
                                mem[_2016 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2016 + idx + 902] = 32
                                _3013 = mem[_2885]
                                mem[_2016 + idx + 934] = mem[_2885]
                                s = 0
                                while s < _3013:
                                    mem[s + _2016 + idx + 966] = mem[s + _2885 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3013) > _3013:
                                    mem[_3013 + _2016 + idx + 966] = 0
                                revert with 0, 32, mem[_2016 + idx + 934 len ceil32(_3013) + 32]
                            mem[mem[832] + idx + 898] = 0
                            _2886 = mem[64]
                            mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                            mem[64] = _2016 + idx + 898
                            mem[_2016 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2016 + idx + 902] = 32
                            _3014 = mem[_2886]
                            mem[_2016 + idx + 934] = mem[_2886]
                            s = 0
                            while s < _3014:
                                mem[s + _2016 + idx + 966] = mem[s + _2886 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3014) > _3014:
                                mem[_3014 + _2016 + idx + 966] = 0
                            revert with 0, 32, mem[_2016 + idx + 934 len ceil32(_3014) + 32]
                        mem[768] = 0
                        mem[832] = 'Must have super majority'
                        mem[800] = 32
                        mem[64] = 864
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 831]):
                                idx = idx - 1
                                continue 
                            mem[800] = idx
                            s = 0
                            while s < 0:
                                mem[s + 896] = mem[s + 800]
                                s = s + 32
                                continue 
                            mem[896] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < idx:
                                mem[s + 898] = mem[s + 832]
                                s = s + 32
                                continue 
                            mem[864] = idx + 2
                            mem[64] = idx + 898
                            mem[idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + 902] = 32
                            mem[idx + 934] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + 966] = mem[s + 896]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + 968] = 0
                            revert with 0, 32, idx + 2, mem[idx + 966 len floor32(idx + 33)]
                    else:
                        mem[0] = arg1
                        mem[32] = 14
                        if periodFor[address(arg1)].field_512 > periodFor[address(arg1)].field_768:
                            if not ext_code.size(arg1):
                                revert with 0, 'Cannot set a proxy implementation to a non-contract address'
                            uint256(stor3608) = arg1
                            mem[740] = 0, mem[740 len 28]
                            delegate arg1.mem[740 len 4] with:
                                 gas gas_remaining wei
                                args 
                            if not return_data.size:
                                if not delegate.return_code:
                                    revert with 0, ''
                            else:
                                if not delegate.return_code:
                                    revert with 0, 
                                                32,
                                                return_data.size,
                                                ext_call.return_data[0 len return_data.size],
                                                Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256
                            emit Upgraded(arg1);
                            emit Commit(msg.sender, arg1);
                        mem[736] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                        mem[704] = 32
                        mem[64] = 768
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 735]):
                                idx = idx - 1
                                continue 
                            mem[704] = idx
                            mem[800] = 0x4e6f7420617070726f7665640000000000000000000000000000000000000000
                            mem[768] = 32
                            mem[64] = 832
                            s = 32
                            while s:
                                require s - 1 < 32
                                if not Mask(8, 248, mem[s + 799]):
                                    s = s - 1
                                    continue 
                                mem[768] = s
                                s = 0
                                while s < idx:
                                    mem[s + 864] = mem[s + 736]
                                    s = s + 32
                                    continue 
                                mem[idx + 864] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                if ceil32(idx) <= idx:
                                    _2009 = mem[768]
                                    s = 0
                                    while s < mem[768]:
                                        mem[s + idx + 866] = mem[s + 800]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[768]) <= mem[768]:
                                        _2871 = mem[64]
                                        mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                        mem[64] = _2009 + idx + 866
                                        mem[_2009 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2009 + idx + 870] = 32
                                        _2999 = mem[_2871]
                                        mem[_2009 + idx + 902] = mem[_2871]
                                        s = 0
                                        while s < _2999:
                                            mem[s + _2009 + idx + 934] = mem[s + _2871 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2999) > _2999:
                                            mem[_2999 + _2009 + idx + 934] = 0
                                        revert with 0, 32, mem[_2009 + idx + 902 len ceil32(_2999) + 32]
                                    mem[mem[768] + idx + 866] = 0
                                    _2872 = mem[64]
                                    mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                    mem[64] = _2009 + idx + 866
                                    mem[_2009 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2009 + idx + 870] = 32
                                    _3000 = mem[_2872]
                                    mem[_2009 + idx + 902] = mem[_2872]
                                    s = 0
                                    while s < _3000:
                                        mem[s + _2009 + idx + 934] = mem[s + _2872 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_3000) > _3000:
                                        mem[_3000 + _2009 + idx + 934] = 0
                                    revert with 0, 32, mem[_2009 + idx + 902 len ceil32(_3000) + 32]
                                _2010 = mem[768]
                                s = 0
                                while s < mem[768]:
                                    mem[s + idx + 866] = mem[s + 800]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[768]) <= mem[768]:
                                    _2873 = mem[64]
                                    mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                    mem[64] = _2010 + idx + 866
                                    mem[_2010 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2010 + idx + 870] = 32
                                    _3001 = mem[_2873]
                                    mem[_2010 + idx + 902] = mem[_2873]
                                    s = 0
                                    while s < _3001:
                                        mem[s + _2010 + idx + 934] = mem[s + _2873 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_3001) > _3001:
                                        mem[_3001 + _2010 + idx + 934] = 0
                                    revert with 0, 32, mem[_2010 + idx + 902 len ceil32(_3001) + 32]
                                mem[mem[768] + idx + 866] = 0
                                _2874 = mem[64]
                                mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                mem[64] = _2010 + idx + 866
                                mem[_2010 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2010 + idx + 870] = 32
                                _3002 = mem[_2874]
                                mem[_2010 + idx + 902] = mem[_2874]
                                s = 0
                                while s < _3002:
                                    mem[s + _2010 + idx + 934] = mem[s + _2874 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3002) > _3002:
                                    mem[_3002 + _2010 + idx + 934] = 0
                                revert with 0, 32, mem[_2010 + idx + 902 len ceil32(_3002) + 32]
                            mem[832] = 0
                            mem[64] = 864
                            s = 0
                            while s < idx:
                                mem[s + 896] = mem[s + 736]
                                s = s + 32
                                continue 
                            mem[idx + 896] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _2007 = mem[832]
                                s = 0
                                while s < mem[832]:
                                    mem[s + idx + 898] = mem[s + 864]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[832]) <= mem[832]:
                                    _2867 = mem[64]
                                    mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                                    mem[64] = _2007 + idx + 898
                                    mem[_2007 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2007 + idx + 902] = 32
                                    _2995 = mem[_2867]
                                    mem[_2007 + idx + 934] = mem[_2867]
                                    s = 0
                                    while s < _2995:
                                        mem[s + _2007 + idx + 966] = mem[s + _2867 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2995) > _2995:
                                        mem[_2995 + _2007 + idx + 966] = 0
                                    revert with 0, 32, mem[_2007 + idx + 934 len ceil32(_2995) + 32]
                                mem[mem[832] + idx + 898] = 0
                                _2868 = mem[64]
                                mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                                mem[64] = _2007 + idx + 898
                                mem[_2007 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2007 + idx + 902] = 32
                                _2996 = mem[_2868]
                                mem[_2007 + idx + 934] = mem[_2868]
                                s = 0
                                while s < _2996:
                                    mem[s + _2007 + idx + 966] = mem[s + _2868 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2996) > _2996:
                                    mem[_2996 + _2007 + idx + 966] = 0
                                revert with 0, 32, mem[_2007 + idx + 934 len ceil32(_2996) + 32]
                            _2008 = mem[832]
                            s = 0
                            while s < mem[832]:
                                mem[s + idx + 898] = mem[s + 864]
                                s = s + 32
                                continue 
                            if ceil32(mem[832]) <= mem[832]:
                                _2869 = mem[64]
                                mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                                mem[64] = _2008 + idx + 898
                                mem[_2008 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2008 + idx + 902] = 32
                                _2997 = mem[_2869]
                                mem[_2008 + idx + 934] = mem[_2869]
                                s = 0
                                while s < _2997:
                                    mem[s + _2008 + idx + 966] = mem[s + _2869 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2997) > _2997:
                                    mem[_2997 + _2008 + idx + 966] = 0
                                revert with 0, 32, mem[_2008 + idx + 934 len ceil32(_2997) + 32]
                            mem[mem[832] + idx + 898] = 0
                            _2870 = mem[64]
                            mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                            mem[64] = _2008 + idx + 898
                            mem[_2008 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2008 + idx + 902] = 32
                            _2998 = mem[_2870]
                            mem[_2008 + idx + 934] = mem[_2870]
                            s = 0
                            while s < _2998:
                                mem[s + _2008 + idx + 966] = mem[s + _2870 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2998) > _2998:
                                mem[_2998 + _2008 + idx + 966] = 0
                            revert with 0, 32, mem[_2008 + idx + 934 len ceil32(_2998) + 32]
                        mem[768] = 0
                        mem[832] = 0x4e6f7420617070726f7665640000000000000000000000000000000000000000
                        mem[800] = 32
                        mem[64] = 864
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 831]):
                                idx = idx - 1
                                continue 
                            mem[800] = idx
                            s = 0
                            while s < 0:
                                mem[s + 896] = mem[s + 800]
                                s = s + 32
                                continue 
                            mem[896] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < idx:
                                mem[s + 898] = mem[s + 832]
                                s = s + 32
                                continue 
                            mem[864] = idx + 2
                            mem[64] = idx + 898
                            mem[idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + 902] = 32
                            mem[idx + 934] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + 966] = mem[s + 896]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + 968] = 0
                            revert with 0, 32, idx + 2, mem[idx + 966 len floor32(idx + 33)]
            else:
                if 10^18 * periodFor[address(arg1)].field_512 / periodFor[address(arg1)].field_512 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[640] = 26
                mem[672] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[608] = 10^18 * periodFor[address(arg1)].field_512 / totalSupply
                if 66 * 10^16 == 10^18 * periodFor[address(arg1)].field_512 / totalSupply:
                    mem[736] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[704] = 32
                    mem[64] = 768
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 735]):
                            idx = idx - 1
                            continue 
                        mem[704] = idx
                        mem[800] = 'Must have super majority'
                        mem[768] = 32
                        mem[64] = 832
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 799]):
                                s = s - 1
                                continue 
                            mem[768] = s
                            s = 0
                            while s < idx:
                                mem[s + 864] = mem[s + 736]
                                s = s + 32
                                continue 
                            mem[idx + 864] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _2001 = mem[768]
                                s = 0
                                while s < mem[768]:
                                    mem[s + idx + 866] = mem[s + 800]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[768]) <= mem[768]:
                                    _2855 = mem[64]
                                    mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                    mem[64] = _2001 + idx + 866
                                    mem[_2001 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2001 + idx + 870] = 32
                                    _2983 = mem[_2855]
                                    mem[_2001 + idx + 902] = mem[_2855]
                                    s = 0
                                    while s < _2983:
                                        mem[s + _2001 + idx + 934] = mem[s + _2855 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2983) > _2983:
                                        mem[_2983 + _2001 + idx + 934] = 0
                                    revert with 0, 32, mem[_2001 + idx + 902 len ceil32(_2983) + 32]
                                mem[mem[768] + idx + 866] = 0
                                _2856 = mem[64]
                                mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                mem[64] = _2001 + idx + 866
                                mem[_2001 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2001 + idx + 870] = 32
                                _2984 = mem[_2856]
                                mem[_2001 + idx + 902] = mem[_2856]
                                s = 0
                                while s < _2984:
                                    mem[s + _2001 + idx + 934] = mem[s + _2856 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2984) > _2984:
                                    mem[_2984 + _2001 + idx + 934] = 0
                                revert with 0, 32, mem[_2001 + idx + 902 len ceil32(_2984) + 32]
                            _2002 = mem[768]
                            s = 0
                            while s < mem[768]:
                                mem[s + idx + 866] = mem[s + 800]
                                s = s + 32
                                continue 
                            if ceil32(mem[768]) <= mem[768]:
                                _2857 = mem[64]
                                mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                mem[64] = _2002 + idx + 866
                                mem[_2002 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2002 + idx + 870] = 32
                                _2985 = mem[_2857]
                                mem[_2002 + idx + 902] = mem[_2857]
                                s = 0
                                while s < _2985:
                                    mem[s + _2002 + idx + 934] = mem[s + _2857 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2985) > _2985:
                                    mem[_2985 + _2002 + idx + 934] = 0
                                revert with 0, 32, mem[_2002 + idx + 902 len ceil32(_2985) + 32]
                            mem[mem[768] + idx + 866] = 0
                            _2858 = mem[64]
                            mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                            mem[64] = _2002 + idx + 866
                            mem[_2002 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2002 + idx + 870] = 32
                            _2986 = mem[_2858]
                            mem[_2002 + idx + 902] = mem[_2858]
                            s = 0
                            while s < _2986:
                                mem[s + _2002 + idx + 934] = mem[s + _2858 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2986) > _2986:
                                mem[_2986 + _2002 + idx + 934] = 0
                            revert with 0, 32, mem[_2002 + idx + 902 len ceil32(_2986) + 32]
                        mem[832] = 0
                        mem[64] = 864
                        s = 0
                        while s < idx:
                            mem[s + 896] = mem[s + 736]
                            s = s + 32
                            continue 
                        mem[idx + 896] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _1999 = mem[832]
                            s = 0
                            while s < mem[832]:
                                mem[s + idx + 898] = mem[s + 864]
                                s = s + 32
                                continue 
                            if ceil32(mem[832]) <= mem[832]:
                                _2851 = mem[64]
                                mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                                mem[64] = _1999 + idx + 898
                                mem[_1999 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1999 + idx + 902] = 32
                                _2979 = mem[_2851]
                                mem[_1999 + idx + 934] = mem[_2851]
                                s = 0
                                while s < _2979:
                                    mem[s + _1999 + idx + 966] = mem[s + _2851 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2979) > _2979:
                                    mem[_2979 + _1999 + idx + 966] = 0
                                revert with 0, 32, mem[_1999 + idx + 934 len ceil32(_2979) + 32]
                            mem[mem[832] + idx + 898] = 0
                            _2852 = mem[64]
                            mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                            mem[64] = _1999 + idx + 898
                            mem[_1999 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1999 + idx + 902] = 32
                            _2980 = mem[_2852]
                            mem[_1999 + idx + 934] = mem[_2852]
                            s = 0
                            while s < _2980:
                                mem[s + _1999 + idx + 966] = mem[s + _2852 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2980) > _2980:
                                mem[_2980 + _1999 + idx + 966] = 0
                            revert with 0, 32, mem[_1999 + idx + 934 len ceil32(_2980) + 32]
                        _2000 = mem[832]
                        s = 0
                        while s < mem[832]:
                            mem[s + idx + 898] = mem[s + 864]
                            s = s + 32
                            continue 
                        if ceil32(mem[832]) <= mem[832]:
                            _2853 = mem[64]
                            mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                            mem[64] = _2000 + idx + 898
                            mem[_2000 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2000 + idx + 902] = 32
                            _2981 = mem[_2853]
                            mem[_2000 + idx + 934] = mem[_2853]
                            s = 0
                            while s < _2981:
                                mem[s + _2000 + idx + 966] = mem[s + _2853 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2981) > _2981:
                                mem[_2981 + _2000 + idx + 966] = 0
                            revert with 0, 32, mem[_2000 + idx + 934 len ceil32(_2981) + 32]
                        mem[mem[832] + idx + 898] = 0
                        _2854 = mem[64]
                        mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                        mem[64] = _2000 + idx + 898
                        mem[_2000 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2000 + idx + 902] = 32
                        _2982 = mem[_2854]
                        mem[_2000 + idx + 934] = mem[_2854]
                        s = 0
                        while s < _2982:
                            mem[s + _2000 + idx + 966] = mem[s + _2854 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2982) > _2982:
                            mem[_2982 + _2000 + idx + 966] = 0
                        revert with 0, 32, mem[_2000 + idx + 934 len ceil32(_2982) + 32]
                    mem[768] = 0
                    mem[832] = 'Must have super majority'
                    mem[800] = 32
                    mem[64] = 864
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 831]):
                            idx = idx - 1
                            continue 
                        mem[800] = idx
                        s = 0
                        while s < 0:
                            mem[s + 896] = mem[s + 800]
                            s = s + 32
                            continue 
                        mem[896] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 898] = mem[s + 832]
                            s = s + 32
                            continue 
                        mem[864] = idx + 2
                        mem[64] = idx + 898
                        mem[idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 902] = 32
                        mem[idx + 934] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 966] = mem[s + 896]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 968] = 0
                        revert with 0, 32, idx + 2, mem[idx + 966 len floor32(idx + 33)]
                else:
                    if 10^18 * periodFor[address(arg1)].field_512 / totalSupply <= 66 * 10^16:
                        mem[736] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                        mem[704] = 32
                        mem[64] = 768
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 735]):
                                idx = idx - 1
                                continue 
                            mem[704] = idx
                            mem[800] = 'Must have super majority'
                            mem[768] = 32
                            mem[64] = 832
                            s = 32
                            while s:
                                require s - 1 < 32
                                if not Mask(8, 248, mem[s + 799]):
                                    s = s - 1
                                    continue 
                                mem[768] = s
                                s = 0
                                while s < idx:
                                    mem[s + 864] = mem[s + 736]
                                    s = s + 32
                                    continue 
                                mem[idx + 864] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                if ceil32(idx) <= idx:
                                    _1993 = mem[768]
                                    s = 0
                                    while s < mem[768]:
                                        mem[s + idx + 866] = mem[s + 800]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[768]) <= mem[768]:
                                        _2839 = mem[64]
                                        mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                        mem[64] = _1993 + idx + 866
                                        mem[_1993 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1993 + idx + 870] = 32
                                        _2967 = mem[_2839]
                                        mem[_1993 + idx + 902] = mem[_2839]
                                        s = 0
                                        while s < _2967:
                                            mem[s + _1993 + idx + 934] = mem[s + _2839 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2967) > _2967:
                                            mem[_2967 + _1993 + idx + 934] = 0
                                        revert with 0, 32, mem[_1993 + idx + 902 len ceil32(_2967) + 32]
                                    mem[mem[768] + idx + 866] = 0
                                    _2840 = mem[64]
                                    mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                    mem[64] = _1993 + idx + 866
                                    mem[_1993 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1993 + idx + 870] = 32
                                    _2968 = mem[_2840]
                                    mem[_1993 + idx + 902] = mem[_2840]
                                    s = 0
                                    while s < _2968:
                                        mem[s + _1993 + idx + 934] = mem[s + _2840 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2968) > _2968:
                                        mem[_2968 + _1993 + idx + 934] = 0
                                    revert with 0, 32, mem[_1993 + idx + 902 len ceil32(_2968) + 32]
                                _1994 = mem[768]
                                s = 0
                                while s < mem[768]:
                                    mem[s + idx + 866] = mem[s + 800]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[768]) <= mem[768]:
                                    _2841 = mem[64]
                                    mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                    mem[64] = _1994 + idx + 866
                                    mem[_1994 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1994 + idx + 870] = 32
                                    _2969 = mem[_2841]
                                    mem[_1994 + idx + 902] = mem[_2841]
                                    s = 0
                                    while s < _2969:
                                        mem[s + _1994 + idx + 934] = mem[s + _2841 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2969) > _2969:
                                        mem[_2969 + _1994 + idx + 934] = 0
                                    revert with 0, 32, mem[_1994 + idx + 902 len ceil32(_2969) + 32]
                                mem[mem[768] + idx + 866] = 0
                                _2842 = mem[64]
                                mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                mem[64] = _1994 + idx + 866
                                mem[_1994 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1994 + idx + 870] = 32
                                _2970 = mem[_2842]
                                mem[_1994 + idx + 902] = mem[_2842]
                                s = 0
                                while s < _2970:
                                    mem[s + _1994 + idx + 934] = mem[s + _2842 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2970) > _2970:
                                    mem[_2970 + _1994 + idx + 934] = 0
                                revert with 0, 32, mem[_1994 + idx + 902 len ceil32(_2970) + 32]
                            mem[832] = 0
                            mem[64] = 864
                            s = 0
                            while s < idx:
                                mem[s + 896] = mem[s + 736]
                                s = s + 32
                                continue 
                            mem[idx + 896] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _1991 = mem[832]
                                s = 0
                                while s < mem[832]:
                                    mem[s + idx + 898] = mem[s + 864]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[832]) <= mem[832]:
                                    _2835 = mem[64]
                                    mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                                    mem[64] = _1991 + idx + 898
                                    mem[_1991 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1991 + idx + 902] = 32
                                    _2963 = mem[_2835]
                                    mem[_1991 + idx + 934] = mem[_2835]
                                    s = 0
                                    while s < _2963:
                                        mem[s + _1991 + idx + 966] = mem[s + _2835 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2963) > _2963:
                                        mem[_2963 + _1991 + idx + 966] = 0
                                    revert with 0, 32, mem[_1991 + idx + 934 len ceil32(_2963) + 32]
                                mem[mem[832] + idx + 898] = 0
                                _2836 = mem[64]
                                mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                                mem[64] = _1991 + idx + 898
                                mem[_1991 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1991 + idx + 902] = 32
                                _2964 = mem[_2836]
                                mem[_1991 + idx + 934] = mem[_2836]
                                s = 0
                                while s < _2964:
                                    mem[s + _1991 + idx + 966] = mem[s + _2836 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2964) > _2964:
                                    mem[_2964 + _1991 + idx + 966] = 0
                                revert with 0, 32, mem[_1991 + idx + 934 len ceil32(_2964) + 32]
                            _1992 = mem[832]
                            s = 0
                            while s < mem[832]:
                                mem[s + idx + 898] = mem[s + 864]
                                s = s + 32
                                continue 
                            if ceil32(mem[832]) <= mem[832]:
                                _2837 = mem[64]
                                mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                                mem[64] = _1992 + idx + 898
                                mem[_1992 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1992 + idx + 902] = 32
                                _2965 = mem[_2837]
                                mem[_1992 + idx + 934] = mem[_2837]
                                s = 0
                                while s < _2965:
                                    mem[s + _1992 + idx + 966] = mem[s + _2837 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2965) > _2965:
                                    mem[_2965 + _1992 + idx + 966] = 0
                                revert with 0, 32, mem[_1992 + idx + 934 len ceil32(_2965) + 32]
                            mem[mem[832] + idx + 898] = 0
                            _2838 = mem[64]
                            mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                            mem[64] = _1992 + idx + 898
                            mem[_1992 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1992 + idx + 902] = 32
                            _2966 = mem[_2838]
                            mem[_1992 + idx + 934] = mem[_2838]
                            s = 0
                            while s < _2966:
                                mem[s + _1992 + idx + 966] = mem[s + _2838 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2966) > _2966:
                                mem[_2966 + _1992 + idx + 966] = 0
                            revert with 0, 32, mem[_1992 + idx + 934 len ceil32(_2966) + 32]
                        mem[768] = 0
                        mem[832] = 'Must have super majority'
                        mem[800] = 32
                        mem[64] = 864
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 831]):
                                idx = idx - 1
                                continue 
                            mem[800] = idx
                            s = 0
                            while s < 0:
                                mem[s + 896] = mem[s + 800]
                                s = s + 32
                                continue 
                            mem[896] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < idx:
                                mem[s + 898] = mem[s + 832]
                                s = s + 32
                                continue 
                            mem[864] = idx + 2
                            mem[64] = idx + 898
                            mem[idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + 902] = 32
                            mem[idx + 934] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + 966] = mem[s + 896]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + 968] = 0
                            revert with 0, 32, idx + 2, mem[idx + 966 len floor32(idx + 33)]
                    else:
                        mem[0] = arg1
                        mem[32] = 14
                        if periodFor[address(arg1)].field_512 > periodFor[address(arg1)].field_768:
                            if not ext_code.size(arg1):
                                revert with 0, 'Cannot set a proxy implementation to a non-contract address'
                            uint256(stor3608) = arg1
                            mem[740] = 0, mem[740 len 28]
                            delegate arg1.mem[740 len 4] with:
                                 gas gas_remaining wei
                                args 
                            if not return_data.size:
                                if not delegate.return_code:
                                    revert with 0, ''
                            else:
                                if not delegate.return_code:
                                    revert with 0, 
                                                32,
                                                return_data.size,
                                                ext_call.return_data[0 len return_data.size],
                                                Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256
                            emit Upgraded(arg1);
                            emit Commit(msg.sender, arg1);
                        mem[736] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                        mem[704] = 32
                        mem[64] = 768
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 735]):
                                idx = idx - 1
                                continue 
                            mem[704] = idx
                            mem[800] = 0x4e6f7420617070726f7665640000000000000000000000000000000000000000
                            mem[768] = 32
                            mem[64] = 832
                            s = 32
                            while s:
                                require s - 1 < 32
                                if not Mask(8, 248, mem[s + 799]):
                                    s = s - 1
                                    continue 
                                mem[768] = s
                                s = 0
                                while s < idx:
                                    mem[s + 864] = mem[s + 736]
                                    s = s + 32
                                    continue 
                                mem[idx + 864] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                if ceil32(idx) <= idx:
                                    _1985 = mem[768]
                                    s = 0
                                    while s < mem[768]:
                                        mem[s + idx + 866] = mem[s + 800]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[768]) <= mem[768]:
                                        _2823 = mem[64]
                                        mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                        mem[64] = _1985 + idx + 866
                                        mem[_1985 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1985 + idx + 870] = 32
                                        _2951 = mem[_2823]
                                        mem[_1985 + idx + 902] = mem[_2823]
                                        s = 0
                                        while s < _2951:
                                            mem[s + _1985 + idx + 934] = mem[s + _2823 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2951) > _2951:
                                            mem[_2951 + _1985 + idx + 934] = 0
                                        revert with 0, 32, mem[_1985 + idx + 902 len ceil32(_2951) + 32]
                                    mem[mem[768] + idx + 866] = 0
                                    _2824 = mem[64]
                                    mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                    mem[64] = _1985 + idx + 866
                                    mem[_1985 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1985 + idx + 870] = 32
                                    _2952 = mem[_2824]
                                    mem[_1985 + idx + 902] = mem[_2824]
                                    s = 0
                                    while s < _2952:
                                        mem[s + _1985 + idx + 934] = mem[s + _2824 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2952) > _2952:
                                        mem[_2952 + _1985 + idx + 934] = 0
                                    revert with 0, 32, mem[_1985 + idx + 902 len ceil32(_2952) + 32]
                                _1986 = mem[768]
                                s = 0
                                while s < mem[768]:
                                    mem[s + idx + 866] = mem[s + 800]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[768]) <= mem[768]:
                                    _2825 = mem[64]
                                    mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                    mem[64] = _1986 + idx + 866
                                    mem[_1986 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1986 + idx + 870] = 32
                                    _2953 = mem[_2825]
                                    mem[_1986 + idx + 902] = mem[_2825]
                                    s = 0
                                    while s < _2953:
                                        mem[s + _1986 + idx + 934] = mem[s + _2825 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2953) > _2953:
                                        mem[_2953 + _1986 + idx + 934] = 0
                                    revert with 0, 32, mem[_1986 + idx + 902 len ceil32(_2953) + 32]
                                mem[mem[768] + idx + 866] = 0
                                _2826 = mem[64]
                                mem[mem[64]] = mem[768] + idx + -mem[64] + 834
                                mem[64] = _1986 + idx + 866
                                mem[_1986 + idx + 866] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1986 + idx + 870] = 32
                                _2954 = mem[_2826]
                                mem[_1986 + idx + 902] = mem[_2826]
                                s = 0
                                while s < _2954:
                                    mem[s + _1986 + idx + 934] = mem[s + _2826 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2954) > _2954:
                                    mem[_2954 + _1986 + idx + 934] = 0
                                revert with 0, 32, mem[_1986 + idx + 902 len ceil32(_2954) + 32]
                            mem[832] = 0
                            mem[64] = 864
                            s = 0
                            while s < idx:
                                mem[s + 896] = mem[s + 736]
                                s = s + 32
                                continue 
                            mem[idx + 896] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _1983 = mem[832]
                                s = 0
                                while s < mem[832]:
                                    mem[s + idx + 898] = mem[s + 864]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[832]) <= mem[832]:
                                    _2819 = mem[64]
                                    mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                                    mem[64] = _1983 + idx + 898
                                    mem[_1983 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1983 + idx + 902] = 32
                                    _2947 = mem[_2819]
                                    mem[_1983 + idx + 934] = mem[_2819]
                                    s = 0
                                    while s < _2947:
                                        mem[s + _1983 + idx + 966] = mem[s + _2819 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2947) > _2947:
                                        mem[_2947 + _1983 + idx + 966] = 0
                                    revert with 0, 32, mem[_1983 + idx + 934 len ceil32(_2947) + 32]
                                mem[mem[832] + idx + 898] = 0
                                _2820 = mem[64]
                                mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                                mem[64] = _1983 + idx + 898
                                mem[_1983 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1983 + idx + 902] = 32
                                _2948 = mem[_2820]
                                mem[_1983 + idx + 934] = mem[_2820]
                                s = 0
                                while s < _2948:
                                    mem[s + _1983 + idx + 966] = mem[s + _2820 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2948) > _2948:
                                    mem[_2948 + _1983 + idx + 966] = 0
                                revert with 0, 32, mem[_1983 + idx + 934 len ceil32(_2948) + 32]
                            _1984 = mem[832]
                            s = 0
                            while s < mem[832]:
                                mem[s + idx + 898] = mem[s + 864]
                                s = s + 32
                                continue 
                            if ceil32(mem[832]) <= mem[832]:
                                _2821 = mem[64]
                                mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                                mem[64] = _1984 + idx + 898
                                mem[_1984 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1984 + idx + 902] = 32
                                _2949 = mem[_2821]
                                mem[_1984 + idx + 934] = mem[_2821]
                                s = 0
                                while s < _2949:
                                    mem[s + _1984 + idx + 966] = mem[s + _2821 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2949) > _2949:
                                    mem[_2949 + _1984 + idx + 966] = 0
                                revert with 0, 32, mem[_1984 + idx + 934 len ceil32(_2949) + 32]
                            mem[mem[832] + idx + 898] = 0
                            _2822 = mem[64]
                            mem[mem[64]] = mem[832] + idx + -mem[64] + 866
                            mem[64] = _1984 + idx + 898
                            mem[_1984 + idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1984 + idx + 902] = 32
                            _2950 = mem[_2822]
                            mem[_1984 + idx + 934] = mem[_2822]
                            s = 0
                            while s < _2950:
                                mem[s + _1984 + idx + 966] = mem[s + _2822 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2950) > _2950:
                                mem[_2950 + _1984 + idx + 966] = 0
                            revert with 0, 32, mem[_1984 + idx + 934 len ceil32(_2950) + 32]
                        mem[768] = 0
                        mem[832] = 0x4e6f7420617070726f7665640000000000000000000000000000000000000000
                        mem[800] = 32
                        mem[64] = 864
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 831]):
                                idx = idx - 1
                                continue 
                            mem[800] = idx
                            s = 0
                            while s < 0:
                                mem[s + 896] = mem[s + 800]
                                s = s + 32
                                continue 
                            mem[896] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < idx:
                                mem[s + 898] = mem[s + 832]
                                s = s + 32
                                continue 
                            mem[864] = idx + 2
                            mem[64] = idx + 898
                            mem[idx + 898] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + 902] = 32
                            mem[idx + 934] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + 966] = mem[s + 896]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + 968] = 0
                            revert with 0, 32, idx + 2, mem[idx + 966 len floor32(idx + 33)]
    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
}

function vote(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < 3
    mem[0] = msg.sender
    mem[32] = 12
    if fluidUntil[address(msg.sender)].field_1280 > epoch:
        if fluidUntil[address(msg.sender)].field_256 <= 0:
            mem[128] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
            mem[96] = 32
            mem[64] = 160
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 127]):
                    idx = idx - 1
                    continue 
                mem[96] = idx
                mem[192] = 'Must have stake' << 136
                mem[160] = 32
                mem[64] = 224
                s = 32
                while s:
                    require s - 1 < 32
                    if not Mask(8, 248, mem[s + 191]):
                        s = s - 1
                        continue 
                    mem[160] = s
                    s = 0
                    while s < idx:
                        mem[s + 256] = mem[s + 128]
                        s = s + 32
                        continue 
                    mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    if ceil32(idx) <= idx:
                        _6063 = mem[160]
                        s = 0
                        while s < mem[160]:
                            mem[s + idx + 258] = mem[s + 192]
                            s = s + 32
                            continue 
                        if ceil32(mem[160]) <= mem[160]:
                            _8189 = mem[64]
                            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                            mem[64] = _6063 + idx + 258
                            mem[_6063 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6063 + idx + 262] = 32
                            _8493 = mem[_8189]
                            mem[_6063 + idx + 294] = mem[_8189]
                            s = 0
                            while s < _8493:
                                mem[s + _6063 + idx + 326] = mem[s + _8189 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8493) > _8493:
                                mem[_8493 + _6063 + idx + 326] = 0
                            revert with 0, 32, mem[_6063 + idx + 294 len ceil32(_8493) + 32]
                        mem[mem[160] + idx + 258] = 0
                        _8190 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _6063 + idx + 258
                        mem[_6063 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6063 + idx + 262] = 32
                        _8494 = mem[_8190]
                        mem[_6063 + idx + 294] = mem[_8190]
                        s = 0
                        while s < _8494:
                            mem[s + _6063 + idx + 326] = mem[s + _8190 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8494) > _8494:
                            mem[_8494 + _6063 + idx + 326] = 0
                        revert with 0, 32, mem[_6063 + idx + 294 len ceil32(_8494) + 32]
                    _6064 = mem[160]
                    s = 0
                    while s < mem[160]:
                        mem[s + idx + 258] = mem[s + 192]
                        s = s + 32
                        continue 
                    if ceil32(mem[160]) <= mem[160]:
                        _8191 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _6064 + idx + 258
                        mem[_6064 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6064 + idx + 262] = 32
                        _8495 = mem[_8191]
                        mem[_6064 + idx + 294] = mem[_8191]
                        s = 0
                        while s < _8495:
                            mem[s + _6064 + idx + 326] = mem[s + _8191 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8495) > _8495:
                            mem[_8495 + _6064 + idx + 326] = 0
                        revert with 0, 32, mem[_6064 + idx + 294 len ceil32(_8495) + 32]
                    mem[mem[160] + idx + 258] = 0
                    _8192 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _6064 + idx + 258
                    mem[_6064 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6064 + idx + 262] = 32
                    _8496 = mem[_8192]
                    mem[_6064 + idx + 294] = mem[_8192]
                    s = 0
                    while s < _8496:
                        mem[s + _6064 + idx + 326] = mem[s + _8192 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_8496) > _8496:
                        mem[_8496 + _6064 + idx + 326] = 0
                    revert with 0, 32, mem[_6064 + idx + 294 len ceil32(_8496) + 32]
                mem[224] = 0
                mem[64] = 256
                s = 0
                while s < idx:
                    mem[s + 288] = mem[s + 128]
                    s = s + 32
                    continue 
                mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                if ceil32(idx) <= idx:
                    _6061 = mem[224]
                    s = 0
                    while s < mem[224]:
                        mem[s + idx + 290] = mem[s + 256]
                        s = s + 32
                        continue 
                    if ceil32(mem[224]) <= mem[224]:
                        _8185 = mem[64]
                        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                        mem[64] = _6061 + idx + 290
                        mem[_6061 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6061 + idx + 294] = 32
                        _8489 = mem[_8185]
                        mem[_6061 + idx + 326] = mem[_8185]
                        s = 0
                        while s < _8489:
                            mem[s + _6061 + idx + 358] = mem[s + _8185 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8489) > _8489:
                            mem[_8489 + _6061 + idx + 358] = 0
                        revert with 0, 32, mem[_6061 + idx + 326 len ceil32(_8489) + 32]
                    mem[mem[224] + idx + 290] = 0
                    _8186 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _6061 + idx + 290
                    mem[_6061 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6061 + idx + 294] = 32
                    _8490 = mem[_8186]
                    mem[_6061 + idx + 326] = mem[_8186]
                    s = 0
                    while s < _8490:
                        mem[s + _6061 + idx + 358] = mem[s + _8186 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_8490) > _8490:
                        mem[_8490 + _6061 + idx + 358] = 0
                    revert with 0, 32, mem[_6061 + idx + 326 len ceil32(_8490) + 32]
                _6062 = mem[224]
                s = 0
                while s < mem[224]:
                    mem[s + idx + 290] = mem[s + 256]
                    s = s + 32
                    continue 
                if ceil32(mem[224]) <= mem[224]:
                    _8187 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _6062 + idx + 290
                    mem[_6062 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6062 + idx + 294] = 32
                    _8491 = mem[_8187]
                    mem[_6062 + idx + 326] = mem[_8187]
                    s = 0
                    while s < _8491:
                        mem[s + _6062 + idx + 358] = mem[s + _8187 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_8491) > _8491:
                        mem[_8491 + _6062 + idx + 358] = 0
                    revert with 0, 32, mem[_6062 + idx + 326 len ceil32(_8491) + 32]
                mem[mem[224] + idx + 290] = 0
                _8188 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _6062 + idx + 290
                mem[_6062 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_6062 + idx + 294] = 32
                _8492 = mem[_8188]
                mem[_6062 + idx + 326] = mem[_8188]
                s = 0
                while s < _8492:
                    mem[s + _6062 + idx + 358] = mem[s + _8188 + 32]
                    s = s + 32
                    continue 
                if ceil32(_8492) > _8492:
                    mem[_8492 + _6062 + idx + 358] = 0
                revert with 0, 32, mem[_6062 + idx + 326 len ceil32(_8492) + 32]
            mem[160] = 0
            mem[224] = 'Must have stake' << 136
            mem[192] = 32
            mem[64] = 256
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 223]):
                    idx = idx - 1
                    continue 
                mem[192] = idx
                s = 0
                while s < 0:
                    mem[s + 288] = mem[s + 192]
                    s = s + 32
                    continue 
                mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                s = 0
                while s < idx:
                    mem[s + 290] = mem[s + 224]
                    s = s + 32
                    continue 
                mem[256] = idx + 2
                mem[64] = idx + 290
                mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[idx + 294] = 32
                mem[idx + 326] = idx + 2
                s = 0
                while s < idx + 2:
                    mem[s + idx + 358] = mem[s + 288]
                    s = s + 32
                    continue 
                if floor32(idx + 33) > idx + 2:
                    mem[(2 * idx) + 360] = 0
                revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
            revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
        mem[0] = arg1
        mem[32] = 14
        if periodFor[address(arg1)].field_0:
            mem[0] = arg1
            mem[32] = 14
            if periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0 < periodFor[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if epoch >= periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0:
                mem[128] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                mem[96] = 32
                mem[64] = 160
                idx = 32
                while idx:
                    require idx - 1 < 32
                    if not Mask(8, 248, mem[idx + 127]):
                        idx = idx - 1
                        continue 
                    mem[96] = idx
                    mem[192] = 0x456e646564000000000000000000000000000000000000000000000000000000
                    mem[160] = 32
                    mem[64] = 224
                    s = 32
                    while s:
                        require s - 1 < 32
                        if not Mask(8, 248, mem[s + 191]):
                            s = s - 1
                            continue 
                        mem[160] = s
                        s = 0
                        while s < idx:
                            mem[s + 256] = mem[s + 128]
                            s = s + 32
                            continue 
                        mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _5999 = mem[160]
                            s = 0
                            while s < mem[160]:
                                mem[s + idx + 258] = mem[s + 192]
                                s = s + 32
                                continue 
                            if ceil32(mem[160]) <= mem[160]:
                                _8061 = mem[64]
                                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                                mem[64] = _5999 + idx + 258
                                mem[_5999 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5999 + idx + 262] = 32
                                _8365 = mem[_8061]
                                mem[_5999 + idx + 294] = mem[_8061]
                                s = 0
                                while s < _8365:
                                    mem[s + _5999 + idx + 326] = mem[s + _8061 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8365) > _8365:
                                    mem[_8365 + _5999 + idx + 326] = 0
                                revert with 0, 32, mem[_5999 + idx + 294 len ceil32(_8365) + 32]
                            mem[mem[160] + idx + 258] = 0
                            _8062 = mem[64]
                            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                            mem[64] = _5999 + idx + 258
                            mem[_5999 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5999 + idx + 262] = 32
                            _8366 = mem[_8062]
                            mem[_5999 + idx + 294] = mem[_8062]
                            s = 0
                            while s < _8366:
                                mem[s + _5999 + idx + 326] = mem[s + _8062 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8366) > _8366:
                                mem[_8366 + _5999 + idx + 326] = 0
                            revert with 0, 32, mem[_5999 + idx + 294 len ceil32(_8366) + 32]
                        _6000 = mem[160]
                        s = 0
                        while s < mem[160]:
                            mem[s + idx + 258] = mem[s + 192]
                            s = s + 32
                            continue 
                        if ceil32(mem[160]) <= mem[160]:
                            _8063 = mem[64]
                            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                            mem[64] = _6000 + idx + 258
                            mem[_6000 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6000 + idx + 262] = 32
                            _8367 = mem[_8063]
                            mem[_6000 + idx + 294] = mem[_8063]
                            s = 0
                            while s < _8367:
                                mem[s + _6000 + idx + 326] = mem[s + _8063 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8367) > _8367:
                                mem[_8367 + _6000 + idx + 326] = 0
                            revert with 0, 32, mem[_6000 + idx + 294 len ceil32(_8367) + 32]
                        mem[mem[160] + idx + 258] = 0
                        _8064 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _6000 + idx + 258
                        mem[_6000 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6000 + idx + 262] = 32
                        _8368 = mem[_8064]
                        mem[_6000 + idx + 294] = mem[_8064]
                        s = 0
                        while s < _8368:
                            mem[s + _6000 + idx + 326] = mem[s + _8064 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8368) > _8368:
                            mem[_8368 + _6000 + idx + 326] = 0
                        revert with 0, 32, mem[_6000 + idx + 294 len ceil32(_8368) + 32]
                    mem[224] = 0
                    mem[64] = 256
                    s = 0
                    while s < idx:
                        mem[s + 288] = mem[s + 128]
                        s = s + 32
                        continue 
                    mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    if ceil32(idx) <= idx:
                        _5997 = mem[224]
                        s = 0
                        while s < mem[224]:
                            mem[s + idx + 290] = mem[s + 256]
                            s = s + 32
                            continue 
                        if ceil32(mem[224]) <= mem[224]:
                            _8057 = mem[64]
                            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                            mem[64] = _5997 + idx + 290
                            mem[_5997 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5997 + idx + 294] = 32
                            _8361 = mem[_8057]
                            mem[_5997 + idx + 326] = mem[_8057]
                            s = 0
                            while s < _8361:
                                mem[s + _5997 + idx + 358] = mem[s + _8057 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8361) > _8361:
                                mem[_8361 + _5997 + idx + 358] = 0
                            revert with 0, 32, mem[_5997 + idx + 326 len ceil32(_8361) + 32]
                        mem[mem[224] + idx + 290] = 0
                        _8058 = mem[64]
                        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                        mem[64] = _5997 + idx + 290
                        mem[_5997 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5997 + idx + 294] = 32
                        _8362 = mem[_8058]
                        mem[_5997 + idx + 326] = mem[_8058]
                        s = 0
                        while s < _8362:
                            mem[s + _5997 + idx + 358] = mem[s + _8058 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8362) > _8362:
                            mem[_8362 + _5997 + idx + 358] = 0
                        revert with 0, 32, mem[_5997 + idx + 326 len ceil32(_8362) + 32]
                    _5998 = mem[224]
                    s = 0
                    while s < mem[224]:
                        mem[s + idx + 290] = mem[s + 256]
                        s = s + 32
                        continue 
                    if ceil32(mem[224]) <= mem[224]:
                        _8059 = mem[64]
                        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                        mem[64] = _5998 + idx + 290
                        mem[_5998 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5998 + idx + 294] = 32
                        _8363 = mem[_8059]
                        mem[_5998 + idx + 326] = mem[_8059]
                        s = 0
                        while s < _8363:
                            mem[s + _5998 + idx + 358] = mem[s + _8059 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8363) > _8363:
                            mem[_8363 + _5998 + idx + 358] = 0
                        revert with 0, 32, mem[_5998 + idx + 326 len ceil32(_8363) + 32]
                    mem[mem[224] + idx + 290] = 0
                    _8060 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _5998 + idx + 290
                    mem[_5998 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5998 + idx + 294] = 32
                    _8364 = mem[_8060]
                    mem[_5998 + idx + 326] = mem[_8060]
                    s = 0
                    while s < _8364:
                        mem[s + _5998 + idx + 358] = mem[s + _8060 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_8364) > _8364:
                        mem[_8364 + _5998 + idx + 358] = 0
                    revert with 0, 32, mem[_5998 + idx + 326 len ceil32(_8364) + 32]
                mem[160] = 0
                mem[224] = 0x456e646564000000000000000000000000000000000000000000000000000000
                mem[192] = 32
                mem[64] = 256
                idx = 32
                while idx:
                    require idx - 1 < 32
                    if not Mask(8, 248, mem[idx + 223]):
                        idx = idx - 1
                        continue 
                    mem[192] = idx
                    s = 0
                    while s < 0:
                        mem[s + 288] = mem[s + 192]
                        s = s + 32
                        continue 
                    mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    s = 0
                    while s < idx:
                        mem[s + 290] = mem[s + 224]
                        s = s + 32
                        continue 
                    mem[256] = idx + 2
                    mem[64] = idx + 290
                    mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[idx + 294] = 32
                    mem[idx + 326] = idx + 2
                    s = 0
                    while s < idx + 2:
                        mem[s + idx + 358] = mem[s + 288]
                        s = s + 32
                        continue 
                    if floor32(idx + 33) > idx + 2:
                        mem[(2 * idx) + 360] = 0
                    revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
                revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
        else:
            if not totalBonded:
                mem[128] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                mem[96] = 32
                mem[64] = 160
                idx = 32
                while idx:
                    require idx - 1 < 32
                    if not Mask(8, 248, mem[idx + 127]):
                        idx = idx - 1
                        continue 
                    mem[96] = idx
                    mem[192] = 'Not enough stake to propose'
                    mem[160] = 32
                    mem[64] = 224
                    s = 32
                    while s:
                        require s - 1 < 32
                        if not Mask(8, 248, mem[s + 191]):
                            s = s - 1
                            continue 
                        mem[160] = s
                        s = 0
                        while s < idx:
                            mem[s + 256] = mem[s + 128]
                            s = s + 32
                            continue 
                        mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _6055 = mem[160]
                            s = 0
                            while s < mem[160]:
                                mem[s + idx + 258] = mem[s + 192]
                                s = s + 32
                                continue 
                            if ceil32(mem[160]) <= mem[160]:
                                _8173 = mem[64]
                                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                                mem[64] = _6055 + idx + 258
                                mem[_6055 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6055 + idx + 262] = 32
                                _8477 = mem[_8173]
                                mem[_6055 + idx + 294] = mem[_8173]
                                s = 0
                                while s < _8477:
                                    mem[s + _6055 + idx + 326] = mem[s + _8173 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8477) > _8477:
                                    mem[_8477 + _6055 + idx + 326] = 0
                                revert with 0, 32, mem[_6055 + idx + 294 len ceil32(_8477) + 32]
                            mem[mem[160] + idx + 258] = 0
                            _8174 = mem[64]
                            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                            mem[64] = _6055 + idx + 258
                            mem[_6055 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6055 + idx + 262] = 32
                            _8478 = mem[_8174]
                            mem[_6055 + idx + 294] = mem[_8174]
                            s = 0
                            while s < _8478:
                                mem[s + _6055 + idx + 326] = mem[s + _8174 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8478) > _8478:
                                mem[_8478 + _6055 + idx + 326] = 0
                            revert with 0, 32, mem[_6055 + idx + 294 len ceil32(_8478) + 32]
                        _6056 = mem[160]
                        s = 0
                        while s < mem[160]:
                            mem[s + idx + 258] = mem[s + 192]
                            s = s + 32
                            continue 
                        if ceil32(mem[160]) <= mem[160]:
                            _8175 = mem[64]
                            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                            mem[64] = _6056 + idx + 258
                            mem[_6056 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6056 + idx + 262] = 32
                            _8479 = mem[_8175]
                            mem[_6056 + idx + 294] = mem[_8175]
                            s = 0
                            while s < _8479:
                                mem[s + _6056 + idx + 326] = mem[s + _8175 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8479) > _8479:
                                mem[_8479 + _6056 + idx + 326] = 0
                            revert with 0, 32, mem[_6056 + idx + 294 len ceil32(_8479) + 32]
                        mem[mem[160] + idx + 258] = 0
                        _8176 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _6056 + idx + 258
                        mem[_6056 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6056 + idx + 262] = 32
                        _8480 = mem[_8176]
                        mem[_6056 + idx + 294] = mem[_8176]
                        s = 0
                        while s < _8480:
                            mem[s + _6056 + idx + 326] = mem[s + _8176 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8480) > _8480:
                            mem[_8480 + _6056 + idx + 326] = 0
                        revert with 0, 32, mem[_6056 + idx + 294 len ceil32(_8480) + 32]
                    mem[224] = 0
                    mem[64] = 256
                    s = 0
                    while s < idx:
                        mem[s + 288] = mem[s + 128]
                        s = s + 32
                        continue 
                    mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    if ceil32(idx) <= idx:
                        _6053 = mem[224]
                        s = 0
                        while s < mem[224]:
                            mem[s + idx + 290] = mem[s + 256]
                            s = s + 32
                            continue 
                        if ceil32(mem[224]) <= mem[224]:
                            _8169 = mem[64]
                            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                            mem[64] = _6053 + idx + 290
                            mem[_6053 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6053 + idx + 294] = 32
                            _8473 = mem[_8169]
                            mem[_6053 + idx + 326] = mem[_8169]
                            s = 0
                            while s < _8473:
                                mem[s + _6053 + idx + 358] = mem[s + _8169 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8473) > _8473:
                                mem[_8473 + _6053 + idx + 358] = 0
                            revert with 0, 32, mem[_6053 + idx + 326 len ceil32(_8473) + 32]
                        mem[mem[224] + idx + 290] = 0
                        _8170 = mem[64]
                        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                        mem[64] = _6053 + idx + 290
                        mem[_6053 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6053 + idx + 294] = 32
                        _8474 = mem[_8170]
                        mem[_6053 + idx + 326] = mem[_8170]
                        s = 0
                        while s < _8474:
                            mem[s + _6053 + idx + 358] = mem[s + _8170 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8474) > _8474:
                            mem[_8474 + _6053 + idx + 358] = 0
                        revert with 0, 32, mem[_6053 + idx + 326 len ceil32(_8474) + 32]
                    _6054 = mem[224]
                    s = 0
                    while s < mem[224]:
                        mem[s + idx + 290] = mem[s + 256]
                        s = s + 32
                        continue 
                    if ceil32(mem[224]) <= mem[224]:
                        _8171 = mem[64]
                        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                        mem[64] = _6054 + idx + 290
                        mem[_6054 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6054 + idx + 294] = 32
                        _8475 = mem[_8171]
                        mem[_6054 + idx + 326] = mem[_8171]
                        s = 0
                        while s < _8475:
                            mem[s + _6054 + idx + 358] = mem[s + _8171 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8475) > _8475:
                            mem[_8475 + _6054 + idx + 358] = 0
                        revert with 0, 32, mem[_6054 + idx + 326 len ceil32(_8475) + 32]
                    mem[mem[224] + idx + 290] = 0
                    _8172 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _6054 + idx + 290
                    mem[_6054 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_6054 + idx + 294] = 32
                    _8476 = mem[_8172]
                    mem[_6054 + idx + 326] = mem[_8172]
                    s = 0
                    while s < _8476:
                        mem[s + _6054 + idx + 358] = mem[s + _8172 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_8476) > _8476:
                        mem[_8476 + _6054 + idx + 358] = 0
                    revert with 0, 32, mem[_6054 + idx + 326 len ceil32(_8476) + 32]
                mem[160] = 0
                mem[224] = 'Not enough stake to propose'
                mem[192] = 32
                mem[64] = 256
                idx = 32
                while idx:
                    require idx - 1 < 32
                    if not Mask(8, 248, mem[idx + 223]):
                        idx = idx - 1
                        continue 
                    mem[192] = idx
                    s = 0
                    while s < 0:
                        mem[s + 288] = mem[s + 192]
                        s = s + 32
                        continue 
                    mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    s = 0
                    while s < idx:
                        mem[s + 290] = mem[s + 224]
                        s = s + 32
                        continue 
                    mem[256] = idx + 2
                    mem[64] = idx + 290
                    mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[idx + 294] = 32
                    mem[idx + 326] = idx + 2
                    s = 0
                    while s < idx + 2:
                        mem[s + idx + 358] = mem[s + 288]
                        s = s + 32
                        continue 
                    if floor32(idx + 33) > idx + 2:
                        mem[(2 * idx) + 360] = 0
                    revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
                revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
            mem[96] = 0
            mem[0] = msg.sender
            mem[32] = 12
            mem[128] = 0
            if not fluidUntil[address(msg.sender)].field_256:
                mem[192] = 26
                mem[224] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[160] = 0 / totalSupply
                mem[256] = 0
                mem[288] = 5 * 10^15
                if 5 * 10^15 == 0 / totalSupply:
                    mem[352] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[320] = 32
                    mem[64] = 384
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 351]):
                            idx = idx - 1
                            continue 
                        mem[320] = idx
                        mem[416] = 'Not enough stake to propose'
                        mem[384] = 32
                        mem[64] = 448
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 415]):
                                s = s - 1
                                continue 
                            mem[384] = s
                            s = 0
                            while s < idx:
                                mem[s + 480] = mem[s + 352]
                                s = s + 32
                                continue 
                            mem[idx + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _6047 = mem[384]
                                s = 0
                                while s < mem[384]:
                                    mem[s + idx + 482] = mem[s + 416]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[384]) <= mem[384]:
                                    _8157 = mem[64]
                                    mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                    mem[64] = _6047 + idx + 482
                                    mem[_6047 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_6047 + idx + 486] = 32
                                    _8461 = mem[_8157]
                                    mem[_6047 + idx + 518] = mem[_8157]
                                    s = 0
                                    while s < _8461:
                                        mem[s + _6047 + idx + 550] = mem[s + _8157 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_8461) > _8461:
                                        mem[_8461 + _6047 + idx + 550] = 0
                                    revert with 0, 32, mem[_6047 + idx + 518 len ceil32(_8461) + 32]
                                mem[mem[384] + idx + 482] = 0
                                _8158 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _6047 + idx + 482
                                mem[_6047 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6047 + idx + 486] = 32
                                _8462 = mem[_8158]
                                mem[_6047 + idx + 518] = mem[_8158]
                                s = 0
                                while s < _8462:
                                    mem[s + _6047 + idx + 550] = mem[s + _8158 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8462) > _8462:
                                    mem[_8462 + _6047 + idx + 550] = 0
                                revert with 0, 32, mem[_6047 + idx + 518 len ceil32(_8462) + 32]
                            _6048 = mem[384]
                            s = 0
                            while s < mem[384]:
                                mem[s + idx + 482] = mem[s + 416]
                                s = s + 32
                                continue 
                            if ceil32(mem[384]) <= mem[384]:
                                _8159 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _6048 + idx + 482
                                mem[_6048 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6048 + idx + 486] = 32
                                _8463 = mem[_8159]
                                mem[_6048 + idx + 518] = mem[_8159]
                                s = 0
                                while s < _8463:
                                    mem[s + _6048 + idx + 550] = mem[s + _8159 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8463) > _8463:
                                    mem[_8463 + _6048 + idx + 550] = 0
                                revert with 0, 32, mem[_6048 + idx + 518 len ceil32(_8463) + 32]
                            mem[mem[384] + idx + 482] = 0
                            _8160 = mem[64]
                            mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                            mem[64] = _6048 + idx + 482
                            mem[_6048 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6048 + idx + 486] = 32
                            _8464 = mem[_8160]
                            mem[_6048 + idx + 518] = mem[_8160]
                            s = 0
                            while s < _8464:
                                mem[s + _6048 + idx + 550] = mem[s + _8160 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8464) > _8464:
                                mem[_8464 + _6048 + idx + 550] = 0
                            revert with 0, 32, mem[_6048 + idx + 518 len ceil32(_8464) + 32]
                        mem[448] = 0
                        mem[64] = 480
                        s = 0
                        while s < idx:
                            mem[s + 512] = mem[s + 352]
                            s = s + 32
                            continue 
                        mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _6045 = mem[448]
                            s = 0
                            while s < mem[448]:
                                mem[s + idx + 514] = mem[s + 480]
                                s = s + 32
                                continue 
                            if ceil32(mem[448]) <= mem[448]:
                                _8153 = mem[64]
                                mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                                mem[64] = _6045 + idx + 514
                                mem[_6045 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6045 + idx + 518] = 32
                                _8457 = mem[_8153]
                                mem[_6045 + idx + 550] = mem[_8153]
                                s = 0
                                while s < _8457:
                                    mem[s + _6045 + idx + 582] = mem[s + _8153 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8457) > _8457:
                                    mem[_8457 + _6045 + idx + 582] = 0
                                revert with 0, 32, mem[_6045 + idx + 550 len ceil32(_8457) + 32]
                            mem[mem[448] + idx + 514] = 0
                            _8154 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _6045 + idx + 514
                            mem[_6045 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6045 + idx + 518] = 32
                            _8458 = mem[_8154]
                            mem[_6045 + idx + 550] = mem[_8154]
                            s = 0
                            while s < _8458:
                                mem[s + _6045 + idx + 582] = mem[s + _8154 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8458) > _8458:
                                mem[_8458 + _6045 + idx + 582] = 0
                            revert with 0, 32, mem[_6045 + idx + 550 len ceil32(_8458) + 32]
                        _6046 = mem[448]
                        s = 0
                        while s < mem[448]:
                            mem[s + idx + 514] = mem[s + 480]
                            s = s + 32
                            continue 
                        if ceil32(mem[448]) <= mem[448]:
                            _8155 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _6046 + idx + 514
                            mem[_6046 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6046 + idx + 518] = 32
                            _8459 = mem[_8155]
                            mem[_6046 + idx + 550] = mem[_8155]
                            s = 0
                            while s < _8459:
                                mem[s + _6046 + idx + 582] = mem[s + _8155 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8459) > _8459:
                                mem[_8459 + _6046 + idx + 582] = 0
                            revert with 0, 32, mem[_6046 + idx + 550 len ceil32(_8459) + 32]
                        mem[mem[448] + idx + 514] = 0
                        _8156 = mem[64]
                        mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                        mem[64] = _6046 + idx + 514
                        mem[_6046 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6046 + idx + 518] = 32
                        _8460 = mem[_8156]
                        mem[_6046 + idx + 550] = mem[_8156]
                        s = 0
                        while s < _8460:
                            mem[s + _6046 + idx + 582] = mem[s + _8156 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8460) > _8460:
                            mem[_8460 + _6046 + idx + 582] = 0
                        revert with 0, 32, mem[_6046 + idx + 550 len ceil32(_8460) + 32]
                    mem[384] = 0
                    mem[448] = 'Not enough stake to propose'
                    mem[416] = 32
                    mem[64] = 480
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 447]):
                            idx = idx - 1
                            continue 
                        mem[416] = idx
                        s = 0
                        while s < 0:
                            mem[s + 512] = mem[s + 416]
                            s = s + 32
                            continue 
                        mem[512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 514] = mem[s + 448]
                            s = s + 32
                            continue 
                        mem[480] = idx + 2
                        mem[64] = idx + 514
                        mem[idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 518] = 32
                        mem[idx + 550] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 582] = mem[s + 512]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 584] = 0
                        revert with 0, 32, idx + 2, mem[idx + 582 len floor32(idx + 33)]
                    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
                if 0 / totalSupply <= 5 * 10^15:
                    mem[352] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[320] = 32
                    mem[64] = 384
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 351]):
                            idx = idx - 1
                            continue 
                        mem[320] = idx
                        mem[416] = 'Not enough stake to propose'
                        mem[384] = 32
                        mem[64] = 448
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 415]):
                                s = s - 1
                                continue 
                            mem[384] = s
                            s = 0
                            while s < idx:
                                mem[s + 480] = mem[s + 352]
                                s = s + 32
                                continue 
                            mem[idx + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _6039 = mem[384]
                                s = 0
                                while s < mem[384]:
                                    mem[s + idx + 482] = mem[s + 416]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[384]) <= mem[384]:
                                    _8141 = mem[64]
                                    mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                    mem[64] = _6039 + idx + 482
                                    mem[_6039 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_6039 + idx + 486] = 32
                                    _8445 = mem[_8141]
                                    mem[_6039 + idx + 518] = mem[_8141]
                                    s = 0
                                    while s < _8445:
                                        mem[s + _6039 + idx + 550] = mem[s + _8141 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_8445) > _8445:
                                        mem[_8445 + _6039 + idx + 550] = 0
                                    revert with 0, 32, mem[_6039 + idx + 518 len ceil32(_8445) + 32]
                                mem[mem[384] + idx + 482] = 0
                                _8142 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _6039 + idx + 482
                                mem[_6039 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6039 + idx + 486] = 32
                                _8446 = mem[_8142]
                                mem[_6039 + idx + 518] = mem[_8142]
                                s = 0
                                while s < _8446:
                                    mem[s + _6039 + idx + 550] = mem[s + _8142 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8446) > _8446:
                                    mem[_8446 + _6039 + idx + 550] = 0
                                revert with 0, 32, mem[_6039 + idx + 518 len ceil32(_8446) + 32]
                            _6040 = mem[384]
                            s = 0
                            while s < mem[384]:
                                mem[s + idx + 482] = mem[s + 416]
                                s = s + 32
                                continue 
                            if ceil32(mem[384]) <= mem[384]:
                                _8143 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _6040 + idx + 482
                                mem[_6040 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6040 + idx + 486] = 32
                                _8447 = mem[_8143]
                                mem[_6040 + idx + 518] = mem[_8143]
                                s = 0
                                while s < _8447:
                                    mem[s + _6040 + idx + 550] = mem[s + _8143 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8447) > _8447:
                                    mem[_8447 + _6040 + idx + 550] = 0
                                revert with 0, 32, mem[_6040 + idx + 518 len ceil32(_8447) + 32]
                            mem[mem[384] + idx + 482] = 0
                            _8144 = mem[64]
                            mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                            mem[64] = _6040 + idx + 482
                            mem[_6040 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6040 + idx + 486] = 32
                            _8448 = mem[_8144]
                            mem[_6040 + idx + 518] = mem[_8144]
                            s = 0
                            while s < _8448:
                                mem[s + _6040 + idx + 550] = mem[s + _8144 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8448) > _8448:
                                mem[_8448 + _6040 + idx + 550] = 0
                            revert with 0, 32, mem[_6040 + idx + 518 len ceil32(_8448) + 32]
                        mem[448] = 0
                        mem[64] = 480
                        s = 0
                        while s < idx:
                            mem[s + 512] = mem[s + 352]
                            s = s + 32
                            continue 
                        mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _6037 = mem[448]
                            s = 0
                            while s < mem[448]:
                                mem[s + idx + 514] = mem[s + 480]
                                s = s + 32
                                continue 
                            if ceil32(mem[448]) <= mem[448]:
                                _8137 = mem[64]
                                mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                                mem[64] = _6037 + idx + 514
                                mem[_6037 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6037 + idx + 518] = 32
                                _8441 = mem[_8137]
                                mem[_6037 + idx + 550] = mem[_8137]
                                s = 0
                                while s < _8441:
                                    mem[s + _6037 + idx + 582] = mem[s + _8137 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8441) > _8441:
                                    mem[_8441 + _6037 + idx + 582] = 0
                                revert with 0, 32, mem[_6037 + idx + 550 len ceil32(_8441) + 32]
                            mem[mem[448] + idx + 514] = 0
                            _8138 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _6037 + idx + 514
                            mem[_6037 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6037 + idx + 518] = 32
                            _8442 = mem[_8138]
                            mem[_6037 + idx + 550] = mem[_8138]
                            s = 0
                            while s < _8442:
                                mem[s + _6037 + idx + 582] = mem[s + _8138 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8442) > _8442:
                                mem[_8442 + _6037 + idx + 582] = 0
                            revert with 0, 32, mem[_6037 + idx + 550 len ceil32(_8442) + 32]
                        _6038 = mem[448]
                        s = 0
                        while s < mem[448]:
                            mem[s + idx + 514] = mem[s + 480]
                            s = s + 32
                            continue 
                        if ceil32(mem[448]) <= mem[448]:
                            _8139 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _6038 + idx + 514
                            mem[_6038 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6038 + idx + 518] = 32
                            _8443 = mem[_8139]
                            mem[_6038 + idx + 550] = mem[_8139]
                            s = 0
                            while s < _8443:
                                mem[s + _6038 + idx + 582] = mem[s + _8139 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8443) > _8443:
                                mem[_8443 + _6038 + idx + 582] = 0
                            revert with 0, 32, mem[_6038 + idx + 550 len ceil32(_8443) + 32]
                        mem[mem[448] + idx + 514] = 0
                        _8140 = mem[64]
                        mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                        mem[64] = _6038 + idx + 514
                        mem[_6038 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6038 + idx + 518] = 32
                        _8444 = mem[_8140]
                        mem[_6038 + idx + 550] = mem[_8140]
                        s = 0
                        while s < _8444:
                            mem[s + _6038 + idx + 582] = mem[s + _8140 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8444) > _8444:
                            mem[_8444 + _6038 + idx + 582] = 0
                        revert with 0, 32, mem[_6038 + idx + 550 len ceil32(_8444) + 32]
                    mem[384] = 0
                    mem[448] = 'Not enough stake to propose'
                    mem[416] = 32
                    mem[64] = 480
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 447]):
                            idx = idx - 1
                            continue 
                        mem[416] = idx
                        s = 0
                        while s < 0:
                            mem[s + 512] = mem[s + 416]
                            s = s + 32
                            continue 
                        mem[512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 514] = mem[s + 448]
                            s = s + 32
                            continue 
                        mem[480] = idx + 2
                        mem[64] = idx + 514
                        mem[idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 518] = 32
                        mem[idx + 550] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 582] = mem[s + 512]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 584] = 0
                        revert with 0, 32, idx + 2, mem[idx + 582 len floor32(idx + 33)]
                    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
                periodFor[address(arg1)].field_0 = epoch
                periodFor[address(arg1)].field_256 = 6
                emit Proposal(6, arg1, msg.sender, epoch);
                mem[0] = arg1
                mem[32] = 14
                if periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0 < periodFor[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if epoch >= periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0:
                    mem[352] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[320] = 32
                    mem[64] = 384
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 351]):
                            idx = idx - 1
                            continue 
                        mem[320] = idx
                        mem[416] = 0x456e646564000000000000000000000000000000000000000000000000000000
                        mem[384] = 32
                        mem[64] = 448
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 415]):
                                s = s - 1
                                continue 
                            mem[384] = s
                            s = 0
                            while s < idx:
                                mem[s + 480] = mem[s + 352]
                                s = s + 32
                                continue 
                            mem[idx + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _6031 = mem[384]
                                s = 0
                                while s < mem[384]:
                                    mem[s + idx + 482] = mem[s + 416]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[384]) <= mem[384]:
                                    _8125 = mem[64]
                                    mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                    mem[64] = _6031 + idx + 482
                                    mem[_6031 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_6031 + idx + 486] = 32
                                    _8429 = mem[_8125]
                                    mem[_6031 + idx + 518] = mem[_8125]
                                    s = 0
                                    while s < _8429:
                                        mem[s + _6031 + idx + 550] = mem[s + _8125 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_8429) > _8429:
                                        mem[_8429 + _6031 + idx + 550] = 0
                                    revert with 0, 32, mem[_6031 + idx + 518 len ceil32(_8429) + 32]
                                mem[mem[384] + idx + 482] = 0
                                _8126 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _6031 + idx + 482
                                mem[_6031 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6031 + idx + 486] = 32
                                _8430 = mem[_8126]
                                mem[_6031 + idx + 518] = mem[_8126]
                                s = 0
                                while s < _8430:
                                    mem[s + _6031 + idx + 550] = mem[s + _8126 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8430) > _8430:
                                    mem[_8430 + _6031 + idx + 550] = 0
                                revert with 0, 32, mem[_6031 + idx + 518 len ceil32(_8430) + 32]
                            _6032 = mem[384]
                            s = 0
                            while s < mem[384]:
                                mem[s + idx + 482] = mem[s + 416]
                                s = s + 32
                                continue 
                            if ceil32(mem[384]) <= mem[384]:
                                _8127 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _6032 + idx + 482
                                mem[_6032 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6032 + idx + 486] = 32
                                _8431 = mem[_8127]
                                mem[_6032 + idx + 518] = mem[_8127]
                                s = 0
                                while s < _8431:
                                    mem[s + _6032 + idx + 550] = mem[s + _8127 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8431) > _8431:
                                    mem[_8431 + _6032 + idx + 550] = 0
                                revert with 0, 32, mem[_6032 + idx + 518 len ceil32(_8431) + 32]
                            mem[mem[384] + idx + 482] = 0
                            _8128 = mem[64]
                            mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                            mem[64] = _6032 + idx + 482
                            mem[_6032 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6032 + idx + 486] = 32
                            _8432 = mem[_8128]
                            mem[_6032 + idx + 518] = mem[_8128]
                            s = 0
                            while s < _8432:
                                mem[s + _6032 + idx + 550] = mem[s + _8128 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8432) > _8432:
                                mem[_8432 + _6032 + idx + 550] = 0
                            revert with 0, 32, mem[_6032 + idx + 518 len ceil32(_8432) + 32]
                        mem[448] = 0
                        mem[64] = 480
                        s = 0
                        while s < idx:
                            mem[s + 512] = mem[s + 352]
                            s = s + 32
                            continue 
                        mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _6029 = mem[448]
                            s = 0
                            while s < mem[448]:
                                mem[s + idx + 514] = mem[s + 480]
                                s = s + 32
                                continue 
                            if ceil32(mem[448]) <= mem[448]:
                                _8121 = mem[64]
                                mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                                mem[64] = _6029 + idx + 514
                                mem[_6029 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6029 + idx + 518] = 32
                                _8425 = mem[_8121]
                                mem[_6029 + idx + 550] = mem[_8121]
                                s = 0
                                while s < _8425:
                                    mem[s + _6029 + idx + 582] = mem[s + _8121 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8425) > _8425:
                                    mem[_8425 + _6029 + idx + 582] = 0
                                revert with 0, 32, mem[_6029 + idx + 550 len ceil32(_8425) + 32]
                            mem[mem[448] + idx + 514] = 0
                            _8122 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _6029 + idx + 514
                            mem[_6029 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6029 + idx + 518] = 32
                            _8426 = mem[_8122]
                            mem[_6029 + idx + 550] = mem[_8122]
                            s = 0
                            while s < _8426:
                                mem[s + _6029 + idx + 582] = mem[s + _8122 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8426) > _8426:
                                mem[_8426 + _6029 + idx + 582] = 0
                            revert with 0, 32, mem[_6029 + idx + 550 len ceil32(_8426) + 32]
                        _6030 = mem[448]
                        s = 0
                        while s < mem[448]:
                            mem[s + idx + 514] = mem[s + 480]
                            s = s + 32
                            continue 
                        if ceil32(mem[448]) <= mem[448]:
                            _8123 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _6030 + idx + 514
                            mem[_6030 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6030 + idx + 518] = 32
                            _8427 = mem[_8123]
                            mem[_6030 + idx + 550] = mem[_8123]
                            s = 0
                            while s < _8427:
                                mem[s + _6030 + idx + 582] = mem[s + _8123 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8427) > _8427:
                                mem[_8427 + _6030 + idx + 582] = 0
                            revert with 0, 32, mem[_6030 + idx + 550 len ceil32(_8427) + 32]
                        mem[mem[448] + idx + 514] = 0
                        _8124 = mem[64]
                        mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                        mem[64] = _6030 + idx + 514
                        mem[_6030 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6030 + idx + 518] = 32
                        _8428 = mem[_8124]
                        mem[_6030 + idx + 550] = mem[_8124]
                        s = 0
                        while s < _8428:
                            mem[s + _6030 + idx + 582] = mem[s + _8124 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8428) > _8428:
                            mem[_8428 + _6030 + idx + 582] = 0
                        revert with 0, 32, mem[_6030 + idx + 550 len ceil32(_8428) + 32]
                    mem[384] = 0
                    mem[448] = 0x456e646564000000000000000000000000000000000000000000000000000000
                    mem[416] = 32
                    mem[64] = 480
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 447]):
                            idx = idx - 1
                            continue 
                        mem[416] = idx
                        s = 0
                        while s < 0:
                            mem[s + 512] = mem[s + 416]
                            s = s + 32
                            continue 
                        mem[512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 514] = mem[s + 448]
                            s = s + 32
                            continue 
                        mem[480] = idx + 2
                        mem[64] = idx + 514
                        mem[idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 518] = 32
                        mem[idx + 550] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 582] = mem[s + 512]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 584] = 0
                        revert with 0, 32, idx + 2, mem[idx + 582 len floor32(idx + 33)]
                    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
            else:
                if 10^18 * fluidUntil[address(msg.sender)].field_256 / fluidUntil[address(msg.sender)].field_256 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[192] = 26
                mem[224] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[160] = 10^18 * fluidUntil[address(msg.sender)].field_256 / totalSupply
                mem[256] = 0
                mem[288] = 5 * 10^15
                if 5 * 10^15 == 10^18 * fluidUntil[address(msg.sender)].field_256 / totalSupply:
                    mem[352] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[320] = 32
                    mem[64] = 384
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 351]):
                            idx = idx - 1
                            continue 
                        mem[320] = idx
                        mem[416] = 'Not enough stake to propose'
                        mem[384] = 32
                        mem[64] = 448
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 415]):
                                s = s - 1
                                continue 
                            mem[384] = s
                            s = 0
                            while s < idx:
                                mem[s + 480] = mem[s + 352]
                                s = s + 32
                                continue 
                            mem[idx + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _6023 = mem[384]
                                s = 0
                                while s < mem[384]:
                                    mem[s + idx + 482] = mem[s + 416]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[384]) <= mem[384]:
                                    _8109 = mem[64]
                                    mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                    mem[64] = _6023 + idx + 482
                                    mem[_6023 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_6023 + idx + 486] = 32
                                    _8413 = mem[_8109]
                                    mem[_6023 + idx + 518] = mem[_8109]
                                    s = 0
                                    while s < _8413:
                                        mem[s + _6023 + idx + 550] = mem[s + _8109 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_8413) > _8413:
                                        mem[_8413 + _6023 + idx + 550] = 0
                                    revert with 0, 32, mem[_6023 + idx + 518 len ceil32(_8413) + 32]
                                mem[mem[384] + idx + 482] = 0
                                _8110 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _6023 + idx + 482
                                mem[_6023 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6023 + idx + 486] = 32
                                _8414 = mem[_8110]
                                mem[_6023 + idx + 518] = mem[_8110]
                                s = 0
                                while s < _8414:
                                    mem[s + _6023 + idx + 550] = mem[s + _8110 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8414) > _8414:
                                    mem[_8414 + _6023 + idx + 550] = 0
                                revert with 0, 32, mem[_6023 + idx + 518 len ceil32(_8414) + 32]
                            _6024 = mem[384]
                            s = 0
                            while s < mem[384]:
                                mem[s + idx + 482] = mem[s + 416]
                                s = s + 32
                                continue 
                            if ceil32(mem[384]) <= mem[384]:
                                _8111 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _6024 + idx + 482
                                mem[_6024 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6024 + idx + 486] = 32
                                _8415 = mem[_8111]
                                mem[_6024 + idx + 518] = mem[_8111]
                                s = 0
                                while s < _8415:
                                    mem[s + _6024 + idx + 550] = mem[s + _8111 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8415) > _8415:
                                    mem[_8415 + _6024 + idx + 550] = 0
                                revert with 0, 32, mem[_6024 + idx + 518 len ceil32(_8415) + 32]
                            mem[mem[384] + idx + 482] = 0
                            _8112 = mem[64]
                            mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                            mem[64] = _6024 + idx + 482
                            mem[_6024 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6024 + idx + 486] = 32
                            _8416 = mem[_8112]
                            mem[_6024 + idx + 518] = mem[_8112]
                            s = 0
                            while s < _8416:
                                mem[s + _6024 + idx + 550] = mem[s + _8112 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8416) > _8416:
                                mem[_8416 + _6024 + idx + 550] = 0
                            revert with 0, 32, mem[_6024 + idx + 518 len ceil32(_8416) + 32]
                        mem[448] = 0
                        mem[64] = 480
                        s = 0
                        while s < idx:
                            mem[s + 512] = mem[s + 352]
                            s = s + 32
                            continue 
                        mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _6021 = mem[448]
                            s = 0
                            while s < mem[448]:
                                mem[s + idx + 514] = mem[s + 480]
                                s = s + 32
                                continue 
                            if ceil32(mem[448]) <= mem[448]:
                                _8105 = mem[64]
                                mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                                mem[64] = _6021 + idx + 514
                                mem[_6021 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6021 + idx + 518] = 32
                                _8409 = mem[_8105]
                                mem[_6021 + idx + 550] = mem[_8105]
                                s = 0
                                while s < _8409:
                                    mem[s + _6021 + idx + 582] = mem[s + _8105 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8409) > _8409:
                                    mem[_8409 + _6021 + idx + 582] = 0
                                revert with 0, 32, mem[_6021 + idx + 550 len ceil32(_8409) + 32]
                            mem[mem[448] + idx + 514] = 0
                            _8106 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _6021 + idx + 514
                            mem[_6021 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6021 + idx + 518] = 32
                            _8410 = mem[_8106]
                            mem[_6021 + idx + 550] = mem[_8106]
                            s = 0
                            while s < _8410:
                                mem[s + _6021 + idx + 582] = mem[s + _8106 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8410) > _8410:
                                mem[_8410 + _6021 + idx + 582] = 0
                            revert with 0, 32, mem[_6021 + idx + 550 len ceil32(_8410) + 32]
                        _6022 = mem[448]
                        s = 0
                        while s < mem[448]:
                            mem[s + idx + 514] = mem[s + 480]
                            s = s + 32
                            continue 
                        if ceil32(mem[448]) <= mem[448]:
                            _8107 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _6022 + idx + 514
                            mem[_6022 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6022 + idx + 518] = 32
                            _8411 = mem[_8107]
                            mem[_6022 + idx + 550] = mem[_8107]
                            s = 0
                            while s < _8411:
                                mem[s + _6022 + idx + 582] = mem[s + _8107 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8411) > _8411:
                                mem[_8411 + _6022 + idx + 582] = 0
                            revert with 0, 32, mem[_6022 + idx + 550 len ceil32(_8411) + 32]
                        mem[mem[448] + idx + 514] = 0
                        _8108 = mem[64]
                        mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                        mem[64] = _6022 + idx + 514
                        mem[_6022 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6022 + idx + 518] = 32
                        _8412 = mem[_8108]
                        mem[_6022 + idx + 550] = mem[_8108]
                        s = 0
                        while s < _8412:
                            mem[s + _6022 + idx + 582] = mem[s + _8108 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8412) > _8412:
                            mem[_8412 + _6022 + idx + 582] = 0
                        revert with 0, 32, mem[_6022 + idx + 550 len ceil32(_8412) + 32]
                    mem[384] = 0
                    mem[448] = 'Not enough stake to propose'
                    mem[416] = 32
                    mem[64] = 480
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 447]):
                            idx = idx - 1
                            continue 
                        mem[416] = idx
                        s = 0
                        while s < 0:
                            mem[s + 512] = mem[s + 416]
                            s = s + 32
                            continue 
                        mem[512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 514] = mem[s + 448]
                            s = s + 32
                            continue 
                        mem[480] = idx + 2
                        mem[64] = idx + 514
                        mem[idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 518] = 32
                        mem[idx + 550] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 582] = mem[s + 512]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 584] = 0
                        revert with 0, 32, idx + 2, mem[idx + 582 len floor32(idx + 33)]
                    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
                if 10^18 * fluidUntil[address(msg.sender)].field_256 / totalSupply <= 5 * 10^15:
                    mem[352] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[320] = 32
                    mem[64] = 384
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 351]):
                            idx = idx - 1
                            continue 
                        mem[320] = idx
                        mem[416] = 'Not enough stake to propose'
                        mem[384] = 32
                        mem[64] = 448
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 415]):
                                s = s - 1
                                continue 
                            mem[384] = s
                            s = 0
                            while s < idx:
                                mem[s + 480] = mem[s + 352]
                                s = s + 32
                                continue 
                            mem[idx + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _6015 = mem[384]
                                s = 0
                                while s < mem[384]:
                                    mem[s + idx + 482] = mem[s + 416]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[384]) <= mem[384]:
                                    _8093 = mem[64]
                                    mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                    mem[64] = _6015 + idx + 482
                                    mem[_6015 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_6015 + idx + 486] = 32
                                    _8397 = mem[_8093]
                                    mem[_6015 + idx + 518] = mem[_8093]
                                    s = 0
                                    while s < _8397:
                                        mem[s + _6015 + idx + 550] = mem[s + _8093 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_8397) > _8397:
                                        mem[_8397 + _6015 + idx + 550] = 0
                                    revert with 0, 32, mem[_6015 + idx + 518 len ceil32(_8397) + 32]
                                mem[mem[384] + idx + 482] = 0
                                _8094 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _6015 + idx + 482
                                mem[_6015 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6015 + idx + 486] = 32
                                _8398 = mem[_8094]
                                mem[_6015 + idx + 518] = mem[_8094]
                                s = 0
                                while s < _8398:
                                    mem[s + _6015 + idx + 550] = mem[s + _8094 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8398) > _8398:
                                    mem[_8398 + _6015 + idx + 550] = 0
                                revert with 0, 32, mem[_6015 + idx + 518 len ceil32(_8398) + 32]
                            _6016 = mem[384]
                            s = 0
                            while s < mem[384]:
                                mem[s + idx + 482] = mem[s + 416]
                                s = s + 32
                                continue 
                            if ceil32(mem[384]) <= mem[384]:
                                _8095 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _6016 + idx + 482
                                mem[_6016 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6016 + idx + 486] = 32
                                _8399 = mem[_8095]
                                mem[_6016 + idx + 518] = mem[_8095]
                                s = 0
                                while s < _8399:
                                    mem[s + _6016 + idx + 550] = mem[s + _8095 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8399) > _8399:
                                    mem[_8399 + _6016 + idx + 550] = 0
                                revert with 0, 32, mem[_6016 + idx + 518 len ceil32(_8399) + 32]
                            mem[mem[384] + idx + 482] = 0
                            _8096 = mem[64]
                            mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                            mem[64] = _6016 + idx + 482
                            mem[_6016 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6016 + idx + 486] = 32
                            _8400 = mem[_8096]
                            mem[_6016 + idx + 518] = mem[_8096]
                            s = 0
                            while s < _8400:
                                mem[s + _6016 + idx + 550] = mem[s + _8096 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8400) > _8400:
                                mem[_8400 + _6016 + idx + 550] = 0
                            revert with 0, 32, mem[_6016 + idx + 518 len ceil32(_8400) + 32]
                        mem[448] = 0
                        mem[64] = 480
                        s = 0
                        while s < idx:
                            mem[s + 512] = mem[s + 352]
                            s = s + 32
                            continue 
                        mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _6013 = mem[448]
                            s = 0
                            while s < mem[448]:
                                mem[s + idx + 514] = mem[s + 480]
                                s = s + 32
                                continue 
                            if ceil32(mem[448]) <= mem[448]:
                                _8089 = mem[64]
                                mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                                mem[64] = _6013 + idx + 514
                                mem[_6013 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6013 + idx + 518] = 32
                                _8393 = mem[_8089]
                                mem[_6013 + idx + 550] = mem[_8089]
                                s = 0
                                while s < _8393:
                                    mem[s + _6013 + idx + 582] = mem[s + _8089 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8393) > _8393:
                                    mem[_8393 + _6013 + idx + 582] = 0
                                revert with 0, 32, mem[_6013 + idx + 550 len ceil32(_8393) + 32]
                            mem[mem[448] + idx + 514] = 0
                            _8090 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _6013 + idx + 514
                            mem[_6013 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6013 + idx + 518] = 32
                            _8394 = mem[_8090]
                            mem[_6013 + idx + 550] = mem[_8090]
                            s = 0
                            while s < _8394:
                                mem[s + _6013 + idx + 582] = mem[s + _8090 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8394) > _8394:
                                mem[_8394 + _6013 + idx + 582] = 0
                            revert with 0, 32, mem[_6013 + idx + 550 len ceil32(_8394) + 32]
                        _6014 = mem[448]
                        s = 0
                        while s < mem[448]:
                            mem[s + idx + 514] = mem[s + 480]
                            s = s + 32
                            continue 
                        if ceil32(mem[448]) <= mem[448]:
                            _8091 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _6014 + idx + 514
                            mem[_6014 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6014 + idx + 518] = 32
                            _8395 = mem[_8091]
                            mem[_6014 + idx + 550] = mem[_8091]
                            s = 0
                            while s < _8395:
                                mem[s + _6014 + idx + 582] = mem[s + _8091 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8395) > _8395:
                                mem[_8395 + _6014 + idx + 582] = 0
                            revert with 0, 32, mem[_6014 + idx + 550 len ceil32(_8395) + 32]
                        mem[mem[448] + idx + 514] = 0
                        _8092 = mem[64]
                        mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                        mem[64] = _6014 + idx + 514
                        mem[_6014 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6014 + idx + 518] = 32
                        _8396 = mem[_8092]
                        mem[_6014 + idx + 550] = mem[_8092]
                        s = 0
                        while s < _8396:
                            mem[s + _6014 + idx + 582] = mem[s + _8092 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8396) > _8396:
                            mem[_8396 + _6014 + idx + 582] = 0
                        revert with 0, 32, mem[_6014 + idx + 550 len ceil32(_8396) + 32]
                    mem[384] = 0
                    mem[448] = 'Not enough stake to propose'
                    mem[416] = 32
                    mem[64] = 480
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 447]):
                            idx = idx - 1
                            continue 
                        mem[416] = idx
                        s = 0
                        while s < 0:
                            mem[s + 512] = mem[s + 416]
                            s = s + 32
                            continue 
                        mem[512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 514] = mem[s + 448]
                            s = s + 32
                            continue 
                        mem[480] = idx + 2
                        mem[64] = idx + 514
                        mem[idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 518] = 32
                        mem[idx + 550] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 582] = mem[s + 512]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 584] = 0
                        revert with 0, 32, idx + 2, mem[idx + 582 len floor32(idx + 33)]
                    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
                periodFor[address(arg1)].field_0 = epoch
                periodFor[address(arg1)].field_256 = 6
                emit Proposal(6, arg1, msg.sender, epoch);
                mem[0] = arg1
                mem[32] = 14
                if periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0 < periodFor[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if epoch >= periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0:
                    mem[352] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[320] = 32
                    mem[64] = 384
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 351]):
                            idx = idx - 1
                            continue 
                        mem[320] = idx
                        mem[416] = 0x456e646564000000000000000000000000000000000000000000000000000000
                        mem[384] = 32
                        mem[64] = 448
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 415]):
                                s = s - 1
                                continue 
                            mem[384] = s
                            s = 0
                            while s < idx:
                                mem[s + 480] = mem[s + 352]
                                s = s + 32
                                continue 
                            mem[idx + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _6007 = mem[384]
                                s = 0
                                while s < mem[384]:
                                    mem[s + idx + 482] = mem[s + 416]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[384]) <= mem[384]:
                                    _8077 = mem[64]
                                    mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                    mem[64] = _6007 + idx + 482
                                    mem[_6007 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_6007 + idx + 486] = 32
                                    _8381 = mem[_8077]
                                    mem[_6007 + idx + 518] = mem[_8077]
                                    s = 0
                                    while s < _8381:
                                        mem[s + _6007 + idx + 550] = mem[s + _8077 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_8381) > _8381:
                                        mem[_8381 + _6007 + idx + 550] = 0
                                    revert with 0, 32, mem[_6007 + idx + 518 len ceil32(_8381) + 32]
                                mem[mem[384] + idx + 482] = 0
                                _8078 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _6007 + idx + 482
                                mem[_6007 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6007 + idx + 486] = 32
                                _8382 = mem[_8078]
                                mem[_6007 + idx + 518] = mem[_8078]
                                s = 0
                                while s < _8382:
                                    mem[s + _6007 + idx + 550] = mem[s + _8078 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8382) > _8382:
                                    mem[_8382 + _6007 + idx + 550] = 0
                                revert with 0, 32, mem[_6007 + idx + 518 len ceil32(_8382) + 32]
                            _6008 = mem[384]
                            s = 0
                            while s < mem[384]:
                                mem[s + idx + 482] = mem[s + 416]
                                s = s + 32
                                continue 
                            if ceil32(mem[384]) <= mem[384]:
                                _8079 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _6008 + idx + 482
                                mem[_6008 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6008 + idx + 486] = 32
                                _8383 = mem[_8079]
                                mem[_6008 + idx + 518] = mem[_8079]
                                s = 0
                                while s < _8383:
                                    mem[s + _6008 + idx + 550] = mem[s + _8079 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8383) > _8383:
                                    mem[_8383 + _6008 + idx + 550] = 0
                                revert with 0, 32, mem[_6008 + idx + 518 len ceil32(_8383) + 32]
                            mem[mem[384] + idx + 482] = 0
                            _8080 = mem[64]
                            mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                            mem[64] = _6008 + idx + 482
                            mem[_6008 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6008 + idx + 486] = 32
                            _8384 = mem[_8080]
                            mem[_6008 + idx + 518] = mem[_8080]
                            s = 0
                            while s < _8384:
                                mem[s + _6008 + idx + 550] = mem[s + _8080 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8384) > _8384:
                                mem[_8384 + _6008 + idx + 550] = 0
                            revert with 0, 32, mem[_6008 + idx + 518 len ceil32(_8384) + 32]
                        mem[448] = 0
                        mem[64] = 480
                        s = 0
                        while s < idx:
                            mem[s + 512] = mem[s + 352]
                            s = s + 32
                            continue 
                        mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _6005 = mem[448]
                            s = 0
                            while s < mem[448]:
                                mem[s + idx + 514] = mem[s + 480]
                                s = s + 32
                                continue 
                            if ceil32(mem[448]) <= mem[448]:
                                _8073 = mem[64]
                                mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                                mem[64] = _6005 + idx + 514
                                mem[_6005 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6005 + idx + 518] = 32
                                _8377 = mem[_8073]
                                mem[_6005 + idx + 550] = mem[_8073]
                                s = 0
                                while s < _8377:
                                    mem[s + _6005 + idx + 582] = mem[s + _8073 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8377) > _8377:
                                    mem[_8377 + _6005 + idx + 582] = 0
                                revert with 0, 32, mem[_6005 + idx + 550 len ceil32(_8377) + 32]
                            mem[mem[448] + idx + 514] = 0
                            _8074 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _6005 + idx + 514
                            mem[_6005 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6005 + idx + 518] = 32
                            _8378 = mem[_8074]
                            mem[_6005 + idx + 550] = mem[_8074]
                            s = 0
                            while s < _8378:
                                mem[s + _6005 + idx + 582] = mem[s + _8074 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8378) > _8378:
                                mem[_8378 + _6005 + idx + 582] = 0
                            revert with 0, 32, mem[_6005 + idx + 550 len ceil32(_8378) + 32]
                        _6006 = mem[448]
                        s = 0
                        while s < mem[448]:
                            mem[s + idx + 514] = mem[s + 480]
                            s = s + 32
                            continue 
                        if ceil32(mem[448]) <= mem[448]:
                            _8075 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _6006 + idx + 514
                            mem[_6006 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6006 + idx + 518] = 32
                            _8379 = mem[_8075]
                            mem[_6006 + idx + 550] = mem[_8075]
                            s = 0
                            while s < _8379:
                                mem[s + _6006 + idx + 582] = mem[s + _8075 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8379) > _8379:
                                mem[_8379 + _6006 + idx + 582] = 0
                            revert with 0, 32, mem[_6006 + idx + 550 len ceil32(_8379) + 32]
                        mem[mem[448] + idx + 514] = 0
                        _8076 = mem[64]
                        mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                        mem[64] = _6006 + idx + 514
                        mem[_6006 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6006 + idx + 518] = 32
                        _8380 = mem[_8076]
                        mem[_6006 + idx + 550] = mem[_8076]
                        s = 0
                        while s < _8380:
                            mem[s + _6006 + idx + 582] = mem[s + _8076 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8380) > _8380:
                            mem[_8380 + _6006 + idx + 582] = 0
                        revert with 0, 32, mem[_6006 + idx + 550 len ceil32(_8380) + 32]
                    mem[384] = 0
                    mem[448] = 0x456e646564000000000000000000000000000000000000000000000000000000
                    mem[416] = 32
                    mem[64] = 480
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 447]):
                            idx = idx - 1
                            continue 
                        mem[416] = idx
                        s = 0
                        while s < 0:
                            mem[s + 512] = mem[s + 416]
                            s = s + 32
                            continue 
                        mem[512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 514] = mem[s + 448]
                            s = s + 32
                            continue 
                        mem[480] = idx + 2
                        mem[64] = idx + 514
                        mem[idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 518] = 32
                        mem[idx + 550] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 582] = mem[s + 512]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 584] = 0
                        revert with 0, 32, idx + 2, mem[idx + 582 len floor32(idx + 33)]
                    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
    else:
        if epoch < fluidUntil[address(msg.sender)].field_1024:
            mem[128] = 0x5065726d697373696f6e00000000000000000000000000000000000000000000
            mem[96] = 32
            mem[64] = 160
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 127]):
                    idx = idx - 1
                    continue 
                mem[96] = idx
                mem[192] = 0x4e6f742066726f7a656e206f72206c6f636b6564000000000000000000000000
                mem[160] = 32
                mem[64] = 224
                s = 32
                while s:
                    require s - 1 < 32
                    if not Mask(8, 248, mem[s + 191]):
                        s = s - 1
                        continue 
                    mem[160] = s
                    s = 0
                    while s < idx:
                        mem[s + 256] = mem[s + 128]
                        s = s + 32
                        continue 
                    mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    if ceil32(idx) <= idx:
                        _5991 = mem[160]
                        s = 0
                        while s < mem[160]:
                            mem[s + idx + 258] = mem[s + 192]
                            s = s + 32
                            continue 
                        if ceil32(mem[160]) <= mem[160]:
                            _8045 = mem[64]
                            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                            mem[64] = _5991 + idx + 258
                            mem[_5991 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5991 + idx + 262] = 32
                            _8349 = mem[_8045]
                            mem[_5991 + idx + 294] = mem[_8045]
                            s = 0
                            while s < _8349:
                                mem[s + _5991 + idx + 326] = mem[s + _8045 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8349) > _8349:
                                mem[_8349 + _5991 + idx + 326] = 0
                            revert with 0, 32, mem[_5991 + idx + 294 len ceil32(_8349) + 32]
                        mem[mem[160] + idx + 258] = 0
                        _8046 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _5991 + idx + 258
                        mem[_5991 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5991 + idx + 262] = 32
                        _8350 = mem[_8046]
                        mem[_5991 + idx + 294] = mem[_8046]
                        s = 0
                        while s < _8350:
                            mem[s + _5991 + idx + 326] = mem[s + _8046 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8350) > _8350:
                            mem[_8350 + _5991 + idx + 326] = 0
                        revert with 0, 32, mem[_5991 + idx + 294 len ceil32(_8350) + 32]
                    _5992 = mem[160]
                    s = 0
                    while s < mem[160]:
                        mem[s + idx + 258] = mem[s + 192]
                        s = s + 32
                        continue 
                    if ceil32(mem[160]) <= mem[160]:
                        _8047 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _5992 + idx + 258
                        mem[_5992 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5992 + idx + 262] = 32
                        _8351 = mem[_8047]
                        mem[_5992 + idx + 294] = mem[_8047]
                        s = 0
                        while s < _8351:
                            mem[s + _5992 + idx + 326] = mem[s + _8047 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8351) > _8351:
                            mem[_8351 + _5992 + idx + 326] = 0
                        revert with 0, 32, mem[_5992 + idx + 294 len ceil32(_8351) + 32]
                    mem[mem[160] + idx + 258] = 0
                    _8048 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _5992 + idx + 258
                    mem[_5992 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5992 + idx + 262] = 32
                    _8352 = mem[_8048]
                    mem[_5992 + idx + 294] = mem[_8048]
                    s = 0
                    while s < _8352:
                        mem[s + _5992 + idx + 326] = mem[s + _8048 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_8352) > _8352:
                        mem[_8352 + _5992 + idx + 326] = 0
                    revert with 0, 32, mem[_5992 + idx + 294 len ceil32(_8352) + 32]
                mem[224] = 0
                mem[64] = 256
                s = 0
                while s < idx:
                    mem[s + 288] = mem[s + 128]
                    s = s + 32
                    continue 
                mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                if ceil32(idx) <= idx:
                    _5989 = mem[224]
                    s = 0
                    while s < mem[224]:
                        mem[s + idx + 290] = mem[s + 256]
                        s = s + 32
                        continue 
                    if ceil32(mem[224]) <= mem[224]:
                        _8041 = mem[64]
                        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                        mem[64] = _5989 + idx + 290
                        mem[_5989 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5989 + idx + 294] = 32
                        _8345 = mem[_8041]
                        mem[_5989 + idx + 326] = mem[_8041]
                        s = 0
                        while s < _8345:
                            mem[s + _5989 + idx + 358] = mem[s + _8041 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8345) > _8345:
                            mem[_8345 + _5989 + idx + 358] = 0
                        revert with 0, 32, mem[_5989 + idx + 326 len ceil32(_8345) + 32]
                    mem[mem[224] + idx + 290] = 0
                    _8042 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _5989 + idx + 290
                    mem[_5989 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5989 + idx + 294] = 32
                    _8346 = mem[_8042]
                    mem[_5989 + idx + 326] = mem[_8042]
                    s = 0
                    while s < _8346:
                        mem[s + _5989 + idx + 358] = mem[s + _8042 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_8346) > _8346:
                        mem[_8346 + _5989 + idx + 358] = 0
                    revert with 0, 32, mem[_5989 + idx + 326 len ceil32(_8346) + 32]
                _5990 = mem[224]
                s = 0
                while s < mem[224]:
                    mem[s + idx + 290] = mem[s + 256]
                    s = s + 32
                    continue 
                if ceil32(mem[224]) <= mem[224]:
                    _8043 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _5990 + idx + 290
                    mem[_5990 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5990 + idx + 294] = 32
                    _8347 = mem[_8043]
                    mem[_5990 + idx + 326] = mem[_8043]
                    s = 0
                    while s < _8347:
                        mem[s + _5990 + idx + 358] = mem[s + _8043 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_8347) > _8347:
                        mem[_8347 + _5990 + idx + 358] = 0
                    revert with 0, 32, mem[_5990 + idx + 326 len ceil32(_8347) + 32]
                mem[mem[224] + idx + 290] = 0
                _8044 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _5990 + idx + 290
                mem[_5990 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_5990 + idx + 294] = 32
                _8348 = mem[_8044]
                mem[_5990 + idx + 326] = mem[_8044]
                s = 0
                while s < _8348:
                    mem[s + _5990 + idx + 358] = mem[s + _8044 + 32]
                    s = s + 32
                    continue 
                if ceil32(_8348) > _8348:
                    mem[_8348 + _5990 + idx + 358] = 0
                revert with 0, 32, mem[_5990 + idx + 326 len ceil32(_8348) + 32]
            mem[160] = 0
            mem[224] = 0x4e6f742066726f7a656e206f72206c6f636b6564000000000000000000000000
            mem[192] = 32
            mem[64] = 256
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 223]):
                    idx = idx - 1
                    continue 
                mem[192] = idx
                s = 0
                while s < 0:
                    mem[s + 288] = mem[s + 192]
                    s = s + 32
                    continue 
                mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                s = 0
                while s < idx:
                    mem[s + 290] = mem[s + 224]
                    s = s + 32
                    continue 
                mem[256] = idx + 2
                mem[64] = idx + 290
                mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[idx + 294] = 32
                mem[idx + 326] = idx + 2
                s = 0
                while s < idx + 2:
                    mem[s + idx + 358] = mem[s + 288]
                    s = s + 32
                    continue 
                if floor32(idx + 33) > idx + 2:
                    mem[(2 * idx) + 360] = 0
                revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
            revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
        mem[0] = msg.sender
        mem[32] = 12
        if fluidUntil[address(msg.sender)].field_256 <= 0:
            mem[128] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
            mem[96] = 32
            mem[64] = 160
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 127]):
                    idx = idx - 1
                    continue 
                mem[96] = idx
                mem[192] = 'Must have stake' << 136
                mem[160] = 32
                mem[64] = 224
                s = 32
                while s:
                    require s - 1 < 32
                    if not Mask(8, 248, mem[s + 191]):
                        s = s - 1
                        continue 
                    mem[160] = s
                    s = 0
                    while s < idx:
                        mem[s + 256] = mem[s + 128]
                        s = s + 32
                        continue 
                    mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    if ceil32(idx) <= idx:
                        _5983 = mem[160]
                        s = 0
                        while s < mem[160]:
                            mem[s + idx + 258] = mem[s + 192]
                            s = s + 32
                            continue 
                        if ceil32(mem[160]) <= mem[160]:
                            _8029 = mem[64]
                            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                            mem[64] = _5983 + idx + 258
                            mem[_5983 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5983 + idx + 262] = 32
                            _8333 = mem[_8029]
                            mem[_5983 + idx + 294] = mem[_8029]
                            s = 0
                            while s < _8333:
                                mem[s + _5983 + idx + 326] = mem[s + _8029 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8333) > _8333:
                                mem[_8333 + _5983 + idx + 326] = 0
                            revert with 0, 32, mem[_5983 + idx + 294 len ceil32(_8333) + 32]
                        mem[mem[160] + idx + 258] = 0
                        _8030 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _5983 + idx + 258
                        mem[_5983 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5983 + idx + 262] = 32
                        _8334 = mem[_8030]
                        mem[_5983 + idx + 294] = mem[_8030]
                        s = 0
                        while s < _8334:
                            mem[s + _5983 + idx + 326] = mem[s + _8030 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8334) > _8334:
                            mem[_8334 + _5983 + idx + 326] = 0
                        revert with 0, 32, mem[_5983 + idx + 294 len ceil32(_8334) + 32]
                    _5984 = mem[160]
                    s = 0
                    while s < mem[160]:
                        mem[s + idx + 258] = mem[s + 192]
                        s = s + 32
                        continue 
                    if ceil32(mem[160]) <= mem[160]:
                        _8031 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _5984 + idx + 258
                        mem[_5984 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5984 + idx + 262] = 32
                        _8335 = mem[_8031]
                        mem[_5984 + idx + 294] = mem[_8031]
                        s = 0
                        while s < _8335:
                            mem[s + _5984 + idx + 326] = mem[s + _8031 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8335) > _8335:
                            mem[_8335 + _5984 + idx + 326] = 0
                        revert with 0, 32, mem[_5984 + idx + 294 len ceil32(_8335) + 32]
                    mem[mem[160] + idx + 258] = 0
                    _8032 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _5984 + idx + 258
                    mem[_5984 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5984 + idx + 262] = 32
                    _8336 = mem[_8032]
                    mem[_5984 + idx + 294] = mem[_8032]
                    s = 0
                    while s < _8336:
                        mem[s + _5984 + idx + 326] = mem[s + _8032 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_8336) > _8336:
                        mem[_8336 + _5984 + idx + 326] = 0
                    revert with 0, 32, mem[_5984 + idx + 294 len ceil32(_8336) + 32]
                mem[224] = 0
                mem[64] = 256
                s = 0
                while s < idx:
                    mem[s + 288] = mem[s + 128]
                    s = s + 32
                    continue 
                mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                if ceil32(idx) <= idx:
                    _5981 = mem[224]
                    s = 0
                    while s < mem[224]:
                        mem[s + idx + 290] = mem[s + 256]
                        s = s + 32
                        continue 
                    if ceil32(mem[224]) <= mem[224]:
                        _8025 = mem[64]
                        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                        mem[64] = _5981 + idx + 290
                        mem[_5981 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5981 + idx + 294] = 32
                        _8329 = mem[_8025]
                        mem[_5981 + idx + 326] = mem[_8025]
                        s = 0
                        while s < _8329:
                            mem[s + _5981 + idx + 358] = mem[s + _8025 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8329) > _8329:
                            mem[_8329 + _5981 + idx + 358] = 0
                        revert with 0, 32, mem[_5981 + idx + 326 len ceil32(_8329) + 32]
                    mem[mem[224] + idx + 290] = 0
                    _8026 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _5981 + idx + 290
                    mem[_5981 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5981 + idx + 294] = 32
                    _8330 = mem[_8026]
                    mem[_5981 + idx + 326] = mem[_8026]
                    s = 0
                    while s < _8330:
                        mem[s + _5981 + idx + 358] = mem[s + _8026 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_8330) > _8330:
                        mem[_8330 + _5981 + idx + 358] = 0
                    revert with 0, 32, mem[_5981 + idx + 326 len ceil32(_8330) + 32]
                _5982 = mem[224]
                s = 0
                while s < mem[224]:
                    mem[s + idx + 290] = mem[s + 256]
                    s = s + 32
                    continue 
                if ceil32(mem[224]) <= mem[224]:
                    _8027 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _5982 + idx + 290
                    mem[_5982 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5982 + idx + 294] = 32
                    _8331 = mem[_8027]
                    mem[_5982 + idx + 326] = mem[_8027]
                    s = 0
                    while s < _8331:
                        mem[s + _5982 + idx + 358] = mem[s + _8027 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_8331) > _8331:
                        mem[_8331 + _5982 + idx + 358] = 0
                    revert with 0, 32, mem[_5982 + idx + 326 len ceil32(_8331) + 32]
                mem[mem[224] + idx + 290] = 0
                _8028 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _5982 + idx + 290
                mem[_5982 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_5982 + idx + 294] = 32
                _8332 = mem[_8028]
                mem[_5982 + idx + 326] = mem[_8028]
                s = 0
                while s < _8332:
                    mem[s + _5982 + idx + 358] = mem[s + _8028 + 32]
                    s = s + 32
                    continue 
                if ceil32(_8332) > _8332:
                    mem[_8332 + _5982 + idx + 358] = 0
                revert with 0, 32, mem[_5982 + idx + 326 len ceil32(_8332) + 32]
            mem[160] = 0
            mem[224] = 'Must have stake' << 136
            mem[192] = 32
            mem[64] = 256
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 223]):
                    idx = idx - 1
                    continue 
                mem[192] = idx
                s = 0
                while s < 0:
                    mem[s + 288] = mem[s + 192]
                    s = s + 32
                    continue 
                mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                s = 0
                while s < idx:
                    mem[s + 290] = mem[s + 224]
                    s = s + 32
                    continue 
                mem[256] = idx + 2
                mem[64] = idx + 290
                mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[idx + 294] = 32
                mem[idx + 326] = idx + 2
                s = 0
                while s < idx + 2:
                    mem[s + idx + 358] = mem[s + 288]
                    s = s + 32
                    continue 
                if floor32(idx + 33) > idx + 2:
                    mem[(2 * idx) + 360] = 0
                revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
            revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
        mem[0] = arg1
        mem[32] = 14
        if periodFor[address(arg1)].field_0:
            mem[0] = arg1
            mem[32] = 14
            if periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0 < periodFor[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if epoch >= periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0:
                mem[128] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                mem[96] = 32
                mem[64] = 160
                idx = 32
                while idx:
                    require idx - 1 < 32
                    if not Mask(8, 248, mem[idx + 127]):
                        idx = idx - 1
                        continue 
                    mem[96] = idx
                    mem[192] = 0x456e646564000000000000000000000000000000000000000000000000000000
                    mem[160] = 32
                    mem[64] = 224
                    s = 32
                    while s:
                        require s - 1 < 32
                        if not Mask(8, 248, mem[s + 191]):
                            s = s - 1
                            continue 
                        mem[160] = s
                        s = 0
                        while s < idx:
                            mem[s + 256] = mem[s + 128]
                            s = s + 32
                            continue 
                        mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _5919 = mem[160]
                            s = 0
                            while s < mem[160]:
                                mem[s + idx + 258] = mem[s + 192]
                                s = s + 32
                                continue 
                            if ceil32(mem[160]) <= mem[160]:
                                _7901 = mem[64]
                                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                                mem[64] = _5919 + idx + 258
                                mem[_5919 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5919 + idx + 262] = 32
                                _8205 = mem[_7901]
                                mem[_5919 + idx + 294] = mem[_7901]
                                s = 0
                                while s < _8205:
                                    mem[s + _5919 + idx + 326] = mem[s + _7901 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8205) > _8205:
                                    mem[_8205 + _5919 + idx + 326] = 0
                                revert with 0, 32, mem[_5919 + idx + 294 len ceil32(_8205) + 32]
                            mem[mem[160] + idx + 258] = 0
                            _7902 = mem[64]
                            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                            mem[64] = _5919 + idx + 258
                            mem[_5919 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5919 + idx + 262] = 32
                            _8206 = mem[_7902]
                            mem[_5919 + idx + 294] = mem[_7902]
                            s = 0
                            while s < _8206:
                                mem[s + _5919 + idx + 326] = mem[s + _7902 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8206) > _8206:
                                mem[_8206 + _5919 + idx + 326] = 0
                            revert with 0, 32, mem[_5919 + idx + 294 len ceil32(_8206) + 32]
                        _5920 = mem[160]
                        s = 0
                        while s < mem[160]:
                            mem[s + idx + 258] = mem[s + 192]
                            s = s + 32
                            continue 
                        if ceil32(mem[160]) <= mem[160]:
                            _7903 = mem[64]
                            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                            mem[64] = _5920 + idx + 258
                            mem[_5920 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5920 + idx + 262] = 32
                            _8207 = mem[_7903]
                            mem[_5920 + idx + 294] = mem[_7903]
                            s = 0
                            while s < _8207:
                                mem[s + _5920 + idx + 326] = mem[s + _7903 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8207) > _8207:
                                mem[_8207 + _5920 + idx + 326] = 0
                            revert with 0, 32, mem[_5920 + idx + 294 len ceil32(_8207) + 32]
                        mem[mem[160] + idx + 258] = 0
                        _7904 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _5920 + idx + 258
                        mem[_5920 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5920 + idx + 262] = 32
                        _8208 = mem[_7904]
                        mem[_5920 + idx + 294] = mem[_7904]
                        s = 0
                        while s < _8208:
                            mem[s + _5920 + idx + 326] = mem[s + _7904 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8208) > _8208:
                            mem[_8208 + _5920 + idx + 326] = 0
                        revert with 0, 32, mem[_5920 + idx + 294 len ceil32(_8208) + 32]
                    mem[224] = 0
                    mem[64] = 256
                    s = 0
                    while s < idx:
                        mem[s + 288] = mem[s + 128]
                        s = s + 32
                        continue 
                    mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    if ceil32(idx) <= idx:
                        _5917 = mem[224]
                        s = 0
                        while s < mem[224]:
                            mem[s + idx + 290] = mem[s + 256]
                            s = s + 32
                            continue 
                        if ceil32(mem[224]) <= mem[224]:
                            _7897 = mem[64]
                            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                            mem[64] = _5917 + idx + 290
                            mem[_5917 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5917 + idx + 294] = 32
                            _8201 = mem[_7897]
                            mem[_5917 + idx + 326] = mem[_7897]
                            s = 0
                            while s < _8201:
                                mem[s + _5917 + idx + 358] = mem[s + _7897 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8201) > _8201:
                                mem[_8201 + _5917 + idx + 358] = 0
                            revert with 0, 32, mem[_5917 + idx + 326 len ceil32(_8201) + 32]
                        mem[mem[224] + idx + 290] = 0
                        _7898 = mem[64]
                        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                        mem[64] = _5917 + idx + 290
                        mem[_5917 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5917 + idx + 294] = 32
                        _8202 = mem[_7898]
                        mem[_5917 + idx + 326] = mem[_7898]
                        s = 0
                        while s < _8202:
                            mem[s + _5917 + idx + 358] = mem[s + _7898 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8202) > _8202:
                            mem[_8202 + _5917 + idx + 358] = 0
                        revert with 0, 32, mem[_5917 + idx + 326 len ceil32(_8202) + 32]
                    _5918 = mem[224]
                    s = 0
                    while s < mem[224]:
                        mem[s + idx + 290] = mem[s + 256]
                        s = s + 32
                        continue 
                    if ceil32(mem[224]) <= mem[224]:
                        _7899 = mem[64]
                        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                        mem[64] = _5918 + idx + 290
                        mem[_5918 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5918 + idx + 294] = 32
                        _8203 = mem[_7899]
                        mem[_5918 + idx + 326] = mem[_7899]
                        s = 0
                        while s < _8203:
                            mem[s + _5918 + idx + 358] = mem[s + _7899 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8203) > _8203:
                            mem[_8203 + _5918 + idx + 358] = 0
                        revert with 0, 32, mem[_5918 + idx + 326 len ceil32(_8203) + 32]
                    mem[mem[224] + idx + 290] = 0
                    _7900 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _5918 + idx + 290
                    mem[_5918 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5918 + idx + 294] = 32
                    _8204 = mem[_7900]
                    mem[_5918 + idx + 326] = mem[_7900]
                    s = 0
                    while s < _8204:
                        mem[s + _5918 + idx + 358] = mem[s + _7900 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_8204) > _8204:
                        mem[_8204 + _5918 + idx + 358] = 0
                    revert with 0, 32, mem[_5918 + idx + 326 len ceil32(_8204) + 32]
                mem[160] = 0
                mem[224] = 0x456e646564000000000000000000000000000000000000000000000000000000
                mem[192] = 32
                mem[64] = 256
                idx = 32
                while idx:
                    require idx - 1 < 32
                    if not Mask(8, 248, mem[idx + 223]):
                        idx = idx - 1
                        continue 
                    mem[192] = idx
                    s = 0
                    while s < 0:
                        mem[s + 288] = mem[s + 192]
                        s = s + 32
                        continue 
                    mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    s = 0
                    while s < idx:
                        mem[s + 290] = mem[s + 224]
                        s = s + 32
                        continue 
                    mem[256] = idx + 2
                    mem[64] = idx + 290
                    mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[idx + 294] = 32
                    mem[idx + 326] = idx + 2
                    s = 0
                    while s < idx + 2:
                        mem[s + idx + 358] = mem[s + 288]
                        s = s + 32
                        continue 
                    if floor32(idx + 33) > idx + 2:
                        mem[(2 * idx) + 360] = 0
                    revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
                revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
        else:
            if not totalBonded:
                mem[128] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                mem[96] = 32
                mem[64] = 160
                idx = 32
                while idx:
                    require idx - 1 < 32
                    if not Mask(8, 248, mem[idx + 127]):
                        idx = idx - 1
                        continue 
                    mem[96] = idx
                    mem[192] = 'Not enough stake to propose'
                    mem[160] = 32
                    mem[64] = 224
                    s = 32
                    while s:
                        require s - 1 < 32
                        if not Mask(8, 248, mem[s + 191]):
                            s = s - 1
                            continue 
                        mem[160] = s
                        s = 0
                        while s < idx:
                            mem[s + 256] = mem[s + 128]
                            s = s + 32
                            continue 
                        mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _5975 = mem[160]
                            s = 0
                            while s < mem[160]:
                                mem[s + idx + 258] = mem[s + 192]
                                s = s + 32
                                continue 
                            if ceil32(mem[160]) <= mem[160]:
                                _8013 = mem[64]
                                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                                mem[64] = _5975 + idx + 258
                                mem[_5975 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5975 + idx + 262] = 32
                                _8317 = mem[_8013]
                                mem[_5975 + idx + 294] = mem[_8013]
                                s = 0
                                while s < _8317:
                                    mem[s + _5975 + idx + 326] = mem[s + _8013 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8317) > _8317:
                                    mem[_8317 + _5975 + idx + 326] = 0
                                revert with 0, 32, mem[_5975 + idx + 294 len ceil32(_8317) + 32]
                            mem[mem[160] + idx + 258] = 0
                            _8014 = mem[64]
                            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                            mem[64] = _5975 + idx + 258
                            mem[_5975 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5975 + idx + 262] = 32
                            _8318 = mem[_8014]
                            mem[_5975 + idx + 294] = mem[_8014]
                            s = 0
                            while s < _8318:
                                mem[s + _5975 + idx + 326] = mem[s + _8014 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8318) > _8318:
                                mem[_8318 + _5975 + idx + 326] = 0
                            revert with 0, 32, mem[_5975 + idx + 294 len ceil32(_8318) + 32]
                        _5976 = mem[160]
                        s = 0
                        while s < mem[160]:
                            mem[s + idx + 258] = mem[s + 192]
                            s = s + 32
                            continue 
                        if ceil32(mem[160]) <= mem[160]:
                            _8015 = mem[64]
                            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                            mem[64] = _5976 + idx + 258
                            mem[_5976 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5976 + idx + 262] = 32
                            _8319 = mem[_8015]
                            mem[_5976 + idx + 294] = mem[_8015]
                            s = 0
                            while s < _8319:
                                mem[s + _5976 + idx + 326] = mem[s + _8015 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8319) > _8319:
                                mem[_8319 + _5976 + idx + 326] = 0
                            revert with 0, 32, mem[_5976 + idx + 294 len ceil32(_8319) + 32]
                        mem[mem[160] + idx + 258] = 0
                        _8016 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _5976 + idx + 258
                        mem[_5976 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5976 + idx + 262] = 32
                        _8320 = mem[_8016]
                        mem[_5976 + idx + 294] = mem[_8016]
                        s = 0
                        while s < _8320:
                            mem[s + _5976 + idx + 326] = mem[s + _8016 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8320) > _8320:
                            mem[_8320 + _5976 + idx + 326] = 0
                        revert with 0, 32, mem[_5976 + idx + 294 len ceil32(_8320) + 32]
                    mem[224] = 0
                    mem[64] = 256
                    s = 0
                    while s < idx:
                        mem[s + 288] = mem[s + 128]
                        s = s + 32
                        continue 
                    mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    if ceil32(idx) <= idx:
                        _5973 = mem[224]
                        s = 0
                        while s < mem[224]:
                            mem[s + idx + 290] = mem[s + 256]
                            s = s + 32
                            continue 
                        if ceil32(mem[224]) <= mem[224]:
                            _8009 = mem[64]
                            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                            mem[64] = _5973 + idx + 290
                            mem[_5973 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5973 + idx + 294] = 32
                            _8313 = mem[_8009]
                            mem[_5973 + idx + 326] = mem[_8009]
                            s = 0
                            while s < _8313:
                                mem[s + _5973 + idx + 358] = mem[s + _8009 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8313) > _8313:
                                mem[_8313 + _5973 + idx + 358] = 0
                            revert with 0, 32, mem[_5973 + idx + 326 len ceil32(_8313) + 32]
                        mem[mem[224] + idx + 290] = 0
                        _8010 = mem[64]
                        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                        mem[64] = _5973 + idx + 290
                        mem[_5973 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5973 + idx + 294] = 32
                        _8314 = mem[_8010]
                        mem[_5973 + idx + 326] = mem[_8010]
                        s = 0
                        while s < _8314:
                            mem[s + _5973 + idx + 358] = mem[s + _8010 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8314) > _8314:
                            mem[_8314 + _5973 + idx + 358] = 0
                        revert with 0, 32, mem[_5973 + idx + 326 len ceil32(_8314) + 32]
                    _5974 = mem[224]
                    s = 0
                    while s < mem[224]:
                        mem[s + idx + 290] = mem[s + 256]
                        s = s + 32
                        continue 
                    if ceil32(mem[224]) <= mem[224]:
                        _8011 = mem[64]
                        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                        mem[64] = _5974 + idx + 290
                        mem[_5974 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5974 + idx + 294] = 32
                        _8315 = mem[_8011]
                        mem[_5974 + idx + 326] = mem[_8011]
                        s = 0
                        while s < _8315:
                            mem[s + _5974 + idx + 358] = mem[s + _8011 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8315) > _8315:
                            mem[_8315 + _5974 + idx + 358] = 0
                        revert with 0, 32, mem[_5974 + idx + 326 len ceil32(_8315) + 32]
                    mem[mem[224] + idx + 290] = 0
                    _8012 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _5974 + idx + 290
                    mem[_5974 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5974 + idx + 294] = 32
                    _8316 = mem[_8012]
                    mem[_5974 + idx + 326] = mem[_8012]
                    s = 0
                    while s < _8316:
                        mem[s + _5974 + idx + 358] = mem[s + _8012 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_8316) > _8316:
                        mem[_8316 + _5974 + idx + 358] = 0
                    revert with 0, 32, mem[_5974 + idx + 326 len ceil32(_8316) + 32]
                mem[160] = 0
                mem[224] = 'Not enough stake to propose'
                mem[192] = 32
                mem[64] = 256
                idx = 32
                while idx:
                    require idx - 1 < 32
                    if not Mask(8, 248, mem[idx + 223]):
                        idx = idx - 1
                        continue 
                    mem[192] = idx
                    s = 0
                    while s < 0:
                        mem[s + 288] = mem[s + 192]
                        s = s + 32
                        continue 
                    mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    s = 0
                    while s < idx:
                        mem[s + 290] = mem[s + 224]
                        s = s + 32
                        continue 
                    mem[256] = idx + 2
                    mem[64] = idx + 290
                    mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[idx + 294] = 32
                    mem[idx + 326] = idx + 2
                    s = 0
                    while s < idx + 2:
                        mem[s + idx + 358] = mem[s + 288]
                        s = s + 32
                        continue 
                    if floor32(idx + 33) > idx + 2:
                        mem[(2 * idx) + 360] = 0
                    revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
                revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
            mem[96] = 0
            mem[0] = msg.sender
            mem[32] = 12
            mem[128] = 0
            if not fluidUntil[address(msg.sender)].field_256:
                mem[192] = 26
                mem[224] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[160] = 0 / totalSupply
                mem[256] = 0
                mem[288] = 5 * 10^15
                if 5 * 10^15 == 0 / totalSupply:
                    mem[352] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[320] = 32
                    mem[64] = 384
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 351]):
                            idx = idx - 1
                            continue 
                        mem[320] = idx
                        mem[416] = 'Not enough stake to propose'
                        mem[384] = 32
                        mem[64] = 448
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 415]):
                                s = s - 1
                                continue 
                            mem[384] = s
                            s = 0
                            while s < idx:
                                mem[s + 480] = mem[s + 352]
                                s = s + 32
                                continue 
                            mem[idx + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _5967 = mem[384]
                                s = 0
                                while s < mem[384]:
                                    mem[s + idx + 482] = mem[s + 416]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[384]) <= mem[384]:
                                    _7997 = mem[64]
                                    mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                    mem[64] = _5967 + idx + 482
                                    mem[_5967 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5967 + idx + 486] = 32
                                    _8301 = mem[_7997]
                                    mem[_5967 + idx + 518] = mem[_7997]
                                    s = 0
                                    while s < _8301:
                                        mem[s + _5967 + idx + 550] = mem[s + _7997 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_8301) > _8301:
                                        mem[_8301 + _5967 + idx + 550] = 0
                                    revert with 0, 32, mem[_5967 + idx + 518 len ceil32(_8301) + 32]
                                mem[mem[384] + idx + 482] = 0
                                _7998 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _5967 + idx + 482
                                mem[_5967 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5967 + idx + 486] = 32
                                _8302 = mem[_7998]
                                mem[_5967 + idx + 518] = mem[_7998]
                                s = 0
                                while s < _8302:
                                    mem[s + _5967 + idx + 550] = mem[s + _7998 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8302) > _8302:
                                    mem[_8302 + _5967 + idx + 550] = 0
                                revert with 0, 32, mem[_5967 + idx + 518 len ceil32(_8302) + 32]
                            _5968 = mem[384]
                            s = 0
                            while s < mem[384]:
                                mem[s + idx + 482] = mem[s + 416]
                                s = s + 32
                                continue 
                            if ceil32(mem[384]) <= mem[384]:
                                _7999 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _5968 + idx + 482
                                mem[_5968 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5968 + idx + 486] = 32
                                _8303 = mem[_7999]
                                mem[_5968 + idx + 518] = mem[_7999]
                                s = 0
                                while s < _8303:
                                    mem[s + _5968 + idx + 550] = mem[s + _7999 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8303) > _8303:
                                    mem[_8303 + _5968 + idx + 550] = 0
                                revert with 0, 32, mem[_5968 + idx + 518 len ceil32(_8303) + 32]
                            mem[mem[384] + idx + 482] = 0
                            _8000 = mem[64]
                            mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                            mem[64] = _5968 + idx + 482
                            mem[_5968 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5968 + idx + 486] = 32
                            _8304 = mem[_8000]
                            mem[_5968 + idx + 518] = mem[_8000]
                            s = 0
                            while s < _8304:
                                mem[s + _5968 + idx + 550] = mem[s + _8000 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8304) > _8304:
                                mem[_8304 + _5968 + idx + 550] = 0
                            revert with 0, 32, mem[_5968 + idx + 518 len ceil32(_8304) + 32]
                        mem[448] = 0
                        mem[64] = 480
                        s = 0
                        while s < idx:
                            mem[s + 512] = mem[s + 352]
                            s = s + 32
                            continue 
                        mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _5965 = mem[448]
                            s = 0
                            while s < mem[448]:
                                mem[s + idx + 514] = mem[s + 480]
                                s = s + 32
                                continue 
                            if ceil32(mem[448]) <= mem[448]:
                                _7993 = mem[64]
                                mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                                mem[64] = _5965 + idx + 514
                                mem[_5965 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5965 + idx + 518] = 32
                                _8297 = mem[_7993]
                                mem[_5965 + idx + 550] = mem[_7993]
                                s = 0
                                while s < _8297:
                                    mem[s + _5965 + idx + 582] = mem[s + _7993 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8297) > _8297:
                                    mem[_8297 + _5965 + idx + 582] = 0
                                revert with 0, 32, mem[_5965 + idx + 550 len ceil32(_8297) + 32]
                            mem[mem[448] + idx + 514] = 0
                            _7994 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _5965 + idx + 514
                            mem[_5965 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5965 + idx + 518] = 32
                            _8298 = mem[_7994]
                            mem[_5965 + idx + 550] = mem[_7994]
                            s = 0
                            while s < _8298:
                                mem[s + _5965 + idx + 582] = mem[s + _7994 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8298) > _8298:
                                mem[_8298 + _5965 + idx + 582] = 0
                            revert with 0, 32, mem[_5965 + idx + 550 len ceil32(_8298) + 32]
                        _5966 = mem[448]
                        s = 0
                        while s < mem[448]:
                            mem[s + idx + 514] = mem[s + 480]
                            s = s + 32
                            continue 
                        if ceil32(mem[448]) <= mem[448]:
                            _7995 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _5966 + idx + 514
                            mem[_5966 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5966 + idx + 518] = 32
                            _8299 = mem[_7995]
                            mem[_5966 + idx + 550] = mem[_7995]
                            s = 0
                            while s < _8299:
                                mem[s + _5966 + idx + 582] = mem[s + _7995 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8299) > _8299:
                                mem[_8299 + _5966 + idx + 582] = 0
                            revert with 0, 32, mem[_5966 + idx + 550 len ceil32(_8299) + 32]
                        mem[mem[448] + idx + 514] = 0
                        _7996 = mem[64]
                        mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                        mem[64] = _5966 + idx + 514
                        mem[_5966 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5966 + idx + 518] = 32
                        _8300 = mem[_7996]
                        mem[_5966 + idx + 550] = mem[_7996]
                        s = 0
                        while s < _8300:
                            mem[s + _5966 + idx + 582] = mem[s + _7996 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8300) > _8300:
                            mem[_8300 + _5966 + idx + 582] = 0
                        revert with 0, 32, mem[_5966 + idx + 550 len ceil32(_8300) + 32]
                    mem[384] = 0
                    mem[448] = 'Not enough stake to propose'
                    mem[416] = 32
                    mem[64] = 480
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 447]):
                            idx = idx - 1
                            continue 
                        mem[416] = idx
                        s = 0
                        while s < 0:
                            mem[s + 512] = mem[s + 416]
                            s = s + 32
                            continue 
                        mem[512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 514] = mem[s + 448]
                            s = s + 32
                            continue 
                        mem[480] = idx + 2
                        mem[64] = idx + 514
                        mem[idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 518] = 32
                        mem[idx + 550] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 582] = mem[s + 512]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 584] = 0
                        revert with 0, 32, idx + 2, mem[idx + 582 len floor32(idx + 33)]
                    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
                if 0 / totalSupply <= 5 * 10^15:
                    mem[352] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[320] = 32
                    mem[64] = 384
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 351]):
                            idx = idx - 1
                            continue 
                        mem[320] = idx
                        mem[416] = 'Not enough stake to propose'
                        mem[384] = 32
                        mem[64] = 448
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 415]):
                                s = s - 1
                                continue 
                            mem[384] = s
                            s = 0
                            while s < idx:
                                mem[s + 480] = mem[s + 352]
                                s = s + 32
                                continue 
                            mem[idx + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _5959 = mem[384]
                                s = 0
                                while s < mem[384]:
                                    mem[s + idx + 482] = mem[s + 416]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[384]) <= mem[384]:
                                    _7981 = mem[64]
                                    mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                    mem[64] = _5959 + idx + 482
                                    mem[_5959 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5959 + idx + 486] = 32
                                    _8285 = mem[_7981]
                                    mem[_5959 + idx + 518] = mem[_7981]
                                    s = 0
                                    while s < _8285:
                                        mem[s + _5959 + idx + 550] = mem[s + _7981 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_8285) > _8285:
                                        mem[_8285 + _5959 + idx + 550] = 0
                                    revert with 0, 32, mem[_5959 + idx + 518 len ceil32(_8285) + 32]
                                mem[mem[384] + idx + 482] = 0
                                _7982 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _5959 + idx + 482
                                mem[_5959 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5959 + idx + 486] = 32
                                _8286 = mem[_7982]
                                mem[_5959 + idx + 518] = mem[_7982]
                                s = 0
                                while s < _8286:
                                    mem[s + _5959 + idx + 550] = mem[s + _7982 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8286) > _8286:
                                    mem[_8286 + _5959 + idx + 550] = 0
                                revert with 0, 32, mem[_5959 + idx + 518 len ceil32(_8286) + 32]
                            _5960 = mem[384]
                            s = 0
                            while s < mem[384]:
                                mem[s + idx + 482] = mem[s + 416]
                                s = s + 32
                                continue 
                            if ceil32(mem[384]) <= mem[384]:
                                _7983 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _5960 + idx + 482
                                mem[_5960 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5960 + idx + 486] = 32
                                _8287 = mem[_7983]
                                mem[_5960 + idx + 518] = mem[_7983]
                                s = 0
                                while s < _8287:
                                    mem[s + _5960 + idx + 550] = mem[s + _7983 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8287) > _8287:
                                    mem[_8287 + _5960 + idx + 550] = 0
                                revert with 0, 32, mem[_5960 + idx + 518 len ceil32(_8287) + 32]
                            mem[mem[384] + idx + 482] = 0
                            _7984 = mem[64]
                            mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                            mem[64] = _5960 + idx + 482
                            mem[_5960 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5960 + idx + 486] = 32
                            _8288 = mem[_7984]
                            mem[_5960 + idx + 518] = mem[_7984]
                            s = 0
                            while s < _8288:
                                mem[s + _5960 + idx + 550] = mem[s + _7984 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8288) > _8288:
                                mem[_8288 + _5960 + idx + 550] = 0
                            revert with 0, 32, mem[_5960 + idx + 518 len ceil32(_8288) + 32]
                        mem[448] = 0
                        mem[64] = 480
                        s = 0
                        while s < idx:
                            mem[s + 512] = mem[s + 352]
                            s = s + 32
                            continue 
                        mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _5957 = mem[448]
                            s = 0
                            while s < mem[448]:
                                mem[s + idx + 514] = mem[s + 480]
                                s = s + 32
                                continue 
                            if ceil32(mem[448]) <= mem[448]:
                                _7977 = mem[64]
                                mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                                mem[64] = _5957 + idx + 514
                                mem[_5957 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5957 + idx + 518] = 32
                                _8281 = mem[_7977]
                                mem[_5957 + idx + 550] = mem[_7977]
                                s = 0
                                while s < _8281:
                                    mem[s + _5957 + idx + 582] = mem[s + _7977 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8281) > _8281:
                                    mem[_8281 + _5957 + idx + 582] = 0
                                revert with 0, 32, mem[_5957 + idx + 550 len ceil32(_8281) + 32]
                            mem[mem[448] + idx + 514] = 0
                            _7978 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _5957 + idx + 514
                            mem[_5957 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5957 + idx + 518] = 32
                            _8282 = mem[_7978]
                            mem[_5957 + idx + 550] = mem[_7978]
                            s = 0
                            while s < _8282:
                                mem[s + _5957 + idx + 582] = mem[s + _7978 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8282) > _8282:
                                mem[_8282 + _5957 + idx + 582] = 0
                            revert with 0, 32, mem[_5957 + idx + 550 len ceil32(_8282) + 32]
                        _5958 = mem[448]
                        s = 0
                        while s < mem[448]:
                            mem[s + idx + 514] = mem[s + 480]
                            s = s + 32
                            continue 
                        if ceil32(mem[448]) <= mem[448]:
                            _7979 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _5958 + idx + 514
                            mem[_5958 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5958 + idx + 518] = 32
                            _8283 = mem[_7979]
                            mem[_5958 + idx + 550] = mem[_7979]
                            s = 0
                            while s < _8283:
                                mem[s + _5958 + idx + 582] = mem[s + _7979 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8283) > _8283:
                                mem[_8283 + _5958 + idx + 582] = 0
                            revert with 0, 32, mem[_5958 + idx + 550 len ceil32(_8283) + 32]
                        mem[mem[448] + idx + 514] = 0
                        _7980 = mem[64]
                        mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                        mem[64] = _5958 + idx + 514
                        mem[_5958 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5958 + idx + 518] = 32
                        _8284 = mem[_7980]
                        mem[_5958 + idx + 550] = mem[_7980]
                        s = 0
                        while s < _8284:
                            mem[s + _5958 + idx + 582] = mem[s + _7980 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8284) > _8284:
                            mem[_8284 + _5958 + idx + 582] = 0
                        revert with 0, 32, mem[_5958 + idx + 550 len ceil32(_8284) + 32]
                    mem[384] = 0
                    mem[448] = 'Not enough stake to propose'
                    mem[416] = 32
                    mem[64] = 480
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 447]):
                            idx = idx - 1
                            continue 
                        mem[416] = idx
                        s = 0
                        while s < 0:
                            mem[s + 512] = mem[s + 416]
                            s = s + 32
                            continue 
                        mem[512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 514] = mem[s + 448]
                            s = s + 32
                            continue 
                        mem[480] = idx + 2
                        mem[64] = idx + 514
                        mem[idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 518] = 32
                        mem[idx + 550] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 582] = mem[s + 512]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 584] = 0
                        revert with 0, 32, idx + 2, mem[idx + 582 len floor32(idx + 33)]
                    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
                periodFor[address(arg1)].field_0 = epoch
                periodFor[address(arg1)].field_256 = 6
                emit Proposal(6, arg1, msg.sender, epoch);
                mem[0] = arg1
                mem[32] = 14
                if periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0 < periodFor[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if epoch >= periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0:
                    mem[352] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[320] = 32
                    mem[64] = 384
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 351]):
                            idx = idx - 1
                            continue 
                        mem[320] = idx
                        mem[416] = 0x456e646564000000000000000000000000000000000000000000000000000000
                        mem[384] = 32
                        mem[64] = 448
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 415]):
                                s = s - 1
                                continue 
                            mem[384] = s
                            s = 0
                            while s < idx:
                                mem[s + 480] = mem[s + 352]
                                s = s + 32
                                continue 
                            mem[idx + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _5951 = mem[384]
                                s = 0
                                while s < mem[384]:
                                    mem[s + idx + 482] = mem[s + 416]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[384]) <= mem[384]:
                                    _7965 = mem[64]
                                    mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                    mem[64] = _5951 + idx + 482
                                    mem[_5951 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5951 + idx + 486] = 32
                                    _8269 = mem[_7965]
                                    mem[_5951 + idx + 518] = mem[_7965]
                                    s = 0
                                    while s < _8269:
                                        mem[s + _5951 + idx + 550] = mem[s + _7965 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_8269) > _8269:
                                        mem[_8269 + _5951 + idx + 550] = 0
                                    revert with 0, 32, mem[_5951 + idx + 518 len ceil32(_8269) + 32]
                                mem[mem[384] + idx + 482] = 0
                                _7966 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _5951 + idx + 482
                                mem[_5951 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5951 + idx + 486] = 32
                                _8270 = mem[_7966]
                                mem[_5951 + idx + 518] = mem[_7966]
                                s = 0
                                while s < _8270:
                                    mem[s + _5951 + idx + 550] = mem[s + _7966 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8270) > _8270:
                                    mem[_8270 + _5951 + idx + 550] = 0
                                revert with 0, 32, mem[_5951 + idx + 518 len ceil32(_8270) + 32]
                            _5952 = mem[384]
                            s = 0
                            while s < mem[384]:
                                mem[s + idx + 482] = mem[s + 416]
                                s = s + 32
                                continue 
                            if ceil32(mem[384]) <= mem[384]:
                                _7967 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _5952 + idx + 482
                                mem[_5952 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5952 + idx + 486] = 32
                                _8271 = mem[_7967]
                                mem[_5952 + idx + 518] = mem[_7967]
                                s = 0
                                while s < _8271:
                                    mem[s + _5952 + idx + 550] = mem[s + _7967 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8271) > _8271:
                                    mem[_8271 + _5952 + idx + 550] = 0
                                revert with 0, 32, mem[_5952 + idx + 518 len ceil32(_8271) + 32]
                            mem[mem[384] + idx + 482] = 0
                            _7968 = mem[64]
                            mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                            mem[64] = _5952 + idx + 482
                            mem[_5952 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5952 + idx + 486] = 32
                            _8272 = mem[_7968]
                            mem[_5952 + idx + 518] = mem[_7968]
                            s = 0
                            while s < _8272:
                                mem[s + _5952 + idx + 550] = mem[s + _7968 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8272) > _8272:
                                mem[_8272 + _5952 + idx + 550] = 0
                            revert with 0, 32, mem[_5952 + idx + 518 len ceil32(_8272) + 32]
                        mem[448] = 0
                        mem[64] = 480
                        s = 0
                        while s < idx:
                            mem[s + 512] = mem[s + 352]
                            s = s + 32
                            continue 
                        mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _5949 = mem[448]
                            s = 0
                            while s < mem[448]:
                                mem[s + idx + 514] = mem[s + 480]
                                s = s + 32
                                continue 
                            if ceil32(mem[448]) <= mem[448]:
                                _7961 = mem[64]
                                mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                                mem[64] = _5949 + idx + 514
                                mem[_5949 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5949 + idx + 518] = 32
                                _8265 = mem[_7961]
                                mem[_5949 + idx + 550] = mem[_7961]
                                s = 0
                                while s < _8265:
                                    mem[s + _5949 + idx + 582] = mem[s + _7961 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8265) > _8265:
                                    mem[_8265 + _5949 + idx + 582] = 0
                                revert with 0, 32, mem[_5949 + idx + 550 len ceil32(_8265) + 32]
                            mem[mem[448] + idx + 514] = 0
                            _7962 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _5949 + idx + 514
                            mem[_5949 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5949 + idx + 518] = 32
                            _8266 = mem[_7962]
                            mem[_5949 + idx + 550] = mem[_7962]
                            s = 0
                            while s < _8266:
                                mem[s + _5949 + idx + 582] = mem[s + _7962 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8266) > _8266:
                                mem[_8266 + _5949 + idx + 582] = 0
                            revert with 0, 32, mem[_5949 + idx + 550 len ceil32(_8266) + 32]
                        _5950 = mem[448]
                        s = 0
                        while s < mem[448]:
                            mem[s + idx + 514] = mem[s + 480]
                            s = s + 32
                            continue 
                        if ceil32(mem[448]) <= mem[448]:
                            _7963 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _5950 + idx + 514
                            mem[_5950 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5950 + idx + 518] = 32
                            _8267 = mem[_7963]
                            mem[_5950 + idx + 550] = mem[_7963]
                            s = 0
                            while s < _8267:
                                mem[s + _5950 + idx + 582] = mem[s + _7963 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8267) > _8267:
                                mem[_8267 + _5950 + idx + 582] = 0
                            revert with 0, 32, mem[_5950 + idx + 550 len ceil32(_8267) + 32]
                        mem[mem[448] + idx + 514] = 0
                        _7964 = mem[64]
                        mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                        mem[64] = _5950 + idx + 514
                        mem[_5950 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5950 + idx + 518] = 32
                        _8268 = mem[_7964]
                        mem[_5950 + idx + 550] = mem[_7964]
                        s = 0
                        while s < _8268:
                            mem[s + _5950 + idx + 582] = mem[s + _7964 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8268) > _8268:
                            mem[_8268 + _5950 + idx + 582] = 0
                        revert with 0, 32, mem[_5950 + idx + 550 len ceil32(_8268) + 32]
                    mem[384] = 0
                    mem[448] = 0x456e646564000000000000000000000000000000000000000000000000000000
                    mem[416] = 32
                    mem[64] = 480
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 447]):
                            idx = idx - 1
                            continue 
                        mem[416] = idx
                        s = 0
                        while s < 0:
                            mem[s + 512] = mem[s + 416]
                            s = s + 32
                            continue 
                        mem[512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 514] = mem[s + 448]
                            s = s + 32
                            continue 
                        mem[480] = idx + 2
                        mem[64] = idx + 514
                        mem[idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 518] = 32
                        mem[idx + 550] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 582] = mem[s + 512]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 584] = 0
                        revert with 0, 32, idx + 2, mem[idx + 582 len floor32(idx + 33)]
                    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
            else:
                if 10^18 * fluidUntil[address(msg.sender)].field_256 / fluidUntil[address(msg.sender)].field_256 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[192] = 26
                mem[224] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[160] = 10^18 * fluidUntil[address(msg.sender)].field_256 / totalSupply
                mem[256] = 0
                mem[288] = 5 * 10^15
                if 5 * 10^15 == 10^18 * fluidUntil[address(msg.sender)].field_256 / totalSupply:
                    mem[352] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[320] = 32
                    mem[64] = 384
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 351]):
                            idx = idx - 1
                            continue 
                        mem[320] = idx
                        mem[416] = 'Not enough stake to propose'
                        mem[384] = 32
                        mem[64] = 448
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 415]):
                                s = s - 1
                                continue 
                            mem[384] = s
                            s = 0
                            while s < idx:
                                mem[s + 480] = mem[s + 352]
                                s = s + 32
                                continue 
                            mem[idx + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _5943 = mem[384]
                                s = 0
                                while s < mem[384]:
                                    mem[s + idx + 482] = mem[s + 416]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[384]) <= mem[384]:
                                    _7949 = mem[64]
                                    mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                    mem[64] = _5943 + idx + 482
                                    mem[_5943 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5943 + idx + 486] = 32
                                    _8253 = mem[_7949]
                                    mem[_5943 + idx + 518] = mem[_7949]
                                    s = 0
                                    while s < _8253:
                                        mem[s + _5943 + idx + 550] = mem[s + _7949 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_8253) > _8253:
                                        mem[_8253 + _5943 + idx + 550] = 0
                                    revert with 0, 32, mem[_5943 + idx + 518 len ceil32(_8253) + 32]
                                mem[mem[384] + idx + 482] = 0
                                _7950 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _5943 + idx + 482
                                mem[_5943 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5943 + idx + 486] = 32
                                _8254 = mem[_7950]
                                mem[_5943 + idx + 518] = mem[_7950]
                                s = 0
                                while s < _8254:
                                    mem[s + _5943 + idx + 550] = mem[s + _7950 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8254) > _8254:
                                    mem[_8254 + _5943 + idx + 550] = 0
                                revert with 0, 32, mem[_5943 + idx + 518 len ceil32(_8254) + 32]
                            _5944 = mem[384]
                            s = 0
                            while s < mem[384]:
                                mem[s + idx + 482] = mem[s + 416]
                                s = s + 32
                                continue 
                            if ceil32(mem[384]) <= mem[384]:
                                _7951 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _5944 + idx + 482
                                mem[_5944 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5944 + idx + 486] = 32
                                _8255 = mem[_7951]
                                mem[_5944 + idx + 518] = mem[_7951]
                                s = 0
                                while s < _8255:
                                    mem[s + _5944 + idx + 550] = mem[s + _7951 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8255) > _8255:
                                    mem[_8255 + _5944 + idx + 550] = 0
                                revert with 0, 32, mem[_5944 + idx + 518 len ceil32(_8255) + 32]
                            mem[mem[384] + idx + 482] = 0
                            _7952 = mem[64]
                            mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                            mem[64] = _5944 + idx + 482
                            mem[_5944 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5944 + idx + 486] = 32
                            _8256 = mem[_7952]
                            mem[_5944 + idx + 518] = mem[_7952]
                            s = 0
                            while s < _8256:
                                mem[s + _5944 + idx + 550] = mem[s + _7952 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8256) > _8256:
                                mem[_8256 + _5944 + idx + 550] = 0
                            revert with 0, 32, mem[_5944 + idx + 518 len ceil32(_8256) + 32]
                        mem[448] = 0
                        mem[64] = 480
                        s = 0
                        while s < idx:
                            mem[s + 512] = mem[s + 352]
                            s = s + 32
                            continue 
                        mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _5941 = mem[448]
                            s = 0
                            while s < mem[448]:
                                mem[s + idx + 514] = mem[s + 480]
                                s = s + 32
                                continue 
                            if ceil32(mem[448]) <= mem[448]:
                                _7945 = mem[64]
                                mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                                mem[64] = _5941 + idx + 514
                                mem[_5941 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5941 + idx + 518] = 32
                                _8249 = mem[_7945]
                                mem[_5941 + idx + 550] = mem[_7945]
                                s = 0
                                while s < _8249:
                                    mem[s + _5941 + idx + 582] = mem[s + _7945 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8249) > _8249:
                                    mem[_8249 + _5941 + idx + 582] = 0
                                revert with 0, 32, mem[_5941 + idx + 550 len ceil32(_8249) + 32]
                            mem[mem[448] + idx + 514] = 0
                            _7946 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _5941 + idx + 514
                            mem[_5941 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5941 + idx + 518] = 32
                            _8250 = mem[_7946]
                            mem[_5941 + idx + 550] = mem[_7946]
                            s = 0
                            while s < _8250:
                                mem[s + _5941 + idx + 582] = mem[s + _7946 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8250) > _8250:
                                mem[_8250 + _5941 + idx + 582] = 0
                            revert with 0, 32, mem[_5941 + idx + 550 len ceil32(_8250) + 32]
                        _5942 = mem[448]
                        s = 0
                        while s < mem[448]:
                            mem[s + idx + 514] = mem[s + 480]
                            s = s + 32
                            continue 
                        if ceil32(mem[448]) <= mem[448]:
                            _7947 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _5942 + idx + 514
                            mem[_5942 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5942 + idx + 518] = 32
                            _8251 = mem[_7947]
                            mem[_5942 + idx + 550] = mem[_7947]
                            s = 0
                            while s < _8251:
                                mem[s + _5942 + idx + 582] = mem[s + _7947 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8251) > _8251:
                                mem[_8251 + _5942 + idx + 582] = 0
                            revert with 0, 32, mem[_5942 + idx + 550 len ceil32(_8251) + 32]
                        mem[mem[448] + idx + 514] = 0
                        _7948 = mem[64]
                        mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                        mem[64] = _5942 + idx + 514
                        mem[_5942 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5942 + idx + 518] = 32
                        _8252 = mem[_7948]
                        mem[_5942 + idx + 550] = mem[_7948]
                        s = 0
                        while s < _8252:
                            mem[s + _5942 + idx + 582] = mem[s + _7948 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8252) > _8252:
                            mem[_8252 + _5942 + idx + 582] = 0
                        revert with 0, 32, mem[_5942 + idx + 550 len ceil32(_8252) + 32]
                    mem[384] = 0
                    mem[448] = 'Not enough stake to propose'
                    mem[416] = 32
                    mem[64] = 480
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 447]):
                            idx = idx - 1
                            continue 
                        mem[416] = idx
                        s = 0
                        while s < 0:
                            mem[s + 512] = mem[s + 416]
                            s = s + 32
                            continue 
                        mem[512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 514] = mem[s + 448]
                            s = s + 32
                            continue 
                        mem[480] = idx + 2
                        mem[64] = idx + 514
                        mem[idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 518] = 32
                        mem[idx + 550] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 582] = mem[s + 512]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 584] = 0
                        revert with 0, 32, idx + 2, mem[idx + 582 len floor32(idx + 33)]
                    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
                if 10^18 * fluidUntil[address(msg.sender)].field_256 / totalSupply <= 5 * 10^15:
                    mem[352] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[320] = 32
                    mem[64] = 384
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 351]):
                            idx = idx - 1
                            continue 
                        mem[320] = idx
                        mem[416] = 'Not enough stake to propose'
                        mem[384] = 32
                        mem[64] = 448
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 415]):
                                s = s - 1
                                continue 
                            mem[384] = s
                            s = 0
                            while s < idx:
                                mem[s + 480] = mem[s + 352]
                                s = s + 32
                                continue 
                            mem[idx + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _5935 = mem[384]
                                s = 0
                                while s < mem[384]:
                                    mem[s + idx + 482] = mem[s + 416]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[384]) <= mem[384]:
                                    _7933 = mem[64]
                                    mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                    mem[64] = _5935 + idx + 482
                                    mem[_5935 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5935 + idx + 486] = 32
                                    _8237 = mem[_7933]
                                    mem[_5935 + idx + 518] = mem[_7933]
                                    s = 0
                                    while s < _8237:
                                        mem[s + _5935 + idx + 550] = mem[s + _7933 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_8237) > _8237:
                                        mem[_8237 + _5935 + idx + 550] = 0
                                    revert with 0, 32, mem[_5935 + idx + 518 len ceil32(_8237) + 32]
                                mem[mem[384] + idx + 482] = 0
                                _7934 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _5935 + idx + 482
                                mem[_5935 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5935 + idx + 486] = 32
                                _8238 = mem[_7934]
                                mem[_5935 + idx + 518] = mem[_7934]
                                s = 0
                                while s < _8238:
                                    mem[s + _5935 + idx + 550] = mem[s + _7934 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8238) > _8238:
                                    mem[_8238 + _5935 + idx + 550] = 0
                                revert with 0, 32, mem[_5935 + idx + 518 len ceil32(_8238) + 32]
                            _5936 = mem[384]
                            s = 0
                            while s < mem[384]:
                                mem[s + idx + 482] = mem[s + 416]
                                s = s + 32
                                continue 
                            if ceil32(mem[384]) <= mem[384]:
                                _7935 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _5936 + idx + 482
                                mem[_5936 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5936 + idx + 486] = 32
                                _8239 = mem[_7935]
                                mem[_5936 + idx + 518] = mem[_7935]
                                s = 0
                                while s < _8239:
                                    mem[s + _5936 + idx + 550] = mem[s + _7935 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8239) > _8239:
                                    mem[_8239 + _5936 + idx + 550] = 0
                                revert with 0, 32, mem[_5936 + idx + 518 len ceil32(_8239) + 32]
                            mem[mem[384] + idx + 482] = 0
                            _7936 = mem[64]
                            mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                            mem[64] = _5936 + idx + 482
                            mem[_5936 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5936 + idx + 486] = 32
                            _8240 = mem[_7936]
                            mem[_5936 + idx + 518] = mem[_7936]
                            s = 0
                            while s < _8240:
                                mem[s + _5936 + idx + 550] = mem[s + _7936 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8240) > _8240:
                                mem[_8240 + _5936 + idx + 550] = 0
                            revert with 0, 32, mem[_5936 + idx + 518 len ceil32(_8240) + 32]
                        mem[448] = 0
                        mem[64] = 480
                        s = 0
                        while s < idx:
                            mem[s + 512] = mem[s + 352]
                            s = s + 32
                            continue 
                        mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _5933 = mem[448]
                            s = 0
                            while s < mem[448]:
                                mem[s + idx + 514] = mem[s + 480]
                                s = s + 32
                                continue 
                            if ceil32(mem[448]) <= mem[448]:
                                _7929 = mem[64]
                                mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                                mem[64] = _5933 + idx + 514
                                mem[_5933 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5933 + idx + 518] = 32
                                _8233 = mem[_7929]
                                mem[_5933 + idx + 550] = mem[_7929]
                                s = 0
                                while s < _8233:
                                    mem[s + _5933 + idx + 582] = mem[s + _7929 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8233) > _8233:
                                    mem[_8233 + _5933 + idx + 582] = 0
                                revert with 0, 32, mem[_5933 + idx + 550 len ceil32(_8233) + 32]
                            mem[mem[448] + idx + 514] = 0
                            _7930 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _5933 + idx + 514
                            mem[_5933 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5933 + idx + 518] = 32
                            _8234 = mem[_7930]
                            mem[_5933 + idx + 550] = mem[_7930]
                            s = 0
                            while s < _8234:
                                mem[s + _5933 + idx + 582] = mem[s + _7930 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8234) > _8234:
                                mem[_8234 + _5933 + idx + 582] = 0
                            revert with 0, 32, mem[_5933 + idx + 550 len ceil32(_8234) + 32]
                        _5934 = mem[448]
                        s = 0
                        while s < mem[448]:
                            mem[s + idx + 514] = mem[s + 480]
                            s = s + 32
                            continue 
                        if ceil32(mem[448]) <= mem[448]:
                            _7931 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _5934 + idx + 514
                            mem[_5934 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5934 + idx + 518] = 32
                            _8235 = mem[_7931]
                            mem[_5934 + idx + 550] = mem[_7931]
                            s = 0
                            while s < _8235:
                                mem[s + _5934 + idx + 582] = mem[s + _7931 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8235) > _8235:
                                mem[_8235 + _5934 + idx + 582] = 0
                            revert with 0, 32, mem[_5934 + idx + 550 len ceil32(_8235) + 32]
                        mem[mem[448] + idx + 514] = 0
                        _7932 = mem[64]
                        mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                        mem[64] = _5934 + idx + 514
                        mem[_5934 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5934 + idx + 518] = 32
                        _8236 = mem[_7932]
                        mem[_5934 + idx + 550] = mem[_7932]
                        s = 0
                        while s < _8236:
                            mem[s + _5934 + idx + 582] = mem[s + _7932 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8236) > _8236:
                            mem[_8236 + _5934 + idx + 582] = 0
                        revert with 0, 32, mem[_5934 + idx + 550 len ceil32(_8236) + 32]
                    mem[384] = 0
                    mem[448] = 'Not enough stake to propose'
                    mem[416] = 32
                    mem[64] = 480
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 447]):
                            idx = idx - 1
                            continue 
                        mem[416] = idx
                        s = 0
                        while s < 0:
                            mem[s + 512] = mem[s + 416]
                            s = s + 32
                            continue 
                        mem[512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 514] = mem[s + 448]
                            s = s + 32
                            continue 
                        mem[480] = idx + 2
                        mem[64] = idx + 514
                        mem[idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 518] = 32
                        mem[idx + 550] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 582] = mem[s + 512]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 584] = 0
                        revert with 0, 32, idx + 2, mem[idx + 582 len floor32(idx + 33)]
                    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
                periodFor[address(arg1)].field_0 = epoch
                periodFor[address(arg1)].field_256 = 6
                emit Proposal(6, arg1, msg.sender, epoch);
                mem[0] = arg1
                mem[32] = 14
                if periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0 < periodFor[address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if epoch >= periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0:
                    mem[352] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[320] = 32
                    mem[64] = 384
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 351]):
                            idx = idx - 1
                            continue 
                        mem[320] = idx
                        mem[416] = 0x456e646564000000000000000000000000000000000000000000000000000000
                        mem[384] = 32
                        mem[64] = 448
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 415]):
                                s = s - 1
                                continue 
                            mem[384] = s
                            s = 0
                            while s < idx:
                                mem[s + 480] = mem[s + 352]
                                s = s + 32
                                continue 
                            mem[idx + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _5927 = mem[384]
                                s = 0
                                while s < mem[384]:
                                    mem[s + idx + 482] = mem[s + 416]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[384]) <= mem[384]:
                                    _7917 = mem[64]
                                    mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                    mem[64] = _5927 + idx + 482
                                    mem[_5927 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_5927 + idx + 486] = 32
                                    _8221 = mem[_7917]
                                    mem[_5927 + idx + 518] = mem[_7917]
                                    s = 0
                                    while s < _8221:
                                        mem[s + _5927 + idx + 550] = mem[s + _7917 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_8221) > _8221:
                                        mem[_8221 + _5927 + idx + 550] = 0
                                    revert with 0, 32, mem[_5927 + idx + 518 len ceil32(_8221) + 32]
                                mem[mem[384] + idx + 482] = 0
                                _7918 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _5927 + idx + 482
                                mem[_5927 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5927 + idx + 486] = 32
                                _8222 = mem[_7918]
                                mem[_5927 + idx + 518] = mem[_7918]
                                s = 0
                                while s < _8222:
                                    mem[s + _5927 + idx + 550] = mem[s + _7918 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8222) > _8222:
                                    mem[_8222 + _5927 + idx + 550] = 0
                                revert with 0, 32, mem[_5927 + idx + 518 len ceil32(_8222) + 32]
                            _5928 = mem[384]
                            s = 0
                            while s < mem[384]:
                                mem[s + idx + 482] = mem[s + 416]
                                s = s + 32
                                continue 
                            if ceil32(mem[384]) <= mem[384]:
                                _7919 = mem[64]
                                mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                                mem[64] = _5928 + idx + 482
                                mem[_5928 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5928 + idx + 486] = 32
                                _8223 = mem[_7919]
                                mem[_5928 + idx + 518] = mem[_7919]
                                s = 0
                                while s < _8223:
                                    mem[s + _5928 + idx + 550] = mem[s + _7919 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8223) > _8223:
                                    mem[_8223 + _5928 + idx + 550] = 0
                                revert with 0, 32, mem[_5928 + idx + 518 len ceil32(_8223) + 32]
                            mem[mem[384] + idx + 482] = 0
                            _7920 = mem[64]
                            mem[mem[64]] = mem[384] + idx + -mem[64] + 450
                            mem[64] = _5928 + idx + 482
                            mem[_5928 + idx + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5928 + idx + 486] = 32
                            _8224 = mem[_7920]
                            mem[_5928 + idx + 518] = mem[_7920]
                            s = 0
                            while s < _8224:
                                mem[s + _5928 + idx + 550] = mem[s + _7920 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8224) > _8224:
                                mem[_8224 + _5928 + idx + 550] = 0
                            revert with 0, 32, mem[_5928 + idx + 518 len ceil32(_8224) + 32]
                        mem[448] = 0
                        mem[64] = 480
                        s = 0
                        while s < idx:
                            mem[s + 512] = mem[s + 352]
                            s = s + 32
                            continue 
                        mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _5925 = mem[448]
                            s = 0
                            while s < mem[448]:
                                mem[s + idx + 514] = mem[s + 480]
                                s = s + 32
                                continue 
                            if ceil32(mem[448]) <= mem[448]:
                                _7913 = mem[64]
                                mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                                mem[64] = _5925 + idx + 514
                                mem[_5925 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_5925 + idx + 518] = 32
                                _8217 = mem[_7913]
                                mem[_5925 + idx + 550] = mem[_7913]
                                s = 0
                                while s < _8217:
                                    mem[s + _5925 + idx + 582] = mem[s + _7913 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8217) > _8217:
                                    mem[_8217 + _5925 + idx + 582] = 0
                                revert with 0, 32, mem[_5925 + idx + 550 len ceil32(_8217) + 32]
                            mem[mem[448] + idx + 514] = 0
                            _7914 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _5925 + idx + 514
                            mem[_5925 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5925 + idx + 518] = 32
                            _8218 = mem[_7914]
                            mem[_5925 + idx + 550] = mem[_7914]
                            s = 0
                            while s < _8218:
                                mem[s + _5925 + idx + 582] = mem[s + _7914 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8218) > _8218:
                                mem[_8218 + _5925 + idx + 582] = 0
                            revert with 0, 32, mem[_5925 + idx + 550 len ceil32(_8218) + 32]
                        _5926 = mem[448]
                        s = 0
                        while s < mem[448]:
                            mem[s + idx + 514] = mem[s + 480]
                            s = s + 32
                            continue 
                        if ceil32(mem[448]) <= mem[448]:
                            _7915 = mem[64]
                            mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                            mem[64] = _5926 + idx + 514
                            mem[_5926 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_5926 + idx + 518] = 32
                            _8219 = mem[_7915]
                            mem[_5926 + idx + 550] = mem[_7915]
                            s = 0
                            while s < _8219:
                                mem[s + _5926 + idx + 582] = mem[s + _7915 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_8219) > _8219:
                                mem[_8219 + _5926 + idx + 582] = 0
                            revert with 0, 32, mem[_5926 + idx + 550 len ceil32(_8219) + 32]
                        mem[mem[448] + idx + 514] = 0
                        _7916 = mem[64]
                        mem[mem[64]] = mem[448] + idx + -mem[64] + 482
                        mem[64] = _5926 + idx + 514
                        mem[_5926 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_5926 + idx + 518] = 32
                        _8220 = mem[_7916]
                        mem[_5926 + idx + 550] = mem[_7916]
                        s = 0
                        while s < _8220:
                            mem[s + _5926 + idx + 582] = mem[s + _7916 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_8220) > _8220:
                            mem[_8220 + _5926 + idx + 582] = 0
                        revert with 0, 32, mem[_5926 + idx + 550 len ceil32(_8220) + 32]
                    mem[384] = 0
                    mem[448] = 0x456e646564000000000000000000000000000000000000000000000000000000
                    mem[416] = 32
                    mem[64] = 480
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 447]):
                            idx = idx - 1
                            continue 
                        mem[416] = idx
                        s = 0
                        while s < 0:
                            mem[s + 512] = mem[s + 416]
                            s = s + 32
                            continue 
                        mem[512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 514] = mem[s + 448]
                            s = s + 32
                            continue 
                        mem[480] = idx + 2
                        mem[64] = idx + 514
                        mem[idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 518] = 32
                        mem[idx + 550] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 582] = mem[s + 512]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 584] = 0
                        revert with 0, 32, idx + 2, mem[idx + 582 len floor32(idx + 33)]
                    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
    ('lt', ('stor', ('name', 'epoch', 2)), ('add', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'periodFor', 14)))), ('field', 0, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'periodFor', 14))))))
    require periodFor[address(arg1)][4][address(msg.sender)].field_0 <= 2
    require arg2 <= 2
    if arg2 != periodFor[address(arg1)][4][address(msg.sender)].field_0:
        require periodFor[address(arg1)][4][address(msg.sender)].field_0 <= 2
        if periodFor[address(arg1)][4][address(msg.sender)].field_0 == 2:
            if fluidUntil[address(msg.sender)].field_256 > periodFor[address(arg1)].field_768:
                revert with 0, 'Govern: Insufficient reject', 0
            periodFor[address(arg1)].field_768 -= fluidUntil[address(msg.sender)].field_256
        require periodFor[address(arg1)][4][address(msg.sender)].field_0 <= 2
        if periodFor[address(arg1)][4][address(msg.sender)].field_0 == 1:
            if fluidUntil[address(msg.sender)].field_256 > periodFor[address(arg1)].field_512:
                revert with 0, 'Govern: Insufficient approve', 0
            periodFor[address(arg1)].field_512 -= fluidUntil[address(msg.sender)].field_256
        require arg2 <= 2
        if arg2 == 2:
            if fluidUntil[address(msg.sender)].field_256 + periodFor[address(arg1)].field_768 < periodFor[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            periodFor[address(arg1)].field_768 += fluidUntil[address(msg.sender)].field_256
        require arg2 <= 2
        if arg2 == 1:
            if fluidUntil[address(msg.sender)].field_256 + periodFor[address(arg1)].field_512 < periodFor[address(arg1)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            periodFor[address(arg1)].field_512 += fluidUntil[address(msg.sender)].field_256
        require arg2 <= 2
        periodFor[address(arg1)][4][address(msg.sender)].field_0 = arg2 or Mask(248, 8, periodFor[address(arg1)][4][address(msg.sender)].field_0)
        if periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0 < periodFor[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        if periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0 > fluidUntil[address(msg.sender)].field_1280:
            fluidUntil[address(msg.sender)].field_1280 = periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0
        require arg2 < 3
        emit Vote(arg2, fluidUntil[address(msg.sender)].field_256, msg.sender, arg1);
}

function couponPremium(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x18160ddd with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 0
    mem[ceil32(return_data.size) + 128] = 0
    mem[ceil32(return_data.size) + 160] = 0
    if not totalDebt:
        mem[ceil32(return_data.size) + 224] = 26
        mem[ceil32(return_data.size) + 256] = 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        mem[ceil32(return_data.size) + 192] = 0 / ext_call.return_data[0]
        mem[ceil32(return_data.size) + 288] = 0
        mem[ceil32(return_data.size) + 320] = 0
        mem[ceil32(return_data.size) + 352] = 15 * 10^16
        mem[ceil32(return_data.size) + 384] = 30
        mem[ceil32(return_data.size) + 416] = 'SafeMath: subtraction overflow'
        if arg1 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[ceil32(return_data.size) + 448] = 30
        mem[ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
        if arg1 > totalDebt:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[ceil32(return_data.size) + 512] = 0
        mem[ceil32(return_data.size) + 544] = 0
        if not totalDebt - arg1:
            mem[ceil32(return_data.size) + 608] = 26
            mem[ceil32(return_data.size) + 640] = 'SafeMath: division by zero'
            if not ext_call.return_data[0] - arg1:
                revert with 0, 'SafeMath: division by zero', 0
            mem[ceil32(return_data.size) + 576] = 0 / ext_call.return_data[0] - arg1
            mem[ceil32(return_data.size) + 672] = 0
            if 15 * 10^16 == 0 / ext_call.return_data[0]:
                if 0 / ext_call.return_data[0] - arg1 != 0 / ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] - arg1 > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 / ext_call.return_data[0] > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not -(0 / ext_call.return_data[0]) + 10^18:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (-1 * 10^18 * 0 / ext_call.return_data[0]) + (-1 * 10^18 * 0 / ext_call.return_data[0] - arg1) + (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / -(0 / ext_call.return_data[0]) + 10^18 != -(0 / ext_call.return_data[0] - arg1) + 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (-1 * 10^18 * 0 / ext_call.return_data[0]) + (-1 * 10^18 * 0 / ext_call.return_data[0] - arg1) + (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18:
                        revert with 0, 'SafeMath: division by zero', 0
                    if 10^18 > 1000000000000000000 * 10^18 / (-1 * 10^18 * 0 / ext_call.return_data[0]) + (-1 * 10^18 * 0 / ext_call.return_data[0] - arg1) + (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not (1000000000000000000 * 10^18 / (-1 * 10^18 * 0 / ext_call.return_data[0]) + (-1 * 10^18 * 0 / ext_call.return_data[0] - arg1) + (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18) - 10^18:
                        return 0
                    if (1000000000000000000 * 10^18 / (-1 * 10^18 * 0 / ext_call.return_data[0]) + (-1 * 10^18 * 0 / ext_call.return_data[0] - arg1) + (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18 * arg1) - (10^18 * arg1) / (1000000000000000000 * 10^18 / (-1 * 10^18 * 0 / ext_call.return_data[0]) + (-1 * 10^18 * 0 / ext_call.return_data[0] - arg1) + (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18) - 10^18 != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return ((1000000000000000000 * 10^18 / (-1 * 10^18 * 0 / ext_call.return_data[0]) + (-1 * 10^18 * 0 / ext_call.return_data[0] - arg1) + (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18 * arg1) - (10^18 * arg1) / 10^18)
                mem[ceil32(return_data.size) + 704] = 0
                mem[ceil32(return_data.size) + 736] = 0
                mem[ceil32(return_data.size) + 768] = 10^18
                mem[ceil32(return_data.size) + 800] = 0
                mem[ceil32(return_data.size) + 832] = 10^18
                mem[ceil32(return_data.size) + 864] = 0
                mem[ceil32(return_data.size) + 928] = 30
                mem[ceil32(return_data.size) + 960] = 'SafeMath: subtraction overflow'
                if 0 / ext_call.return_data[0] - arg1 > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[ceil32(return_data.size) + 896] = -(0 / ext_call.return_data[0] - arg1) + 10^18
                mem[ceil32(return_data.size) + 992] = 0
                mem[ceil32(return_data.size) + 1024] = 0
                mem[64] = ceil32(return_data.size) + 1088
                mem[ceil32(return_data.size) + 1056] = -(0 / ext_call.return_data[0] - arg1) + 10^18
                idx = 1
                s = ceil32(return_data.size) + 1056
                while idx < 2:
                    _3558 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3558] = 0
                    _3653 = mem[64]
                    mem[64] = mem[64] + 32
                    _3654 = mem[s]
                    _3655 = mem[ceil32(return_data.size) + 896]
                    if not mem[s]:
                        _4344 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4344] = 26
                        mem[_4344 + 32] = 'SafeMath: division by zero'
                        mem[_3653] = 0
                    else:
                        if mem[ceil32(return_data.size) + 896] * mem[s] / mem[s] != mem[ceil32(return_data.size) + 896]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4409 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4409] = 26
                        mem[_4409 + 32] = 'SafeMath: division by zero'
                        mem[_3653] = _3655 * _3654 / 10^18
                    idx = idx + 1
                    s = _3653
                    continue 
                _3652 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3652] = 0
                _3687 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3687] = 10^18
                _4191 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4191] = 0
                _4292 = mem[64]
                mem[64] = mem[64] + 32
                _4294 = mem[s]
                mem[mem[64] + 32] = 'SafeMath: division by zero'
                if not _4294:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[_4292] = 1000000000000000000 * 10^18 / _4294
                mem[mem[64]] = 0
                if mem[ceil32(return_data.size) + 768] > 1000000000000000000 * 10^18 / _4294:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not (1000000000000000000 * 10^18 / _4294) - mem[ceil32(return_data.size) + 768]:
                    return 0
                if (1000000000000000000 * 10^18 / _4294 * arg1) - (mem[ceil32(return_data.size) + 768] * arg1) / (1000000000000000000 * 10^18 / _4294) - mem[ceil32(return_data.size) + 768] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return ((1000000000000000000 * 10^18 / _4294 * arg1) - (mem[ceil32(return_data.size) + 768] * arg1) / 10^18)
            if 0 / ext_call.return_data[0] <= 15 * 10^16:
                if 0 / ext_call.return_data[0] - arg1 != 0 / ext_call.return_data[0]:
                    if 0 / ext_call.return_data[0] - arg1 > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 / ext_call.return_data[0] > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not -(0 / ext_call.return_data[0]) + 10^18:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (-1 * 10^18 * 0 / ext_call.return_data[0]) + (-1 * 10^18 * 0 / ext_call.return_data[0] - arg1) + (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / -(0 / ext_call.return_data[0]) + 10^18 != -(0 / ext_call.return_data[0] - arg1) + 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (-1 * 10^18 * 0 / ext_call.return_data[0]) + (-1 * 10^18 * 0 / ext_call.return_data[0] - arg1) + (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18:
                        revert with 0, 'SafeMath: division by zero', 0
                    if 10^18 > 1000000000000000000 * 10^18 / (-1 * 10^18 * 0 / ext_call.return_data[0]) + (-1 * 10^18 * 0 / ext_call.return_data[0] - arg1) + (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not (1000000000000000000 * 10^18 / (-1 * 10^18 * 0 / ext_call.return_data[0]) + (-1 * 10^18 * 0 / ext_call.return_data[0] - arg1) + (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18) - 10^18:
                        return 0
                    if (1000000000000000000 * 10^18 / (-1 * 10^18 * 0 / ext_call.return_data[0]) + (-1 * 10^18 * 0 / ext_call.return_data[0] - arg1) + (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18 * arg1) - (10^18 * arg1) / (1000000000000000000 * 10^18 / (-1 * 10^18 * 0 / ext_call.return_data[0]) + (-1 * 10^18 * 0 / ext_call.return_data[0] - arg1) + (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18) - 10^18 != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return ((1000000000000000000 * 10^18 / (-1 * 10^18 * 0 / ext_call.return_data[0]) + (-1 * 10^18 * 0 / ext_call.return_data[0] - arg1) + (0 / ext_call.return_data[0] * 0 / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18 * arg1) - (10^18 * arg1) / 10^18)
                mem[ceil32(return_data.size) + 704] = 0
                mem[ceil32(return_data.size) + 736] = 0
                mem[ceil32(return_data.size) + 768] = 10^18
                mem[ceil32(return_data.size) + 800] = 0
                mem[ceil32(return_data.size) + 832] = 10^18
                mem[ceil32(return_data.size) + 864] = 0
                mem[ceil32(return_data.size) + 928] = 30
                mem[ceil32(return_data.size) + 960] = 'SafeMath: subtraction overflow'
                if 0 / ext_call.return_data[0] - arg1 > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[ceil32(return_data.size) + 896] = -(0 / ext_call.return_data[0] - arg1) + 10^18
                mem[ceil32(return_data.size) + 992] = 0
                mem[ceil32(return_data.size) + 1024] = 0
                mem[64] = ceil32(return_data.size) + 1088
                mem[ceil32(return_data.size) + 1056] = -(0 / ext_call.return_data[0] - arg1) + 10^18
                idx = 1
                s = ceil32(return_data.size) + 1056
                while idx < 2:
                    _3557 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3557] = 0
                    _3649 = mem[64]
                    mem[64] = mem[64] + 32
                    _3650 = mem[s]
                    _3651 = mem[ceil32(return_data.size) + 896]
                    if not mem[s]:
                        _4343 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4343] = 26
                        mem[_4343 + 32] = 'SafeMath: division by zero'
                        mem[_3649] = 0
                    else:
                        if mem[ceil32(return_data.size) + 896] * mem[s] / mem[s] != mem[ceil32(return_data.size) + 896]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4408 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4408] = 26
                        mem[_4408 + 32] = 'SafeMath: division by zero'
                        mem[_3649] = _3651 * _3650 / 10^18
                    idx = idx + 1
                    s = _3649
                    continue 
                _3648 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3648] = 0
                _3686 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3686] = 10^18
                _4190 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4190] = 0
                _4288 = mem[64]
                mem[64] = mem[64] + 32
                _4290 = mem[s]
                mem[mem[64] + 32] = 'SafeMath: division by zero'
                if not _4290:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[_4288] = 1000000000000000000 * 10^18 / _4290
                mem[mem[64]] = 0
                if mem[ceil32(return_data.size) + 768] > 1000000000000000000 * 10^18 / _4290:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not (1000000000000000000 * 10^18 / _4290) - mem[ceil32(return_data.size) + 768]:
                    return 0
                if (1000000000000000000 * 10^18 / _4290 * arg1) - (mem[ceil32(return_data.size) + 768] * arg1) / (1000000000000000000 * 10^18 / _4290) - mem[ceil32(return_data.size) + 768] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return ((1000000000000000000 * 10^18 / _4290 * arg1) - (mem[ceil32(return_data.size) + 768] * arg1) / 10^18)
            mem[ceil32(return_data.size) + 704] = 0
            if 15 * 10^16 == 0 / ext_call.return_data[0] - arg1:
                mem[ceil32(return_data.size) + 736] = 0
                if 0 / ext_call.return_data[0] - arg1 != 15 * 10^16:
                    mem[ceil32(return_data.size) + 768] = 10^18
                    mem[ceil32(return_data.size) + 800] = 0
                    mem[ceil32(return_data.size) + 832] = 10^18
                    mem[ceil32(return_data.size) + 864] = 0
                    mem[ceil32(return_data.size) + 928] = 30
                    mem[ceil32(return_data.size) + 960] = 'SafeMath: subtraction overflow'
                    if 0 / ext_call.return_data[0] - arg1 > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    mem[ceil32(return_data.size) + 896] = -(0 / ext_call.return_data[0] - arg1) + 10^18
                    mem[ceil32(return_data.size) + 992] = 0
                    mem[ceil32(return_data.size) + 1024] = 10^18
                    mem[ceil32(return_data.size) + 1056] = 0
                    mem[ceil32(return_data.size) + 1120] = 30
                    mem[ceil32(return_data.size) + 1152] = 'SafeMath: subtraction overflow'
                    mem[ceil32(return_data.size) + 1088] = 85 * 10^16
                    mem[ceil32(return_data.size) + 1184] = 0
                    if (-85 * 10^16 * 0 / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 85 * 10^16 != -(0 / ext_call.return_data[0] - arg1) + 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[ceil32(return_data.size) + 1248] = 26
                    mem[ceil32(return_data.size) + 1280] = 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 1216] = (-85 * 10^16 * 0 / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18
                    mem[ceil32(return_data.size) + 1312] = 0
                    mem[ceil32(return_data.size) + 1344] = 10^18
                    mem[ceil32(return_data.size) + 1376] = 0
                    mem[ceil32(return_data.size) + 1440] = 26
                    mem[ceil32(return_data.size) + 1472] = 'SafeMath: division by zero'
                    if not (-85 * 10^16 * 0 / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18:
                        revert with 0, 'SafeMath: division by zero', 0
                    mem[ceil32(return_data.size) + 1408] = 1000000000000000000 * 10^18 / (-85 * 10^16 * 0 / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18
                    mem[ceil32(return_data.size) + 1504] = 0
                    mem[ceil32(return_data.size) + 1568] = 30
                    mem[ceil32(return_data.size) + 1600] = 'SafeMath: subtraction overflow'
                    if 10^18 > 1000000000000000000 * 10^18 / (-85 * 10^16 * 0 / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    mem[ceil32(return_data.size) + 1536] = (1000000000000000000 * 10^18 / (-85 * 10^16 * 0 / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18) - 10^18
                    mem[ceil32(return_data.size) + 1632] = 0
                    mem[ceil32(return_data.size) + 1664] = 0
                    mem[ceil32(return_data.size) + 1728] = 30
                    mem[ceil32(return_data.size) + 1760] = 'SafeMath: subtraction overflow'
                    if 0 / ext_call.return_data[0] - arg1 > 15 * 10^16:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    mem[ceil32(return_data.size) + 1696] = -(0 / ext_call.return_data[0] - arg1) + 15 * 10^16
                    mem[ceil32(return_data.size) + 1792] = 0
                    mem[ceil32(return_data.size) + 1824] = 0
                    mem[ceil32(return_data.size) + 1856] = 0
                    mem[ceil32(return_data.size) + 1888] = 10^18
                    mem[ceil32(return_data.size) + 1920] = 0
                    mem[ceil32(return_data.size) + 1952] = 10^18
                    mem[ceil32(return_data.size) + 1984] = 0
                    mem[ceil32(return_data.size) + 2048] = 30
                    mem[ceil32(return_data.size) + 2080] = 'SafeMath: subtraction overflow'
                    mem[ceil32(return_data.size) + 2016] = 85 * 10^16
                    mem[ceil32(return_data.size) + 2112] = 0
                    mem[ceil32(return_data.size) + 2144] = 0
                    mem[64] = ceil32(return_data.size) + 2208
                    mem[ceil32(return_data.size) + 2176] = 85 * 10^16
                    idx = 1
                    s = ceil32(return_data.size) + 2176
                    while idx < 2:
                        _6887 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_6887] = 0
                        _7062 = mem[64]
                        mem[64] = mem[64] + 32
                        _7063 = mem[s]
                        _7064 = mem[ceil32(return_data.size) + 2016]
                        if not mem[s]:
                            _7765 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7765] = 26
                            mem[_7765 + 32] = 'SafeMath: division by zero'
                            mem[_7062] = 0
                        else:
                            if mem[ceil32(return_data.size) + 2016] * mem[s] / mem[s] != mem[ceil32(return_data.size) + 2016]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _7813 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7813] = 26
                            mem[_7813 + 32] = 'SafeMath: division by zero'
                            mem[_7062] = _7064 * _7063 / 10^18
                        idx = idx + 1
                        s = _7062
                        continue 
                    _7061 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_7061] = 0
                    _7127 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_7127] = 10^18
                    _7525 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_7525] = 0
                    _7699 = mem[64]
                    mem[64] = mem[64] + 32
                    _7701 = mem[s]
                    _8005 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8005] = 26
                    mem[_8005 + 32] = 'SafeMath: division by zero'
                    if not _7701:
                        revert with 0, 'SafeMath: division by zero', 0
                    mem[_7699] = 1000000000000000000 * 10^18 / _7701
                    _8467 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_8467] = 0
                    _8701 = mem[64]
                    mem[64] = mem[64] + 32
                    _8702 = mem[ceil32(return_data.size) + 1888]
                    _8815 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8815] = 30
                    mem[_8815 + 32] = 'SafeMath: subtraction overflow'
                    if _8702 > 1000000000000000000 * 10^18 / _7701:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    mem[_8701] = (1000000000000000000 * 10^18 / _7701) - _8702
                    _9301 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_9301] = 0
                    _9565 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_9565] = 0
                    _9805 = mem[64]
                    mem[64] = mem[64] + 32
                    _9806 = mem[ceil32(return_data.size) + 352]
                    _9807 = mem[ceil32(return_data.size) + 192]
                    _9877 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_9877] = 30
                    mem[_9877 + 32] = 'SafeMath: subtraction overflow'
                    if _9806 > _9807:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    mem[_9805] = _9807 - _9806
                    _10483 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_10483] = 0
                    _10633 = mem[64]
                    mem[64] = mem[64] + 32
                    if _9807 - _9806 + mem[ceil32(return_data.size) + 1696] < mem[ceil32(return_data.size) + 1696]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_10633] = _9807 - _9806 + mem[ceil32(return_data.size) + 1696]
                    _11059 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_11059] = 0
                    _11251 = mem[64]
                    mem[64] = mem[64] + 32
                    if not (1000000000000000000 * 10^18 / _7701) - _8702:
                        _11743 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11743] = 26
                        mem[_11743 + 32] = 'SafeMath: division by zero'
                        mem[_11251] = 0
                        _12157 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_12157] = 0
                        _12482 = mem[64]
                        mem[64] = mem[64] + 32
                        _12483 = mem[ceil32(return_data.size) + 1536]
                        _12484 = mem[ceil32(return_data.size) + 1696]
                        if not mem[ceil32(return_data.size) + 1536]:
                            _13028 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13028] = 26
                            mem[_13028 + 32] = 'SafeMath: division by zero'
                            mem[_12482] = 0
                            _13735 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_13735] = 0
                            _14277 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_14277] = 0
                            _15655 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_15655] = 0
                            mem[64] = mem[64] + 32
                            if not mem[_10633]:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not 0 / mem[_10633]:
                                return 0
                            if arg1 * 0 / mem[_10633] / 0 / mem[_10633] != arg1:
                                revert with 0, 'SafeMath: multiplication overflow'
                            return (arg1 * 0 / mem[_10633] / 10^18)
                        if mem[ceil32(return_data.size) + 1696] * mem[ceil32(return_data.size) + 1536] / mem[ceil32(return_data.size) + 1536] != mem[ceil32(return_data.size) + 1696]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _13178 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13178] = 26
                        mem[_13178 + 32] = 'SafeMath: division by zero'
                        mem[_12482] = _12484 * _12483 / 10^18
                        _14276 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_14276] = 0
                        _14813 = mem[64]
                        mem[64] = mem[64] + 32
                        if _12484 * _12483 / 10^18 < _12484 * _12483 / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_14813] = _12484 * _12483 / 10^18
                        _16238 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_16238] = 0
                        mem[64] = mem[64] + 32
                        if not _12484 * _12483 / 10^18:
                            if not mem[_10633]:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not 0 / mem[_10633]:
                                return 0
                            if arg1 * 0 / mem[_10633] / 0 / mem[_10633] != arg1:
                                revert with 0, 'SafeMath: multiplication overflow'
                            return (arg1 * 0 / mem[_10633] / 10^18)
                        if 10^18 * _12484 * _12483 / 10^18 / _12484 * _12483 / 10^18 != 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not mem[_10633]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not 10^18 * _12484 * _12483 / 10^18 / mem[_10633]:
                            return 0
                        if arg1 * 10^18 * _12484 * _12483 / 10^18 / mem[_10633] / 10^18 * _12484 * _12483 / 10^18 / mem[_10633] != arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        return (arg1 * 10^18 * _12484 * _12483 / 10^18 / mem[_10633] / 10^18)
                    if (_9807 * 1000000000000000000 * 10^18 / _7701) - (_9806 * 1000000000000000000 * 10^18 / _7701) - (_9807 * _8702) + (_9806 * _8702) / (1000000000000000000 * 10^18 / _7701) - _8702 != _9807 - _9806:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _11797 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11797] = 26
                    mem[_11797 + 32] = 'SafeMath: division by zero'
                    mem[_11251] = (1000000000000000000 * 10^18 / _7701 * _9807) - (_8702 * _9807) - (1000000000000000000 * 10^18 / _7701 * _9806) + (_8702 * _9806) / 10^18
                    _12481 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_12481] = 0
                    _12649 = mem[64]
                    mem[64] = mem[64] + 32
                    _12650 = mem[ceil32(return_data.size) + 1536]
                    _12651 = mem[ceil32(return_data.size) + 1696]
                    if not mem[ceil32(return_data.size) + 1536]:
                        _13177 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13177] = 26
                        mem[_13177 + 32] = 'SafeMath: division by zero'
                        mem[_12649] = 0
                        _14275 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_14275] = 0
                        _14810 = mem[64]
                        mem[64] = mem[64] + 32
                        if (1000000000000000000 * 10^18 / _7701 * _9807) - (_8702 * _9807) - (1000000000000000000 * 10^18 / _7701 * _9806) + (_8702 * _9806) / 10^18 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_14810] = (1000000000000000000 * 10^18 / _7701 * _9807) - (_8702 * _9807) - (1000000000000000000 * 10^18 / _7701 * _9806) + (_8702 * _9806) / 10^18
                        _16237 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_16237] = 0
                        mem[64] = mem[64] + 32
                        if not (1000000000000000000 * 10^18 / _7701 * _9807) - (_8702 * _9807) - (1000000000000000000 * 10^18 / _7701 * _9806) + (_8702 * _9806) / 10^18:
                            if not mem[_10633]:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not 0 / mem[_10633]:
                                return 0
                            if arg1 * 0 / mem[_10633] / 0 / mem[_10633] != arg1:
                                revert with 0, 'SafeMath: multiplication overflow'
                            return (arg1 * 0 / mem[_10633] / 10^18)
                        if 10^18 * (1000000000000000000 * 10^18 / _7701 * _9807) - (_8702 * _9807) - (1000000000000000000 * 10^18 / _7701 * _9806) + (_8702 * _9806) / 10^18 / (1000000000000000000 * 10^18 / _7701 * _9807) - (_8702 * _9807) - (1000000000000000000 * 10^18 / _7701 * _9806) + (_8702 * _9806) / 10^18 != 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not mem[_10633]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not 10^18 * (1000000000000000000 * 10^18 / _7701 * _9807) - (_8702 * _9807) - (1000000000000000000 * 10^18 / _7701 * _9806) + (_8702 * _9806) / 10^18 / mem[_10633]:
                            return 0
                        if arg1 * 10^18 * (1000000000000000000 * 10^18 / _7701 * _9807) - (_8702 * _9807) - (1000000000000000000 * 10^18 / _7701 * _9806) + (_8702 * _9806) / 10^18 / mem[_10633] / 10^18 * (1000000000000000000 * 10^18 / _7701 * _9807) - (_8702 * _9807) - (1000000000000000000 * 10^18 / _7701 * _9806) + (_8702 * _9806) / 10^18 / mem[_10633] != arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        return (arg1 * 10^18 * (1000000000000000000 * 10^18 / _7701 * _9807) - (_8702 * _9807) - (1000000000000000000 * 10^18 / _7701 * _9806) + (_8702 * _9806) / 10^18 / mem[_10633] / 10^18)
                    if mem[ceil32(return_data.size) + 1696] * mem[ceil32(return_data.size) + 1536] / mem[ceil32(return_data.size) + 1536] != mem[ceil32(return_data.size) + 1696]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _13237 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13237] = 26
                    mem[_13237 + 32] = 'SafeMath: division by zero'
                    mem[_12649] = _12651 * _12650 / 10^18
                    _14809 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_14809] = 0
                    _15127 = mem[64]
                    mem[64] = mem[64] + 32
                    if ((1000000000000000000 * 10^18 / _7701 * _9807) - (_8702 * _9807) - (1000000000000000000 * 10^18 / _7701 * _9806) + (_8702 * _9806) / 10^18) + (_12651 * _12650 / 10^18) < _12651 * _12650 / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_15127] = ((1000000000000000000 * 10^18 / _7701 * _9807) - (_8702 * _9807) - (1000000000000000000 * 10^18 / _7701 * _9806) + (_8702 * _9806) / 10^18) + (_12651 * _12650 / 10^18)
                    _16861 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_16861] = 0
                    mem[64] = mem[64] + 32
                    if not ((1000000000000000000 * 10^18 / _7701 * _9807) - (_8702 * _9807) - (1000000000000000000 * 10^18 / _7701 * _9806) + (_8702 * _9806) / 10^18) + (_12651 * _12650 / 10^18):
                        if not mem[_10633]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not 0 / mem[_10633]:
                            return 0
                        if arg1 * 0 / mem[_10633] / 0 / mem[_10633] != arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        return (arg1 * 0 / mem[_10633] / 10^18)
                    if (10^18 * (1000000000000000000 * 10^18 / _7701 * _9807) - (_8702 * _9807) - (1000000000000000000 * 10^18 / _7701 * _9806) + (_8702 * _9806) / 10^18) + (10^18 * _12651 * _12650 / 10^18) / ((1000000000000000000 * 10^18 / _7701 * _9807) - (_8702 * _9807) - (1000000000000000000 * 10^18 / _7701 * _9806) + (_8702 * _9806) / 10^18) + (_12651 * _12650 / 10^18) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not mem[_10633]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not (10^18 * (1000000000000000000 * 10^18 / _7701 * _9807) - (_8702 * _9807) - (1000000000000000000 * 10^18 / _7701 * _9806) + (_8702 * _9806) / 10^18) + (10^18 * _12651 * _12650 / 10^18) / mem[_10633]:
                        return 0
                    if arg1 * (10^18 * (1000000000000000000 * 10^18 / _7701 * _9807) - (_8702 * _9807) - (1000000000000000000 * 10^18 / _7701 * _9806) + (_8702 * _9806) / 10^18) + (10^18 * _12651 * _12650 / 10^18) / mem[_10633] / (10^18 * (1000000000000000000 * 10^18 / _7701 * _9807) - (_8702 * _9807) - (1000000000000000000 * 10^18 / _7701 * _9806) + (_8702 * _9806) / 10^18) + (10^18 * _12651 * _12650 / 10^18) / mem[_10633] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * (10^18 * (1000000000000000000 * 10^18 / _7701 * _9807) - (_8702 * _9807) - (1000000000000000000 * 10^18 / _7701 * _9806) + (_8702 * _9806) / 10^18) + (10^18 * _12651 * _12650 / 10^18) / mem[_10633] / 10^18)
                mem[ceil32(return_data.size) + 768] = 0
                mem[ceil32(return_data.size) + 800] = 10^18
                mem[ceil32(return_data.size) + 832] = 0
                mem[ceil32(return_data.size) + 864] = 10^18
                mem[ceil32(return_data.size) + 896] = 0
                mem[ceil32(return_data.size) + 960] = 30
                mem[ceil32(return_data.size) + 992] = 'SafeMath: subtraction overflow'
                if 0 / ext_call.return_data[0] - arg1 > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[ceil32(return_data.size) + 928] = -(0 / ext_call.return_data[0] - arg1) + 10^18
                mem[ceil32(return_data.size) + 1024] = 0
                mem[ceil32(return_data.size) + 1056] = 0
                mem[64] = ceil32(return_data.size) + 1120
                mem[ceil32(return_data.size) + 1088] = -(0 / ext_call.return_data[0] - arg1) + 10^18
                idx = 1
                s = ceil32(return_data.size) + 1088
                while idx < 2:
                    _3556 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3556] = 0
                    _3645 = mem[64]
                    mem[64] = mem[64] + 32
                    _3646 = mem[s]
                    _3647 = mem[ceil32(return_data.size) + 928]
                    if not mem[s]:
                        _4342 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4342] = 26
                        mem[_4342 + 32] = 'SafeMath: division by zero'
                        mem[_3645] = 0
                    else:
                        if mem[ceil32(return_data.size) + 928] * mem[s] / mem[s] != mem[ceil32(return_data.size) + 928]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4407 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4407] = 26
                        mem[_4407 + 32] = 'SafeMath: division by zero'
                        mem[_3645] = _3647 * _3646 / 10^18
                    idx = idx + 1
                    s = _3645
                    continue 
                _3644 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3644] = 0
                _3685 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3685] = 10^18
                _4189 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4189] = 0
                _4284 = mem[64]
                mem[64] = mem[64] + 32
                _4286 = mem[s]
                _4604 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4604] = 26
                mem[_4604 + 32] = 'SafeMath: division by zero'
                if not _4286:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[_4284] = 1000000000000000000 * 10^18 / _4286
                _4980 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4980] = 0
                _5088 = mem[64]
                mem[64] = mem[64] + 32
                _5089 = mem[ceil32(return_data.size) + 800]
                _5164 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5164] = 30
                mem[_5164 + 32] = 'SafeMath: subtraction overflow'
                if _5089 > 1000000000000000000 * 10^18 / _4286:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[_5088] = (1000000000000000000 * 10^18 / _4286) - _5089
                _5594 = mem[64]
                mem[64] = mem[64] + 32
                mem[_5594] = 0
                _5758 = mem[64]
                mem[64] = mem[64] + 32
                mem[_5758] = 0
                _5804 = mem[64]
                mem[64] = mem[64] + 32
                _5805 = mem[ceil32(return_data.size) + 576]
                _5806 = mem[ceil32(return_data.size) + 352]
                _5824 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5824] = 30
                mem[_5824 + 32] = 'SafeMath: subtraction overflow'
                if _5805 > _5806:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[_5804] = _5806 - _5805
                _6071 = mem[64]
                mem[64] = mem[64] + 32
                mem[_6071] = 0
                _6109 = mem[64]
                mem[64] = mem[64] + 32
                mem[_6109] = 0
                _6166 = mem[64]
                mem[64] = mem[64] + 32
                mem[_6166] = 0
                _6193 = mem[64]
                mem[64] = mem[64] + 32
                mem[_6193] = 10^18
                _6242 = mem[64]
                mem[64] = mem[64] + 32
                mem[_6242] = 0
                _6271 = mem[64]
                mem[64] = mem[64] + 32
                mem[_6271] = 10^18
                _6352 = mem[64]
                mem[64] = mem[64] + 32
                mem[_6352] = 0
                _6386 = mem[64]
                mem[64] = mem[64] + 32
                _6387 = mem[ceil32(return_data.size) + 352]
                _6397 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6397] = 30
                mem[_6397 + 32] = 'SafeMath: subtraction overflow'
                if _6387 > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[_6386] = -_6387 + 10^18
                _6445 = mem[64]
                mem[64] = mem[64] + 32
                mem[_6445] = 0
                _6482 = mem[64]
                mem[64] = mem[64] + 32
                mem[_6482] = 0
                _6507 = mem[64]
                mem[64] = mem[64] + 32
                mem[_6507] = -_6387 + 10^18
                idx = 1
                s = _6507
                while idx < 2:
                    _6891 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_6891] = 0
                    _7078 = mem[64]
                    mem[64] = mem[64] + 32
                    _7079 = mem[s]
                    _7080 = mem[_6386]
                    if not mem[s]:
                        _7769 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7769] = 26
                        mem[_7769 + 32] = 'SafeMath: division by zero'
                        mem[_7078] = 0
                    else:
                        if mem[_6386] * mem[s] / mem[s] != mem[_6386]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _7817 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7817] = 26
                        mem[_7817 + 32] = 'SafeMath: division by zero'
                        mem[_7078] = _7080 * _7079 / 10^18
                    idx = idx + 1
                    s = _7078
                    continue 
                _7077 = mem[64]
                mem[64] = mem[64] + 32
                mem[_7077] = 0
                _7131 = mem[64]
                mem[64] = mem[64] + 32
                mem[_7131] = 10^18
                _7529 = mem[64]
                mem[64] = mem[64] + 32
                mem[_7529] = 0
                _7715 = mem[64]
                mem[64] = mem[64] + 32
                _7717 = mem[s]
                _8009 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8009] = 26
                mem[_8009 + 32] = 'SafeMath: division by zero'
                if not _7717:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[_7715] = 1000000000000000000 * 10^18 / _7717
                _8483 = mem[64]
                mem[64] = mem[64] + 32
                mem[_8483] = 0
                _8721 = mem[64]
                mem[64] = mem[64] + 32
                _8722 = mem[_6193]
                _8823 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8823] = 30
                mem[_8823 + 32] = 'SafeMath: subtraction overflow'
                if _8722 > 1000000000000000000 * 10^18 / _7717:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[_8721] = (1000000000000000000 * 10^18 / _7717) - _8722
                _9305 = mem[64]
                mem[64] = mem[64] + 32
                mem[_9305] = 0
                _9585 = mem[64]
                mem[64] = mem[64] + 32
                mem[_9585] = 0
                _9825 = mem[64]
                mem[64] = mem[64] + 32
                _9826 = mem[ceil32(return_data.size) + 352]
                _9827 = mem[ceil32(return_data.size) + 192]
                _9881 = mem[64]
                mem[64] = mem[64] + 64
                mem[_9881] = 30
                mem[_9881 + 32] = 'SafeMath: subtraction overflow'
                if _9826 > _9827:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[_9825] = _9827 - _9826
                _10499 = mem[64]
                mem[64] = mem[64] + 32
                mem[_10499] = 0
                _10645 = mem[64]
                mem[64] = mem[64] + 32
                if _9827 - _9826 + mem[_5804] < mem[_5804]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_10645] = _9827 - _9826 + mem[_5804]
                _11075 = mem[64]
                mem[64] = mem[64] + 32
                mem[_11075] = 0
                _11267 = mem[64]
                mem[64] = mem[64] + 32
                if not (1000000000000000000 * 10^18 / _7717) - _8722:
                    _11751 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11751] = 26
                    mem[_11751 + 32] = 'SafeMath: division by zero'
                    mem[_11267] = 0
                    _12177 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_12177] = 0
                    _12510 = mem[64]
                    mem[64] = mem[64] + 32
                    _12511 = mem[_5088]
                    _12512 = mem[_5804]
                    if not mem[_5088]:
                        _13044 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13044] = 26
                        mem[_13044 + 32] = 'SafeMath: division by zero'
                        mem[_12510] = 0
                        _13759 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_13759] = 0
                        _14325 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_14325] = 0
                        _15679 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_15679] = 0
                        mem[64] = mem[64] + 32
                        if not mem[_10645]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not 0 / mem[_10645]:
                            return 0
                        if arg1 * 0 / mem[_10645] / 0 / mem[_10645] != arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        return (arg1 * 0 / mem[_10645] / 10^18)
                    if mem[_5804] * mem[_5088] / mem[_5088] != mem[_5804]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _13190 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13190] = 26
                    mem[_13190 + 32] = 'SafeMath: division by zero'
                    mem[_12510] = _12512 * _12511 / 10^18
                    _14324 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_14324] = 0
                    _14857 = mem[64]
                    mem[64] = mem[64] + 32
                    if _12512 * _12511 / 10^18 < _12512 * _12511 / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_14857] = _12512 * _12511 / 10^18
                    _16290 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_16290] = 0
                    mem[64] = mem[64] + 32
                    if not _12512 * _12511 / 10^18:
                        if not mem[_10645]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not 0 / mem[_10645]:
                            return 0
                        if arg1 * 0 / mem[_10645] / 0 / mem[_10645] != arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        return (arg1 * 0 / mem[_10645] / 10^18)
                    if 10^18 * _12512 * _12511 / 10^18 / _12512 * _12511 / 10^18 != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not mem[_10645]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 10^18 * _12512 * _12511 / 10^18 / mem[_10645]:
                        return 0
                    if arg1 * 10^18 * _12512 * _12511 / 10^18 / mem[_10645] / 10^18 * _12512 * _12511 / 10^18 / mem[_10645] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 10^18 * _12512 * _12511 / 10^18 / mem[_10645] / 10^18)
                if (_9827 * 1000000000000000000 * 10^18 / _7717) - (_9826 * 1000000000000000000 * 10^18 / _7717) - (_9827 * _8722) + (_9826 * _8722) / (1000000000000000000 * 10^18 / _7717) - _8722 != _9827 - _9826:
                    revert with 0, 'SafeMath: multiplication overflow'
                _11801 = mem[64]
                mem[64] = mem[64] + 64
                mem[_11801] = 26
                mem[_11801 + 32] = 'SafeMath: division by zero'
                mem[_11267] = (1000000000000000000 * 10^18 / _7717 * _9827) - (_8722 * _9827) - (1000000000000000000 * 10^18 / _7717 * _9826) + (_8722 * _9826) / 10^18
                _12509 = mem[64]
                mem[64] = mem[64] + 32
                mem[_12509] = 0
                _12661 = mem[64]
                mem[64] = mem[64] + 32
                _12662 = mem[_5088]
                _12663 = mem[_5804]
                if not mem[_5088]:
                    _13189 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13189] = 26
                    mem[_13189 + 32] = 'SafeMath: division by zero'
                    mem[_12661] = 0
                    _14323 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_14323] = 0
                    _14854 = mem[64]
                    mem[64] = mem[64] + 32
                    if (1000000000000000000 * 10^18 / _7717 * _9827) - (_8722 * _9827) - (1000000000000000000 * 10^18 / _7717 * _9826) + (_8722 * _9826) / 10^18 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_14854] = (1000000000000000000 * 10^18 / _7717 * _9827) - (_8722 * _9827) - (1000000000000000000 * 10^18 / _7717 * _9826) + (_8722 * _9826) / 10^18
                    _16289 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_16289] = 0
                    mem[64] = mem[64] + 32
                    if not (1000000000000000000 * 10^18 / _7717 * _9827) - (_8722 * _9827) - (1000000000000000000 * 10^18 / _7717 * _9826) + (_8722 * _9826) / 10^18:
                        if not mem[_10645]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not 0 / mem[_10645]:
                            return 0
                        if arg1 * 0 / mem[_10645] / 0 / mem[_10645] != arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        return (arg1 * 0 / mem[_10645] / 10^18)
                    if 10^18 * (1000000000000000000 * 10^18 / _7717 * _9827) - (_8722 * _9827) - (1000000000000000000 * 10^18 / _7717 * _9826) + (_8722 * _9826) / 10^18 / (1000000000000000000 * 10^18 / _7717 * _9827) - (_8722 * _9827) - (1000000000000000000 * 10^18 / _7717 * _9826) + (_8722 * _9826) / 10^18 != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not mem[_10645]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 10^18 * (1000000000000000000 * 10^18 / _7717 * _9827) - (_8722 * _9827) - (1000000000000000000 * 10^18 / _7717 * _9826) + (_8722 * _9826) / 10^18 / mem[_10645]:
                        return 0
                    if arg1 * 10^18 * (1000000000000000000 * 10^18 / _7717 * _9827) - (_8722 * _9827) - (1000000000000000000 * 10^18 / _7717 * _9826) + (_8722 * _9826) / 10^18 / mem[_10645] / 10^18 * (1000000000000000000 * 10^18 / _7717 * _9827) - (_8722 * _9827) - (1000000000000000000 * 10^18 / _7717 * _9826) + (_8722 * _9826) / 10^18 / mem[_10645] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 10^18 * (1000000000000000000 * 10^18 / _7717 * _9827) - (_8722 * _9827) - (1000000000000000000 * 10^18 / _7717 * _9826) + (_8722 * _9826) / 10^18 / mem[_10645] / 10^18)
                if mem[_5804] * mem[_5088] / mem[_5088] != mem[_5804]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _13241 = mem[64]
                mem[64] = mem[64] + 64
                mem[_13241] = 26
                mem[_13241 + 32] = 'SafeMath: division by zero'
                mem[_12661] = _12663 * _12662 / 10^18
                _14853 = mem[64]
                mem[64] = mem[64] + 32
                mem[_14853] = 0
                _15151 = mem[64]
                mem[64] = mem[64] + 32
                if ((1000000000000000000 * 10^18 / _7717 * _9827) - (_8722 * _9827) - (1000000000000000000 * 10^18 / _7717 * _9826) + (_8722 * _9826) / 10^18) + (_12663 * _12662 / 10^18) < _12663 * _12662 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_15151] = ((1000000000000000000 * 10^18 / _7717 * _9827) - (_8722 * _9827) - (1000000000000000000 * 10^18 / _7717 * _9826) + (_8722 * _9826) / 10^18) + (_12663 * _12662 / 10^18)
                _16913 = mem[64]
                mem[64] = mem[64] + 32
                mem[_16913] = 0
                mem[64] = mem[64] + 32
                if not ((1000000000000000000 * 10^18 / _7717 * _9827) - (_8722 * _9827) - (1000000000000000000 * 10^18 / _7717 * _9826) + (_8722 * _9826) / 10^18) + (_12663 * _12662 / 10^18):
                    if not mem[_10645]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / mem[_10645]:
                        return 0
                    if arg1 * 0 / mem[_10645] / 0 / mem[_10645] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 0 / mem[_10645] / 10^18)
                if (10^18 * (1000000000000000000 * 10^18 / _7717 * _9827) - (_8722 * _9827) - (1000000000000000000 * 10^18 / _7717 * _9826) + (_8722 * _9826) / 10^18) + (10^18 * _12663 * _12662 / 10^18) / ((1000000000000000000 * 10^18 / _7717 * _9827) - (_8722 * _9827) - (1000000000000000000 * 10^18 / _7717 * _9826) + (_8722 * _9826) / 10^18) + (_12663 * _12662 / 10^18) != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not mem[_10645]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not (10^18 * (1000000000000000000 * 10^18 / _7717 * _9827) - (_8722 * _9827) - (1000000000000000000 * 10^18 / _7717 * _9826) + (_8722 * _9826) / 10^18) + (10^18 * _12663 * _12662 / 10^18) / mem[_10645]:
                    return 0
                if arg1 * (10^18 * (1000000000000000000 * 10^18 / _7717 * _9827) - (_8722 * _9827) - (1000000000000000000 * 10^18 / _7717 * _9826) + (_8722 * _9826) / 10^18) + (10^18 * _12663 * _12662 / 10^18) / mem[_10645] / (10^18 * (1000000000000000000 * 10^18 / _7717 * _9827) - (_8722 * _9827) - (1000000000000000000 * 10^18 / _7717 * _9826) + (_8722 * _9826) / 10^18) + (10^18 * _12663 * _12662 / 10^18) / mem[_10645] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * (10^18 * (1000000000000000000 * 10^18 / _7717 * _9827) - (_8722 * _9827) - (1000000000000000000 * 10^18 / _7717 * _9826) + (_8722 * _9826) / 10^18) + (10^18 * _12663 * _12662 / 10^18) / mem[_10645] / 10^18)
            if 0 / ext_call.return_data[0] - arg1 > 15 * 10^16:
                mem[ceil32(return_data.size) + 736] = 10^18
                mem[ceil32(return_data.size) + 768] = 0
                mem[ceil32(return_data.size) + 800] = 10^18
                mem[ceil32(return_data.size) + 832] = 0
                mem[ceil32(return_data.size) + 896] = 30
                mem[ceil32(return_data.size) + 928] = 'SafeMath: subtraction overflow'
                mem[ceil32(return_data.size) + 864] = 85 * 10^16
                mem[ceil32(return_data.size) + 960] = 0
                mem[ceil32(return_data.size) + 992] = 0
                mem[64] = ceil32(return_data.size) + 1056
                mem[ceil32(return_data.size) + 1024] = 85 * 10^16
                idx = 1
                s = ceil32(return_data.size) + 1024
                while idx < 2:
                    _3550 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_3550] = 0
                    _3635 = mem[64]
                    mem[64] = mem[64] + 32
                    _3636 = mem[s]
                    _3637 = mem[ceil32(return_data.size) + 864]
                    if not mem[s]:
                        _4327 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4327] = 26
                        mem[_4327 + 32] = 'SafeMath: division by zero'
                        mem[_3635] = 0
                    else:
                        if mem[ceil32(return_data.size) + 864] * mem[s] / mem[s] != mem[ceil32(return_data.size) + 864]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4392 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4392] = 26
                        mem[_4392 + 32] = 'SafeMath: division by zero'
                        mem[_3635] = _3637 * _3636 / 10^18
                    idx = idx + 1
                    s = _3635
                    continue 
                _3634 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3634] = 0
                _3679 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3679] = 10^18
                _4183 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4183] = 0
                _4270 = mem[64]
                mem[64] = mem[64] + 32
                _4272 = mem[s]
                mem[mem[64] + 32] = 'SafeMath: division by zero'
                if not _4272:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[_4270] = 1000000000000000000 * 10^18 / _4272
                mem[mem[64]] = 0
                if mem[ceil32(return_data.size) + 736] > 1000000000000000000 * 10^18 / _4272:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not (1000000000000000000 * 10^18 / _4272) - mem[ceil32(return_data.size) + 736]:
                    return 0
                if (1000000000000000000 * 10^18 / _4272 * arg1) - (mem[ceil32(return_data.size) + 736] * arg1) / (1000000000000000000 * 10^18 / _4272) - mem[ceil32(return_data.size) + 736] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return ((1000000000000000000 * 10^18 / _4272 * arg1) - (mem[ceil32(return_data.size) + 736] * arg1) / 10^18)
            mem[ceil32(return_data.size) + 736] = 0
            if 0 / ext_call.return_data[0] - arg1 != 15 * 10^16:
                mem[ceil32(return_data.size) + 768] = 10^18
                mem[ceil32(return_data.size) + 800] = 0
                mem[ceil32(return_data.size) + 832] = 10^18
                mem[ceil32(return_data.size) + 864] = 0
                mem[ceil32(return_data.size) + 928] = 30
                mem[ceil32(return_data.size) + 960] = 'SafeMath: subtraction overflow'
                if 0 / ext_call.return_data[0] - arg1 > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[ceil32(return_data.size) + 896] = -(0 / ext_call.return_data[0] - arg1) + 10^18
                mem[ceil32(return_data.size) + 992] = 0
                mem[ceil32(return_data.size) + 1024] = 10^18
                mem[ceil32(return_data.size) + 1056] = 0
                mem[ceil32(return_data.size) + 1120] = 30
                mem[ceil32(return_data.size) + 1152] = 'SafeMath: subtraction overflow'
                mem[ceil32(return_data.size) + 1088] = 85 * 10^16
                mem[ceil32(return_data.size) + 1184] = 0
                if (-85 * 10^16 * 0 / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 85 * 10^16 != -(0 / ext_call.return_data[0] - arg1) + 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[ceil32(return_data.size) + 1248] = 26
                mem[ceil32(return_data.size) + 1280] = 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 1216] = (-85 * 10^16 * 0 / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18
                mem[ceil32(return_data.size) + 1312] = 0
                mem[ceil32(return_data.size) + 1344] = 10^18
                mem[ceil32(return_data.size) + 1376] = 0
                mem[ceil32(return_data.size) + 1440] = 26
                mem[ceil32(return_data.size) + 1472] = 'SafeMath: division by zero'
                if not (-85 * 10^16 * 0 / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[ceil32(return_data.size) + 1408] = 1000000000000000000 * 10^18 / (-85 * 10^16 * 0 / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18
                mem[ceil32(return_data.size) + 1504] = 0
                mem[ceil32(return_data.size) + 1568] = 30
                mem[ceil32(return_data.size) + 1600] = 'SafeMath: subtraction overflow'
                if 10^18 > 1000000000000000000 * 10^18 / (-85 * 10^16 * 0 / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[ceil32(return_data.size) + 1536] = (1000000000000000000 * 10^18 / (-85 * 10^16 * 0 / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18) - 10^18
                mem[ceil32(return_data.size) + 1632] = 0
                mem[ceil32(return_data.size) + 1664] = 0
                mem[ceil32(return_data.size) + 1728] = 30
                mem[ceil32(return_data.size) + 1760] = 'SafeMath: subtraction overflow'
                if 0 / ext_call.return_data[0] - arg1 > 15 * 10^16:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[ceil32(return_data.size) + 1696] = -(0 / ext_call.return_data[0] - arg1) + 15 * 10^16
                mem[ceil32(return_data.size) + 1792] = 0
                mem[ceil32(return_data.size) + 1824] = 0
                mem[ceil32(return_data.size) + 1856] = 0
                mem[ceil32(return_data.size) + 1888] = 10^18
                mem[ceil32(return_data.size) + 1920] = 0
                mem[ceil32(return_data.size) + 1952] = 10^18
                mem[ceil32(return_data.size) + 1984] = 0
                mem[ceil32(return_data.size) + 2048] = 30
                mem[ceil32(return_data.size) + 2080] = 'SafeMath: subtraction overflow'
                mem[ceil32(return_data.size) + 2016] = 85 * 10^16
                mem[ceil32(return_data.size) + 2112] = 0
                mem[ceil32(return_data.size) + 2144] = 0
                mem[64] = ceil32(return_data.size) + 2208
                mem[ceil32(return_data.size) + 2176] = 85 * 10^16
                idx = 1
                s = ceil32(return_data.size) + 2176
                while idx < 2:
                    _6881 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_6881] = 0
                    _7038 = mem[64]
                    mem[64] = mem[64] + 32
                    _7039 = mem[s]
                    _7040 = mem[ceil32(return_data.size) + 2016]
                    if not mem[s]:
                        _7759 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7759] = 26
                        mem[_7759 + 32] = 'SafeMath: division by zero'
                        mem[_7038] = 0
                    else:
                        if mem[ceil32(return_data.size) + 2016] * mem[s] / mem[s] != mem[ceil32(return_data.size) + 2016]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _7807 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7807] = 26
                        mem[_7807 + 32] = 'SafeMath: division by zero'
                        mem[_7038] = _7040 * _7039 / 10^18
                    idx = idx + 1
                    s = _7038
                    continue 
                _7037 = mem[64]
                mem[64] = mem[64] + 32
                mem[_7037] = 0
                _7121 = mem[64]
                mem[64] = mem[64] + 32
                mem[_7121] = 10^18
                _7519 = mem[64]
                mem[64] = mem[64] + 32
                mem[_7519] = 0
                _7675 = mem[64]
                mem[64] = mem[64] + 32
                _7677 = mem[s]
                _7999 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7999] = 26
                mem[_7999 + 32] = 'SafeMath: division by zero'
                if not _7677:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[_7675] = 1000000000000000000 * 10^18 / _7677
                _8443 = mem[64]
                mem[64] = mem[64] + 32
                mem[_8443] = 0
                _8671 = mem[64]
                mem[64] = mem[64] + 32
                _8672 = mem[ceil32(return_data.size) + 1888]
                _8803 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8803] = 30
                mem[_8803 + 32] = 'SafeMath: subtraction overflow'
                if _8672 > 1000000000000000000 * 10^18 / _7677:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[_8671] = (1000000000000000000 * 10^18 / _7677) - _8672
                _9295 = mem[64]
                mem[64] = mem[64] + 32
                mem[_9295] = 0
                _9535 = mem[64]
                mem[64] = mem[64] + 32
                mem[_9535] = 0
                _9775 = mem[64]
                mem[64] = mem[64] + 32
                _9776 = mem[ceil32(return_data.size) + 352]
                _9777 = mem[ceil32(return_data.size) + 192]
                _9871 = mem[64]
                mem[64] = mem[64] + 64
                mem[_9871] = 30
                mem[_9871 + 32] = 'SafeMath: subtraction overflow'
                if _9776 > _9777:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[_9775] = _9777 - _9776
                _10459 = mem[64]
                mem[64] = mem[64] + 32
                mem[_10459] = 0
                _10615 = mem[64]
                mem[64] = mem[64] + 32
                if _9777 - _9776 + mem[ceil32(return_data.size) + 1696] < mem[ceil32(return_data.size) + 1696]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_10615] = _9777 - _9776 + mem[ceil32(return_data.size) + 1696]
                _11035 = mem[64]
                mem[64] = mem[64] + 32
                mem[_11035] = 0
                _11227 = mem[64]
                mem[64] = mem[64] + 32
                if not (1000000000000000000 * 10^18 / _7677) - _8672:
                    _11731 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11731] = 26
                    mem[_11731 + 32] = 'SafeMath: division by zero'
                    mem[_11227] = 0
                    _12127 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_12127] = 0
                    _12440 = mem[64]
                    mem[64] = mem[64] + 32
                    _12441 = mem[ceil32(return_data.size) + 1536]
                    _12442 = mem[ceil32(return_data.size) + 1696]
                    if not mem[ceil32(return_data.size) + 1536]:
                        _13004 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13004] = 26
                        mem[_13004 + 32] = 'SafeMath: division by zero'
                        mem[_12440] = 0
                        _13699 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_13699] = 0
                        _14205 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_14205] = 0
                        _15619 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_15619] = 0
                        mem[64] = mem[64] + 32
                        if not mem[_10615]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not 0 / mem[_10615]:
                            return 0
                        if arg1 * 0 / mem[_10615] / 0 / mem[_10615] != arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        return (arg1 * 0 / mem[_10615] / 10^18)
                    if mem[ceil32(return_data.size) + 1696] * mem[ceil32(return_data.size) + 1536] / mem[ceil32(return_data.size) + 1536] != mem[ceil32(return_data.size) + 1696]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _13160 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13160] = 26
                    mem[_13160 + 32] = 'SafeMath: division by zero'
                    mem[_12440] = _12442 * _12441 / 10^18
                    _14204 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_14204] = 0
                    _14747 = mem[64]
                    mem[64] = mem[64] + 32
                    if _12442 * _12441 / 10^18 < _12442 * _12441 / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_14747] = _12442 * _12441 / 10^18
                    _16160 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_16160] = 0
                    mem[64] = mem[64] + 32
                    if not _12442 * _12441 / 10^18:
                        if not mem[_10615]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not 0 / mem[_10615]:
                            return 0
                        if arg1 * 0 / mem[_10615] / 0 / mem[_10615] != arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        return (arg1 * 0 / mem[_10615] / 10^18)
                    if 10^18 * _12442 * _12441 / 10^18 / _12442 * _12441 / 10^18 != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not mem[_10615]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 10^18 * _12442 * _12441 / 10^18 / mem[_10615]:
                        return 0
                    if arg1 * 10^18 * _12442 * _12441 / 10^18 / mem[_10615] / 10^18 * _12442 * _12441 / 10^18 / mem[_10615] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 10^18 * _12442 * _12441 / 10^18 / mem[_10615] / 10^18)
                if (_9777 * 1000000000000000000 * 10^18 / _7677) - (_9776 * 1000000000000000000 * 10^18 / _7677) - (_9777 * _8672) + (_9776 * _8672) / (1000000000000000000 * 10^18 / _7677) - _8672 != _9777 - _9776:
                    revert with 0, 'SafeMath: multiplication overflow'
                _11791 = mem[64]
                mem[64] = mem[64] + 64
                mem[_11791] = 26
                mem[_11791 + 32] = 'SafeMath: division by zero'
                mem[_11227] = (1000000000000000000 * 10^18 / _7677 * _9777) - (_8672 * _9777) - (1000000000000000000 * 10^18 / _7677 * _9776) + (_8672 * _9776) / 10^18
                _12439 = mem[64]
                mem[64] = mem[64] + 32
                mem[_12439] = 0
                _12631 = mem[64]
                mem[64] = mem[64] + 32
                _12632 = mem[ceil32(return_data.size) + 1536]
                _12633 = mem[ceil32(return_data.size) + 1696]
                if not mem[ceil32(return_data.size) + 1536]:
                    _13159 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13159] = 26
                    mem[_13159 + 32] = 'SafeMath: division by zero'
                    mem[_12631] = 0
                    _14203 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_14203] = 0
                    _14744 = mem[64]
                    mem[64] = mem[64] + 32
                    if (1000000000000000000 * 10^18 / _7677 * _9777) - (_8672 * _9777) - (1000000000000000000 * 10^18 / _7677 * _9776) + (_8672 * _9776) / 10^18 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_14744] = (1000000000000000000 * 10^18 / _7677 * _9777) - (_8672 * _9777) - (1000000000000000000 * 10^18 / _7677 * _9776) + (_8672 * _9776) / 10^18
                    _16159 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_16159] = 0
                    mem[64] = mem[64] + 32
                    if not (1000000000000000000 * 10^18 / _7677 * _9777) - (_8672 * _9777) - (1000000000000000000 * 10^18 / _7677 * _9776) + (_8672 * _9776) / 10^18:
                        if not mem[_10615]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not 0 / mem[_10615]:
                            return 0
                        if arg1 * 0 / mem[_10615] / 0 / mem[_10615] != arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        return (arg1 * 0 / mem[_10615] / 10^18)
                    if 10^18 * (1000000000000000000 * 10^18 / _7677 * _9777) - (_8672 * _9777) - (1000000000000000000 * 10^18 / _7677 * _9776) + (_8672 * _9776) / 10^18 / (1000000000000000000 * 10^18 / _7677 * _9777) - (_8672 * _9777) - (1000000000000000000 * 10^18 / _7677 * _9776) + (_8672 * _9776) / 10^18 != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not mem[_10615]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 10^18 * (1000000000000000000 * 10^18 / _7677 * _9777) - (_8672 * _9777) - (1000000000000000000 * 10^18 / _7677 * _9776) + (_8672 * _9776) / 10^18 / mem[_10615]:
                        return 0
                    if arg1 * 10^18 * (1000000000000000000 * 10^18 / _7677 * _9777) - (_8672 * _9777) - (1000000000000000000 * 10^18 / _7677 * _9776) + (_8672 * _9776) / 10^18 / mem[_10615] / 10^18 * (1000000000000000000 * 10^18 / _7677 * _9777) - (_8672 * _9777) - (1000000000000000000 * 10^18 / _7677 * _9776) + (_8672 * _9776) / 10^18 / mem[_10615] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 10^18 * (1000000000000000000 * 10^18 / _7677 * _9777) - (_8672 * _9777) - (1000000000000000000 * 10^18 / _7677 * _9776) + (_8672 * _9776) / 10^18 / mem[_10615] / 10^18)
                if mem[ceil32(return_data.size) + 1696] * mem[ceil32(return_data.size) + 1536] / mem[ceil32(return_data.size) + 1536] != mem[ceil32(return_data.size) + 1696]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _13231 = mem[64]
                mem[64] = mem[64] + 64
                mem[_13231] = 26
                mem[_13231 + 32] = 'SafeMath: division by zero'
                mem[_12631] = _12633 * _12632 / 10^18
                _14743 = mem[64]
                mem[64] = mem[64] + 32
                mem[_14743] = 0
                _15091 = mem[64]
                mem[64] = mem[64] + 32
                if ((1000000000000000000 * 10^18 / _7677 * _9777) - (_8672 * _9777) - (1000000000000000000 * 10^18 / _7677 * _9776) + (_8672 * _9776) / 10^18) + (_12633 * _12632 / 10^18) < _12633 * _12632 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_15091] = ((1000000000000000000 * 10^18 / _7677 * _9777) - (_8672 * _9777) - (1000000000000000000 * 10^18 / _7677 * _9776) + (_8672 * _9776) / 10^18) + (_12633 * _12632 / 10^18)
                _16783 = mem[64]
                mem[64] = mem[64] + 32
                mem[_16783] = 0
                mem[64] = mem[64] + 32
                if not ((1000000000000000000 * 10^18 / _7677 * _9777) - (_8672 * _9777) - (1000000000000000000 * 10^18 / _7677 * _9776) + (_8672 * _9776) / 10^18) + (_12633 * _12632 / 10^18):
                    if not mem[_10615]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / mem[_10615]:
                        return 0
                    if arg1 * 0 / mem[_10615] / 0 / mem[_10615] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 0 / mem[_10615] / 10^18)
                if (10^18 * (1000000000000000000 * 10^18 / _7677 * _9777) - (_8672 * _9777) - (1000000000000000000 * 10^18 / _7677 * _9776) + (_8672 * _9776) / 10^18) + (10^18 * _12633 * _12632 / 10^18) / ((1000000000000000000 * 10^18 / _7677 * _9777) - (_8672 * _9777) - (1000000000000000000 * 10^18 / _7677 * _9776) + (_8672 * _9776) / 10^18) + (_12633 * _12632 / 10^18) != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not mem[_10615]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not (10^18 * (1000000000000000000 * 10^18 / _7677 * _9777) - (_8672 * _9777) - (1000000000000000000 * 10^18 / _7677 * _9776) + (_8672 * _9776) / 10^18) + (10^18 * _12633 * _12632 / 10^18) / mem[_10615]:
                    return 0
                if arg1 * (10^18 * (1000000000000000000 * 10^18 / _7677 * _9777) - (_8672 * _9777) - (1000000000000000000 * 10^18 / _7677 * _9776) + (_8672 * _9776) / 10^18) + (10^18 * _12633 * _12632 / 10^18) / mem[_10615] / (10^18 * (1000000000000000000 * 10^18 / _7677 * _9777) - (_8672 * _9777) - (1000000000000000000 * 10^18 / _7677 * _9776) + (_8672 * _9776) / 10^18) + (10^18 * _12633 * _12632 / 10^18) / mem[_10615] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * (10^18 * (1000000000000000000 * 10^18 / _7677 * _9777) - (_8672 * _9777) - (1000000000000000000 * 10^18 / _7677 * _9776) + (_8672 * _9776) / 10^18) + (10^18 * _12633 * _12632 / 10^18) / mem[_10615] / 10^18)
            mem[ceil32(return_data.size) + 768] = 0
            mem[ceil32(return_data.size) + 800] = 10^18
            mem[ceil32(return_data.size) + 832] = 0
            mem[ceil32(return_data.size) + 864] = 10^18
            mem[ceil32(return_data.size) + 896] = 0
            mem[ceil32(return_data.size) + 960] = 30
            mem[ceil32(return_data.size) + 992] = 'SafeMath: subtraction overflow'
            if 0 / ext_call.return_data[0] - arg1 > 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[ceil32(return_data.size) + 928] = -(0 / ext_call.return_data[0] - arg1) + 10^18
            mem[ceil32(return_data.size) + 1024] = 0
            mem[ceil32(return_data.size) + 1056] = 0
            mem[64] = ceil32(return_data.size) + 1120
            mem[ceil32(return_data.size) + 1088] = -(0 / ext_call.return_data[0] - arg1) + 10^18
            idx = 1
            s = ceil32(return_data.size) + 1088
            while idx < 2:
                _3554 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3554] = 0
                _3640 = mem[64]
                mem[64] = mem[64] + 32
                _3641 = mem[s]
                _3642 = mem[ceil32(return_data.size) + 928]
                if not mem[s]:
                    _4333 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4333] = 26
                    mem[_4333 + 32] = 'SafeMath: division by zero'
                    mem[_3640] = 0
                else:
                    if mem[ceil32(return_data.size) + 928] * mem[s] / mem[s] != mem[ceil32(return_data.size) + 928]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4401 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4401] = 26
                    mem[_4401 + 32] = 'SafeMath: division by zero'
                    mem[_3640] = _3642 * _3641 / 10^18
                idx = idx + 1
                s = _3640
                continue 
            _3639 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3639] = 0
            _3681 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3681] = 10^18
            _4187 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4187] = 0
            _4275 = mem[64]
            mem[64] = mem[64] + 32
            _4277 = mem[s]
            _4601 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4601] = 26
            mem[_4601 + 32] = 'SafeMath: division by zero'
            if not _4277:
                revert with 0, 'SafeMath: division by zero', 0
            mem[_4275] = 1000000000000000000 * 10^18 / _4277
            _4975 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4975] = 0
            _5078 = mem[64]
            mem[64] = mem[64] + 32
            _5079 = mem[ceil32(return_data.size) + 800]
            _5153 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5153] = 30
            mem[_5153 + 32] = 'SafeMath: subtraction overflow'
            if _5079 > 1000000000000000000 * 10^18 / _4277:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[_5078] = (1000000000000000000 * 10^18 / _4277) - _5079
            _5593 = mem[64]
            mem[64] = mem[64] + 32
            mem[_5593] = 0
            _5753 = mem[64]
            mem[64] = mem[64] + 32
            mem[_5753] = 0
            _5800 = mem[64]
            mem[64] = mem[64] + 32
            _5801 = mem[ceil32(return_data.size) + 576]
            _5802 = mem[ceil32(return_data.size) + 352]
            _5823 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5823] = 30
            mem[_5823 + 32] = 'SafeMath: subtraction overflow'
            if _5801 > _5802:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[_5800] = _5802 - _5801
            _6070 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6070] = 0
            _6108 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6108] = 0
            _6164 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6164] = 0
            _6192 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6192] = 10^18
            _6238 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6238] = 0
            _6268 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6268] = 10^18
            _6348 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6348] = 0
            _6382 = mem[64]
            mem[64] = mem[64] + 32
            _6383 = mem[ceil32(return_data.size) + 352]
            _6396 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6396] = 30
            mem[_6396 + 32] = 'SafeMath: subtraction overflow'
            if _6383 > 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[_6382] = -_6383 + 10^18
            _6444 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6444] = 0
            _6478 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6478] = 0
            _6504 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6504] = -_6383 + 10^18
            idx = 1
            s = _6504
            while idx < 2:
                _6885 = mem[64]
                mem[64] = mem[64] + 32
                mem[_6885] = 0
                _7054 = mem[64]
                mem[64] = mem[64] + 32
                _7055 = mem[s]
                _7056 = mem[_6382]
                if not mem[s]:
                    _7763 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7763] = 26
                    mem[_7763 + 32] = 'SafeMath: division by zero'
                    mem[_7054] = 0
                else:
                    if mem[_6382] * mem[s] / mem[s] != mem[_6382]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _7811 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7811] = 26
                    mem[_7811 + 32] = 'SafeMath: division by zero'
                    mem[_7054] = _7056 * _7055 / 10^18
                idx = idx + 1
                s = _7054
                continue 
            _7053 = mem[64]
            mem[64] = mem[64] + 32
            mem[_7053] = 0
            _7125 = mem[64]
            mem[64] = mem[64] + 32
            mem[_7125] = 10^18
            _7523 = mem[64]
            mem[64] = mem[64] + 32
            mem[_7523] = 0
            _7691 = mem[64]
            mem[64] = mem[64] + 32
            _7693 = mem[s]
            _8003 = mem[64]
            mem[64] = mem[64] + 64
            mem[_8003] = 26
            mem[_8003 + 32] = 'SafeMath: division by zero'
            if not _7693:
                revert with 0, 'SafeMath: division by zero', 0
            mem[_7691] = 1000000000000000000 * 10^18 / _7693
            _8459 = mem[64]
            mem[64] = mem[64] + 32
            mem[_8459] = 0
            _8691 = mem[64]
            mem[64] = mem[64] + 32
            _8692 = mem[_6192]
            _8811 = mem[64]
            mem[64] = mem[64] + 64
            mem[_8811] = 30
            mem[_8811 + 32] = 'SafeMath: subtraction overflow'
            if _8692 > 1000000000000000000 * 10^18 / _7693:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[_8691] = (1000000000000000000 * 10^18 / _7693) - _8692
            _9299 = mem[64]
            mem[64] = mem[64] + 32
            mem[_9299] = 0
            _9555 = mem[64]
            mem[64] = mem[64] + 32
            mem[_9555] = 0
            _9795 = mem[64]
            mem[64] = mem[64] + 32
            _9796 = mem[ceil32(return_data.size) + 352]
            _9797 = mem[ceil32(return_data.size) + 192]
            _9875 = mem[64]
            mem[64] = mem[64] + 64
            mem[_9875] = 30
            mem[_9875 + 32] = 'SafeMath: subtraction overflow'
            if _9796 > _9797:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[_9795] = _9797 - _9796
            _10475 = mem[64]
            mem[64] = mem[64] + 32
            mem[_10475] = 0
            _10627 = mem[64]
            mem[64] = mem[64] + 32
            if _9797 - _9796 + mem[_5800] < mem[_5800]:
                revert with 0, 'SafeMath: addition overflow'
            mem[_10627] = _9797 - _9796 + mem[_5800]
            _11051 = mem[64]
            mem[64] = mem[64] + 32
            mem[_11051] = 0
            _11243 = mem[64]
            mem[64] = mem[64] + 32
            if not (1000000000000000000 * 10^18 / _7693) - _8692:
                _11739 = mem[64]
                mem[64] = mem[64] + 64
                mem[_11739] = 26
                mem[_11739 + 32] = 'SafeMath: division by zero'
                mem[_11243] = 0
                _12147 = mem[64]
                mem[64] = mem[64] + 32
                mem[_12147] = 0
                _12468 = mem[64]
                mem[64] = mem[64] + 32
                _12469 = mem[_5078]
                _12470 = mem[_5800]
                if not mem[_5078]:
                    _13020 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13020] = 26
                    mem[_13020 + 32] = 'SafeMath: division by zero'
                    mem[_12468] = 0
                    _13723 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_13723] = 0
                    _14253 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_14253] = 0
                    _15643 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_15643] = 0
                    mem[64] = mem[64] + 32
                    if not mem[_10627]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / mem[_10627]:
                        return 0
                    if arg1 * 0 / mem[_10627] / 0 / mem[_10627] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 0 / mem[_10627] / 10^18)
                if mem[_5800] * mem[_5078] / mem[_5078] != mem[_5800]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _13172 = mem[64]
                mem[64] = mem[64] + 64
                mem[_13172] = 26
                mem[_13172 + 32] = 'SafeMath: division by zero'
                mem[_12468] = _12470 * _12469 / 10^18
                _14252 = mem[64]
                mem[64] = mem[64] + 32
                mem[_14252] = 0
                _14791 = mem[64]
                mem[64] = mem[64] + 32
                if _12470 * _12469 / 10^18 < _12470 * _12469 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_14791] = _12470 * _12469 / 10^18
                _16212 = mem[64]
                mem[64] = mem[64] + 32
                mem[_16212] = 0
                mem[64] = mem[64] + 32
                if not _12470 * _12469 / 10^18:
                    if not mem[_10627]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / mem[_10627]:
                        return 0
                    if arg1 * 0 / mem[_10627] / 0 / mem[_10627] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 0 / mem[_10627] / 10^18)
                if 10^18 * _12470 * _12469 / 10^18 / _12470 * _12469 / 10^18 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not mem[_10627]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 10^18 * _12470 * _12469 / 10^18 / mem[_10627]:
                    return 0
                if arg1 * 10^18 * _12470 * _12469 / 10^18 / mem[_10627] / 10^18 * _12470 * _12469 / 10^18 / mem[_10627] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 10^18 * _12470 * _12469 / 10^18 / mem[_10627] / 10^18)
            if (_9797 * 1000000000000000000 * 10^18 / _7693) - (_9796 * 1000000000000000000 * 10^18 / _7693) - (_9797 * _8692) + (_9796 * _8692) / (1000000000000000000 * 10^18 / _7693) - _8692 != _9797 - _9796:
                revert with 0, 'SafeMath: multiplication overflow'
            _11795 = mem[64]
            mem[64] = mem[64] + 64
            mem[_11795] = 26
            mem[_11795 + 32] = 'SafeMath: division by zero'
            mem[_11243] = (1000000000000000000 * 10^18 / _7693 * _9797) - (_8692 * _9797) - (1000000000000000000 * 10^18 / _7693 * _9796) + (_8692 * _9796) / 10^18
            _12467 = mem[64]
            mem[64] = mem[64] + 32
            mem[_12467] = 0
            _12643 = mem[64]
            mem[64] = mem[64] + 32
            _12644 = mem[_5078]
            _12645 = mem[_5800]
            if not mem[_5078]:
                _13171 = mem[64]
                mem[64] = mem[64] + 64
                mem[_13171] = 26
                mem[_13171 + 32] = 'SafeMath: division by zero'
                mem[_12643] = 0
                _14251 = mem[64]
                mem[64] = mem[64] + 32
                mem[_14251] = 0
                _14788 = mem[64]
                mem[64] = mem[64] + 32
                if (1000000000000000000 * 10^18 / _7693 * _9797) - (_8692 * _9797) - (1000000000000000000 * 10^18 / _7693 * _9796) + (_8692 * _9796) / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_14788] = (1000000000000000000 * 10^18 / _7693 * _9797) - (_8692 * _9797) - (1000000000000000000 * 10^18 / _7693 * _9796) + (_8692 * _9796) / 10^18
                _16211 = mem[64]
                mem[64] = mem[64] + 32
                mem[_16211] = 0
                mem[64] = mem[64] + 32
                if not (1000000000000000000 * 10^18 / _7693 * _9797) - (_8692 * _9797) - (1000000000000000000 * 10^18 / _7693 * _9796) + (_8692 * _9796) / 10^18:
                    if not mem[_10627]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / mem[_10627]:
                        return 0
                    if arg1 * 0 / mem[_10627] / 0 / mem[_10627] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 0 / mem[_10627] / 10^18)
                if 10^18 * (1000000000000000000 * 10^18 / _7693 * _9797) - (_8692 * _9797) - (1000000000000000000 * 10^18 / _7693 * _9796) + (_8692 * _9796) / 10^18 / (1000000000000000000 * 10^18 / _7693 * _9797) - (_8692 * _9797) - (1000000000000000000 * 10^18 / _7693 * _9796) + (_8692 * _9796) / 10^18 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not mem[_10627]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 10^18 * (1000000000000000000 * 10^18 / _7693 * _9797) - (_8692 * _9797) - (1000000000000000000 * 10^18 / _7693 * _9796) + (_8692 * _9796) / 10^18 / mem[_10627]:
                    return 0
                if arg1 * 10^18 * (1000000000000000000 * 10^18 / _7693 * _9797) - (_8692 * _9797) - (1000000000000000000 * 10^18 / _7693 * _9796) + (_8692 * _9796) / 10^18 / mem[_10627] / 10^18 * (1000000000000000000 * 10^18 / _7693 * _9797) - (_8692 * _9797) - (1000000000000000000 * 10^18 / _7693 * _9796) + (_8692 * _9796) / 10^18 / mem[_10627] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 10^18 * (1000000000000000000 * 10^18 / _7693 * _9797) - (_8692 * _9797) - (1000000000000000000 * 10^18 / _7693 * _9796) + (_8692 * _9796) / 10^18 / mem[_10627] / 10^18)
            if mem[_5800] * mem[_5078] / mem[_5078] != mem[_5800]:
                revert with 0, 'SafeMath: multiplication overflow'
            _13235 = mem[64]
            mem[64] = mem[64] + 64
            mem[_13235] = 26
            mem[_13235 + 32] = 'SafeMath: division by zero'
            mem[_12643] = _12645 * _12644 / 10^18
            _14787 = mem[64]
            mem[64] = mem[64] + 32
            mem[_14787] = 0
            _15115 = mem[64]
            mem[64] = mem[64] + 32
            if ((1000000000000000000 * 10^18 / _7693 * _9797) - (_8692 * _9797) - (1000000000000000000 * 10^18 / _7693 * _9796) + (_8692 * _9796) / 10^18) + (_12645 * _12644 / 10^18) < _12645 * _12644 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            mem[_15115] = ((1000000000000000000 * 10^18 / _7693 * _9797) - (_8692 * _9797) - (1000000000000000000 * 10^18 / _7693 * _9796) + (_8692 * _9796) / 10^18) + (_12645 * _12644 / 10^18)
            _16835 = mem[64]
            mem[64] = mem[64] + 32
            mem[_16835] = 0
            mem[64] = mem[64] + 32
            if not ((1000000000000000000 * 10^18 / _7693 * _9797) - (_8692 * _9797) - (1000000000000000000 * 10^18 / _7693 * _9796) + (_8692 * _9796) / 10^18) + (_12645 * _12644 / 10^18):
                if not mem[_10627]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / mem[_10627]:
                    return 0
                if arg1 * 0 / mem[_10627] / 0 / mem[_10627] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 0 / mem[_10627] / 10^18)
            if (10^18 * (1000000000000000000 * 10^18 / _7693 * _9797) - (_8692 * _9797) - (1000000000000000000 * 10^18 / _7693 * _9796) + (_8692 * _9796) / 10^18) + (10^18 * _12645 * _12644 / 10^18) / ((1000000000000000000 * 10^18 / _7693 * _9797) - (_8692 * _9797) - (1000000000000000000 * 10^18 / _7693 * _9796) + (_8692 * _9796) / 10^18) + (_12645 * _12644 / 10^18) != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not mem[_10627]:
                revert with 0, 'SafeMath: division by zero', 0
            if not (10^18 * (1000000000000000000 * 10^18 / _7693 * _9797) - (_8692 * _9797) - (1000000000000000000 * 10^18 / _7693 * _9796) + (_8692 * _9796) / 10^18) + (10^18 * _12645 * _12644 / 10^18) / mem[_10627]:
                return 0
            if arg1 * (10^18 * (1000000000000000000 * 10^18 / _7693 * _9797) - (_8692 * _9797) - (1000000000000000000 * 10^18 / _7693 * _9796) + (_8692 * _9796) / 10^18) + (10^18 * _12645 * _12644 / 10^18) / mem[_10627] / (10^18 * (1000000000000000000 * 10^18 / _7693 * _9797) - (_8692 * _9797) - (1000000000000000000 * 10^18 / _7693 * _9796) + (_8692 * _9796) / 10^18) + (10^18 * _12645 * _12644 / 10^18) / mem[_10627] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * (10^18 * (1000000000000000000 * 10^18 / _7693 * _9797) - (_8692 * _9797) - (1000000000000000000 * 10^18 / _7693 * _9796) + (_8692 * _9796) / 10^18) + (10^18 * _12645 * _12644 / 10^18) / mem[_10627] / 10^18)
        if (10^18 * totalDebt) - (10^18 * arg1) / totalDebt - arg1 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[ceil32(return_data.size) + 608] = 26
        mem[ceil32(return_data.size) + 640] = 'SafeMath: division by zero'
        if not ext_call.return_data[0] - arg1:
            revert with 0, 'SafeMath: division by zero', 0
        mem[ceil32(return_data.size) + 576] = (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1
        mem[ceil32(return_data.size) + 672] = 0
        if 15 * 10^16 == 0 / ext_call.return_data[0]:
            if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 != 0 / ext_call.return_data[0]:
                if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 / ext_call.return_data[0] > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not -(0 / ext_call.return_data[0]) + 10^18:
                    revert with 0, 'SafeMath: division by zero', 0
                if (-1 * 10^18 * 0 / ext_call.return_data[0]) + (-1 * 10^18 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + (0 / ext_call.return_data[0] * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / -(0 / ext_call.return_data[0]) + 10^18 != -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (-1 * 10^18 * 0 / ext_call.return_data[0]) + (-1 * 10^18 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + (0 / ext_call.return_data[0] * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18:
                    revert with 0, 'SafeMath: division by zero', 0
                if 10^18 > 1000000000000000000 * 10^18 / (-1 * 10^18 * 0 / ext_call.return_data[0]) + (-1 * 10^18 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + (0 / ext_call.return_data[0] * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not (1000000000000000000 * 10^18 / (-1 * 10^18 * 0 / ext_call.return_data[0]) + (-1 * 10^18 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + (0 / ext_call.return_data[0] * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18) - 10^18:
                    return 0
                if (1000000000000000000 * 10^18 / (-1 * 10^18 * 0 / ext_call.return_data[0]) + (-1 * 10^18 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + (0 / ext_call.return_data[0] * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18 * arg1) - (10^18 * arg1) / (1000000000000000000 * 10^18 / (-1 * 10^18 * 0 / ext_call.return_data[0]) + (-1 * 10^18 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + (0 / ext_call.return_data[0] * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18) - 10^18 != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return ((1000000000000000000 * 10^18 / (-1 * 10^18 * 0 / ext_call.return_data[0]) + (-1 * 10^18 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + (0 / ext_call.return_data[0] * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18 * arg1) - (10^18 * arg1) / 10^18)
            mem[ceil32(return_data.size) + 704] = 0
            mem[ceil32(return_data.size) + 736] = 0
            mem[ceil32(return_data.size) + 768] = 10^18
            mem[ceil32(return_data.size) + 800] = 0
            mem[ceil32(return_data.size) + 832] = 10^18
            mem[ceil32(return_data.size) + 864] = 0
            mem[ceil32(return_data.size) + 928] = 30
            mem[ceil32(return_data.size) + 960] = 'SafeMath: subtraction overflow'
            if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 > 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[ceil32(return_data.size) + 896] = -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 10^18
            mem[ceil32(return_data.size) + 992] = 0
            mem[ceil32(return_data.size) + 1024] = 0
            mem[64] = ceil32(return_data.size) + 1088
            mem[ceil32(return_data.size) + 1056] = -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 10^18
            idx = 1
            s = ceil32(return_data.size) + 1056
            while idx < 2:
                _3549 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3549] = 0
                _3631 = mem[64]
                mem[64] = mem[64] + 32
                _3632 = mem[s]
                _3633 = mem[ceil32(return_data.size) + 896]
                if not mem[s]:
                    _4326 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4326] = 26
                    mem[_4326 + 32] = 'SafeMath: division by zero'
                    mem[_3631] = 0
                else:
                    if mem[ceil32(return_data.size) + 896] * mem[s] / mem[s] != mem[ceil32(return_data.size) + 896]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4391 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4391] = 26
                    mem[_4391 + 32] = 'SafeMath: division by zero'
                    mem[_3631] = _3633 * _3632 / 10^18
                idx = idx + 1
                s = _3631
                continue 
            _3630 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3630] = 0
            _3678 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3678] = 10^18
            _4182 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4182] = 0
            _4266 = mem[64]
            mem[64] = mem[64] + 32
            _4268 = mem[s]
            mem[mem[64] + 32] = 'SafeMath: division by zero'
            if not _4268:
                revert with 0, 'SafeMath: division by zero', 0
            mem[_4266] = 1000000000000000000 * 10^18 / _4268
            mem[mem[64]] = 0
            if mem[ceil32(return_data.size) + 768] > 1000000000000000000 * 10^18 / _4268:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not (1000000000000000000 * 10^18 / _4268) - mem[ceil32(return_data.size) + 768]:
                return 0
            if (1000000000000000000 * 10^18 / _4268 * arg1) - (mem[ceil32(return_data.size) + 768] * arg1) / (1000000000000000000 * 10^18 / _4268) - mem[ceil32(return_data.size) + 768] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return ((1000000000000000000 * 10^18 / _4268 * arg1) - (mem[ceil32(return_data.size) + 768] * arg1) / 10^18)
        if 0 / ext_call.return_data[0] <= 15 * 10^16:
            if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 != 0 / ext_call.return_data[0]:
                if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 / ext_call.return_data[0] > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not -(0 / ext_call.return_data[0]) + 10^18:
                    revert with 0, 'SafeMath: division by zero', 0
                if (-1 * 10^18 * 0 / ext_call.return_data[0]) + (-1 * 10^18 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + (0 / ext_call.return_data[0] * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / -(0 / ext_call.return_data[0]) + 10^18 != -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (-1 * 10^18 * 0 / ext_call.return_data[0]) + (-1 * 10^18 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + (0 / ext_call.return_data[0] * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18:
                    revert with 0, 'SafeMath: division by zero', 0
                if 10^18 > 1000000000000000000 * 10^18 / (-1 * 10^18 * 0 / ext_call.return_data[0]) + (-1 * 10^18 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + (0 / ext_call.return_data[0] * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not (1000000000000000000 * 10^18 / (-1 * 10^18 * 0 / ext_call.return_data[0]) + (-1 * 10^18 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + (0 / ext_call.return_data[0] * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18) - 10^18:
                    return 0
                if (1000000000000000000 * 10^18 / (-1 * 10^18 * 0 / ext_call.return_data[0]) + (-1 * 10^18 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + (0 / ext_call.return_data[0] * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18 * arg1) - (10^18 * arg1) / (1000000000000000000 * 10^18 / (-1 * 10^18 * 0 / ext_call.return_data[0]) + (-1 * 10^18 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + (0 / ext_call.return_data[0] * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18) - 10^18 != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return ((1000000000000000000 * 10^18 / (-1 * 10^18 * 0 / ext_call.return_data[0]) + (-1 * 10^18 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + (0 / ext_call.return_data[0] * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18 * arg1) - (10^18 * arg1) / 10^18)
            mem[ceil32(return_data.size) + 704] = 0
            mem[ceil32(return_data.size) + 736] = 0
            mem[ceil32(return_data.size) + 768] = 10^18
            mem[ceil32(return_data.size) + 800] = 0
            mem[ceil32(return_data.size) + 832] = 10^18
            mem[ceil32(return_data.size) + 864] = 0
            mem[ceil32(return_data.size) + 928] = 30
            mem[ceil32(return_data.size) + 960] = 'SafeMath: subtraction overflow'
            if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 > 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[ceil32(return_data.size) + 896] = -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 10^18
            mem[ceil32(return_data.size) + 992] = 0
            mem[ceil32(return_data.size) + 1024] = 0
            mem[64] = ceil32(return_data.size) + 1088
            mem[ceil32(return_data.size) + 1056] = -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 10^18
            idx = 1
            s = ceil32(return_data.size) + 1056
            while idx < 2:
                _3548 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3548] = 0
                _3627 = mem[64]
                mem[64] = mem[64] + 32
                _3628 = mem[s]
                _3629 = mem[ceil32(return_data.size) + 896]
                if not mem[s]:
                    _4325 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4325] = 26
                    mem[_4325 + 32] = 'SafeMath: division by zero'
                    mem[_3627] = 0
                else:
                    if mem[ceil32(return_data.size) + 896] * mem[s] / mem[s] != mem[ceil32(return_data.size) + 896]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4390 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4390] = 26
                    mem[_4390 + 32] = 'SafeMath: division by zero'
                    mem[_3627] = _3629 * _3628 / 10^18
                idx = idx + 1
                s = _3627
                continue 
            _3626 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3626] = 0
            _3677 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3677] = 10^18
            _4181 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4181] = 0
            _4262 = mem[64]
            mem[64] = mem[64] + 32
            _4264 = mem[s]
            mem[mem[64] + 32] = 'SafeMath: division by zero'
            if not _4264:
                revert with 0, 'SafeMath: division by zero', 0
            mem[_4262] = 1000000000000000000 * 10^18 / _4264
            mem[mem[64]] = 0
            if mem[ceil32(return_data.size) + 768] > 1000000000000000000 * 10^18 / _4264:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not (1000000000000000000 * 10^18 / _4264) - mem[ceil32(return_data.size) + 768]:
                return 0
            if (1000000000000000000 * 10^18 / _4264 * arg1) - (mem[ceil32(return_data.size) + 768] * arg1) / (1000000000000000000 * 10^18 / _4264) - mem[ceil32(return_data.size) + 768] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return ((1000000000000000000 * 10^18 / _4264 * arg1) - (mem[ceil32(return_data.size) + 768] * arg1) / 10^18)
        mem[ceil32(return_data.size) + 704] = 0
        if 15 * 10^16 == (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1:
            mem[ceil32(return_data.size) + 736] = 0
            if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 != 15 * 10^16:
                mem[ceil32(return_data.size) + 768] = 10^18
                mem[ceil32(return_data.size) + 800] = 0
                mem[ceil32(return_data.size) + 832] = 10^18
                mem[ceil32(return_data.size) + 864] = 0
                mem[ceil32(return_data.size) + 928] = 30
                mem[ceil32(return_data.size) + 960] = 'SafeMath: subtraction overflow'
                if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[ceil32(return_data.size) + 896] = -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 10^18
                mem[ceil32(return_data.size) + 992] = 0
                mem[ceil32(return_data.size) + 1024] = 10^18
                mem[ceil32(return_data.size) + 1056] = 0
                mem[ceil32(return_data.size) + 1120] = 30
                mem[ceil32(return_data.size) + 1152] = 'SafeMath: subtraction overflow'
                mem[ceil32(return_data.size) + 1088] = 85 * 10^16
                mem[ceil32(return_data.size) + 1184] = 0
                if (-85 * 10^16 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 85 * 10^16 != -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[ceil32(return_data.size) + 1248] = 26
                mem[ceil32(return_data.size) + 1280] = 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 1216] = (-85 * 10^16 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18
                mem[ceil32(return_data.size) + 1312] = 0
                mem[ceil32(return_data.size) + 1344] = 10^18
                mem[ceil32(return_data.size) + 1376] = 0
                mem[ceil32(return_data.size) + 1440] = 26
                mem[ceil32(return_data.size) + 1472] = 'SafeMath: division by zero'
                if not (-85 * 10^16 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[ceil32(return_data.size) + 1408] = 1000000000000000000 * 10^18 / (-85 * 10^16 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18
                mem[ceil32(return_data.size) + 1504] = 0
                mem[ceil32(return_data.size) + 1568] = 30
                mem[ceil32(return_data.size) + 1600] = 'SafeMath: subtraction overflow'
                if 10^18 > 1000000000000000000 * 10^18 / (-85 * 10^16 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[ceil32(return_data.size) + 1536] = (1000000000000000000 * 10^18 / (-85 * 10^16 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18) - 10^18
                mem[ceil32(return_data.size) + 1632] = 0
                mem[ceil32(return_data.size) + 1664] = 0
                mem[ceil32(return_data.size) + 1728] = 30
                mem[ceil32(return_data.size) + 1760] = 'SafeMath: subtraction overflow'
                if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 > 15 * 10^16:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[ceil32(return_data.size) + 1696] = -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 15 * 10^16
                mem[ceil32(return_data.size) + 1792] = 0
                mem[ceil32(return_data.size) + 1824] = 0
                mem[ceil32(return_data.size) + 1856] = 0
                mem[ceil32(return_data.size) + 1888] = 10^18
                mem[ceil32(return_data.size) + 1920] = 0
                mem[ceil32(return_data.size) + 1952] = 10^18
                mem[ceil32(return_data.size) + 1984] = 0
                mem[ceil32(return_data.size) + 2048] = 30
                mem[ceil32(return_data.size) + 2080] = 'SafeMath: subtraction overflow'
                mem[ceil32(return_data.size) + 2016] = 85 * 10^16
                mem[ceil32(return_data.size) + 2112] = 0
                mem[ceil32(return_data.size) + 2144] = 0
                mem[64] = ceil32(return_data.size) + 2208
                mem[ceil32(return_data.size) + 2176] = 85 * 10^16
                idx = 1
                s = ceil32(return_data.size) + 2176
                while idx < 2:
                    _6875 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_6875] = 0
                    _7014 = mem[64]
                    mem[64] = mem[64] + 32
                    _7015 = mem[s]
                    _7016 = mem[ceil32(return_data.size) + 2016]
                    if not mem[s]:
                        _7753 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7753] = 26
                        mem[_7753 + 32] = 'SafeMath: division by zero'
                        mem[_7014] = 0
                    else:
                        if mem[ceil32(return_data.size) + 2016] * mem[s] / mem[s] != mem[ceil32(return_data.size) + 2016]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _7801 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7801] = 26
                        mem[_7801 + 32] = 'SafeMath: division by zero'
                        mem[_7014] = _7016 * _7015 / 10^18
                    idx = idx + 1
                    s = _7014
                    continue 
                _7013 = mem[64]
                mem[64] = mem[64] + 32
                mem[_7013] = 0
                _7115 = mem[64]
                mem[64] = mem[64] + 32
                mem[_7115] = 10^18
                _7513 = mem[64]
                mem[64] = mem[64] + 32
                mem[_7513] = 0
                _7651 = mem[64]
                mem[64] = mem[64] + 32
                _7653 = mem[s]
                _7993 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7993] = 26
                mem[_7993 + 32] = 'SafeMath: division by zero'
                if not _7653:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[_7651] = 1000000000000000000 * 10^18 / _7653
                _8419 = mem[64]
                mem[64] = mem[64] + 32
                mem[_8419] = 0
                _8641 = mem[64]
                mem[64] = mem[64] + 32
                _8642 = mem[ceil32(return_data.size) + 1888]
                _8791 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8791] = 30
                mem[_8791 + 32] = 'SafeMath: subtraction overflow'
                if _8642 > 1000000000000000000 * 10^18 / _7653:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[_8641] = (1000000000000000000 * 10^18 / _7653) - _8642
                _9289 = mem[64]
                mem[64] = mem[64] + 32
                mem[_9289] = 0
                _9505 = mem[64]
                mem[64] = mem[64] + 32
                mem[_9505] = 0
                _9745 = mem[64]
                mem[64] = mem[64] + 32
                _9746 = mem[ceil32(return_data.size) + 352]
                _9747 = mem[ceil32(return_data.size) + 192]
                _9865 = mem[64]
                mem[64] = mem[64] + 64
                mem[_9865] = 30
                mem[_9865 + 32] = 'SafeMath: subtraction overflow'
                if _9746 > _9747:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[_9745] = _9747 - _9746
                _10435 = mem[64]
                mem[64] = mem[64] + 32
                mem[_10435] = 0
                _10597 = mem[64]
                mem[64] = mem[64] + 32
                if _9747 - _9746 + mem[ceil32(return_data.size) + 1696] < mem[ceil32(return_data.size) + 1696]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_10597] = _9747 - _9746 + mem[ceil32(return_data.size) + 1696]
                _11011 = mem[64]
                mem[64] = mem[64] + 32
                mem[_11011] = 0
                _11203 = mem[64]
                mem[64] = mem[64] + 32
                if not (1000000000000000000 * 10^18 / _7653) - _8642:
                    _11719 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11719] = 26
                    mem[_11719 + 32] = 'SafeMath: division by zero'
                    mem[_11203] = 0
                    _12097 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_12097] = 0
                    _12398 = mem[64]
                    mem[64] = mem[64] + 32
                    _12399 = mem[ceil32(return_data.size) + 1536]
                    _12400 = mem[ceil32(return_data.size) + 1696]
                    if not mem[ceil32(return_data.size) + 1536]:
                        _12980 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12980] = 26
                        mem[_12980 + 32] = 'SafeMath: division by zero'
                        mem[_12398] = 0
                        _13663 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_13663] = 0
                        _14133 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_14133] = 0
                        _15583 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_15583] = 0
                        mem[64] = mem[64] + 32
                        if not mem[_10597]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not 0 / mem[_10597]:
                            return 0
                        if arg1 * 0 / mem[_10597] / 0 / mem[_10597] != arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        return (arg1 * 0 / mem[_10597] / 10^18)
                    if mem[ceil32(return_data.size) + 1696] * mem[ceil32(return_data.size) + 1536] / mem[ceil32(return_data.size) + 1536] != mem[ceil32(return_data.size) + 1696]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _13142 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13142] = 26
                    mem[_13142 + 32] = 'SafeMath: division by zero'
                    mem[_12398] = _12400 * _12399 / 10^18
                    _14132 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_14132] = 0
                    _14681 = mem[64]
                    mem[64] = mem[64] + 32
                    if _12400 * _12399 / 10^18 < _12400 * _12399 / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_14681] = _12400 * _12399 / 10^18
                    _16082 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_16082] = 0
                    mem[64] = mem[64] + 32
                    if not _12400 * _12399 / 10^18:
                        if not mem[_10597]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not 0 / mem[_10597]:
                            return 0
                        if arg1 * 0 / mem[_10597] / 0 / mem[_10597] != arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        return (arg1 * 0 / mem[_10597] / 10^18)
                    if 10^18 * _12400 * _12399 / 10^18 / _12400 * _12399 / 10^18 != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not mem[_10597]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 10^18 * _12400 * _12399 / 10^18 / mem[_10597]:
                        return 0
                    if arg1 * 10^18 * _12400 * _12399 / 10^18 / mem[_10597] / 10^18 * _12400 * _12399 / 10^18 / mem[_10597] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 10^18 * _12400 * _12399 / 10^18 / mem[_10597] / 10^18)
                if (_9747 * 1000000000000000000 * 10^18 / _7653) - (_9746 * 1000000000000000000 * 10^18 / _7653) - (_9747 * _8642) + (_9746 * _8642) / (1000000000000000000 * 10^18 / _7653) - _8642 != _9747 - _9746:
                    revert with 0, 'SafeMath: multiplication overflow'
                _11785 = mem[64]
                mem[64] = mem[64] + 64
                mem[_11785] = 26
                mem[_11785 + 32] = 'SafeMath: division by zero'
                mem[_11203] = (1000000000000000000 * 10^18 / _7653 * _9747) - (_8642 * _9747) - (1000000000000000000 * 10^18 / _7653 * _9746) + (_8642 * _9746) / 10^18
                _12397 = mem[64]
                mem[64] = mem[64] + 32
                mem[_12397] = 0
                _12613 = mem[64]
                mem[64] = mem[64] + 32
                _12614 = mem[ceil32(return_data.size) + 1536]
                _12615 = mem[ceil32(return_data.size) + 1696]
                if not mem[ceil32(return_data.size) + 1536]:
                    _13141 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13141] = 26
                    mem[_13141 + 32] = 'SafeMath: division by zero'
                    mem[_12613] = 0
                    _14131 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_14131] = 0
                    _14678 = mem[64]
                    mem[64] = mem[64] + 32
                    if (1000000000000000000 * 10^18 / _7653 * _9747) - (_8642 * _9747) - (1000000000000000000 * 10^18 / _7653 * _9746) + (_8642 * _9746) / 10^18 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_14678] = (1000000000000000000 * 10^18 / _7653 * _9747) - (_8642 * _9747) - (1000000000000000000 * 10^18 / _7653 * _9746) + (_8642 * _9746) / 10^18
                    _16081 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_16081] = 0
                    mem[64] = mem[64] + 32
                    if not (1000000000000000000 * 10^18 / _7653 * _9747) - (_8642 * _9747) - (1000000000000000000 * 10^18 / _7653 * _9746) + (_8642 * _9746) / 10^18:
                        if not mem[_10597]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not 0 / mem[_10597]:
                            return 0
                        if arg1 * 0 / mem[_10597] / 0 / mem[_10597] != arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        return (arg1 * 0 / mem[_10597] / 10^18)
                    if 10^18 * (1000000000000000000 * 10^18 / _7653 * _9747) - (_8642 * _9747) - (1000000000000000000 * 10^18 / _7653 * _9746) + (_8642 * _9746) / 10^18 / (1000000000000000000 * 10^18 / _7653 * _9747) - (_8642 * _9747) - (1000000000000000000 * 10^18 / _7653 * _9746) + (_8642 * _9746) / 10^18 != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not mem[_10597]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 10^18 * (1000000000000000000 * 10^18 / _7653 * _9747) - (_8642 * _9747) - (1000000000000000000 * 10^18 / _7653 * _9746) + (_8642 * _9746) / 10^18 / mem[_10597]:
                        return 0
                    if arg1 * 10^18 * (1000000000000000000 * 10^18 / _7653 * _9747) - (_8642 * _9747) - (1000000000000000000 * 10^18 / _7653 * _9746) + (_8642 * _9746) / 10^18 / mem[_10597] / 10^18 * (1000000000000000000 * 10^18 / _7653 * _9747) - (_8642 * _9747) - (1000000000000000000 * 10^18 / _7653 * _9746) + (_8642 * _9746) / 10^18 / mem[_10597] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 10^18 * (1000000000000000000 * 10^18 / _7653 * _9747) - (_8642 * _9747) - (1000000000000000000 * 10^18 / _7653 * _9746) + (_8642 * _9746) / 10^18 / mem[_10597] / 10^18)
                if mem[ceil32(return_data.size) + 1696] * mem[ceil32(return_data.size) + 1536] / mem[ceil32(return_data.size) + 1536] != mem[ceil32(return_data.size) + 1696]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _13225 = mem[64]
                mem[64] = mem[64] + 64
                mem[_13225] = 26
                mem[_13225 + 32] = 'SafeMath: division by zero'
                mem[_12613] = _12615 * _12614 / 10^18
                _14677 = mem[64]
                mem[64] = mem[64] + 32
                mem[_14677] = 0
                _15055 = mem[64]
                mem[64] = mem[64] + 32
                if ((1000000000000000000 * 10^18 / _7653 * _9747) - (_8642 * _9747) - (1000000000000000000 * 10^18 / _7653 * _9746) + (_8642 * _9746) / 10^18) + (_12615 * _12614 / 10^18) < _12615 * _12614 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_15055] = ((1000000000000000000 * 10^18 / _7653 * _9747) - (_8642 * _9747) - (1000000000000000000 * 10^18 / _7653 * _9746) + (_8642 * _9746) / 10^18) + (_12615 * _12614 / 10^18)
                _16705 = mem[64]
                mem[64] = mem[64] + 32
                mem[_16705] = 0
                mem[64] = mem[64] + 32
                if not ((1000000000000000000 * 10^18 / _7653 * _9747) - (_8642 * _9747) - (1000000000000000000 * 10^18 / _7653 * _9746) + (_8642 * _9746) / 10^18) + (_12615 * _12614 / 10^18):
                    if not mem[_10597]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / mem[_10597]:
                        return 0
                    if arg1 * 0 / mem[_10597] / 0 / mem[_10597] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 0 / mem[_10597] / 10^18)
                if (10^18 * (1000000000000000000 * 10^18 / _7653 * _9747) - (_8642 * _9747) - (1000000000000000000 * 10^18 / _7653 * _9746) + (_8642 * _9746) / 10^18) + (10^18 * _12615 * _12614 / 10^18) / ((1000000000000000000 * 10^18 / _7653 * _9747) - (_8642 * _9747) - (1000000000000000000 * 10^18 / _7653 * _9746) + (_8642 * _9746) / 10^18) + (_12615 * _12614 / 10^18) != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not mem[_10597]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not (10^18 * (1000000000000000000 * 10^18 / _7653 * _9747) - (_8642 * _9747) - (1000000000000000000 * 10^18 / _7653 * _9746) + (_8642 * _9746) / 10^18) + (10^18 * _12615 * _12614 / 10^18) / mem[_10597]:
                    return 0
                if arg1 * (10^18 * (1000000000000000000 * 10^18 / _7653 * _9747) - (_8642 * _9747) - (1000000000000000000 * 10^18 / _7653 * _9746) + (_8642 * _9746) / 10^18) + (10^18 * _12615 * _12614 / 10^18) / mem[_10597] / (10^18 * (1000000000000000000 * 10^18 / _7653 * _9747) - (_8642 * _9747) - (1000000000000000000 * 10^18 / _7653 * _9746) + (_8642 * _9746) / 10^18) + (10^18 * _12615 * _12614 / 10^18) / mem[_10597] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * (10^18 * (1000000000000000000 * 10^18 / _7653 * _9747) - (_8642 * _9747) - (1000000000000000000 * 10^18 / _7653 * _9746) + (_8642 * _9746) / 10^18) + (10^18 * _12615 * _12614 / 10^18) / mem[_10597] / 10^18)
            mem[ceil32(return_data.size) + 768] = 0
            mem[ceil32(return_data.size) + 800] = 10^18
            mem[ceil32(return_data.size) + 832] = 0
            mem[ceil32(return_data.size) + 864] = 10^18
            mem[ceil32(return_data.size) + 896] = 0
            mem[ceil32(return_data.size) + 960] = 30
            mem[ceil32(return_data.size) + 992] = 'SafeMath: subtraction overflow'
            if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 > 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[ceil32(return_data.size) + 928] = -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 10^18
            mem[ceil32(return_data.size) + 1024] = 0
            mem[ceil32(return_data.size) + 1056] = 0
            mem[64] = ceil32(return_data.size) + 1120
            mem[ceil32(return_data.size) + 1088] = -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 10^18
            idx = 1
            s = ceil32(return_data.size) + 1088
            while idx < 2:
                _3547 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3547] = 0
                _3623 = mem[64]
                mem[64] = mem[64] + 32
                _3624 = mem[s]
                _3625 = mem[ceil32(return_data.size) + 928]
                if not mem[s]:
                    _4324 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4324] = 26
                    mem[_4324 + 32] = 'SafeMath: division by zero'
                    mem[_3623] = 0
                else:
                    if mem[ceil32(return_data.size) + 928] * mem[s] / mem[s] != mem[ceil32(return_data.size) + 928]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4389 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4389] = 26
                    mem[_4389 + 32] = 'SafeMath: division by zero'
                    mem[_3623] = _3625 * _3624 / 10^18
                idx = idx + 1
                s = _3623
                continue 
            _3622 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3622] = 0
            _3676 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3676] = 10^18
            _4180 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4180] = 0
            _4258 = mem[64]
            mem[64] = mem[64] + 32
            _4260 = mem[s]
            _4596 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4596] = 26
            mem[_4596 + 32] = 'SafeMath: division by zero'
            if not _4260:
                revert with 0, 'SafeMath: division by zero', 0
            mem[_4258] = 1000000000000000000 * 10^18 / _4260
            _4959 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4959] = 0
            _5057 = mem[64]
            mem[64] = mem[64] + 32
            _5058 = mem[ceil32(return_data.size) + 800]
            _5140 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5140] = 30
            mem[_5140 + 32] = 'SafeMath: subtraction overflow'
            if _5058 > 1000000000000000000 * 10^18 / _4260:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[_5057] = (1000000000000000000 * 10^18 / _4260) - _5058
            _5590 = mem[64]
            mem[64] = mem[64] + 32
            mem[_5590] = 0
            _5743 = mem[64]
            mem[64] = mem[64] + 32
            mem[_5743] = 0
            _5795 = mem[64]
            mem[64] = mem[64] + 32
            _5796 = mem[ceil32(return_data.size) + 576]
            _5797 = mem[ceil32(return_data.size) + 352]
            _5821 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5821] = 30
            mem[_5821 + 32] = 'SafeMath: subtraction overflow'
            if _5796 > _5797:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[_5795] = _5797 - _5796
            _6066 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6066] = 0
            _6107 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6107] = 0
            _6158 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6158] = 0
            _6186 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6186] = 10^18
            _6234 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6234] = 0
            _6264 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6264] = 10^18
            _6342 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6342] = 0
            _6378 = mem[64]
            mem[64] = mem[64] + 32
            _6379 = mem[ceil32(return_data.size) + 352]
            _6395 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6395] = 30
            mem[_6395 + 32] = 'SafeMath: subtraction overflow'
            if _6379 > 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[_6378] = -_6379 + 10^18
            _6443 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6443] = 0
            _6474 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6474] = 0
            _6501 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6501] = -_6379 + 10^18
            idx = 1
            s = _6501
            while idx < 2:
                _6879 = mem[64]
                mem[64] = mem[64] + 32
                mem[_6879] = 0
                _7030 = mem[64]
                mem[64] = mem[64] + 32
                _7031 = mem[s]
                _7032 = mem[_6378]
                if not mem[s]:
                    _7757 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7757] = 26
                    mem[_7757 + 32] = 'SafeMath: division by zero'
                    mem[_7030] = 0
                else:
                    if mem[_6378] * mem[s] / mem[s] != mem[_6378]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _7805 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7805] = 26
                    mem[_7805 + 32] = 'SafeMath: division by zero'
                    mem[_7030] = _7032 * _7031 / 10^18
                idx = idx + 1
                s = _7030
                continue 
            _7029 = mem[64]
            mem[64] = mem[64] + 32
            mem[_7029] = 0
            _7119 = mem[64]
            mem[64] = mem[64] + 32
            mem[_7119] = 10^18
            _7517 = mem[64]
            mem[64] = mem[64] + 32
            mem[_7517] = 0
            _7667 = mem[64]
            mem[64] = mem[64] + 32
            _7669 = mem[s]
            _7997 = mem[64]
            mem[64] = mem[64] + 64
            mem[_7997] = 26
            mem[_7997 + 32] = 'SafeMath: division by zero'
            if not _7669:
                revert with 0, 'SafeMath: division by zero', 0
            mem[_7667] = 1000000000000000000 * 10^18 / _7669
            _8435 = mem[64]
            mem[64] = mem[64] + 32
            mem[_8435] = 0
            _8661 = mem[64]
            mem[64] = mem[64] + 32
            _8662 = mem[_6186]
            _8799 = mem[64]
            mem[64] = mem[64] + 64
            mem[_8799] = 30
            mem[_8799 + 32] = 'SafeMath: subtraction overflow'
            if _8662 > 1000000000000000000 * 10^18 / _7669:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[_8661] = (1000000000000000000 * 10^18 / _7669) - _8662
            _9293 = mem[64]
            mem[64] = mem[64] + 32
            mem[_9293] = 0
            _9525 = mem[64]
            mem[64] = mem[64] + 32
            mem[_9525] = 0
            _9765 = mem[64]
            mem[64] = mem[64] + 32
            _9766 = mem[ceil32(return_data.size) + 352]
            _9767 = mem[ceil32(return_data.size) + 192]
            _9869 = mem[64]
            mem[64] = mem[64] + 64
            mem[_9869] = 30
            mem[_9869 + 32] = 'SafeMath: subtraction overflow'
            if _9766 > _9767:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[_9765] = _9767 - _9766
            _10451 = mem[64]
            mem[64] = mem[64] + 32
            mem[_10451] = 0
            _10609 = mem[64]
            mem[64] = mem[64] + 32
            if _9767 - _9766 + mem[_5795] < mem[_5795]:
                revert with 0, 'SafeMath: addition overflow'
            mem[_10609] = _9767 - _9766 + mem[_5795]
            _11027 = mem[64]
            mem[64] = mem[64] + 32
            mem[_11027] = 0
            _11219 = mem[64]
            mem[64] = mem[64] + 32
            if not (1000000000000000000 * 10^18 / _7669) - _8662:
                _11727 = mem[64]
                mem[64] = mem[64] + 64
                mem[_11727] = 26
                mem[_11727 + 32] = 'SafeMath: division by zero'
                mem[_11219] = 0
                _12117 = mem[64]
                mem[64] = mem[64] + 32
                mem[_12117] = 0
                _12426 = mem[64]
                mem[64] = mem[64] + 32
                _12427 = mem[_5057]
                _12428 = mem[_5795]
                if not mem[_5057]:
                    _12996 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12996] = 26
                    mem[_12996 + 32] = 'SafeMath: division by zero'
                    mem[_12426] = 0
                    _13687 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_13687] = 0
                    _14181 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_14181] = 0
                    _15607 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_15607] = 0
                    mem[64] = mem[64] + 32
                    if not mem[_10609]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / mem[_10609]:
                        return 0
                    if arg1 * 0 / mem[_10609] / 0 / mem[_10609] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 0 / mem[_10609] / 10^18)
                if mem[_5795] * mem[_5057] / mem[_5057] != mem[_5795]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _13154 = mem[64]
                mem[64] = mem[64] + 64
                mem[_13154] = 26
                mem[_13154 + 32] = 'SafeMath: division by zero'
                mem[_12426] = _12428 * _12427 / 10^18
                _14180 = mem[64]
                mem[64] = mem[64] + 32
                mem[_14180] = 0
                _14725 = mem[64]
                mem[64] = mem[64] + 32
                if _12428 * _12427 / 10^18 < _12428 * _12427 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_14725] = _12428 * _12427 / 10^18
                _16134 = mem[64]
                mem[64] = mem[64] + 32
                mem[_16134] = 0
                mem[64] = mem[64] + 32
                if not _12428 * _12427 / 10^18:
                    if not mem[_10609]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / mem[_10609]:
                        return 0
                    if arg1 * 0 / mem[_10609] / 0 / mem[_10609] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 0 / mem[_10609] / 10^18)
                if 10^18 * _12428 * _12427 / 10^18 / _12428 * _12427 / 10^18 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not mem[_10609]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 10^18 * _12428 * _12427 / 10^18 / mem[_10609]:
                    return 0
                if arg1 * 10^18 * _12428 * _12427 / 10^18 / mem[_10609] / 10^18 * _12428 * _12427 / 10^18 / mem[_10609] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 10^18 * _12428 * _12427 / 10^18 / mem[_10609] / 10^18)
            if (_9767 * 1000000000000000000 * 10^18 / _7669) - (_9766 * 1000000000000000000 * 10^18 / _7669) - (_9767 * _8662) + (_9766 * _8662) / (1000000000000000000 * 10^18 / _7669) - _8662 != _9767 - _9766:
                revert with 0, 'SafeMath: multiplication overflow'
            _11789 = mem[64]
            mem[64] = mem[64] + 64
            mem[_11789] = 26
            mem[_11789 + 32] = 'SafeMath: division by zero'
            mem[_11219] = (1000000000000000000 * 10^18 / _7669 * _9767) - (_8662 * _9767) - (1000000000000000000 * 10^18 / _7669 * _9766) + (_8662 * _9766) / 10^18
            _12425 = mem[64]
            mem[64] = mem[64] + 32
            mem[_12425] = 0
            _12625 = mem[64]
            mem[64] = mem[64] + 32
            _12626 = mem[_5057]
            _12627 = mem[_5795]
            if not mem[_5057]:
                _13153 = mem[64]
                mem[64] = mem[64] + 64
                mem[_13153] = 26
                mem[_13153 + 32] = 'SafeMath: division by zero'
                mem[_12625] = 0
                _14179 = mem[64]
                mem[64] = mem[64] + 32
                mem[_14179] = 0
                _14722 = mem[64]
                mem[64] = mem[64] + 32
                if (1000000000000000000 * 10^18 / _7669 * _9767) - (_8662 * _9767) - (1000000000000000000 * 10^18 / _7669 * _9766) + (_8662 * _9766) / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_14722] = (1000000000000000000 * 10^18 / _7669 * _9767) - (_8662 * _9767) - (1000000000000000000 * 10^18 / _7669 * _9766) + (_8662 * _9766) / 10^18
                _16133 = mem[64]
                mem[64] = mem[64] + 32
                mem[_16133] = 0
                mem[64] = mem[64] + 32
                if not (1000000000000000000 * 10^18 / _7669 * _9767) - (_8662 * _9767) - (1000000000000000000 * 10^18 / _7669 * _9766) + (_8662 * _9766) / 10^18:
                    if not mem[_10609]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / mem[_10609]:
                        return 0
                    if arg1 * 0 / mem[_10609] / 0 / mem[_10609] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 0 / mem[_10609] / 10^18)
                if 10^18 * (1000000000000000000 * 10^18 / _7669 * _9767) - (_8662 * _9767) - (1000000000000000000 * 10^18 / _7669 * _9766) + (_8662 * _9766) / 10^18 / (1000000000000000000 * 10^18 / _7669 * _9767) - (_8662 * _9767) - (1000000000000000000 * 10^18 / _7669 * _9766) + (_8662 * _9766) / 10^18 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not mem[_10609]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 10^18 * (1000000000000000000 * 10^18 / _7669 * _9767) - (_8662 * _9767) - (1000000000000000000 * 10^18 / _7669 * _9766) + (_8662 * _9766) / 10^18 / mem[_10609]:
                    return 0
                if arg1 * 10^18 * (1000000000000000000 * 10^18 / _7669 * _9767) - (_8662 * _9767) - (1000000000000000000 * 10^18 / _7669 * _9766) + (_8662 * _9766) / 10^18 / mem[_10609] / 10^18 * (1000000000000000000 * 10^18 / _7669 * _9767) - (_8662 * _9767) - (1000000000000000000 * 10^18 / _7669 * _9766) + (_8662 * _9766) / 10^18 / mem[_10609] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 10^18 * (1000000000000000000 * 10^18 / _7669 * _9767) - (_8662 * _9767) - (1000000000000000000 * 10^18 / _7669 * _9766) + (_8662 * _9766) / 10^18 / mem[_10609] / 10^18)
            if mem[_5795] * mem[_5057] / mem[_5057] != mem[_5795]:
                revert with 0, 'SafeMath: multiplication overflow'
            _13229 = mem[64]
            mem[64] = mem[64] + 64
            mem[_13229] = 26
            mem[_13229 + 32] = 'SafeMath: division by zero'
            mem[_12625] = _12627 * _12626 / 10^18
            _14721 = mem[64]
            mem[64] = mem[64] + 32
            mem[_14721] = 0
            _15079 = mem[64]
            mem[64] = mem[64] + 32
            if ((1000000000000000000 * 10^18 / _7669 * _9767) - (_8662 * _9767) - (1000000000000000000 * 10^18 / _7669 * _9766) + (_8662 * _9766) / 10^18) + (_12627 * _12626 / 10^18) < _12627 * _12626 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            mem[_15079] = ((1000000000000000000 * 10^18 / _7669 * _9767) - (_8662 * _9767) - (1000000000000000000 * 10^18 / _7669 * _9766) + (_8662 * _9766) / 10^18) + (_12627 * _12626 / 10^18)
            _16757 = mem[64]
            mem[64] = mem[64] + 32
            mem[_16757] = 0
            mem[64] = mem[64] + 32
            if not ((1000000000000000000 * 10^18 / _7669 * _9767) - (_8662 * _9767) - (1000000000000000000 * 10^18 / _7669 * _9766) + (_8662 * _9766) / 10^18) + (_12627 * _12626 / 10^18):
                if not mem[_10609]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / mem[_10609]:
                    return 0
                if arg1 * 0 / mem[_10609] / 0 / mem[_10609] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 0 / mem[_10609] / 10^18)
            if (10^18 * (1000000000000000000 * 10^18 / _7669 * _9767) - (_8662 * _9767) - (1000000000000000000 * 10^18 / _7669 * _9766) + (_8662 * _9766) / 10^18) + (10^18 * _12627 * _12626 / 10^18) / ((1000000000000000000 * 10^18 / _7669 * _9767) - (_8662 * _9767) - (1000000000000000000 * 10^18 / _7669 * _9766) + (_8662 * _9766) / 10^18) + (_12627 * _12626 / 10^18) != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not mem[_10609]:
                revert with 0, 'SafeMath: division by zero', 0
            if not (10^18 * (1000000000000000000 * 10^18 / _7669 * _9767) - (_8662 * _9767) - (1000000000000000000 * 10^18 / _7669 * _9766) + (_8662 * _9766) / 10^18) + (10^18 * _12627 * _12626 / 10^18) / mem[_10609]:
                return 0
            if arg1 * (10^18 * (1000000000000000000 * 10^18 / _7669 * _9767) - (_8662 * _9767) - (1000000000000000000 * 10^18 / _7669 * _9766) + (_8662 * _9766) / 10^18) + (10^18 * _12627 * _12626 / 10^18) / mem[_10609] / (10^18 * (1000000000000000000 * 10^18 / _7669 * _9767) - (_8662 * _9767) - (1000000000000000000 * 10^18 / _7669 * _9766) + (_8662 * _9766) / 10^18) + (10^18 * _12627 * _12626 / 10^18) / mem[_10609] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * (10^18 * (1000000000000000000 * 10^18 / _7669 * _9767) - (_8662 * _9767) - (1000000000000000000 * 10^18 / _7669 * _9766) + (_8662 * _9766) / 10^18) + (10^18 * _12627 * _12626 / 10^18) / mem[_10609] / 10^18)
        if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 > 15 * 10^16:
            mem[ceil32(return_data.size) + 736] = 10^18
            mem[ceil32(return_data.size) + 768] = 0
            mem[ceil32(return_data.size) + 800] = 10^18
            mem[ceil32(return_data.size) + 832] = 0
            mem[ceil32(return_data.size) + 896] = 30
            mem[ceil32(return_data.size) + 928] = 'SafeMath: subtraction overflow'
            mem[ceil32(return_data.size) + 864] = 85 * 10^16
            mem[ceil32(return_data.size) + 960] = 0
            mem[ceil32(return_data.size) + 992] = 0
            mem[64] = ceil32(return_data.size) + 1056
            mem[ceil32(return_data.size) + 1024] = 85 * 10^16
            idx = 1
            s = ceil32(return_data.size) + 1024
            while idx < 2:
                _3538 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3538] = 0
                _3611 = mem[64]
                mem[64] = mem[64] + 32
                _3612 = mem[s]
                _3613 = mem[ceil32(return_data.size) + 864]
                if not mem[s]:
                    _4316 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4316] = 26
                    mem[_4316 + 32] = 'SafeMath: division by zero'
                    mem[_3611] = 0
                else:
                    if mem[ceil32(return_data.size) + 864] * mem[s] / mem[s] != mem[ceil32(return_data.size) + 864]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4374 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4374] = 26
                    mem[_4374 + 32] = 'SafeMath: division by zero'
                    mem[_3611] = _3613 * _3612 / 10^18
                idx = idx + 1
                s = _3611
                continue 
            _3610 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3610] = 0
            _3672 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3672] = 10^18
            _4168 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4168] = 0
            _4246 = mem[64]
            mem[64] = mem[64] + 32
            _4248 = mem[s]
            mem[mem[64] + 32] = 'SafeMath: division by zero'
            if not _4248:
                revert with 0, 'SafeMath: division by zero', 0
            mem[_4246] = 1000000000000000000 * 10^18 / _4248
            mem[mem[64]] = 0
            if mem[ceil32(return_data.size) + 736] > 1000000000000000000 * 10^18 / _4248:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not (1000000000000000000 * 10^18 / _4248) - mem[ceil32(return_data.size) + 736]:
                return 0
            if (1000000000000000000 * 10^18 / _4248 * arg1) - (mem[ceil32(return_data.size) + 736] * arg1) / (1000000000000000000 * 10^18 / _4248) - mem[ceil32(return_data.size) + 736] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return ((1000000000000000000 * 10^18 / _4248 * arg1) - (mem[ceil32(return_data.size) + 736] * arg1) / 10^18)
        mem[ceil32(return_data.size) + 736] = 0
        if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 != 15 * 10^16:
            mem[ceil32(return_data.size) + 768] = 10^18
            mem[ceil32(return_data.size) + 800] = 0
            mem[ceil32(return_data.size) + 832] = 10^18
            mem[ceil32(return_data.size) + 864] = 0
            mem[ceil32(return_data.size) + 928] = 30
            mem[ceil32(return_data.size) + 960] = 'SafeMath: subtraction overflow'
            if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 > 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[ceil32(return_data.size) + 896] = -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 10^18
            mem[ceil32(return_data.size) + 992] = 0
            mem[ceil32(return_data.size) + 1024] = 10^18
            mem[ceil32(return_data.size) + 1056] = 0
            mem[ceil32(return_data.size) + 1120] = 30
            mem[ceil32(return_data.size) + 1152] = 'SafeMath: subtraction overflow'
            mem[ceil32(return_data.size) + 1088] = 85 * 10^16
            mem[ceil32(return_data.size) + 1184] = 0
            if (-85 * 10^16 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 85 * 10^16 != -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[ceil32(return_data.size) + 1248] = 26
            mem[ceil32(return_data.size) + 1280] = 'SafeMath: division by zero'
            mem[ceil32(return_data.size) + 1216] = (-85 * 10^16 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18
            mem[ceil32(return_data.size) + 1312] = 0
            mem[ceil32(return_data.size) + 1344] = 10^18
            mem[ceil32(return_data.size) + 1376] = 0
            mem[ceil32(return_data.size) + 1440] = 26
            mem[ceil32(return_data.size) + 1472] = 'SafeMath: division by zero'
            if not (-85 * 10^16 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18:
                revert with 0, 'SafeMath: division by zero', 0
            mem[ceil32(return_data.size) + 1408] = 1000000000000000000 * 10^18 / (-85 * 10^16 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18
            mem[ceil32(return_data.size) + 1504] = 0
            mem[ceil32(return_data.size) + 1568] = 30
            mem[ceil32(return_data.size) + 1600] = 'SafeMath: subtraction overflow'
            if 10^18 > 1000000000000000000 * 10^18 / (-85 * 10^16 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[ceil32(return_data.size) + 1536] = (1000000000000000000 * 10^18 / (-85 * 10^16 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18) - 10^18
            mem[ceil32(return_data.size) + 1632] = 0
            mem[ceil32(return_data.size) + 1664] = 0
            mem[ceil32(return_data.size) + 1728] = 30
            mem[ceil32(return_data.size) + 1760] = 'SafeMath: subtraction overflow'
            if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 > 15 * 10^16:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[ceil32(return_data.size) + 1696] = -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 15 * 10^16
            mem[ceil32(return_data.size) + 1792] = 0
            mem[ceil32(return_data.size) + 1824] = 0
            mem[ceil32(return_data.size) + 1856] = 0
            mem[ceil32(return_data.size) + 1888] = 10^18
            mem[ceil32(return_data.size) + 1920] = 0
            mem[ceil32(return_data.size) + 1952] = 10^18
            mem[ceil32(return_data.size) + 1984] = 0
            mem[ceil32(return_data.size) + 2048] = 30
            mem[ceil32(return_data.size) + 2080] = 'SafeMath: subtraction overflow'
            mem[ceil32(return_data.size) + 2016] = 85 * 10^16
            mem[ceil32(return_data.size) + 2112] = 0
            mem[ceil32(return_data.size) + 2144] = 0
            mem[64] = ceil32(return_data.size) + 2208
            mem[ceil32(return_data.size) + 2176] = 85 * 10^16
            idx = 1
            s = ceil32(return_data.size) + 2176
            while idx < 2:
                _6869 = mem[64]
                mem[64] = mem[64] + 32
                mem[_6869] = 0
                _6990 = mem[64]
                mem[64] = mem[64] + 32
                _6991 = mem[s]
                _6992 = mem[ceil32(return_data.size) + 2016]
                if not mem[s]:
                    _7747 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7747] = 26
                    mem[_7747 + 32] = 'SafeMath: division by zero'
                    mem[_6990] = 0
                else:
                    if mem[ceil32(return_data.size) + 2016] * mem[s] / mem[s] != mem[ceil32(return_data.size) + 2016]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _7795 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7795] = 26
                    mem[_7795 + 32] = 'SafeMath: division by zero'
                    mem[_6990] = _6992 * _6991 / 10^18
                idx = idx + 1
                s = _6990
                continue 
            _6989 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6989] = 0
            _7109 = mem[64]
            mem[64] = mem[64] + 32
            mem[_7109] = 10^18
            _7507 = mem[64]
            mem[64] = mem[64] + 32
            mem[_7507] = 0
            _7627 = mem[64]
            mem[64] = mem[64] + 32
            _7629 = mem[s]
            _7987 = mem[64]
            mem[64] = mem[64] + 64
            mem[_7987] = 26
            mem[_7987 + 32] = 'SafeMath: division by zero'
            if not _7629:
                revert with 0, 'SafeMath: division by zero', 0
            mem[_7627] = 1000000000000000000 * 10^18 / _7629
            _8395 = mem[64]
            mem[64] = mem[64] + 32
            mem[_8395] = 0
            _8611 = mem[64]
            mem[64] = mem[64] + 32
            _8612 = mem[ceil32(return_data.size) + 1888]
            _8779 = mem[64]
            mem[64] = mem[64] + 64
            mem[_8779] = 30
            mem[_8779 + 32] = 'SafeMath: subtraction overflow'
            if _8612 > 1000000000000000000 * 10^18 / _7629:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[_8611] = (1000000000000000000 * 10^18 / _7629) - _8612
            _9283 = mem[64]
            mem[64] = mem[64] + 32
            mem[_9283] = 0
            _9475 = mem[64]
            mem[64] = mem[64] + 32
            mem[_9475] = 0
            _9715 = mem[64]
            mem[64] = mem[64] + 32
            _9716 = mem[ceil32(return_data.size) + 352]
            _9717 = mem[ceil32(return_data.size) + 192]
            _9859 = mem[64]
            mem[64] = mem[64] + 64
            mem[_9859] = 30
            mem[_9859 + 32] = 'SafeMath: subtraction overflow'
            if _9716 > _9717:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[_9715] = _9717 - _9716
            _10411 = mem[64]
            mem[64] = mem[64] + 32
            mem[_10411] = 0
            _10579 = mem[64]
            mem[64] = mem[64] + 32
            if _9717 - _9716 + mem[ceil32(return_data.size) + 1696] < mem[ceil32(return_data.size) + 1696]:
                revert with 0, 'SafeMath: addition overflow'
            mem[_10579] = _9717 - _9716 + mem[ceil32(return_data.size) + 1696]
            _10987 = mem[64]
            mem[64] = mem[64] + 32
            mem[_10987] = 0
            _11179 = mem[64]
            mem[64] = mem[64] + 32
            if not (1000000000000000000 * 10^18 / _7629) - _8612:
                _11707 = mem[64]
                mem[64] = mem[64] + 64
                mem[_11707] = 26
                mem[_11707 + 32] = 'SafeMath: division by zero'
                mem[_11179] = 0
                _12067 = mem[64]
                mem[64] = mem[64] + 32
                mem[_12067] = 0
                _12356 = mem[64]
                mem[64] = mem[64] + 32
                _12357 = mem[ceil32(return_data.size) + 1536]
                _12358 = mem[ceil32(return_data.size) + 1696]
                if not mem[ceil32(return_data.size) + 1536]:
                    _12956 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12956] = 26
                    mem[_12956 + 32] = 'SafeMath: division by zero'
                    mem[_12356] = 0
                    _13627 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_13627] = 0
                    _14061 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_14061] = 0
                    _15547 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_15547] = 0
                    mem[64] = mem[64] + 32
                    if not mem[_10579]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / mem[_10579]:
                        return 0
                    if arg1 * 0 / mem[_10579] / 0 / mem[_10579] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 0 / mem[_10579] / 10^18)
                if mem[ceil32(return_data.size) + 1696] * mem[ceil32(return_data.size) + 1536] / mem[ceil32(return_data.size) + 1536] != mem[ceil32(return_data.size) + 1696]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _13124 = mem[64]
                mem[64] = mem[64] + 64
                mem[_13124] = 26
                mem[_13124 + 32] = 'SafeMath: division by zero'
                mem[_12356] = _12358 * _12357 / 10^18
                _14060 = mem[64]
                mem[64] = mem[64] + 32
                mem[_14060] = 0
                _14615 = mem[64]
                mem[64] = mem[64] + 32
                if _12358 * _12357 / 10^18 < _12358 * _12357 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_14615] = _12358 * _12357 / 10^18
                _16004 = mem[64]
                mem[64] = mem[64] + 32
                mem[_16004] = 0
                mem[64] = mem[64] + 32
                if not _12358 * _12357 / 10^18:
                    if not mem[_10579]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / mem[_10579]:
                        return 0
                    if arg1 * 0 / mem[_10579] / 0 / mem[_10579] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 0 / mem[_10579] / 10^18)
                if 10^18 * _12358 * _12357 / 10^18 / _12358 * _12357 / 10^18 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not mem[_10579]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 10^18 * _12358 * _12357 / 10^18 / mem[_10579]:
                    return 0
                if arg1 * 10^18 * _12358 * _12357 / 10^18 / mem[_10579] / 10^18 * _12358 * _12357 / 10^18 / mem[_10579] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 10^18 * _12358 * _12357 / 10^18 / mem[_10579] / 10^18)
            if (_9717 * 1000000000000000000 * 10^18 / _7629) - (_9716 * 1000000000000000000 * 10^18 / _7629) - (_9717 * _8612) + (_9716 * _8612) / (1000000000000000000 * 10^18 / _7629) - _8612 != _9717 - _9716:
                revert with 0, 'SafeMath: multiplication overflow'
            _11779 = mem[64]
            mem[64] = mem[64] + 64
            mem[_11779] = 26
            mem[_11779 + 32] = 'SafeMath: division by zero'
            mem[_11179] = (1000000000000000000 * 10^18 / _7629 * _9717) - (_8612 * _9717) - (1000000000000000000 * 10^18 / _7629 * _9716) + (_8612 * _9716) / 10^18
            _12355 = mem[64]
            mem[64] = mem[64] + 32
            mem[_12355] = 0
            _12595 = mem[64]
            mem[64] = mem[64] + 32
            _12596 = mem[ceil32(return_data.size) + 1536]
            _12597 = mem[ceil32(return_data.size) + 1696]
            if not mem[ceil32(return_data.size) + 1536]:
                _13123 = mem[64]
                mem[64] = mem[64] + 64
                mem[_13123] = 26
                mem[_13123 + 32] = 'SafeMath: division by zero'
                mem[_12595] = 0
                _14059 = mem[64]
                mem[64] = mem[64] + 32
                mem[_14059] = 0
                _14612 = mem[64]
                mem[64] = mem[64] + 32
                if (1000000000000000000 * 10^18 / _7629 * _9717) - (_8612 * _9717) - (1000000000000000000 * 10^18 / _7629 * _9716) + (_8612 * _9716) / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_14612] = (1000000000000000000 * 10^18 / _7629 * _9717) - (_8612 * _9717) - (1000000000000000000 * 10^18 / _7629 * _9716) + (_8612 * _9716) / 10^18
                _16003 = mem[64]
                mem[64] = mem[64] + 32
                mem[_16003] = 0
                mem[64] = mem[64] + 32
                if not (1000000000000000000 * 10^18 / _7629 * _9717) - (_8612 * _9717) - (1000000000000000000 * 10^18 / _7629 * _9716) + (_8612 * _9716) / 10^18:
                    if not mem[_10579]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / mem[_10579]:
                        return 0
                    if arg1 * 0 / mem[_10579] / 0 / mem[_10579] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 0 / mem[_10579] / 10^18)
                if 10^18 * (1000000000000000000 * 10^18 / _7629 * _9717) - (_8612 * _9717) - (1000000000000000000 * 10^18 / _7629 * _9716) + (_8612 * _9716) / 10^18 / (1000000000000000000 * 10^18 / _7629 * _9717) - (_8612 * _9717) - (1000000000000000000 * 10^18 / _7629 * _9716) + (_8612 * _9716) / 10^18 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not mem[_10579]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 10^18 * (1000000000000000000 * 10^18 / _7629 * _9717) - (_8612 * _9717) - (1000000000000000000 * 10^18 / _7629 * _9716) + (_8612 * _9716) / 10^18 / mem[_10579]:
                    return 0
                if arg1 * 10^18 * (1000000000000000000 * 10^18 / _7629 * _9717) - (_8612 * _9717) - (1000000000000000000 * 10^18 / _7629 * _9716) + (_8612 * _9716) / 10^18 / mem[_10579] / 10^18 * (1000000000000000000 * 10^18 / _7629 * _9717) - (_8612 * _9717) - (1000000000000000000 * 10^18 / _7629 * _9716) + (_8612 * _9716) / 10^18 / mem[_10579] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 10^18 * (1000000000000000000 * 10^18 / _7629 * _9717) - (_8612 * _9717) - (1000000000000000000 * 10^18 / _7629 * _9716) + (_8612 * _9716) / 10^18 / mem[_10579] / 10^18)
            if mem[ceil32(return_data.size) + 1696] * mem[ceil32(return_data.size) + 1536] / mem[ceil32(return_data.size) + 1536] != mem[ceil32(return_data.size) + 1696]:
                revert with 0, 'SafeMath: multiplication overflow'
            _13219 = mem[64]
            mem[64] = mem[64] + 64
            mem[_13219] = 26
            mem[_13219 + 32] = 'SafeMath: division by zero'
            mem[_12595] = _12597 * _12596 / 10^18
            _14611 = mem[64]
            mem[64] = mem[64] + 32
            mem[_14611] = 0
            _15019 = mem[64]
            mem[64] = mem[64] + 32
            if ((1000000000000000000 * 10^18 / _7629 * _9717) - (_8612 * _9717) - (1000000000000000000 * 10^18 / _7629 * _9716) + (_8612 * _9716) / 10^18) + (_12597 * _12596 / 10^18) < _12597 * _12596 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            mem[_15019] = ((1000000000000000000 * 10^18 / _7629 * _9717) - (_8612 * _9717) - (1000000000000000000 * 10^18 / _7629 * _9716) + (_8612 * _9716) / 10^18) + (_12597 * _12596 / 10^18)
            _16627 = mem[64]
            mem[64] = mem[64] + 32
            mem[_16627] = 0
            mem[64] = mem[64] + 32
            if not ((1000000000000000000 * 10^18 / _7629 * _9717) - (_8612 * _9717) - (1000000000000000000 * 10^18 / _7629 * _9716) + (_8612 * _9716) / 10^18) + (_12597 * _12596 / 10^18):
                if not mem[_10579]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / mem[_10579]:
                    return 0
                if arg1 * 0 / mem[_10579] / 0 / mem[_10579] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 0 / mem[_10579] / 10^18)
            if (10^18 * (1000000000000000000 * 10^18 / _7629 * _9717) - (_8612 * _9717) - (1000000000000000000 * 10^18 / _7629 * _9716) + (_8612 * _9716) / 10^18) + (10^18 * _12597 * _12596 / 10^18) / ((1000000000000000000 * 10^18 / _7629 * _9717) - (_8612 * _9717) - (1000000000000000000 * 10^18 / _7629 * _9716) + (_8612 * _9716) / 10^18) + (_12597 * _12596 / 10^18) != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not mem[_10579]:
                revert with 0, 'SafeMath: division by zero', 0
            if not (10^18 * (1000000000000000000 * 10^18 / _7629 * _9717) - (_8612 * _9717) - (1000000000000000000 * 10^18 / _7629 * _9716) + (_8612 * _9716) / 10^18) + (10^18 * _12597 * _12596 / 10^18) / mem[_10579]:
                return 0
            if arg1 * (10^18 * (1000000000000000000 * 10^18 / _7629 * _9717) - (_8612 * _9717) - (1000000000000000000 * 10^18 / _7629 * _9716) + (_8612 * _9716) / 10^18) + (10^18 * _12597 * _12596 / 10^18) / mem[_10579] / (10^18 * (1000000000000000000 * 10^18 / _7629 * _9717) - (_8612 * _9717) - (1000000000000000000 * 10^18 / _7629 * _9716) + (_8612 * _9716) / 10^18) + (10^18 * _12597 * _12596 / 10^18) / mem[_10579] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * (10^18 * (1000000000000000000 * 10^18 / _7629 * _9717) - (_8612 * _9717) - (1000000000000000000 * 10^18 / _7629 * _9716) + (_8612 * _9716) / 10^18) + (10^18 * _12597 * _12596 / 10^18) / mem[_10579] / 10^18)
        mem[ceil32(return_data.size) + 768] = 0
        mem[ceil32(return_data.size) + 800] = 10^18
        mem[ceil32(return_data.size) + 832] = 0
        mem[ceil32(return_data.size) + 864] = 10^18
        mem[ceil32(return_data.size) + 896] = 0
        mem[ceil32(return_data.size) + 960] = 30
        mem[ceil32(return_data.size) + 992] = 'SafeMath: subtraction overflow'
        if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 > 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[ceil32(return_data.size) + 928] = -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 10^18
        mem[ceil32(return_data.size) + 1024] = 0
        mem[ceil32(return_data.size) + 1056] = 0
        mem[64] = ceil32(return_data.size) + 1120
        mem[ceil32(return_data.size) + 1088] = -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 10^18
        idx = 1
        s = ceil32(return_data.size) + 1088
        while idx < 2:
            _3543 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3543] = 0
            _3618 = mem[64]
            mem[64] = mem[64] + 32
            _3619 = mem[s]
            _3620 = mem[ceil32(return_data.size) + 928]
            if not mem[s]:
                _4318 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4318] = 26
                mem[_4318 + 32] = 'SafeMath: division by zero'
                mem[_3618] = 0
            else:
                if mem[ceil32(return_data.size) + 928] * mem[s] / mem[s] != mem[ceil32(return_data.size) + 928]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4380 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4380] = 26
                mem[_4380 + 32] = 'SafeMath: division by zero'
                mem[_3618] = _3620 * _3619 / 10^18
            idx = idx + 1
            s = _3618
            continue 
        _3617 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3617] = 0
        _3674 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3674] = 10^18
        _4176 = mem[64]
        mem[64] = mem[64] + 32
        mem[_4176] = 0
        _4253 = mem[64]
        mem[64] = mem[64] + 32
        _4255 = mem[s]
        _4594 = mem[64]
        mem[64] = mem[64] + 64
        mem[_4594] = 26
        mem[_4594 + 32] = 'SafeMath: division by zero'
        if not _4255:
            revert with 0, 'SafeMath: division by zero', 0
        mem[_4253] = 1000000000000000000 * 10^18 / _4255
        _4955 = mem[64]
        mem[64] = mem[64] + 32
        mem[_4955] = 0
        _5051 = mem[64]
        mem[64] = mem[64] + 32
        _5052 = mem[ceil32(return_data.size) + 800]
        _5133 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5133] = 30
        mem[_5133 + 32] = 'SafeMath: subtraction overflow'
        if _5052 > 1000000000000000000 * 10^18 / _4255:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[_5051] = (1000000000000000000 * 10^18 / _4255) - _5052
        _5588 = mem[64]
        mem[64] = mem[64] + 32
        mem[_5588] = 0
        _5737 = mem[64]
        mem[64] = mem[64] + 32
        mem[_5737] = 0
        _5790 = mem[64]
        mem[64] = mem[64] + 32
        _5791 = mem[ceil32(return_data.size) + 576]
        _5792 = mem[ceil32(return_data.size) + 352]
        _5820 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5820] = 30
        mem[_5820 + 32] = 'SafeMath: subtraction overflow'
        if _5791 > _5792:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[_5790] = _5792 - _5791
        _6065 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6065] = 0
        _6106 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6106] = 0
        _6156 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6156] = 0
        _6185 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6185] = 10^18
        _6230 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6230] = 0
        _6261 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6261] = 10^18
        _6338 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6338] = 0
        _6374 = mem[64]
        mem[64] = mem[64] + 32
        _6375 = mem[ceil32(return_data.size) + 352]
        _6394 = mem[64]
        mem[64] = mem[64] + 64
        mem[_6394] = 30
        mem[_6394 + 32] = 'SafeMath: subtraction overflow'
        if _6375 > 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[_6374] = -_6375 + 10^18
        _6442 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6442] = 0
        _6470 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6470] = 0
        _6498 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6498] = -_6375 + 10^18
        idx = 1
        s = _6498
        while idx < 2:
            _6873 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6873] = 0
            _7006 = mem[64]
            mem[64] = mem[64] + 32
            _7007 = mem[s]
            _7008 = mem[_6374]
            if not mem[s]:
                _7751 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7751] = 26
                mem[_7751 + 32] = 'SafeMath: division by zero'
                mem[_7006] = 0
            else:
                if mem[_6374] * mem[s] / mem[s] != mem[_6374]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _7799 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7799] = 26
                mem[_7799 + 32] = 'SafeMath: division by zero'
                mem[_7006] = _7008 * _7007 / 10^18
            idx = idx + 1
            s = _7006
            continue 
        _7005 = mem[64]
        mem[64] = mem[64] + 32
        mem[_7005] = 0
        _7113 = mem[64]
        mem[64] = mem[64] + 32
        mem[_7113] = 10^18
        _7511 = mem[64]
        mem[64] = mem[64] + 32
        mem[_7511] = 0
        _7643 = mem[64]
        mem[64] = mem[64] + 32
        _7645 = mem[s]
        _7991 = mem[64]
        mem[64] = mem[64] + 64
        mem[_7991] = 26
        mem[_7991 + 32] = 'SafeMath: division by zero'
        if not _7645:
            revert with 0, 'SafeMath: division by zero', 0
        mem[_7643] = 1000000000000000000 * 10^18 / _7645
        _8411 = mem[64]
        mem[64] = mem[64] + 32
        mem[_8411] = 0
        _8631 = mem[64]
        mem[64] = mem[64] + 32
        _8632 = mem[_6185]
        _8787 = mem[64]
        mem[64] = mem[64] + 64
        mem[_8787] = 30
        mem[_8787 + 32] = 'SafeMath: subtraction overflow'
        if _8632 > 1000000000000000000 * 10^18 / _7645:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[_8631] = (1000000000000000000 * 10^18 / _7645) - _8632
        _9287 = mem[64]
        mem[64] = mem[64] + 32
        mem[_9287] = 0
        _9495 = mem[64]
        mem[64] = mem[64] + 32
        mem[_9495] = 0
        _9735 = mem[64]
        mem[64] = mem[64] + 32
        _9736 = mem[ceil32(return_data.size) + 352]
        _9737 = mem[ceil32(return_data.size) + 192]
        _9863 = mem[64]
        mem[64] = mem[64] + 64
        mem[_9863] = 30
        mem[_9863 + 32] = 'SafeMath: subtraction overflow'
        if _9736 > _9737:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[_9735] = _9737 - _9736
        _10427 = mem[64]
        mem[64] = mem[64] + 32
        mem[_10427] = 0
        _10591 = mem[64]
        mem[64] = mem[64] + 32
        if _9737 - _9736 + mem[_5790] < mem[_5790]:
            revert with 0, 'SafeMath: addition overflow'
        mem[_10591] = _9737 - _9736 + mem[_5790]
        _11003 = mem[64]
        mem[64] = mem[64] + 32
        mem[_11003] = 0
        _11195 = mem[64]
        mem[64] = mem[64] + 32
        if not (1000000000000000000 * 10^18 / _7645) - _8632:
            _11715 = mem[64]
            mem[64] = mem[64] + 64
            mem[_11715] = 26
            mem[_11715 + 32] = 'SafeMath: division by zero'
            mem[_11195] = 0
            _12087 = mem[64]
            mem[64] = mem[64] + 32
            mem[_12087] = 0
            _12384 = mem[64]
            mem[64] = mem[64] + 32
            _12385 = mem[_5051]
            _12386 = mem[_5790]
            if not mem[_5051]:
                _12972 = mem[64]
                mem[64] = mem[64] + 64
                mem[_12972] = 26
                mem[_12972 + 32] = 'SafeMath: division by zero'
                mem[_12384] = 0
                _13651 = mem[64]
                mem[64] = mem[64] + 32
                mem[_13651] = 0
                _14109 = mem[64]
                mem[64] = mem[64] + 32
                mem[_14109] = 0
                _15571 = mem[64]
                mem[64] = mem[64] + 32
                mem[_15571] = 0
                mem[64] = mem[64] + 32
                if not mem[_10591]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / mem[_10591]:
                    return 0
                if arg1 * 0 / mem[_10591] / 0 / mem[_10591] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 0 / mem[_10591] / 10^18)
            if mem[_5790] * mem[_5051] / mem[_5051] != mem[_5790]:
                revert with 0, 'SafeMath: multiplication overflow'
            _13136 = mem[64]
            mem[64] = mem[64] + 64
            mem[_13136] = 26
            mem[_13136 + 32] = 'SafeMath: division by zero'
            mem[_12384] = _12386 * _12385 / 10^18
            _14108 = mem[64]
            mem[64] = mem[64] + 32
            mem[_14108] = 0
            _14659 = mem[64]
            mem[64] = mem[64] + 32
            if _12386 * _12385 / 10^18 < _12386 * _12385 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            mem[_14659] = _12386 * _12385 / 10^18
            _16056 = mem[64]
            mem[64] = mem[64] + 32
            mem[_16056] = 0
            mem[64] = mem[64] + 32
            if not _12386 * _12385 / 10^18:
                if not mem[_10591]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / mem[_10591]:
                    return 0
                if arg1 * 0 / mem[_10591] / 0 / mem[_10591] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 0 / mem[_10591] / 10^18)
            if 10^18 * _12386 * _12385 / 10^18 / _12386 * _12385 / 10^18 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not mem[_10591]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^18 * _12386 * _12385 / 10^18 / mem[_10591]:
                return 0
            if arg1 * 10^18 * _12386 * _12385 / 10^18 / mem[_10591] / 10^18 * _12386 * _12385 / 10^18 / mem[_10591] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * 10^18 * _12386 * _12385 / 10^18 / mem[_10591] / 10^18)
        if (_9737 * 1000000000000000000 * 10^18 / _7645) - (_9736 * 1000000000000000000 * 10^18 / _7645) - (_9737 * _8632) + (_9736 * _8632) / (1000000000000000000 * 10^18 / _7645) - _8632 != _9737 - _9736:
            revert with 0, 'SafeMath: multiplication overflow'
        _11783 = mem[64]
        mem[64] = mem[64] + 64
        mem[_11783] = 26
        mem[_11783 + 32] = 'SafeMath: division by zero'
        mem[_11195] = (1000000000000000000 * 10^18 / _7645 * _9737) - (_8632 * _9737) - (1000000000000000000 * 10^18 / _7645 * _9736) + (_8632 * _9736) / 10^18
        _12383 = mem[64]
        mem[64] = mem[64] + 32
        mem[_12383] = 0
        _12607 = mem[64]
        mem[64] = mem[64] + 32
        _12608 = mem[_5051]
        _12609 = mem[_5790]
        if not mem[_5051]:
            _13135 = mem[64]
            mem[64] = mem[64] + 64
            mem[_13135] = 26
            mem[_13135 + 32] = 'SafeMath: division by zero'
            mem[_12607] = 0
            _14107 = mem[64]
            mem[64] = mem[64] + 32
            mem[_14107] = 0
            _14656 = mem[64]
            mem[64] = mem[64] + 32
            if (1000000000000000000 * 10^18 / _7645 * _9737) - (_8632 * _9737) - (1000000000000000000 * 10^18 / _7645 * _9736) + (_8632 * _9736) / 10^18 < 0:
                revert with 0, 'SafeMath: addition overflow'
            mem[_14656] = (1000000000000000000 * 10^18 / _7645 * _9737) - (_8632 * _9737) - (1000000000000000000 * 10^18 / _7645 * _9736) + (_8632 * _9736) / 10^18
            _16055 = mem[64]
            mem[64] = mem[64] + 32
            mem[_16055] = 0
            mem[64] = mem[64] + 32
            if not (1000000000000000000 * 10^18 / _7645 * _9737) - (_8632 * _9737) - (1000000000000000000 * 10^18 / _7645 * _9736) + (_8632 * _9736) / 10^18:
                if not mem[_10591]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / mem[_10591]:
                    return 0
                if arg1 * 0 / mem[_10591] / 0 / mem[_10591] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 0 / mem[_10591] / 10^18)
            if 10^18 * (1000000000000000000 * 10^18 / _7645 * _9737) - (_8632 * _9737) - (1000000000000000000 * 10^18 / _7645 * _9736) + (_8632 * _9736) / 10^18 / (1000000000000000000 * 10^18 / _7645 * _9737) - (_8632 * _9737) - (1000000000000000000 * 10^18 / _7645 * _9736) + (_8632 * _9736) / 10^18 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not mem[_10591]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^18 * (1000000000000000000 * 10^18 / _7645 * _9737) - (_8632 * _9737) - (1000000000000000000 * 10^18 / _7645 * _9736) + (_8632 * _9736) / 10^18 / mem[_10591]:
                return 0
            if arg1 * 10^18 * (1000000000000000000 * 10^18 / _7645 * _9737) - (_8632 * _9737) - (1000000000000000000 * 10^18 / _7645 * _9736) + (_8632 * _9736) / 10^18 / mem[_10591] / 10^18 * (1000000000000000000 * 10^18 / _7645 * _9737) - (_8632 * _9737) - (1000000000000000000 * 10^18 / _7645 * _9736) + (_8632 * _9736) / 10^18 / mem[_10591] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * 10^18 * (1000000000000000000 * 10^18 / _7645 * _9737) - (_8632 * _9737) - (1000000000000000000 * 10^18 / _7645 * _9736) + (_8632 * _9736) / 10^18 / mem[_10591] / 10^18)
        if mem[_5790] * mem[_5051] / mem[_5051] != mem[_5790]:
            revert with 0, 'SafeMath: multiplication overflow'
        _13223 = mem[64]
        mem[64] = mem[64] + 64
        mem[_13223] = 26
        mem[_13223 + 32] = 'SafeMath: division by zero'
        mem[_12607] = _12609 * _12608 / 10^18
        _14655 = mem[64]
        mem[64] = mem[64] + 32
        mem[_14655] = 0
        _15043 = mem[64]
        mem[64] = mem[64] + 32
        if ((1000000000000000000 * 10^18 / _7645 * _9737) - (_8632 * _9737) - (1000000000000000000 * 10^18 / _7645 * _9736) + (_8632 * _9736) / 10^18) + (_12609 * _12608 / 10^18) < _12609 * _12608 / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        mem[_15043] = ((1000000000000000000 * 10^18 / _7645 * _9737) - (_8632 * _9737) - (1000000000000000000 * 10^18 / _7645 * _9736) + (_8632 * _9736) / 10^18) + (_12609 * _12608 / 10^18)
        _16679 = mem[64]
        mem[64] = mem[64] + 32
        mem[_16679] = 0
        mem[64] = mem[64] + 32
        if not ((1000000000000000000 * 10^18 / _7645 * _9737) - (_8632 * _9737) - (1000000000000000000 * 10^18 / _7645 * _9736) + (_8632 * _9736) / 10^18) + (_12609 * _12608 / 10^18):
            if not mem[_10591]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / mem[_10591]:
                return 0
            if arg1 * 0 / mem[_10591] / 0 / mem[_10591] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * 0 / mem[_10591] / 10^18)
        if (10^18 * (1000000000000000000 * 10^18 / _7645 * _9737) - (_8632 * _9737) - (1000000000000000000 * 10^18 / _7645 * _9736) + (_8632 * _9736) / 10^18) + (10^18 * _12609 * _12608 / 10^18) / ((1000000000000000000 * 10^18 / _7645 * _9737) - (_8632 * _9737) - (1000000000000000000 * 10^18 / _7645 * _9736) + (_8632 * _9736) / 10^18) + (_12609 * _12608 / 10^18) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not mem[_10591]:
            revert with 0, 'SafeMath: division by zero', 0
        if not (10^18 * (1000000000000000000 * 10^18 / _7645 * _9737) - (_8632 * _9737) - (1000000000000000000 * 10^18 / _7645 * _9736) + (_8632 * _9736) / 10^18) + (10^18 * _12609 * _12608 / 10^18) / mem[_10591]:
            return 0
        if arg1 * (10^18 * (1000000000000000000 * 10^18 / _7645 * _9737) - (_8632 * _9737) - (1000000000000000000 * 10^18 / _7645 * _9736) + (_8632 * _9736) / 10^18) + (10^18 * _12609 * _12608 / 10^18) / mem[_10591] / (10^18 * (1000000000000000000 * 10^18 / _7645 * _9737) - (_8632 * _9737) - (1000000000000000000 * 10^18 / _7645 * _9736) + (_8632 * _9736) / 10^18) + (10^18 * _12609 * _12608 / 10^18) / mem[_10591] != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        return (arg1 * (10^18 * (1000000000000000000 * 10^18 / _7645 * _9737) - (_8632 * _9737) - (1000000000000000000 * 10^18 / _7645 * _9736) + (_8632 * _9736) / 10^18) + (10^18 * _12609 * _12608 / 10^18) / mem[_10591] / 10^18)
    if 10^18 * totalDebt / totalDebt != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    mem[ceil32(return_data.size) + 224] = 26
    mem[ceil32(return_data.size) + 256] = 'SafeMath: division by zero'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    mem[ceil32(return_data.size) + 192] = 10^18 * totalDebt / ext_call.return_data[0]
    mem[ceil32(return_data.size) + 288] = 0
    mem[ceil32(return_data.size) + 320] = 0
    mem[ceil32(return_data.size) + 352] = 15 * 10^16
    mem[ceil32(return_data.size) + 384] = 30
    mem[ceil32(return_data.size) + 416] = 'SafeMath: subtraction overflow'
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[ceil32(return_data.size) + 448] = 30
    mem[ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
    if arg1 > totalDebt:
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[ceil32(return_data.size) + 512] = 0
    mem[ceil32(return_data.size) + 544] = 0
    if not totalDebt - arg1:
        mem[ceil32(return_data.size) + 608] = 26
        mem[ceil32(return_data.size) + 640] = 'SafeMath: division by zero'
        if not ext_call.return_data[0] - arg1:
            revert with 0, 'SafeMath: division by zero', 0
        mem[ceil32(return_data.size) + 576] = 0 / ext_call.return_data[0] - arg1
        mem[ceil32(return_data.size) + 672] = 0
        if 15 * 10^16 == 10^18 * totalDebt / ext_call.return_data[0]:
            if 0 / ext_call.return_data[0] - arg1 != 10^18 * totalDebt / ext_call.return_data[0]:
                if 0 / ext_call.return_data[0] - arg1 > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 10^18 * totalDebt / ext_call.return_data[0] > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not -(10^18 * totalDebt / ext_call.return_data[0]) + 10^18:
                    revert with 0, 'SafeMath: division by zero', 0
                if (-1 * 10^18 * 10^18 * totalDebt / ext_call.return_data[0]) + (-1 * 10^18 * 0 / ext_call.return_data[0] - arg1) + (10^18 * totalDebt / ext_call.return_data[0] * 0 / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / -(10^18 * totalDebt / ext_call.return_data[0]) + 10^18 != -(0 / ext_call.return_data[0] - arg1) + 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (-1 * 10^18 * 10^18 * totalDebt / ext_call.return_data[0]) + (-1 * 10^18 * 0 / ext_call.return_data[0] - arg1) + (10^18 * totalDebt / ext_call.return_data[0] * 0 / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18:
                    revert with 0, 'SafeMath: division by zero', 0
                if 10^18 > 1000000000000000000 * 10^18 / (-1 * 10^18 * 10^18 * totalDebt / ext_call.return_data[0]) + (-1 * 10^18 * 0 / ext_call.return_data[0] - arg1) + (10^18 * totalDebt / ext_call.return_data[0] * 0 / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not (1000000000000000000 * 10^18 / (-1 * 10^18 * 10^18 * totalDebt / ext_call.return_data[0]) + (-1 * 10^18 * 0 / ext_call.return_data[0] - arg1) + (10^18 * totalDebt / ext_call.return_data[0] * 0 / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18) - 10^18:
                    return 0
                if (1000000000000000000 * 10^18 / (-1 * 10^18 * 10^18 * totalDebt / ext_call.return_data[0]) + (-1 * 10^18 * 0 / ext_call.return_data[0] - arg1) + (10^18 * totalDebt / ext_call.return_data[0] * 0 / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18 * arg1) - (10^18 * arg1) / (1000000000000000000 * 10^18 / (-1 * 10^18 * 10^18 * totalDebt / ext_call.return_data[0]) + (-1 * 10^18 * 0 / ext_call.return_data[0] - arg1) + (10^18 * totalDebt / ext_call.return_data[0] * 0 / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18) - 10^18 != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return ((1000000000000000000 * 10^18 / (-1 * 10^18 * 10^18 * totalDebt / ext_call.return_data[0]) + (-1 * 10^18 * 0 / ext_call.return_data[0] - arg1) + (10^18 * totalDebt / ext_call.return_data[0] * 0 / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18 * arg1) - (10^18 * arg1) / 10^18)
            mem[ceil32(return_data.size) + 704] = 0
            mem[ceil32(return_data.size) + 736] = 0
            mem[ceil32(return_data.size) + 768] = 10^18
            mem[ceil32(return_data.size) + 800] = 0
            mem[ceil32(return_data.size) + 832] = 10^18
            mem[ceil32(return_data.size) + 864] = 0
            mem[ceil32(return_data.size) + 928] = 30
            mem[ceil32(return_data.size) + 960] = 'SafeMath: subtraction overflow'
            if 0 / ext_call.return_data[0] - arg1 > 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[ceil32(return_data.size) + 896] = -(0 / ext_call.return_data[0] - arg1) + 10^18
            mem[ceil32(return_data.size) + 992] = 0
            mem[ceil32(return_data.size) + 1024] = 0
            mem[64] = ceil32(return_data.size) + 1088
            mem[ceil32(return_data.size) + 1056] = -(0 / ext_call.return_data[0] - arg1) + 10^18
            idx = 1
            s = ceil32(return_data.size) + 1056
            while idx < 2:
                _3537 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3537] = 0
                _3607 = mem[64]
                mem[64] = mem[64] + 32
                _3608 = mem[s]
                _3609 = mem[ceil32(return_data.size) + 896]
                if not mem[s]:
                    _4315 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4315] = 26
                    mem[_4315 + 32] = 'SafeMath: division by zero'
                    mem[_3607] = 0
                else:
                    if mem[ceil32(return_data.size) + 896] * mem[s] / mem[s] != mem[ceil32(return_data.size) + 896]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4373 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4373] = 26
                    mem[_4373 + 32] = 'SafeMath: division by zero'
                    mem[_3607] = _3609 * _3608 / 10^18
                idx = idx + 1
                s = _3607
                continue 
            _3606 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3606] = 0
            _3671 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3671] = 10^18
            _4167 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4167] = 0
            _4242 = mem[64]
            mem[64] = mem[64] + 32
            _4244 = mem[s]
            mem[mem[64] + 32] = 'SafeMath: division by zero'
            if not _4244:
                revert with 0, 'SafeMath: division by zero', 0
            mem[_4242] = 1000000000000000000 * 10^18 / _4244
            mem[mem[64]] = 0
            if mem[ceil32(return_data.size) + 768] > 1000000000000000000 * 10^18 / _4244:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not (1000000000000000000 * 10^18 / _4244) - mem[ceil32(return_data.size) + 768]:
                return 0
            if (1000000000000000000 * 10^18 / _4244 * arg1) - (mem[ceil32(return_data.size) + 768] * arg1) / (1000000000000000000 * 10^18 / _4244) - mem[ceil32(return_data.size) + 768] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return ((1000000000000000000 * 10^18 / _4244 * arg1) - (mem[ceil32(return_data.size) + 768] * arg1) / 10^18)
        if 10^18 * totalDebt / ext_call.return_data[0] <= 15 * 10^16:
            if 0 / ext_call.return_data[0] - arg1 != 10^18 * totalDebt / ext_call.return_data[0]:
                if 0 / ext_call.return_data[0] - arg1 > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 10^18 * totalDebt / ext_call.return_data[0] > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not -(10^18 * totalDebt / ext_call.return_data[0]) + 10^18:
                    revert with 0, 'SafeMath: division by zero', 0
                if (-1 * 10^18 * 10^18 * totalDebt / ext_call.return_data[0]) + (-1 * 10^18 * 0 / ext_call.return_data[0] - arg1) + (10^18 * totalDebt / ext_call.return_data[0] * 0 / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / -(10^18 * totalDebt / ext_call.return_data[0]) + 10^18 != -(0 / ext_call.return_data[0] - arg1) + 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (-1 * 10^18 * 10^18 * totalDebt / ext_call.return_data[0]) + (-1 * 10^18 * 0 / ext_call.return_data[0] - arg1) + (10^18 * totalDebt / ext_call.return_data[0] * 0 / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18:
                    revert with 0, 'SafeMath: division by zero', 0
                if 10^18 > 1000000000000000000 * 10^18 / (-1 * 10^18 * 10^18 * totalDebt / ext_call.return_data[0]) + (-1 * 10^18 * 0 / ext_call.return_data[0] - arg1) + (10^18 * totalDebt / ext_call.return_data[0] * 0 / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not (1000000000000000000 * 10^18 / (-1 * 10^18 * 10^18 * totalDebt / ext_call.return_data[0]) + (-1 * 10^18 * 0 / ext_call.return_data[0] - arg1) + (10^18 * totalDebt / ext_call.return_data[0] * 0 / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18) - 10^18:
                    return 0
                if (1000000000000000000 * 10^18 / (-1 * 10^18 * 10^18 * totalDebt / ext_call.return_data[0]) + (-1 * 10^18 * 0 / ext_call.return_data[0] - arg1) + (10^18 * totalDebt / ext_call.return_data[0] * 0 / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18 * arg1) - (10^18 * arg1) / (1000000000000000000 * 10^18 / (-1 * 10^18 * 10^18 * totalDebt / ext_call.return_data[0]) + (-1 * 10^18 * 0 / ext_call.return_data[0] - arg1) + (10^18 * totalDebt / ext_call.return_data[0] * 0 / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18) - 10^18 != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return ((1000000000000000000 * 10^18 / (-1 * 10^18 * 10^18 * totalDebt / ext_call.return_data[0]) + (-1 * 10^18 * 0 / ext_call.return_data[0] - arg1) + (10^18 * totalDebt / ext_call.return_data[0] * 0 / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18 * arg1) - (10^18 * arg1) / 10^18)
            mem[ceil32(return_data.size) + 704] = 0
            mem[ceil32(return_data.size) + 736] = 0
            mem[ceil32(return_data.size) + 768] = 10^18
            mem[ceil32(return_data.size) + 800] = 0
            mem[ceil32(return_data.size) + 832] = 10^18
            mem[ceil32(return_data.size) + 864] = 0
            mem[ceil32(return_data.size) + 928] = 30
            mem[ceil32(return_data.size) + 960] = 'SafeMath: subtraction overflow'
            if 0 / ext_call.return_data[0] - arg1 > 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[ceil32(return_data.size) + 896] = -(0 / ext_call.return_data[0] - arg1) + 10^18
            mem[ceil32(return_data.size) + 992] = 0
            mem[ceil32(return_data.size) + 1024] = 0
            mem[64] = ceil32(return_data.size) + 1088
            mem[ceil32(return_data.size) + 1056] = -(0 / ext_call.return_data[0] - arg1) + 10^18
            idx = 1
            s = ceil32(return_data.size) + 1056
            while idx < 2:
                _3536 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3536] = 0
                _3603 = mem[64]
                mem[64] = mem[64] + 32
                _3604 = mem[s]
                _3605 = mem[ceil32(return_data.size) + 896]
                if not mem[s]:
                    _4314 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4314] = 26
                    mem[_4314 + 32] = 'SafeMath: division by zero'
                    mem[_3603] = 0
                else:
                    if mem[ceil32(return_data.size) + 896] * mem[s] / mem[s] != mem[ceil32(return_data.size) + 896]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4372 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4372] = 26
                    mem[_4372 + 32] = 'SafeMath: division by zero'
                    mem[_3603] = _3605 * _3604 / 10^18
                idx = idx + 1
                s = _3603
                continue 
            _3602 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3602] = 0
            _3670 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3670] = 10^18
            _4166 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4166] = 0
            _4238 = mem[64]
            mem[64] = mem[64] + 32
            _4240 = mem[s]
            mem[mem[64] + 32] = 'SafeMath: division by zero'
            if not _4240:
                revert with 0, 'SafeMath: division by zero', 0
            mem[_4238] = 1000000000000000000 * 10^18 / _4240
            mem[mem[64]] = 0
            if mem[ceil32(return_data.size) + 768] > 1000000000000000000 * 10^18 / _4240:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not (1000000000000000000 * 10^18 / _4240) - mem[ceil32(return_data.size) + 768]:
                return 0
            if (1000000000000000000 * 10^18 / _4240 * arg1) - (mem[ceil32(return_data.size) + 768] * arg1) / (1000000000000000000 * 10^18 / _4240) - mem[ceil32(return_data.size) + 768] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return ((1000000000000000000 * 10^18 / _4240 * arg1) - (mem[ceil32(return_data.size) + 768] * arg1) / 10^18)
        mem[ceil32(return_data.size) + 704] = 0
        if 15 * 10^16 == 0 / ext_call.return_data[0] - arg1:
            mem[ceil32(return_data.size) + 736] = 0
            if 0 / ext_call.return_data[0] - arg1 != 15 * 10^16:
                mem[ceil32(return_data.size) + 768] = 10^18
                mem[ceil32(return_data.size) + 800] = 0
                mem[ceil32(return_data.size) + 832] = 10^18
                mem[ceil32(return_data.size) + 864] = 0
                mem[ceil32(return_data.size) + 928] = 30
                mem[ceil32(return_data.size) + 960] = 'SafeMath: subtraction overflow'
                if 0 / ext_call.return_data[0] - arg1 > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[ceil32(return_data.size) + 896] = -(0 / ext_call.return_data[0] - arg1) + 10^18
                mem[ceil32(return_data.size) + 992] = 0
                mem[ceil32(return_data.size) + 1024] = 10^18
                mem[ceil32(return_data.size) + 1056] = 0
                mem[ceil32(return_data.size) + 1120] = 30
                mem[ceil32(return_data.size) + 1152] = 'SafeMath: subtraction overflow'
                mem[ceil32(return_data.size) + 1088] = 85 * 10^16
                mem[ceil32(return_data.size) + 1184] = 0
                if (-85 * 10^16 * 0 / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 85 * 10^16 != -(0 / ext_call.return_data[0] - arg1) + 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[ceil32(return_data.size) + 1248] = 26
                mem[ceil32(return_data.size) + 1280] = 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 1216] = (-85 * 10^16 * 0 / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18
                mem[ceil32(return_data.size) + 1312] = 0
                mem[ceil32(return_data.size) + 1344] = 10^18
                mem[ceil32(return_data.size) + 1376] = 0
                mem[ceil32(return_data.size) + 1440] = 26
                mem[ceil32(return_data.size) + 1472] = 'SafeMath: division by zero'
                if not (-85 * 10^16 * 0 / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[ceil32(return_data.size) + 1408] = 1000000000000000000 * 10^18 / (-85 * 10^16 * 0 / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18
                mem[ceil32(return_data.size) + 1504] = 0
                mem[ceil32(return_data.size) + 1568] = 30
                mem[ceil32(return_data.size) + 1600] = 'SafeMath: subtraction overflow'
                if 10^18 > 1000000000000000000 * 10^18 / (-85 * 10^16 * 0 / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[ceil32(return_data.size) + 1536] = (1000000000000000000 * 10^18 / (-85 * 10^16 * 0 / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18) - 10^18
                mem[ceil32(return_data.size) + 1632] = 0
                mem[ceil32(return_data.size) + 1664] = 0
                mem[ceil32(return_data.size) + 1728] = 30
                mem[ceil32(return_data.size) + 1760] = 'SafeMath: subtraction overflow'
                if 0 / ext_call.return_data[0] - arg1 > 15 * 10^16:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[ceil32(return_data.size) + 1696] = -(0 / ext_call.return_data[0] - arg1) + 15 * 10^16
                mem[ceil32(return_data.size) + 1792] = 0
                mem[ceil32(return_data.size) + 1824] = 0
                mem[ceil32(return_data.size) + 1856] = 0
                mem[ceil32(return_data.size) + 1888] = 10^18
                mem[ceil32(return_data.size) + 1920] = 0
                mem[ceil32(return_data.size) + 1952] = 10^18
                mem[ceil32(return_data.size) + 1984] = 0
                mem[ceil32(return_data.size) + 2048] = 30
                mem[ceil32(return_data.size) + 2080] = 'SafeMath: subtraction overflow'
                mem[ceil32(return_data.size) + 2016] = 85 * 10^16
                mem[ceil32(return_data.size) + 2112] = 0
                mem[ceil32(return_data.size) + 2144] = 0
                mem[64] = ceil32(return_data.size) + 2208
                mem[ceil32(return_data.size) + 2176] = 85 * 10^16
                idx = 1
                s = ceil32(return_data.size) + 2176
                while idx < 2:
                    _6863 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_6863] = 0
                    _6966 = mem[64]
                    mem[64] = mem[64] + 32
                    _6967 = mem[s]
                    _6968 = mem[ceil32(return_data.size) + 2016]
                    if not mem[s]:
                        _7741 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7741] = 26
                        mem[_7741 + 32] = 'SafeMath: division by zero'
                        mem[_6966] = 0
                    else:
                        if mem[ceil32(return_data.size) + 2016] * mem[s] / mem[s] != mem[ceil32(return_data.size) + 2016]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _7789 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7789] = 26
                        mem[_7789 + 32] = 'SafeMath: division by zero'
                        mem[_6966] = _6968 * _6967 / 10^18
                    idx = idx + 1
                    s = _6966
                    continue 
                _6965 = mem[64]
                mem[64] = mem[64] + 32
                mem[_6965] = 0
                _7103 = mem[64]
                mem[64] = mem[64] + 32
                mem[_7103] = 10^18
                _7501 = mem[64]
                mem[64] = mem[64] + 32
                mem[_7501] = 0
                _7603 = mem[64]
                mem[64] = mem[64] + 32
                _7605 = mem[s]
                _7981 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7981] = 26
                mem[_7981 + 32] = 'SafeMath: division by zero'
                if not _7605:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[_7603] = 1000000000000000000 * 10^18 / _7605
                _8371 = mem[64]
                mem[64] = mem[64] + 32
                mem[_8371] = 0
                _8581 = mem[64]
                mem[64] = mem[64] + 32
                _8582 = mem[ceil32(return_data.size) + 1888]
                _8767 = mem[64]
                mem[64] = mem[64] + 64
                mem[_8767] = 30
                mem[_8767 + 32] = 'SafeMath: subtraction overflow'
                if _8582 > 1000000000000000000 * 10^18 / _7605:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[_8581] = (1000000000000000000 * 10^18 / _7605) - _8582
                _9277 = mem[64]
                mem[64] = mem[64] + 32
                mem[_9277] = 0
                _9445 = mem[64]
                mem[64] = mem[64] + 32
                mem[_9445] = 0
                _9685 = mem[64]
                mem[64] = mem[64] + 32
                _9686 = mem[ceil32(return_data.size) + 352]
                _9687 = mem[ceil32(return_data.size) + 192]
                _9853 = mem[64]
                mem[64] = mem[64] + 64
                mem[_9853] = 30
                mem[_9853 + 32] = 'SafeMath: subtraction overflow'
                if _9686 > _9687:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[_9685] = _9687 - _9686
                _10387 = mem[64]
                mem[64] = mem[64] + 32
                mem[_10387] = 0
                _10561 = mem[64]
                mem[64] = mem[64] + 32
                if _9687 - _9686 + mem[ceil32(return_data.size) + 1696] < mem[ceil32(return_data.size) + 1696]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_10561] = _9687 - _9686 + mem[ceil32(return_data.size) + 1696]
                _10963 = mem[64]
                mem[64] = mem[64] + 32
                mem[_10963] = 0
                _11155 = mem[64]
                mem[64] = mem[64] + 32
                if not (1000000000000000000 * 10^18 / _7605) - _8582:
                    _11695 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11695] = 26
                    mem[_11695 + 32] = 'SafeMath: division by zero'
                    mem[_11155] = 0
                    _12037 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_12037] = 0
                    _12314 = mem[64]
                    mem[64] = mem[64] + 32
                    _12315 = mem[ceil32(return_data.size) + 1536]
                    _12316 = mem[ceil32(return_data.size) + 1696]
                    if not mem[ceil32(return_data.size) + 1536]:
                        _12932 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12932] = 26
                        mem[_12932 + 32] = 'SafeMath: division by zero'
                        mem[_12314] = 0
                        _13591 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_13591] = 0
                        _13989 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_13989] = 0
                        _15511 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_15511] = 0
                        mem[64] = mem[64] + 32
                        if not mem[_10561]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not 0 / mem[_10561]:
                            return 0
                        if arg1 * 0 / mem[_10561] / 0 / mem[_10561] != arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        return (arg1 * 0 / mem[_10561] / 10^18)
                    if mem[ceil32(return_data.size) + 1696] * mem[ceil32(return_data.size) + 1536] / mem[ceil32(return_data.size) + 1536] != mem[ceil32(return_data.size) + 1696]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _13106 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13106] = 26
                    mem[_13106 + 32] = 'SafeMath: division by zero'
                    mem[_12314] = _12316 * _12315 / 10^18
                    _13988 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_13988] = 0
                    _14549 = mem[64]
                    mem[64] = mem[64] + 32
                    if _12316 * _12315 / 10^18 < _12316 * _12315 / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_14549] = _12316 * _12315 / 10^18
                    _15926 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_15926] = 0
                    mem[64] = mem[64] + 32
                    if not _12316 * _12315 / 10^18:
                        if not mem[_10561]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not 0 / mem[_10561]:
                            return 0
                        if arg1 * 0 / mem[_10561] / 0 / mem[_10561] != arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        return (arg1 * 0 / mem[_10561] / 10^18)
                    if 10^18 * _12316 * _12315 / 10^18 / _12316 * _12315 / 10^18 != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not mem[_10561]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 10^18 * _12316 * _12315 / 10^18 / mem[_10561]:
                        return 0
                    if arg1 * 10^18 * _12316 * _12315 / 10^18 / mem[_10561] / 10^18 * _12316 * _12315 / 10^18 / mem[_10561] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 10^18 * _12316 * _12315 / 10^18 / mem[_10561] / 10^18)
                if (_9687 * 1000000000000000000 * 10^18 / _7605) - (_9686 * 1000000000000000000 * 10^18 / _7605) - (_9687 * _8582) + (_9686 * _8582) / (1000000000000000000 * 10^18 / _7605) - _8582 != _9687 - _9686:
                    revert with 0, 'SafeMath: multiplication overflow'
                _11773 = mem[64]
                mem[64] = mem[64] + 64
                mem[_11773] = 26
                mem[_11773 + 32] = 'SafeMath: division by zero'
                mem[_11155] = (1000000000000000000 * 10^18 / _7605 * _9687) - (_8582 * _9687) - (1000000000000000000 * 10^18 / _7605 * _9686) + (_8582 * _9686) / 10^18
                _12313 = mem[64]
                mem[64] = mem[64] + 32
                mem[_12313] = 0
                _12577 = mem[64]
                mem[64] = mem[64] + 32
                _12578 = mem[ceil32(return_data.size) + 1536]
                _12579 = mem[ceil32(return_data.size) + 1696]
                if not mem[ceil32(return_data.size) + 1536]:
                    _13105 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13105] = 26
                    mem[_13105 + 32] = 'SafeMath: division by zero'
                    mem[_12577] = 0
                    _13987 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_13987] = 0
                    _14546 = mem[64]
                    mem[64] = mem[64] + 32
                    if (1000000000000000000 * 10^18 / _7605 * _9687) - (_8582 * _9687) - (1000000000000000000 * 10^18 / _7605 * _9686) + (_8582 * _9686) / 10^18 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_14546] = (1000000000000000000 * 10^18 / _7605 * _9687) - (_8582 * _9687) - (1000000000000000000 * 10^18 / _7605 * _9686) + (_8582 * _9686) / 10^18
                    _15925 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_15925] = 0
                    mem[64] = mem[64] + 32
                    if not (1000000000000000000 * 10^18 / _7605 * _9687) - (_8582 * _9687) - (1000000000000000000 * 10^18 / _7605 * _9686) + (_8582 * _9686) / 10^18:
                        if not mem[_10561]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not 0 / mem[_10561]:
                            return 0
                        if arg1 * 0 / mem[_10561] / 0 / mem[_10561] != arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        return (arg1 * 0 / mem[_10561] / 10^18)
                    if 10^18 * (1000000000000000000 * 10^18 / _7605 * _9687) - (_8582 * _9687) - (1000000000000000000 * 10^18 / _7605 * _9686) + (_8582 * _9686) / 10^18 / (1000000000000000000 * 10^18 / _7605 * _9687) - (_8582 * _9687) - (1000000000000000000 * 10^18 / _7605 * _9686) + (_8582 * _9686) / 10^18 != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not mem[_10561]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 10^18 * (1000000000000000000 * 10^18 / _7605 * _9687) - (_8582 * _9687) - (1000000000000000000 * 10^18 / _7605 * _9686) + (_8582 * _9686) / 10^18 / mem[_10561]:
                        return 0
                    if arg1 * 10^18 * (1000000000000000000 * 10^18 / _7605 * _9687) - (_8582 * _9687) - (1000000000000000000 * 10^18 / _7605 * _9686) + (_8582 * _9686) / 10^18 / mem[_10561] / 10^18 * (1000000000000000000 * 10^18 / _7605 * _9687) - (_8582 * _9687) - (1000000000000000000 * 10^18 / _7605 * _9686) + (_8582 * _9686) / 10^18 / mem[_10561] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 10^18 * (1000000000000000000 * 10^18 / _7605 * _9687) - (_8582 * _9687) - (1000000000000000000 * 10^18 / _7605 * _9686) + (_8582 * _9686) / 10^18 / mem[_10561] / 10^18)
                if mem[ceil32(return_data.size) + 1696] * mem[ceil32(return_data.size) + 1536] / mem[ceil32(return_data.size) + 1536] != mem[ceil32(return_data.size) + 1696]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _13213 = mem[64]
                mem[64] = mem[64] + 64
                mem[_13213] = 26
                mem[_13213 + 32] = 'SafeMath: division by zero'
                mem[_12577] = _12579 * _12578 / 10^18
                _14545 = mem[64]
                mem[64] = mem[64] + 32
                mem[_14545] = 0
                _14983 = mem[64]
                mem[64] = mem[64] + 32
                if ((1000000000000000000 * 10^18 / _7605 * _9687) - (_8582 * _9687) - (1000000000000000000 * 10^18 / _7605 * _9686) + (_8582 * _9686) / 10^18) + (_12579 * _12578 / 10^18) < _12579 * _12578 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_14983] = ((1000000000000000000 * 10^18 / _7605 * _9687) - (_8582 * _9687) - (1000000000000000000 * 10^18 / _7605 * _9686) + (_8582 * _9686) / 10^18) + (_12579 * _12578 / 10^18)
                _16549 = mem[64]
                mem[64] = mem[64] + 32
                mem[_16549] = 0
                mem[64] = mem[64] + 32
                if not ((1000000000000000000 * 10^18 / _7605 * _9687) - (_8582 * _9687) - (1000000000000000000 * 10^18 / _7605 * _9686) + (_8582 * _9686) / 10^18) + (_12579 * _12578 / 10^18):
                    if not mem[_10561]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / mem[_10561]:
                        return 0
                    if arg1 * 0 / mem[_10561] / 0 / mem[_10561] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 0 / mem[_10561] / 10^18)
                if (10^18 * (1000000000000000000 * 10^18 / _7605 * _9687) - (_8582 * _9687) - (1000000000000000000 * 10^18 / _7605 * _9686) + (_8582 * _9686) / 10^18) + (10^18 * _12579 * _12578 / 10^18) / ((1000000000000000000 * 10^18 / _7605 * _9687) - (_8582 * _9687) - (1000000000000000000 * 10^18 / _7605 * _9686) + (_8582 * _9686) / 10^18) + (_12579 * _12578 / 10^18) != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not mem[_10561]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not (10^18 * (1000000000000000000 * 10^18 / _7605 * _9687) - (_8582 * _9687) - (1000000000000000000 * 10^18 / _7605 * _9686) + (_8582 * _9686) / 10^18) + (10^18 * _12579 * _12578 / 10^18) / mem[_10561]:
                    return 0
                if arg1 * (10^18 * (1000000000000000000 * 10^18 / _7605 * _9687) - (_8582 * _9687) - (1000000000000000000 * 10^18 / _7605 * _9686) + (_8582 * _9686) / 10^18) + (10^18 * _12579 * _12578 / 10^18) / mem[_10561] / (10^18 * (1000000000000000000 * 10^18 / _7605 * _9687) - (_8582 * _9687) - (1000000000000000000 * 10^18 / _7605 * _9686) + (_8582 * _9686) / 10^18) + (10^18 * _12579 * _12578 / 10^18) / mem[_10561] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * (10^18 * (1000000000000000000 * 10^18 / _7605 * _9687) - (_8582 * _9687) - (1000000000000000000 * 10^18 / _7605 * _9686) + (_8582 * _9686) / 10^18) + (10^18 * _12579 * _12578 / 10^18) / mem[_10561] / 10^18)
            mem[ceil32(return_data.size) + 768] = 0
            mem[ceil32(return_data.size) + 800] = 10^18
            mem[ceil32(return_data.size) + 832] = 0
            mem[ceil32(return_data.size) + 864] = 10^18
            mem[ceil32(return_data.size) + 896] = 0
            mem[ceil32(return_data.size) + 960] = 30
            mem[ceil32(return_data.size) + 992] = 'SafeMath: subtraction overflow'
            if 0 / ext_call.return_data[0] - arg1 > 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[ceil32(return_data.size) + 928] = -(0 / ext_call.return_data[0] - arg1) + 10^18
            mem[ceil32(return_data.size) + 1024] = 0
            mem[ceil32(return_data.size) + 1056] = 0
            mem[64] = ceil32(return_data.size) + 1120
            mem[ceil32(return_data.size) + 1088] = -(0 / ext_call.return_data[0] - arg1) + 10^18
            idx = 1
            s = ceil32(return_data.size) + 1088
            while idx < 2:
                _3535 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3535] = 0
                _3599 = mem[64]
                mem[64] = mem[64] + 32
                _3600 = mem[s]
                _3601 = mem[ceil32(return_data.size) + 928]
                if not mem[s]:
                    _4313 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4313] = 26
                    mem[_4313 + 32] = 'SafeMath: division by zero'
                    mem[_3599] = 0
                else:
                    if mem[ceil32(return_data.size) + 928] * mem[s] / mem[s] != mem[ceil32(return_data.size) + 928]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4371 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4371] = 26
                    mem[_4371 + 32] = 'SafeMath: division by zero'
                    mem[_3599] = _3601 * _3600 / 10^18
                idx = idx + 1
                s = _3599
                continue 
            _3598 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3598] = 0
            _3669 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3669] = 10^18
            _4165 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4165] = 0
            _4234 = mem[64]
            mem[64] = mem[64] + 32
            _4236 = mem[s]
            _4589 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4589] = 26
            mem[_4589 + 32] = 'SafeMath: division by zero'
            if not _4236:
                revert with 0, 'SafeMath: division by zero', 0
            mem[_4234] = 1000000000000000000 * 10^18 / _4236
            _4936 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4936] = 0
            _5031 = mem[64]
            mem[64] = mem[64] + 32
            _5032 = mem[ceil32(return_data.size) + 800]
            _5124 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5124] = 30
            mem[_5124 + 32] = 'SafeMath: subtraction overflow'
            if _5032 > 1000000000000000000 * 10^18 / _4236:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[_5031] = (1000000000000000000 * 10^18 / _4236) - _5032
            _5583 = mem[64]
            mem[64] = mem[64] + 32
            mem[_5583] = 0
            _5728 = mem[64]
            mem[64] = mem[64] + 32
            mem[_5728] = 0
            _5784 = mem[64]
            mem[64] = mem[64] + 32
            _5785 = mem[ceil32(return_data.size) + 576]
            _5786 = mem[ceil32(return_data.size) + 352]
            _5817 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5817] = 30
            mem[_5817 + 32] = 'SafeMath: subtraction overflow'
            if _5785 > _5786:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[_5784] = _5786 - _5785
            _6061 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6061] = 0
            _6105 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6105] = 0
            _6150 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6150] = 0
            _6179 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6179] = 10^18
            _6226 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6226] = 0
            _6257 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6257] = 10^18
            _6332 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6332] = 0
            _6370 = mem[64]
            mem[64] = mem[64] + 32
            _6371 = mem[ceil32(return_data.size) + 352]
            _6393 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6393] = 30
            mem[_6393 + 32] = 'SafeMath: subtraction overflow'
            if _6371 > 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[_6370] = -_6371 + 10^18
            _6441 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6441] = 0
            _6466 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6466] = 0
            _6495 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6495] = -_6371 + 10^18
            idx = 1
            s = _6495
            while idx < 2:
                _6867 = mem[64]
                mem[64] = mem[64] + 32
                mem[_6867] = 0
                _6982 = mem[64]
                mem[64] = mem[64] + 32
                _6983 = mem[s]
                _6984 = mem[_6370]
                if not mem[s]:
                    _7745 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7745] = 26
                    mem[_7745 + 32] = 'SafeMath: division by zero'
                    mem[_6982] = 0
                else:
                    if mem[_6370] * mem[s] / mem[s] != mem[_6370]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _7793 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7793] = 26
                    mem[_7793 + 32] = 'SafeMath: division by zero'
                    mem[_6982] = _6984 * _6983 / 10^18
                idx = idx + 1
                s = _6982
                continue 
            _6981 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6981] = 0
            _7107 = mem[64]
            mem[64] = mem[64] + 32
            mem[_7107] = 10^18
            _7505 = mem[64]
            mem[64] = mem[64] + 32
            mem[_7505] = 0
            _7619 = mem[64]
            mem[64] = mem[64] + 32
            _7621 = mem[s]
            _7985 = mem[64]
            mem[64] = mem[64] + 64
            mem[_7985] = 26
            mem[_7985 + 32] = 'SafeMath: division by zero'
            if not _7621:
                revert with 0, 'SafeMath: division by zero', 0
            mem[_7619] = 1000000000000000000 * 10^18 / _7621
            _8387 = mem[64]
            mem[64] = mem[64] + 32
            mem[_8387] = 0
            _8601 = mem[64]
            mem[64] = mem[64] + 32
            _8602 = mem[_6179]
            _8775 = mem[64]
            mem[64] = mem[64] + 64
            mem[_8775] = 30
            mem[_8775 + 32] = 'SafeMath: subtraction overflow'
            if _8602 > 1000000000000000000 * 10^18 / _7621:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[_8601] = (1000000000000000000 * 10^18 / _7621) - _8602
            _9281 = mem[64]
            mem[64] = mem[64] + 32
            mem[_9281] = 0
            _9465 = mem[64]
            mem[64] = mem[64] + 32
            mem[_9465] = 0
            _9705 = mem[64]
            mem[64] = mem[64] + 32
            _9706 = mem[ceil32(return_data.size) + 352]
            _9707 = mem[ceil32(return_data.size) + 192]
            _9857 = mem[64]
            mem[64] = mem[64] + 64
            mem[_9857] = 30
            mem[_9857 + 32] = 'SafeMath: subtraction overflow'
            if _9706 > _9707:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[_9705] = _9707 - _9706
            _10403 = mem[64]
            mem[64] = mem[64] + 32
            mem[_10403] = 0
            _10573 = mem[64]
            mem[64] = mem[64] + 32
            if _9707 - _9706 + mem[_5784] < mem[_5784]:
                revert with 0, 'SafeMath: addition overflow'
            mem[_10573] = _9707 - _9706 + mem[_5784]
            _10979 = mem[64]
            mem[64] = mem[64] + 32
            mem[_10979] = 0
            _11171 = mem[64]
            mem[64] = mem[64] + 32
            if not (1000000000000000000 * 10^18 / _7621) - _8602:
                _11703 = mem[64]
                mem[64] = mem[64] + 64
                mem[_11703] = 26
                mem[_11703 + 32] = 'SafeMath: division by zero'
                mem[_11171] = 0
                _12057 = mem[64]
                mem[64] = mem[64] + 32
                mem[_12057] = 0
                _12342 = mem[64]
                mem[64] = mem[64] + 32
                _12343 = mem[_5031]
                _12344 = mem[_5784]
                if not mem[_5031]:
                    _12948 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12948] = 26
                    mem[_12948 + 32] = 'SafeMath: division by zero'
                    mem[_12342] = 0
                    _13615 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_13615] = 0
                    _14037 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_14037] = 0
                    _15535 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_15535] = 0
                    mem[64] = mem[64] + 32
                    if not mem[_10573]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / mem[_10573]:
                        return 0
                    if arg1 * 0 / mem[_10573] / 0 / mem[_10573] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 0 / mem[_10573] / 10^18)
                if mem[_5784] * mem[_5031] / mem[_5031] != mem[_5784]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _13118 = mem[64]
                mem[64] = mem[64] + 64
                mem[_13118] = 26
                mem[_13118 + 32] = 'SafeMath: division by zero'
                mem[_12342] = _12344 * _12343 / 10^18
                _14036 = mem[64]
                mem[64] = mem[64] + 32
                mem[_14036] = 0
                _14593 = mem[64]
                mem[64] = mem[64] + 32
                if _12344 * _12343 / 10^18 < _12344 * _12343 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_14593] = _12344 * _12343 / 10^18
                _15978 = mem[64]
                mem[64] = mem[64] + 32
                mem[_15978] = 0
                mem[64] = mem[64] + 32
                if not _12344 * _12343 / 10^18:
                    if not mem[_10573]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / mem[_10573]:
                        return 0
                    if arg1 * 0 / mem[_10573] / 0 / mem[_10573] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 0 / mem[_10573] / 10^18)
                if 10^18 * _12344 * _12343 / 10^18 / _12344 * _12343 / 10^18 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not mem[_10573]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 10^18 * _12344 * _12343 / 10^18 / mem[_10573]:
                    return 0
                if arg1 * 10^18 * _12344 * _12343 / 10^18 / mem[_10573] / 10^18 * _12344 * _12343 / 10^18 / mem[_10573] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 10^18 * _12344 * _12343 / 10^18 / mem[_10573] / 10^18)
            if (_9707 * 1000000000000000000 * 10^18 / _7621) - (_9706 * 1000000000000000000 * 10^18 / _7621) - (_9707 * _8602) + (_9706 * _8602) / (1000000000000000000 * 10^18 / _7621) - _8602 != _9707 - _9706:
                revert with 0, 'SafeMath: multiplication overflow'
            _11777 = mem[64]
            mem[64] = mem[64] + 64
            mem[_11777] = 26
            mem[_11777 + 32] = 'SafeMath: division by zero'
            mem[_11171] = (1000000000000000000 * 10^18 / _7621 * _9707) - (_8602 * _9707) - (1000000000000000000 * 10^18 / _7621 * _9706) + (_8602 * _9706) / 10^18
            _12341 = mem[64]
            mem[64] = mem[64] + 32
            mem[_12341] = 0
            _12589 = mem[64]
            mem[64] = mem[64] + 32
            _12590 = mem[_5031]
            _12591 = mem[_5784]
            if not mem[_5031]:
                _13117 = mem[64]
                mem[64] = mem[64] + 64
                mem[_13117] = 26
                mem[_13117 + 32] = 'SafeMath: division by zero'
                mem[_12589] = 0
                _14035 = mem[64]
                mem[64] = mem[64] + 32
                mem[_14035] = 0
                _14590 = mem[64]
                mem[64] = mem[64] + 32
                if (1000000000000000000 * 10^18 / _7621 * _9707) - (_8602 * _9707) - (1000000000000000000 * 10^18 / _7621 * _9706) + (_8602 * _9706) / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_14590] = (1000000000000000000 * 10^18 / _7621 * _9707) - (_8602 * _9707) - (1000000000000000000 * 10^18 / _7621 * _9706) + (_8602 * _9706) / 10^18
                _15977 = mem[64]
                mem[64] = mem[64] + 32
                mem[_15977] = 0
                mem[64] = mem[64] + 32
                if not (1000000000000000000 * 10^18 / _7621 * _9707) - (_8602 * _9707) - (1000000000000000000 * 10^18 / _7621 * _9706) + (_8602 * _9706) / 10^18:
                    if not mem[_10573]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / mem[_10573]:
                        return 0
                    if arg1 * 0 / mem[_10573] / 0 / mem[_10573] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 0 / mem[_10573] / 10^18)
                if 10^18 * (1000000000000000000 * 10^18 / _7621 * _9707) - (_8602 * _9707) - (1000000000000000000 * 10^18 / _7621 * _9706) + (_8602 * _9706) / 10^18 / (1000000000000000000 * 10^18 / _7621 * _9707) - (_8602 * _9707) - (1000000000000000000 * 10^18 / _7621 * _9706) + (_8602 * _9706) / 10^18 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not mem[_10573]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 10^18 * (1000000000000000000 * 10^18 / _7621 * _9707) - (_8602 * _9707) - (1000000000000000000 * 10^18 / _7621 * _9706) + (_8602 * _9706) / 10^18 / mem[_10573]:
                    return 0
                if arg1 * 10^18 * (1000000000000000000 * 10^18 / _7621 * _9707) - (_8602 * _9707) - (1000000000000000000 * 10^18 / _7621 * _9706) + (_8602 * _9706) / 10^18 / mem[_10573] / 10^18 * (1000000000000000000 * 10^18 / _7621 * _9707) - (_8602 * _9707) - (1000000000000000000 * 10^18 / _7621 * _9706) + (_8602 * _9706) / 10^18 / mem[_10573] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 10^18 * (1000000000000000000 * 10^18 / _7621 * _9707) - (_8602 * _9707) - (1000000000000000000 * 10^18 / _7621 * _9706) + (_8602 * _9706) / 10^18 / mem[_10573] / 10^18)
            if mem[_5784] * mem[_5031] / mem[_5031] != mem[_5784]:
                revert with 0, 'SafeMath: multiplication overflow'
            _13217 = mem[64]
            mem[64] = mem[64] + 64
            mem[_13217] = 26
            mem[_13217 + 32] = 'SafeMath: division by zero'
            mem[_12589] = _12591 * _12590 / 10^18
            _14589 = mem[64]
            mem[64] = mem[64] + 32
            mem[_14589] = 0
            _15007 = mem[64]
            mem[64] = mem[64] + 32
            if ((1000000000000000000 * 10^18 / _7621 * _9707) - (_8602 * _9707) - (1000000000000000000 * 10^18 / _7621 * _9706) + (_8602 * _9706) / 10^18) + (_12591 * _12590 / 10^18) < _12591 * _12590 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            mem[_15007] = ((1000000000000000000 * 10^18 / _7621 * _9707) - (_8602 * _9707) - (1000000000000000000 * 10^18 / _7621 * _9706) + (_8602 * _9706) / 10^18) + (_12591 * _12590 / 10^18)
            _16601 = mem[64]
            mem[64] = mem[64] + 32
            mem[_16601] = 0
            mem[64] = mem[64] + 32
            if not ((1000000000000000000 * 10^18 / _7621 * _9707) - (_8602 * _9707) - (1000000000000000000 * 10^18 / _7621 * _9706) + (_8602 * _9706) / 10^18) + (_12591 * _12590 / 10^18):
                if not mem[_10573]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / mem[_10573]:
                    return 0
                if arg1 * 0 / mem[_10573] / 0 / mem[_10573] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 0 / mem[_10573] / 10^18)
            if (10^18 * (1000000000000000000 * 10^18 / _7621 * _9707) - (_8602 * _9707) - (1000000000000000000 * 10^18 / _7621 * _9706) + (_8602 * _9706) / 10^18) + (10^18 * _12591 * _12590 / 10^18) / ((1000000000000000000 * 10^18 / _7621 * _9707) - (_8602 * _9707) - (1000000000000000000 * 10^18 / _7621 * _9706) + (_8602 * _9706) / 10^18) + (_12591 * _12590 / 10^18) != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not mem[_10573]:
                revert with 0, 'SafeMath: division by zero', 0
            if not (10^18 * (1000000000000000000 * 10^18 / _7621 * _9707) - (_8602 * _9707) - (1000000000000000000 * 10^18 / _7621 * _9706) + (_8602 * _9706) / 10^18) + (10^18 * _12591 * _12590 / 10^18) / mem[_10573]:
                return 0
            if arg1 * (10^18 * (1000000000000000000 * 10^18 / _7621 * _9707) - (_8602 * _9707) - (1000000000000000000 * 10^18 / _7621 * _9706) + (_8602 * _9706) / 10^18) + (10^18 * _12591 * _12590 / 10^18) / mem[_10573] / (10^18 * (1000000000000000000 * 10^18 / _7621 * _9707) - (_8602 * _9707) - (1000000000000000000 * 10^18 / _7621 * _9706) + (_8602 * _9706) / 10^18) + (10^18 * _12591 * _12590 / 10^18) / mem[_10573] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * (10^18 * (1000000000000000000 * 10^18 / _7621 * _9707) - (_8602 * _9707) - (1000000000000000000 * 10^18 / _7621 * _9706) + (_8602 * _9706) / 10^18) + (10^18 * _12591 * _12590 / 10^18) / mem[_10573] / 10^18)
        if 0 / ext_call.return_data[0] - arg1 > 15 * 10^16:
            mem[ceil32(return_data.size) + 736] = 10^18
            mem[ceil32(return_data.size) + 768] = 0
            mem[ceil32(return_data.size) + 800] = 10^18
            mem[ceil32(return_data.size) + 832] = 0
            mem[ceil32(return_data.size) + 896] = 30
            mem[ceil32(return_data.size) + 928] = 'SafeMath: subtraction overflow'
            mem[ceil32(return_data.size) + 864] = 85 * 10^16
            mem[ceil32(return_data.size) + 960] = 0
            mem[ceil32(return_data.size) + 992] = 0
            mem[64] = ceil32(return_data.size) + 1056
            mem[ceil32(return_data.size) + 1024] = 85 * 10^16
            idx = 1
            s = ceil32(return_data.size) + 1024
            while idx < 2:
                _3526 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3526] = 0
                _3587 = mem[64]
                mem[64] = mem[64] + 32
                _3588 = mem[s]
                _3589 = mem[ceil32(return_data.size) + 864]
                if not mem[s]:
                    _4305 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4305] = 26
                    mem[_4305 + 32] = 'SafeMath: division by zero'
                    mem[_3587] = 0
                else:
                    if mem[ceil32(return_data.size) + 864] * mem[s] / mem[s] != mem[ceil32(return_data.size) + 864]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4356 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4356] = 26
                    mem[_4356 + 32] = 'SafeMath: division by zero'
                    mem[_3587] = _3589 * _3588 / 10^18
                idx = idx + 1
                s = _3587
                continue 
            _3586 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3586] = 0
            _3665 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3665] = 10^18
            _4153 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4153] = 0
            _4222 = mem[64]
            mem[64] = mem[64] + 32
            _4224 = mem[s]
            mem[mem[64] + 32] = 'SafeMath: division by zero'
            if not _4224:
                revert with 0, 'SafeMath: division by zero', 0
            mem[_4222] = 1000000000000000000 * 10^18 / _4224
            mem[mem[64]] = 0
            if mem[ceil32(return_data.size) + 736] > 1000000000000000000 * 10^18 / _4224:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not (1000000000000000000 * 10^18 / _4224) - mem[ceil32(return_data.size) + 736]:
                return 0
            if (1000000000000000000 * 10^18 / _4224 * arg1) - (mem[ceil32(return_data.size) + 736] * arg1) / (1000000000000000000 * 10^18 / _4224) - mem[ceil32(return_data.size) + 736] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return ((1000000000000000000 * 10^18 / _4224 * arg1) - (mem[ceil32(return_data.size) + 736] * arg1) / 10^18)
        mem[ceil32(return_data.size) + 736] = 0
        if 0 / ext_call.return_data[0] - arg1 != 15 * 10^16:
            mem[ceil32(return_data.size) + 768] = 10^18
            mem[ceil32(return_data.size) + 800] = 0
            mem[ceil32(return_data.size) + 832] = 10^18
            mem[ceil32(return_data.size) + 864] = 0
            mem[ceil32(return_data.size) + 928] = 30
            mem[ceil32(return_data.size) + 960] = 'SafeMath: subtraction overflow'
            if 0 / ext_call.return_data[0] - arg1 > 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[ceil32(return_data.size) + 896] = -(0 / ext_call.return_data[0] - arg1) + 10^18
            mem[ceil32(return_data.size) + 992] = 0
            mem[ceil32(return_data.size) + 1024] = 10^18
            mem[ceil32(return_data.size) + 1056] = 0
            mem[ceil32(return_data.size) + 1120] = 30
            mem[ceil32(return_data.size) + 1152] = 'SafeMath: subtraction overflow'
            mem[ceil32(return_data.size) + 1088] = 85 * 10^16
            mem[ceil32(return_data.size) + 1184] = 0
            if (-85 * 10^16 * 0 / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 85 * 10^16 != -(0 / ext_call.return_data[0] - arg1) + 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[ceil32(return_data.size) + 1248] = 26
            mem[ceil32(return_data.size) + 1280] = 'SafeMath: division by zero'
            mem[ceil32(return_data.size) + 1216] = (-85 * 10^16 * 0 / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18
            mem[ceil32(return_data.size) + 1312] = 0
            mem[ceil32(return_data.size) + 1344] = 10^18
            mem[ceil32(return_data.size) + 1376] = 0
            mem[ceil32(return_data.size) + 1440] = 26
            mem[ceil32(return_data.size) + 1472] = 'SafeMath: division by zero'
            if not (-85 * 10^16 * 0 / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18:
                revert with 0, 'SafeMath: division by zero', 0
            mem[ceil32(return_data.size) + 1408] = 1000000000000000000 * 10^18 / (-85 * 10^16 * 0 / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18
            mem[ceil32(return_data.size) + 1504] = 0
            mem[ceil32(return_data.size) + 1568] = 30
            mem[ceil32(return_data.size) + 1600] = 'SafeMath: subtraction overflow'
            if 10^18 > 1000000000000000000 * 10^18 / (-85 * 10^16 * 0 / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[ceil32(return_data.size) + 1536] = (1000000000000000000 * 10^18 / (-85 * 10^16 * 0 / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18) - 10^18
            mem[ceil32(return_data.size) + 1632] = 0
            mem[ceil32(return_data.size) + 1664] = 0
            mem[ceil32(return_data.size) + 1728] = 30
            mem[ceil32(return_data.size) + 1760] = 'SafeMath: subtraction overflow'
            if 0 / ext_call.return_data[0] - arg1 > 15 * 10^16:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[ceil32(return_data.size) + 1696] = -(0 / ext_call.return_data[0] - arg1) + 15 * 10^16
            mem[ceil32(return_data.size) + 1792] = 0
            mem[ceil32(return_data.size) + 1824] = 0
            mem[ceil32(return_data.size) + 1856] = 0
            mem[ceil32(return_data.size) + 1888] = 10^18
            mem[ceil32(return_data.size) + 1920] = 0
            mem[ceil32(return_data.size) + 1952] = 10^18
            mem[ceil32(return_data.size) + 1984] = 0
            mem[ceil32(return_data.size) + 2048] = 30
            mem[ceil32(return_data.size) + 2080] = 'SafeMath: subtraction overflow'
            mem[ceil32(return_data.size) + 2016] = 85 * 10^16
            mem[ceil32(return_data.size) + 2112] = 0
            mem[ceil32(return_data.size) + 2144] = 0
            mem[64] = ceil32(return_data.size) + 2208
            mem[ceil32(return_data.size) + 2176] = 85 * 10^16
            idx = 1
            s = ceil32(return_data.size) + 2176
            while idx < 2:
                _6857 = mem[64]
                mem[64] = mem[64] + 32
                mem[_6857] = 0
                _6942 = mem[64]
                mem[64] = mem[64] + 32
                _6943 = mem[s]
                _6944 = mem[ceil32(return_data.size) + 2016]
                if not mem[s]:
                    _7735 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7735] = 26
                    mem[_7735 + 32] = 'SafeMath: division by zero'
                    mem[_6942] = 0
                else:
                    if mem[ceil32(return_data.size) + 2016] * mem[s] / mem[s] != mem[ceil32(return_data.size) + 2016]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _7783 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7783] = 26
                    mem[_7783 + 32] = 'SafeMath: division by zero'
                    mem[_6942] = _6944 * _6943 / 10^18
                idx = idx + 1
                s = _6942
                continue 
            _6941 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6941] = 0
            _7097 = mem[64]
            mem[64] = mem[64] + 32
            mem[_7097] = 10^18
            _7495 = mem[64]
            mem[64] = mem[64] + 32
            mem[_7495] = 0
            _7579 = mem[64]
            mem[64] = mem[64] + 32
            _7581 = mem[s]
            _7975 = mem[64]
            mem[64] = mem[64] + 64
            mem[_7975] = 26
            mem[_7975 + 32] = 'SafeMath: division by zero'
            if not _7581:
                revert with 0, 'SafeMath: division by zero', 0
            mem[_7579] = 1000000000000000000 * 10^18 / _7581
            _8347 = mem[64]
            mem[64] = mem[64] + 32
            mem[_8347] = 0
            _8551 = mem[64]
            mem[64] = mem[64] + 32
            _8552 = mem[ceil32(return_data.size) + 1888]
            _8755 = mem[64]
            mem[64] = mem[64] + 64
            mem[_8755] = 30
            mem[_8755 + 32] = 'SafeMath: subtraction overflow'
            if _8552 > 1000000000000000000 * 10^18 / _7581:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[_8551] = (1000000000000000000 * 10^18 / _7581) - _8552
            _9271 = mem[64]
            mem[64] = mem[64] + 32
            mem[_9271] = 0
            _9415 = mem[64]
            mem[64] = mem[64] + 32
            mem[_9415] = 0
            _9655 = mem[64]
            mem[64] = mem[64] + 32
            _9656 = mem[ceil32(return_data.size) + 352]
            _9657 = mem[ceil32(return_data.size) + 192]
            _9847 = mem[64]
            mem[64] = mem[64] + 64
            mem[_9847] = 30
            mem[_9847 + 32] = 'SafeMath: subtraction overflow'
            if _9656 > _9657:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[_9655] = _9657 - _9656
            _10363 = mem[64]
            mem[64] = mem[64] + 32
            mem[_10363] = 0
            _10543 = mem[64]
            mem[64] = mem[64] + 32
            if _9657 - _9656 + mem[ceil32(return_data.size) + 1696] < mem[ceil32(return_data.size) + 1696]:
                revert with 0, 'SafeMath: addition overflow'
            mem[_10543] = _9657 - _9656 + mem[ceil32(return_data.size) + 1696]
            _10939 = mem[64]
            mem[64] = mem[64] + 32
            mem[_10939] = 0
            _11131 = mem[64]
            mem[64] = mem[64] + 32
            if not (1000000000000000000 * 10^18 / _7581) - _8552:
                _11683 = mem[64]
                mem[64] = mem[64] + 64
                mem[_11683] = 26
                mem[_11683 + 32] = 'SafeMath: division by zero'
                mem[_11131] = 0
                _12007 = mem[64]
                mem[64] = mem[64] + 32
                mem[_12007] = 0
                _12272 = mem[64]
                mem[64] = mem[64] + 32
                _12273 = mem[ceil32(return_data.size) + 1536]
                _12274 = mem[ceil32(return_data.size) + 1696]
                if not mem[ceil32(return_data.size) + 1536]:
                    _12908 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12908] = 26
                    mem[_12908 + 32] = 'SafeMath: division by zero'
                    mem[_12272] = 0
                    _13555 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_13555] = 0
                    _13917 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_13917] = 0
                    _15475 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_15475] = 0
                    mem[64] = mem[64] + 32
                    if not mem[_10543]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / mem[_10543]:
                        return 0
                    if arg1 * 0 / mem[_10543] / 0 / mem[_10543] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 0 / mem[_10543] / 10^18)
                if mem[ceil32(return_data.size) + 1696] * mem[ceil32(return_data.size) + 1536] / mem[ceil32(return_data.size) + 1536] != mem[ceil32(return_data.size) + 1696]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _13088 = mem[64]
                mem[64] = mem[64] + 64
                mem[_13088] = 26
                mem[_13088 + 32] = 'SafeMath: division by zero'
                mem[_12272] = _12274 * _12273 / 10^18
                _13916 = mem[64]
                mem[64] = mem[64] + 32
                mem[_13916] = 0
                _14483 = mem[64]
                mem[64] = mem[64] + 32
                if _12274 * _12273 / 10^18 < _12274 * _12273 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_14483] = _12274 * _12273 / 10^18
                _15848 = mem[64]
                mem[64] = mem[64] + 32
                mem[_15848] = 0
                mem[64] = mem[64] + 32
                if not _12274 * _12273 / 10^18:
                    if not mem[_10543]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / mem[_10543]:
                        return 0
                    if arg1 * 0 / mem[_10543] / 0 / mem[_10543] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 0 / mem[_10543] / 10^18)
                if 10^18 * _12274 * _12273 / 10^18 / _12274 * _12273 / 10^18 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not mem[_10543]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 10^18 * _12274 * _12273 / 10^18 / mem[_10543]:
                    return 0
                if arg1 * 10^18 * _12274 * _12273 / 10^18 / mem[_10543] / 10^18 * _12274 * _12273 / 10^18 / mem[_10543] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 10^18 * _12274 * _12273 / 10^18 / mem[_10543] / 10^18)
            if (_9657 * 1000000000000000000 * 10^18 / _7581) - (_9656 * 1000000000000000000 * 10^18 / _7581) - (_9657 * _8552) + (_9656 * _8552) / (1000000000000000000 * 10^18 / _7581) - _8552 != _9657 - _9656:
                revert with 0, 'SafeMath: multiplication overflow'
            _11767 = mem[64]
            mem[64] = mem[64] + 64
            mem[_11767] = 26
            mem[_11767 + 32] = 'SafeMath: division by zero'
            mem[_11131] = (1000000000000000000 * 10^18 / _7581 * _9657) - (_8552 * _9657) - (1000000000000000000 * 10^18 / _7581 * _9656) + (_8552 * _9656) / 10^18
            _12271 = mem[64]
            mem[64] = mem[64] + 32
            mem[_12271] = 0
            _12559 = mem[64]
            mem[64] = mem[64] + 32
            _12560 = mem[ceil32(return_data.size) + 1536]
            _12561 = mem[ceil32(return_data.size) + 1696]
            if not mem[ceil32(return_data.size) + 1536]:
                _13087 = mem[64]
                mem[64] = mem[64] + 64
                mem[_13087] = 26
                mem[_13087 + 32] = 'SafeMath: division by zero'
                mem[_12559] = 0
                _13915 = mem[64]
                mem[64] = mem[64] + 32
                mem[_13915] = 0
                _14480 = mem[64]
                mem[64] = mem[64] + 32
                if (1000000000000000000 * 10^18 / _7581 * _9657) - (_8552 * _9657) - (1000000000000000000 * 10^18 / _7581 * _9656) + (_8552 * _9656) / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_14480] = (1000000000000000000 * 10^18 / _7581 * _9657) - (_8552 * _9657) - (1000000000000000000 * 10^18 / _7581 * _9656) + (_8552 * _9656) / 10^18
                _15847 = mem[64]
                mem[64] = mem[64] + 32
                mem[_15847] = 0
                mem[64] = mem[64] + 32
                if not (1000000000000000000 * 10^18 / _7581 * _9657) - (_8552 * _9657) - (1000000000000000000 * 10^18 / _7581 * _9656) + (_8552 * _9656) / 10^18:
                    if not mem[_10543]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / mem[_10543]:
                        return 0
                    if arg1 * 0 / mem[_10543] / 0 / mem[_10543] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 0 / mem[_10543] / 10^18)
                if 10^18 * (1000000000000000000 * 10^18 / _7581 * _9657) - (_8552 * _9657) - (1000000000000000000 * 10^18 / _7581 * _9656) + (_8552 * _9656) / 10^18 / (1000000000000000000 * 10^18 / _7581 * _9657) - (_8552 * _9657) - (1000000000000000000 * 10^18 / _7581 * _9656) + (_8552 * _9656) / 10^18 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not mem[_10543]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 10^18 * (1000000000000000000 * 10^18 / _7581 * _9657) - (_8552 * _9657) - (1000000000000000000 * 10^18 / _7581 * _9656) + (_8552 * _9656) / 10^18 / mem[_10543]:
                    return 0
                if arg1 * 10^18 * (1000000000000000000 * 10^18 / _7581 * _9657) - (_8552 * _9657) - (1000000000000000000 * 10^18 / _7581 * _9656) + (_8552 * _9656) / 10^18 / mem[_10543] / 10^18 * (1000000000000000000 * 10^18 / _7581 * _9657) - (_8552 * _9657) - (1000000000000000000 * 10^18 / _7581 * _9656) + (_8552 * _9656) / 10^18 / mem[_10543] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 10^18 * (1000000000000000000 * 10^18 / _7581 * _9657) - (_8552 * _9657) - (1000000000000000000 * 10^18 / _7581 * _9656) + (_8552 * _9656) / 10^18 / mem[_10543] / 10^18)
            if mem[ceil32(return_data.size) + 1696] * mem[ceil32(return_data.size) + 1536] / mem[ceil32(return_data.size) + 1536] != mem[ceil32(return_data.size) + 1696]:
                revert with 0, 'SafeMath: multiplication overflow'
            _13207 = mem[64]
            mem[64] = mem[64] + 64
            mem[_13207] = 26
            mem[_13207 + 32] = 'SafeMath: division by zero'
            mem[_12559] = _12561 * _12560 / 10^18
            _14479 = mem[64]
            mem[64] = mem[64] + 32
            mem[_14479] = 0
            _14947 = mem[64]
            mem[64] = mem[64] + 32
            if ((1000000000000000000 * 10^18 / _7581 * _9657) - (_8552 * _9657) - (1000000000000000000 * 10^18 / _7581 * _9656) + (_8552 * _9656) / 10^18) + (_12561 * _12560 / 10^18) < _12561 * _12560 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            mem[_14947] = ((1000000000000000000 * 10^18 / _7581 * _9657) - (_8552 * _9657) - (1000000000000000000 * 10^18 / _7581 * _9656) + (_8552 * _9656) / 10^18) + (_12561 * _12560 / 10^18)
            _16471 = mem[64]
            mem[64] = mem[64] + 32
            mem[_16471] = 0
            mem[64] = mem[64] + 32
            if not ((1000000000000000000 * 10^18 / _7581 * _9657) - (_8552 * _9657) - (1000000000000000000 * 10^18 / _7581 * _9656) + (_8552 * _9656) / 10^18) + (_12561 * _12560 / 10^18):
                if not mem[_10543]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / mem[_10543]:
                    return 0
                if arg1 * 0 / mem[_10543] / 0 / mem[_10543] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 0 / mem[_10543] / 10^18)
            if (10^18 * (1000000000000000000 * 10^18 / _7581 * _9657) - (_8552 * _9657) - (1000000000000000000 * 10^18 / _7581 * _9656) + (_8552 * _9656) / 10^18) + (10^18 * _12561 * _12560 / 10^18) / ((1000000000000000000 * 10^18 / _7581 * _9657) - (_8552 * _9657) - (1000000000000000000 * 10^18 / _7581 * _9656) + (_8552 * _9656) / 10^18) + (_12561 * _12560 / 10^18) != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not mem[_10543]:
                revert with 0, 'SafeMath: division by zero', 0
            if not (10^18 * (1000000000000000000 * 10^18 / _7581 * _9657) - (_8552 * _9657) - (1000000000000000000 * 10^18 / _7581 * _9656) + (_8552 * _9656) / 10^18) + (10^18 * _12561 * _12560 / 10^18) / mem[_10543]:
                return 0
            if arg1 * (10^18 * (1000000000000000000 * 10^18 / _7581 * _9657) - (_8552 * _9657) - (1000000000000000000 * 10^18 / _7581 * _9656) + (_8552 * _9656) / 10^18) + (10^18 * _12561 * _12560 / 10^18) / mem[_10543] / (10^18 * (1000000000000000000 * 10^18 / _7581 * _9657) - (_8552 * _9657) - (1000000000000000000 * 10^18 / _7581 * _9656) + (_8552 * _9656) / 10^18) + (10^18 * _12561 * _12560 / 10^18) / mem[_10543] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * (10^18 * (1000000000000000000 * 10^18 / _7581 * _9657) - (_8552 * _9657) - (1000000000000000000 * 10^18 / _7581 * _9656) + (_8552 * _9656) / 10^18) + (10^18 * _12561 * _12560 / 10^18) / mem[_10543] / 10^18)
        mem[ceil32(return_data.size) + 768] = 0
        mem[ceil32(return_data.size) + 800] = 10^18
        mem[ceil32(return_data.size) + 832] = 0
        mem[ceil32(return_data.size) + 864] = 10^18
        mem[ceil32(return_data.size) + 896] = 0
        mem[ceil32(return_data.size) + 960] = 30
        mem[ceil32(return_data.size) + 992] = 'SafeMath: subtraction overflow'
        if 0 / ext_call.return_data[0] - arg1 > 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[ceil32(return_data.size) + 928] = -(0 / ext_call.return_data[0] - arg1) + 10^18
        mem[ceil32(return_data.size) + 1024] = 0
        mem[ceil32(return_data.size) + 1056] = 0
        mem[64] = ceil32(return_data.size) + 1120
        mem[ceil32(return_data.size) + 1088] = -(0 / ext_call.return_data[0] - arg1) + 10^18
        idx = 1
        s = ceil32(return_data.size) + 1088
        while idx < 2:
            _3531 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3531] = 0
            _3594 = mem[64]
            mem[64] = mem[64] + 32
            _3595 = mem[s]
            _3596 = mem[ceil32(return_data.size) + 928]
            if not mem[s]:
                _4307 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4307] = 26
                mem[_4307 + 32] = 'SafeMath: division by zero'
                mem[_3594] = 0
            else:
                if mem[ceil32(return_data.size) + 928] * mem[s] / mem[s] != mem[ceil32(return_data.size) + 928]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4362 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4362] = 26
                mem[_4362 + 32] = 'SafeMath: division by zero'
                mem[_3594] = _3596 * _3595 / 10^18
            idx = idx + 1
            s = _3594
            continue 
        _3593 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3593] = 0
        _3667 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3667] = 10^18
        _4161 = mem[64]
        mem[64] = mem[64] + 32
        mem[_4161] = 0
        _4229 = mem[64]
        mem[64] = mem[64] + 32
        _4231 = mem[s]
        _4587 = mem[64]
        mem[64] = mem[64] + 64
        mem[_4587] = 26
        mem[_4587 + 32] = 'SafeMath: division by zero'
        if not _4231:
            revert with 0, 'SafeMath: division by zero', 0
        mem[_4229] = 1000000000000000000 * 10^18 / _4231
        _4932 = mem[64]
        mem[64] = mem[64] + 32
        mem[_4932] = 0
        _5025 = mem[64]
        mem[64] = mem[64] + 32
        _5026 = mem[ceil32(return_data.size) + 800]
        _5117 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5117] = 30
        mem[_5117 + 32] = 'SafeMath: subtraction overflow'
        if _5026 > 1000000000000000000 * 10^18 / _4231:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[_5025] = (1000000000000000000 * 10^18 / _4231) - _5026
        _5581 = mem[64]
        mem[64] = mem[64] + 32
        mem[_5581] = 0
        _5722 = mem[64]
        mem[64] = mem[64] + 32
        mem[_5722] = 0
        _5779 = mem[64]
        mem[64] = mem[64] + 32
        _5780 = mem[ceil32(return_data.size) + 576]
        _5781 = mem[ceil32(return_data.size) + 352]
        _5816 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5816] = 30
        mem[_5816 + 32] = 'SafeMath: subtraction overflow'
        if _5780 > _5781:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[_5779] = _5781 - _5780
        _6060 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6060] = 0
        _6104 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6104] = 0
        _6148 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6148] = 0
        _6178 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6178] = 10^18
        _6222 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6222] = 0
        _6254 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6254] = 10^18
        _6328 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6328] = 0
        _6366 = mem[64]
        mem[64] = mem[64] + 32
        _6367 = mem[ceil32(return_data.size) + 352]
        _6392 = mem[64]
        mem[64] = mem[64] + 64
        mem[_6392] = 30
        mem[_6392 + 32] = 'SafeMath: subtraction overflow'
        if _6367 > 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[_6366] = -_6367 + 10^18
        _6440 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6440] = 0
        _6462 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6462] = 0
        _6492 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6492] = -_6367 + 10^18
        idx = 1
        s = _6492
        while idx < 2:
            _6861 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6861] = 0
            _6958 = mem[64]
            mem[64] = mem[64] + 32
            _6959 = mem[s]
            _6960 = mem[_6366]
            if not mem[s]:
                _7739 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7739] = 26
                mem[_7739 + 32] = 'SafeMath: division by zero'
                mem[_6958] = 0
            else:
                if mem[_6366] * mem[s] / mem[s] != mem[_6366]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _7787 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7787] = 26
                mem[_7787 + 32] = 'SafeMath: division by zero'
                mem[_6958] = _6960 * _6959 / 10^18
            idx = idx + 1
            s = _6958
            continue 
        _6957 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6957] = 0
        _7101 = mem[64]
        mem[64] = mem[64] + 32
        mem[_7101] = 10^18
        _7499 = mem[64]
        mem[64] = mem[64] + 32
        mem[_7499] = 0
        _7595 = mem[64]
        mem[64] = mem[64] + 32
        _7597 = mem[s]
        _7979 = mem[64]
        mem[64] = mem[64] + 64
        mem[_7979] = 26
        mem[_7979 + 32] = 'SafeMath: division by zero'
        if not _7597:
            revert with 0, 'SafeMath: division by zero', 0
        mem[_7595] = 1000000000000000000 * 10^18 / _7597
        _8363 = mem[64]
        mem[64] = mem[64] + 32
        mem[_8363] = 0
        _8571 = mem[64]
        mem[64] = mem[64] + 32
        _8572 = mem[_6178]
        _8763 = mem[64]
        mem[64] = mem[64] + 64
        mem[_8763] = 30
        mem[_8763 + 32] = 'SafeMath: subtraction overflow'
        if _8572 > 1000000000000000000 * 10^18 / _7597:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[_8571] = (1000000000000000000 * 10^18 / _7597) - _8572
        _9275 = mem[64]
        mem[64] = mem[64] + 32
        mem[_9275] = 0
        _9435 = mem[64]
        mem[64] = mem[64] + 32
        mem[_9435] = 0
        _9675 = mem[64]
        mem[64] = mem[64] + 32
        _9676 = mem[ceil32(return_data.size) + 352]
        _9677 = mem[ceil32(return_data.size) + 192]
        _9851 = mem[64]
        mem[64] = mem[64] + 64
        mem[_9851] = 30
        mem[_9851 + 32] = 'SafeMath: subtraction overflow'
        if _9676 > _9677:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[_9675] = _9677 - _9676
        _10379 = mem[64]
        mem[64] = mem[64] + 32
        mem[_10379] = 0
        _10555 = mem[64]
        mem[64] = mem[64] + 32
        if _9677 - _9676 + mem[_5779] < mem[_5779]:
            revert with 0, 'SafeMath: addition overflow'
        mem[_10555] = _9677 - _9676 + mem[_5779]
        _10955 = mem[64]
        mem[64] = mem[64] + 32
        mem[_10955] = 0
        _11147 = mem[64]
        mem[64] = mem[64] + 32
        if not (1000000000000000000 * 10^18 / _7597) - _8572:
            _11691 = mem[64]
            mem[64] = mem[64] + 64
            mem[_11691] = 26
            mem[_11691 + 32] = 'SafeMath: division by zero'
            mem[_11147] = 0
            _12027 = mem[64]
            mem[64] = mem[64] + 32
            mem[_12027] = 0
            _12300 = mem[64]
            mem[64] = mem[64] + 32
            _12301 = mem[_5025]
            _12302 = mem[_5779]
            if not mem[_5025]:
                _12924 = mem[64]
                mem[64] = mem[64] + 64
                mem[_12924] = 26
                mem[_12924 + 32] = 'SafeMath: division by zero'
                mem[_12300] = 0
                _13579 = mem[64]
                mem[64] = mem[64] + 32
                mem[_13579] = 0
                _13965 = mem[64]
                mem[64] = mem[64] + 32
                mem[_13965] = 0
                _15499 = mem[64]
                mem[64] = mem[64] + 32
                mem[_15499] = 0
                mem[64] = mem[64] + 32
                if not mem[_10555]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / mem[_10555]:
                    return 0
                if arg1 * 0 / mem[_10555] / 0 / mem[_10555] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 0 / mem[_10555] / 10^18)
            if mem[_5779] * mem[_5025] / mem[_5025] != mem[_5779]:
                revert with 0, 'SafeMath: multiplication overflow'
            _13100 = mem[64]
            mem[64] = mem[64] + 64
            mem[_13100] = 26
            mem[_13100 + 32] = 'SafeMath: division by zero'
            mem[_12300] = _12302 * _12301 / 10^18
            _13964 = mem[64]
            mem[64] = mem[64] + 32
            mem[_13964] = 0
            _14527 = mem[64]
            mem[64] = mem[64] + 32
            if _12302 * _12301 / 10^18 < _12302 * _12301 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            mem[_14527] = _12302 * _12301 / 10^18
            _15900 = mem[64]
            mem[64] = mem[64] + 32
            mem[_15900] = 0
            mem[64] = mem[64] + 32
            if not _12302 * _12301 / 10^18:
                if not mem[_10555]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / mem[_10555]:
                    return 0
                if arg1 * 0 / mem[_10555] / 0 / mem[_10555] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 0 / mem[_10555] / 10^18)
            if 10^18 * _12302 * _12301 / 10^18 / _12302 * _12301 / 10^18 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not mem[_10555]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^18 * _12302 * _12301 / 10^18 / mem[_10555]:
                return 0
            if arg1 * 10^18 * _12302 * _12301 / 10^18 / mem[_10555] / 10^18 * _12302 * _12301 / 10^18 / mem[_10555] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * 10^18 * _12302 * _12301 / 10^18 / mem[_10555] / 10^18)
        if (_9677 * 1000000000000000000 * 10^18 / _7597) - (_9676 * 1000000000000000000 * 10^18 / _7597) - (_9677 * _8572) + (_9676 * _8572) / (1000000000000000000 * 10^18 / _7597) - _8572 != _9677 - _9676:
            revert with 0, 'SafeMath: multiplication overflow'
        _11771 = mem[64]
        mem[64] = mem[64] + 64
        mem[_11771] = 26
        mem[_11771 + 32] = 'SafeMath: division by zero'
        mem[_11147] = (1000000000000000000 * 10^18 / _7597 * _9677) - (_8572 * _9677) - (1000000000000000000 * 10^18 / _7597 * _9676) + (_8572 * _9676) / 10^18
        _12299 = mem[64]
        mem[64] = mem[64] + 32
        mem[_12299] = 0
        _12571 = mem[64]
        mem[64] = mem[64] + 32
        _12572 = mem[_5025]
        _12573 = mem[_5779]
        if not mem[_5025]:
            _13099 = mem[64]
            mem[64] = mem[64] + 64
            mem[_13099] = 26
            mem[_13099 + 32] = 'SafeMath: division by zero'
            mem[_12571] = 0
            _13963 = mem[64]
            mem[64] = mem[64] + 32
            mem[_13963] = 0
            _14524 = mem[64]
            mem[64] = mem[64] + 32
            if (1000000000000000000 * 10^18 / _7597 * _9677) - (_8572 * _9677) - (1000000000000000000 * 10^18 / _7597 * _9676) + (_8572 * _9676) / 10^18 < 0:
                revert with 0, 'SafeMath: addition overflow'
            mem[_14524] = (1000000000000000000 * 10^18 / _7597 * _9677) - (_8572 * _9677) - (1000000000000000000 * 10^18 / _7597 * _9676) + (_8572 * _9676) / 10^18
            _15899 = mem[64]
            mem[64] = mem[64] + 32
            mem[_15899] = 0
            mem[64] = mem[64] + 32
            if not (1000000000000000000 * 10^18 / _7597 * _9677) - (_8572 * _9677) - (1000000000000000000 * 10^18 / _7597 * _9676) + (_8572 * _9676) / 10^18:
                if not mem[_10555]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / mem[_10555]:
                    return 0
                if arg1 * 0 / mem[_10555] / 0 / mem[_10555] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 0 / mem[_10555] / 10^18)
            if 10^18 * (1000000000000000000 * 10^18 / _7597 * _9677) - (_8572 * _9677) - (1000000000000000000 * 10^18 / _7597 * _9676) + (_8572 * _9676) / 10^18 / (1000000000000000000 * 10^18 / _7597 * _9677) - (_8572 * _9677) - (1000000000000000000 * 10^18 / _7597 * _9676) + (_8572 * _9676) / 10^18 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not mem[_10555]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^18 * (1000000000000000000 * 10^18 / _7597 * _9677) - (_8572 * _9677) - (1000000000000000000 * 10^18 / _7597 * _9676) + (_8572 * _9676) / 10^18 / mem[_10555]:
                return 0
            if arg1 * 10^18 * (1000000000000000000 * 10^18 / _7597 * _9677) - (_8572 * _9677) - (1000000000000000000 * 10^18 / _7597 * _9676) + (_8572 * _9676) / 10^18 / mem[_10555] / 10^18 * (1000000000000000000 * 10^18 / _7597 * _9677) - (_8572 * _9677) - (1000000000000000000 * 10^18 / _7597 * _9676) + (_8572 * _9676) / 10^18 / mem[_10555] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * 10^18 * (1000000000000000000 * 10^18 / _7597 * _9677) - (_8572 * _9677) - (1000000000000000000 * 10^18 / _7597 * _9676) + (_8572 * _9676) / 10^18 / mem[_10555] / 10^18)
        if mem[_5779] * mem[_5025] / mem[_5025] != mem[_5779]:
            revert with 0, 'SafeMath: multiplication overflow'
        _13211 = mem[64]
        mem[64] = mem[64] + 64
        mem[_13211] = 26
        mem[_13211 + 32] = 'SafeMath: division by zero'
        mem[_12571] = _12573 * _12572 / 10^18
        _14523 = mem[64]
        mem[64] = mem[64] + 32
        mem[_14523] = 0
        _14971 = mem[64]
        mem[64] = mem[64] + 32
        if ((1000000000000000000 * 10^18 / _7597 * _9677) - (_8572 * _9677) - (1000000000000000000 * 10^18 / _7597 * _9676) + (_8572 * _9676) / 10^18) + (_12573 * _12572 / 10^18) < _12573 * _12572 / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        mem[_14971] = ((1000000000000000000 * 10^18 / _7597 * _9677) - (_8572 * _9677) - (1000000000000000000 * 10^18 / _7597 * _9676) + (_8572 * _9676) / 10^18) + (_12573 * _12572 / 10^18)
        _16523 = mem[64]
        mem[64] = mem[64] + 32
        mem[_16523] = 0
        mem[64] = mem[64] + 32
        if not ((1000000000000000000 * 10^18 / _7597 * _9677) - (_8572 * _9677) - (1000000000000000000 * 10^18 / _7597 * _9676) + (_8572 * _9676) / 10^18) + (_12573 * _12572 / 10^18):
            if not mem[_10555]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / mem[_10555]:
                return 0
            if arg1 * 0 / mem[_10555] / 0 / mem[_10555] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * 0 / mem[_10555] / 10^18)
        if (10^18 * (1000000000000000000 * 10^18 / _7597 * _9677) - (_8572 * _9677) - (1000000000000000000 * 10^18 / _7597 * _9676) + (_8572 * _9676) / 10^18) + (10^18 * _12573 * _12572 / 10^18) / ((1000000000000000000 * 10^18 / _7597 * _9677) - (_8572 * _9677) - (1000000000000000000 * 10^18 / _7597 * _9676) + (_8572 * _9676) / 10^18) + (_12573 * _12572 / 10^18) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not mem[_10555]:
            revert with 0, 'SafeMath: division by zero', 0
        if not (10^18 * (1000000000000000000 * 10^18 / _7597 * _9677) - (_8572 * _9677) - (1000000000000000000 * 10^18 / _7597 * _9676) + (_8572 * _9676) / 10^18) + (10^18 * _12573 * _12572 / 10^18) / mem[_10555]:
            return 0
        if arg1 * (10^18 * (1000000000000000000 * 10^18 / _7597 * _9677) - (_8572 * _9677) - (1000000000000000000 * 10^18 / _7597 * _9676) + (_8572 * _9676) / 10^18) + (10^18 * _12573 * _12572 / 10^18) / mem[_10555] / (10^18 * (1000000000000000000 * 10^18 / _7597 * _9677) - (_8572 * _9677) - (1000000000000000000 * 10^18 / _7597 * _9676) + (_8572 * _9676) / 10^18) + (10^18 * _12573 * _12572 / 10^18) / mem[_10555] != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        return (arg1 * (10^18 * (1000000000000000000 * 10^18 / _7597 * _9677) - (_8572 * _9677) - (1000000000000000000 * 10^18 / _7597 * _9676) + (_8572 * _9676) / 10^18) + (10^18 * _12573 * _12572 / 10^18) / mem[_10555] / 10^18)
    if (10^18 * totalDebt) - (10^18 * arg1) / totalDebt - arg1 != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    mem[ceil32(return_data.size) + 608] = 26
    mem[ceil32(return_data.size) + 640] = 'SafeMath: division by zero'
    if not ext_call.return_data[0] - arg1:
        revert with 0, 'SafeMath: division by zero', 0
    mem[ceil32(return_data.size) + 576] = (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1
    mem[ceil32(return_data.size) + 672] = 0
    if 15 * 10^16 == 10^18 * totalDebt / ext_call.return_data[0]:
        if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 != 10^18 * totalDebt / ext_call.return_data[0]:
            if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 > 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 10^18 * totalDebt / ext_call.return_data[0] > 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not -(10^18 * totalDebt / ext_call.return_data[0]) + 10^18:
                revert with 0, 'SafeMath: division by zero', 0
            if (-1 * 10^18 * 10^18 * totalDebt / ext_call.return_data[0]) + (-1 * 10^18 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + (10^18 * totalDebt / ext_call.return_data[0] * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / -(10^18 * totalDebt / ext_call.return_data[0]) + 10^18 != -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (-1 * 10^18 * 10^18 * totalDebt / ext_call.return_data[0]) + (-1 * 10^18 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + (10^18 * totalDebt / ext_call.return_data[0] * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18:
                revert with 0, 'SafeMath: division by zero', 0
            if 10^18 > 1000000000000000000 * 10^18 / (-1 * 10^18 * 10^18 * totalDebt / ext_call.return_data[0]) + (-1 * 10^18 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + (10^18 * totalDebt / ext_call.return_data[0] * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not (1000000000000000000 * 10^18 / (-1 * 10^18 * 10^18 * totalDebt / ext_call.return_data[0]) + (-1 * 10^18 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + (10^18 * totalDebt / ext_call.return_data[0] * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18) - 10^18:
                return 0
            if (1000000000000000000 * 10^18 / (-1 * 10^18 * 10^18 * totalDebt / ext_call.return_data[0]) + (-1 * 10^18 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + (10^18 * totalDebt / ext_call.return_data[0] * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18 * arg1) - (10^18 * arg1) / (1000000000000000000 * 10^18 / (-1 * 10^18 * 10^18 * totalDebt / ext_call.return_data[0]) + (-1 * 10^18 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + (10^18 * totalDebt / ext_call.return_data[0] * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18) - 10^18 != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return ((1000000000000000000 * 10^18 / (-1 * 10^18 * 10^18 * totalDebt / ext_call.return_data[0]) + (-1 * 10^18 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + (10^18 * totalDebt / ext_call.return_data[0] * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18 * arg1) - (10^18 * arg1) / 10^18)
        mem[ceil32(return_data.size) + 704] = 0
        mem[ceil32(return_data.size) + 736] = 0
        mem[ceil32(return_data.size) + 768] = 10^18
        mem[ceil32(return_data.size) + 800] = 0
        mem[ceil32(return_data.size) + 832] = 10^18
        mem[ceil32(return_data.size) + 864] = 0
        mem[ceil32(return_data.size) + 928] = 30
        mem[ceil32(return_data.size) + 960] = 'SafeMath: subtraction overflow'
        if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 > 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[ceil32(return_data.size) + 896] = -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 10^18
        mem[ceil32(return_data.size) + 992] = 0
        mem[ceil32(return_data.size) + 1024] = 0
        mem[64] = ceil32(return_data.size) + 1088
        mem[ceil32(return_data.size) + 1056] = -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 10^18
        idx = 1
        s = ceil32(return_data.size) + 1056
        while idx < 2:
            _3525 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3525] = 0
            _3583 = mem[64]
            mem[64] = mem[64] + 32
            _3584 = mem[s]
            _3585 = mem[ceil32(return_data.size) + 896]
            if not mem[s]:
                _4304 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4304] = 26
                mem[_4304 + 32] = 'SafeMath: division by zero'
                mem[_3583] = 0
            else:
                if mem[ceil32(return_data.size) + 896] * mem[s] / mem[s] != mem[ceil32(return_data.size) + 896]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4355 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4355] = 26
                mem[_4355 + 32] = 'SafeMath: division by zero'
                mem[_3583] = _3585 * _3584 / 10^18
            idx = idx + 1
            s = _3583
            continue 
        _3582 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3582] = 0
        _3664 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3664] = 10^18
        _4152 = mem[64]
        mem[64] = mem[64] + 32
        mem[_4152] = 0
        _4218 = mem[64]
        mem[64] = mem[64] + 32
        _4220 = mem[s]
        mem[mem[64] + 32] = 'SafeMath: division by zero'
        if not _4220:
            revert with 0, 'SafeMath: division by zero', 0
        mem[_4218] = 1000000000000000000 * 10^18 / _4220
        mem[mem[64]] = 0
        if mem[ceil32(return_data.size) + 768] > 1000000000000000000 * 10^18 / _4220:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not (1000000000000000000 * 10^18 / _4220) - mem[ceil32(return_data.size) + 768]:
            return 0
        if (1000000000000000000 * 10^18 / _4220 * arg1) - (mem[ceil32(return_data.size) + 768] * arg1) / (1000000000000000000 * 10^18 / _4220) - mem[ceil32(return_data.size) + 768] != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        return ((1000000000000000000 * 10^18 / _4220 * arg1) - (mem[ceil32(return_data.size) + 768] * arg1) / 10^18)
    if 10^18 * totalDebt / ext_call.return_data[0] <= 15 * 10^16:
        if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 != 10^18 * totalDebt / ext_call.return_data[0]:
            if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 > 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 10^18 * totalDebt / ext_call.return_data[0] > 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not -(10^18 * totalDebt / ext_call.return_data[0]) + 10^18:
                revert with 0, 'SafeMath: division by zero', 0
            if (-1 * 10^18 * 10^18 * totalDebt / ext_call.return_data[0]) + (-1 * 10^18 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + (10^18 * totalDebt / ext_call.return_data[0] * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / -(10^18 * totalDebt / ext_call.return_data[0]) + 10^18 != -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (-1 * 10^18 * 10^18 * totalDebt / ext_call.return_data[0]) + (-1 * 10^18 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + (10^18 * totalDebt / ext_call.return_data[0] * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18:
                revert with 0, 'SafeMath: division by zero', 0
            if 10^18 > 1000000000000000000 * 10^18 / (-1 * 10^18 * 10^18 * totalDebt / ext_call.return_data[0]) + (-1 * 10^18 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + (10^18 * totalDebt / ext_call.return_data[0] * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not (1000000000000000000 * 10^18 / (-1 * 10^18 * 10^18 * totalDebt / ext_call.return_data[0]) + (-1 * 10^18 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + (10^18 * totalDebt / ext_call.return_data[0] * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18) - 10^18:
                return 0
            if (1000000000000000000 * 10^18 / (-1 * 10^18 * 10^18 * totalDebt / ext_call.return_data[0]) + (-1 * 10^18 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + (10^18 * totalDebt / ext_call.return_data[0] * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18 * arg1) - (10^18 * arg1) / (1000000000000000000 * 10^18 / (-1 * 10^18 * 10^18 * totalDebt / ext_call.return_data[0]) + (-1 * 10^18 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + (10^18 * totalDebt / ext_call.return_data[0] * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18) - 10^18 != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return ((1000000000000000000 * 10^18 / (-1 * 10^18 * 10^18 * totalDebt / ext_call.return_data[0]) + (-1 * 10^18 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + (10^18 * totalDebt / ext_call.return_data[0] * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 1000000000000000000 * 10^18 / 10^18 * arg1) - (10^18 * arg1) / 10^18)
        mem[ceil32(return_data.size) + 704] = 0
        mem[ceil32(return_data.size) + 736] = 0
        mem[ceil32(return_data.size) + 768] = 10^18
        mem[ceil32(return_data.size) + 800] = 0
        mem[ceil32(return_data.size) + 832] = 10^18
        mem[ceil32(return_data.size) + 864] = 0
        mem[ceil32(return_data.size) + 928] = 30
        mem[ceil32(return_data.size) + 960] = 'SafeMath: subtraction overflow'
        if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 > 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[ceil32(return_data.size) + 896] = -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 10^18
        mem[ceil32(return_data.size) + 992] = 0
        mem[ceil32(return_data.size) + 1024] = 0
        mem[64] = ceil32(return_data.size) + 1088
        mem[ceil32(return_data.size) + 1056] = -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 10^18
        idx = 1
        s = ceil32(return_data.size) + 1056
        while idx < 2:
            _3524 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3524] = 0
            _3579 = mem[64]
            mem[64] = mem[64] + 32
            _3580 = mem[s]
            _3581 = mem[ceil32(return_data.size) + 896]
            if not mem[s]:
                _4303 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4303] = 26
                mem[_4303 + 32] = 'SafeMath: division by zero'
                mem[_3579] = 0
            else:
                if mem[ceil32(return_data.size) + 896] * mem[s] / mem[s] != mem[ceil32(return_data.size) + 896]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4354 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4354] = 26
                mem[_4354 + 32] = 'SafeMath: division by zero'
                mem[_3579] = _3581 * _3580 / 10^18
            idx = idx + 1
            s = _3579
            continue 
        _3578 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3578] = 0
        _3663 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3663] = 10^18
        _4151 = mem[64]
        mem[64] = mem[64] + 32
        mem[_4151] = 0
        _4214 = mem[64]
        mem[64] = mem[64] + 32
        _4216 = mem[s]
        mem[mem[64] + 32] = 'SafeMath: division by zero'
        if not _4216:
            revert with 0, 'SafeMath: division by zero', 0
        mem[_4214] = 1000000000000000000 * 10^18 / _4216
        mem[mem[64]] = 0
        if mem[ceil32(return_data.size) + 768] > 1000000000000000000 * 10^18 / _4216:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not (1000000000000000000 * 10^18 / _4216) - mem[ceil32(return_data.size) + 768]:
            return 0
        if (1000000000000000000 * 10^18 / _4216 * arg1) - (mem[ceil32(return_data.size) + 768] * arg1) / (1000000000000000000 * 10^18 / _4216) - mem[ceil32(return_data.size) + 768] != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        return ((1000000000000000000 * 10^18 / _4216 * arg1) - (mem[ceil32(return_data.size) + 768] * arg1) / 10^18)
    mem[ceil32(return_data.size) + 704] = 0
    if 15 * 10^16 == (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1:
        mem[ceil32(return_data.size) + 736] = 0
        if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 != 15 * 10^16:
            mem[ceil32(return_data.size) + 768] = 10^18
            mem[ceil32(return_data.size) + 800] = 0
            mem[ceil32(return_data.size) + 832] = 10^18
            mem[ceil32(return_data.size) + 864] = 0
            mem[ceil32(return_data.size) + 928] = 30
            mem[ceil32(return_data.size) + 960] = 'SafeMath: subtraction overflow'
            if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 > 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[ceil32(return_data.size) + 896] = -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 10^18
            mem[ceil32(return_data.size) + 992] = 0
            mem[ceil32(return_data.size) + 1024] = 10^18
            mem[ceil32(return_data.size) + 1056] = 0
            mem[ceil32(return_data.size) + 1120] = 30
            mem[ceil32(return_data.size) + 1152] = 'SafeMath: subtraction overflow'
            mem[ceil32(return_data.size) + 1088] = 85 * 10^16
            mem[ceil32(return_data.size) + 1184] = 0
            if (-85 * 10^16 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 85 * 10^16 != -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[ceil32(return_data.size) + 1248] = 26
            mem[ceil32(return_data.size) + 1280] = 'SafeMath: division by zero'
            mem[ceil32(return_data.size) + 1216] = (-85 * 10^16 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18
            mem[ceil32(return_data.size) + 1312] = 0
            mem[ceil32(return_data.size) + 1344] = 10^18
            mem[ceil32(return_data.size) + 1376] = 0
            mem[ceil32(return_data.size) + 1440] = 26
            mem[ceil32(return_data.size) + 1472] = 'SafeMath: division by zero'
            if not (-85 * 10^16 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18:
                revert with 0, 'SafeMath: division by zero', 0
            mem[ceil32(return_data.size) + 1408] = 1000000000000000000 * 10^18 / (-85 * 10^16 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18
            mem[ceil32(return_data.size) + 1504] = 0
            mem[ceil32(return_data.size) + 1568] = 30
            mem[ceil32(return_data.size) + 1600] = 'SafeMath: subtraction overflow'
            if 10^18 > 1000000000000000000 * 10^18 / (-85 * 10^16 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[ceil32(return_data.size) + 1536] = (1000000000000000000 * 10^18 / (-85 * 10^16 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18) - 10^18
            mem[ceil32(return_data.size) + 1632] = 0
            mem[ceil32(return_data.size) + 1664] = 0
            mem[ceil32(return_data.size) + 1728] = 30
            mem[ceil32(return_data.size) + 1760] = 'SafeMath: subtraction overflow'
            if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 > 15 * 10^16:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[ceil32(return_data.size) + 1696] = -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 15 * 10^16
            mem[ceil32(return_data.size) + 1792] = 0
            mem[ceil32(return_data.size) + 1824] = 0
            mem[ceil32(return_data.size) + 1856] = 0
            mem[ceil32(return_data.size) + 1888] = 10^18
            mem[ceil32(return_data.size) + 1920] = 0
            mem[ceil32(return_data.size) + 1952] = 10^18
            mem[ceil32(return_data.size) + 1984] = 0
            mem[ceil32(return_data.size) + 2048] = 30
            mem[ceil32(return_data.size) + 2080] = 'SafeMath: subtraction overflow'
            mem[ceil32(return_data.size) + 2016] = 85 * 10^16
            mem[ceil32(return_data.size) + 2112] = 0
            mem[ceil32(return_data.size) + 2144] = 0
            mem[64] = ceil32(return_data.size) + 2208
            mem[ceil32(return_data.size) + 2176] = 85 * 10^16
            idx = 1
            s = ceil32(return_data.size) + 2176
            while idx < 2:
                _6851 = mem[64]
                mem[64] = mem[64] + 32
                mem[_6851] = 0
                _6918 = mem[64]
                mem[64] = mem[64] + 32
                _6919 = mem[s]
                _6920 = mem[ceil32(return_data.size) + 2016]
                if not mem[s]:
                    _7729 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7729] = 26
                    mem[_7729 + 32] = 'SafeMath: division by zero'
                    mem[_6918] = 0
                else:
                    if mem[ceil32(return_data.size) + 2016] * mem[s] / mem[s] != mem[ceil32(return_data.size) + 2016]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _7777 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7777] = 26
                    mem[_7777 + 32] = 'SafeMath: division by zero'
                    mem[_6918] = _6920 * _6919 / 10^18
                idx = idx + 1
                s = _6918
                continue 
            _6917 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6917] = 0
            _7091 = mem[64]
            mem[64] = mem[64] + 32
            mem[_7091] = 10^18
            _7489 = mem[64]
            mem[64] = mem[64] + 32
            mem[_7489] = 0
            _7555 = mem[64]
            mem[64] = mem[64] + 32
            _7557 = mem[s]
            _7969 = mem[64]
            mem[64] = mem[64] + 64
            mem[_7969] = 26
            mem[_7969 + 32] = 'SafeMath: division by zero'
            if not _7557:
                revert with 0, 'SafeMath: division by zero', 0
            mem[_7555] = 1000000000000000000 * 10^18 / _7557
            _8323 = mem[64]
            mem[64] = mem[64] + 32
            mem[_8323] = 0
            _8521 = mem[64]
            mem[64] = mem[64] + 32
            _8522 = mem[ceil32(return_data.size) + 1888]
            _8743 = mem[64]
            mem[64] = mem[64] + 64
            mem[_8743] = 30
            mem[_8743 + 32] = 'SafeMath: subtraction overflow'
            if _8522 > 1000000000000000000 * 10^18 / _7557:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[_8521] = (1000000000000000000 * 10^18 / _7557) - _8522
            _9265 = mem[64]
            mem[64] = mem[64] + 32
            mem[_9265] = 0
            _9385 = mem[64]
            mem[64] = mem[64] + 32
            mem[_9385] = 0
            _9625 = mem[64]
            mem[64] = mem[64] + 32
            _9626 = mem[ceil32(return_data.size) + 352]
            _9627 = mem[ceil32(return_data.size) + 192]
            _9841 = mem[64]
            mem[64] = mem[64] + 64
            mem[_9841] = 30
            mem[_9841 + 32] = 'SafeMath: subtraction overflow'
            if _9626 > _9627:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[_9625] = _9627 - _9626
            _10339 = mem[64]
            mem[64] = mem[64] + 32
            mem[_10339] = 0
            _10525 = mem[64]
            mem[64] = mem[64] + 32
            if _9627 - _9626 + mem[ceil32(return_data.size) + 1696] < mem[ceil32(return_data.size) + 1696]:
                revert with 0, 'SafeMath: addition overflow'
            mem[_10525] = _9627 - _9626 + mem[ceil32(return_data.size) + 1696]
            _10915 = mem[64]
            mem[64] = mem[64] + 32
            mem[_10915] = 0
            _11107 = mem[64]
            mem[64] = mem[64] + 32
            if not (1000000000000000000 * 10^18 / _7557) - _8522:
                _11671 = mem[64]
                mem[64] = mem[64] + 64
                mem[_11671] = 26
                mem[_11671 + 32] = 'SafeMath: division by zero'
                mem[_11107] = 0
                _11977 = mem[64]
                mem[64] = mem[64] + 32
                mem[_11977] = 0
                _12230 = mem[64]
                mem[64] = mem[64] + 32
                _12231 = mem[ceil32(return_data.size) + 1536]
                _12232 = mem[ceil32(return_data.size) + 1696]
                if not mem[ceil32(return_data.size) + 1536]:
                    _12884 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12884] = 26
                    mem[_12884 + 32] = 'SafeMath: division by zero'
                    mem[_12230] = 0
                    _13519 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_13519] = 0
                    _13845 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_13845] = 0
                    _15439 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_15439] = 0
                    mem[64] = mem[64] + 32
                    if not mem[_10525]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / mem[_10525]:
                        return 0
                    if arg1 * 0 / mem[_10525] / 0 / mem[_10525] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 0 / mem[_10525] / 10^18)
                if mem[ceil32(return_data.size) + 1696] * mem[ceil32(return_data.size) + 1536] / mem[ceil32(return_data.size) + 1536] != mem[ceil32(return_data.size) + 1696]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _13070 = mem[64]
                mem[64] = mem[64] + 64
                mem[_13070] = 26
                mem[_13070 + 32] = 'SafeMath: division by zero'
                mem[_12230] = _12232 * _12231 / 10^18
                _13844 = mem[64]
                mem[64] = mem[64] + 32
                mem[_13844] = 0
                _14417 = mem[64]
                mem[64] = mem[64] + 32
                if _12232 * _12231 / 10^18 < _12232 * _12231 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_14417] = _12232 * _12231 / 10^18
                _15770 = mem[64]
                mem[64] = mem[64] + 32
                mem[_15770] = 0
                mem[64] = mem[64] + 32
                if not _12232 * _12231 / 10^18:
                    if not mem[_10525]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / mem[_10525]:
                        return 0
                    if arg1 * 0 / mem[_10525] / 0 / mem[_10525] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 0 / mem[_10525] / 10^18)
                if 10^18 * _12232 * _12231 / 10^18 / _12232 * _12231 / 10^18 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not mem[_10525]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 10^18 * _12232 * _12231 / 10^18 / mem[_10525]:
                    return 0
                if arg1 * 10^18 * _12232 * _12231 / 10^18 / mem[_10525] / 10^18 * _12232 * _12231 / 10^18 / mem[_10525] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 10^18 * _12232 * _12231 / 10^18 / mem[_10525] / 10^18)
            if (_9627 * 1000000000000000000 * 10^18 / _7557) - (_9626 * 1000000000000000000 * 10^18 / _7557) - (_9627 * _8522) + (_9626 * _8522) / (1000000000000000000 * 10^18 / _7557) - _8522 != _9627 - _9626:
                revert with 0, 'SafeMath: multiplication overflow'
            _11761 = mem[64]
            mem[64] = mem[64] + 64
            mem[_11761] = 26
            mem[_11761 + 32] = 'SafeMath: division by zero'
            mem[_11107] = (1000000000000000000 * 10^18 / _7557 * _9627) - (_8522 * _9627) - (1000000000000000000 * 10^18 / _7557 * _9626) + (_8522 * _9626) / 10^18
            _12229 = mem[64]
            mem[64] = mem[64] + 32
            mem[_12229] = 0
            _12541 = mem[64]
            mem[64] = mem[64] + 32
            _12542 = mem[ceil32(return_data.size) + 1536]
            _12543 = mem[ceil32(return_data.size) + 1696]
            if not mem[ceil32(return_data.size) + 1536]:
                _13069 = mem[64]
                mem[64] = mem[64] + 64
                mem[_13069] = 26
                mem[_13069 + 32] = 'SafeMath: division by zero'
                mem[_12541] = 0
                _13843 = mem[64]
                mem[64] = mem[64] + 32
                mem[_13843] = 0
                _14414 = mem[64]
                mem[64] = mem[64] + 32
                if (1000000000000000000 * 10^18 / _7557 * _9627) - (_8522 * _9627) - (1000000000000000000 * 10^18 / _7557 * _9626) + (_8522 * _9626) / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_14414] = (1000000000000000000 * 10^18 / _7557 * _9627) - (_8522 * _9627) - (1000000000000000000 * 10^18 / _7557 * _9626) + (_8522 * _9626) / 10^18
                _15769 = mem[64]
                mem[64] = mem[64] + 32
                mem[_15769] = 0
                mem[64] = mem[64] + 32
                if not (1000000000000000000 * 10^18 / _7557 * _9627) - (_8522 * _9627) - (1000000000000000000 * 10^18 / _7557 * _9626) + (_8522 * _9626) / 10^18:
                    if not mem[_10525]:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / mem[_10525]:
                        return 0
                    if arg1 * 0 / mem[_10525] / 0 / mem[_10525] != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * 0 / mem[_10525] / 10^18)
                if 10^18 * (1000000000000000000 * 10^18 / _7557 * _9627) - (_8522 * _9627) - (1000000000000000000 * 10^18 / _7557 * _9626) + (_8522 * _9626) / 10^18 / (1000000000000000000 * 10^18 / _7557 * _9627) - (_8522 * _9627) - (1000000000000000000 * 10^18 / _7557 * _9626) + (_8522 * _9626) / 10^18 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not mem[_10525]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 10^18 * (1000000000000000000 * 10^18 / _7557 * _9627) - (_8522 * _9627) - (1000000000000000000 * 10^18 / _7557 * _9626) + (_8522 * _9626) / 10^18 / mem[_10525]:
                    return 0
                if arg1 * 10^18 * (1000000000000000000 * 10^18 / _7557 * _9627) - (_8522 * _9627) - (1000000000000000000 * 10^18 / _7557 * _9626) + (_8522 * _9626) / 10^18 / mem[_10525] / 10^18 * (1000000000000000000 * 10^18 / _7557 * _9627) - (_8522 * _9627) - (1000000000000000000 * 10^18 / _7557 * _9626) + (_8522 * _9626) / 10^18 / mem[_10525] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 10^18 * (1000000000000000000 * 10^18 / _7557 * _9627) - (_8522 * _9627) - (1000000000000000000 * 10^18 / _7557 * _9626) + (_8522 * _9626) / 10^18 / mem[_10525] / 10^18)
            if mem[ceil32(return_data.size) + 1696] * mem[ceil32(return_data.size) + 1536] / mem[ceil32(return_data.size) + 1536] != mem[ceil32(return_data.size) + 1696]:
                revert with 0, 'SafeMath: multiplication overflow'
            _13201 = mem[64]
            mem[64] = mem[64] + 64
            mem[_13201] = 26
            mem[_13201 + 32] = 'SafeMath: division by zero'
            mem[_12541] = _12543 * _12542 / 10^18
            _14413 = mem[64]
            mem[64] = mem[64] + 32
            mem[_14413] = 0
            _14911 = mem[64]
            mem[64] = mem[64] + 32
            if ((1000000000000000000 * 10^18 / _7557 * _9627) - (_8522 * _9627) - (1000000000000000000 * 10^18 / _7557 * _9626) + (_8522 * _9626) / 10^18) + (_12543 * _12542 / 10^18) < _12543 * _12542 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            mem[_14911] = ((1000000000000000000 * 10^18 / _7557 * _9627) - (_8522 * _9627) - (1000000000000000000 * 10^18 / _7557 * _9626) + (_8522 * _9626) / 10^18) + (_12543 * _12542 / 10^18)
            _16393 = mem[64]
            mem[64] = mem[64] + 32
            mem[_16393] = 0
            mem[64] = mem[64] + 32
            if not ((1000000000000000000 * 10^18 / _7557 * _9627) - (_8522 * _9627) - (1000000000000000000 * 10^18 / _7557 * _9626) + (_8522 * _9626) / 10^18) + (_12543 * _12542 / 10^18):
                if not mem[_10525]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / mem[_10525]:
                    return 0
                if arg1 * 0 / mem[_10525] / 0 / mem[_10525] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 0 / mem[_10525] / 10^18)
            if (10^18 * (1000000000000000000 * 10^18 / _7557 * _9627) - (_8522 * _9627) - (1000000000000000000 * 10^18 / _7557 * _9626) + (_8522 * _9626) / 10^18) + (10^18 * _12543 * _12542 / 10^18) / ((1000000000000000000 * 10^18 / _7557 * _9627) - (_8522 * _9627) - (1000000000000000000 * 10^18 / _7557 * _9626) + (_8522 * _9626) / 10^18) + (_12543 * _12542 / 10^18) != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not mem[_10525]:
                revert with 0, 'SafeMath: division by zero', 0
            if not (10^18 * (1000000000000000000 * 10^18 / _7557 * _9627) - (_8522 * _9627) - (1000000000000000000 * 10^18 / _7557 * _9626) + (_8522 * _9626) / 10^18) + (10^18 * _12543 * _12542 / 10^18) / mem[_10525]:
                return 0
            if arg1 * (10^18 * (1000000000000000000 * 10^18 / _7557 * _9627) - (_8522 * _9627) - (1000000000000000000 * 10^18 / _7557 * _9626) + (_8522 * _9626) / 10^18) + (10^18 * _12543 * _12542 / 10^18) / mem[_10525] / (10^18 * (1000000000000000000 * 10^18 / _7557 * _9627) - (_8522 * _9627) - (1000000000000000000 * 10^18 / _7557 * _9626) + (_8522 * _9626) / 10^18) + (10^18 * _12543 * _12542 / 10^18) / mem[_10525] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * (10^18 * (1000000000000000000 * 10^18 / _7557 * _9627) - (_8522 * _9627) - (1000000000000000000 * 10^18 / _7557 * _9626) + (_8522 * _9626) / 10^18) + (10^18 * _12543 * _12542 / 10^18) / mem[_10525] / 10^18)
        mem[ceil32(return_data.size) + 768] = 0
        mem[ceil32(return_data.size) + 800] = 10^18
        mem[ceil32(return_data.size) + 832] = 0
        mem[ceil32(return_data.size) + 864] = 10^18
        mem[ceil32(return_data.size) + 896] = 0
        mem[ceil32(return_data.size) + 960] = 30
        mem[ceil32(return_data.size) + 992] = 'SafeMath: subtraction overflow'
        if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 > 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[ceil32(return_data.size) + 928] = -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 10^18
        mem[ceil32(return_data.size) + 1024] = 0
        mem[ceil32(return_data.size) + 1056] = 0
        mem[64] = ceil32(return_data.size) + 1120
        mem[ceil32(return_data.size) + 1088] = -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 10^18
        idx = 1
        s = ceil32(return_data.size) + 1088
        while idx < 2:
            _3522 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3522] = 0
            _3575 = mem[64]
            mem[64] = mem[64] + 32
            _3576 = mem[s]
            _3577 = mem[ceil32(return_data.size) + 928]
            if not mem[s]:
                _4302 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4302] = 26
                mem[_4302 + 32] = 'SafeMath: division by zero'
                mem[_3575] = 0
            else:
                if mem[ceil32(return_data.size) + 928] * mem[s] / mem[s] != mem[ceil32(return_data.size) + 928]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4353 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4353] = 26
                mem[_4353 + 32] = 'SafeMath: division by zero'
                mem[_3575] = _3577 * _3576 / 10^18
            idx = idx + 1
            s = _3575
            continue 
        _3574 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3574] = 0
        _3662 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3662] = 10^18
        _4150 = mem[64]
        mem[64] = mem[64] + 32
        mem[_4150] = 0
        _4210 = mem[64]
        mem[64] = mem[64] + 32
        _4212 = mem[s]
        _4582 = mem[64]
        mem[64] = mem[64] + 64
        mem[_4582] = 26
        mem[_4582 + 32] = 'SafeMath: division by zero'
        if not _4212:
            revert with 0, 'SafeMath: division by zero', 0
        mem[_4210] = 1000000000000000000 * 10^18 / _4212
        _4913 = mem[64]
        mem[64] = mem[64] + 32
        mem[_4913] = 0
        _5005 = mem[64]
        mem[64] = mem[64] + 32
        _5006 = mem[ceil32(return_data.size) + 800]
        _5108 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5108] = 30
        mem[_5108 + 32] = 'SafeMath: subtraction overflow'
        if _5006 > 1000000000000000000 * 10^18 / _4212:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[_5005] = (1000000000000000000 * 10^18 / _4212) - _5006
        _5576 = mem[64]
        mem[64] = mem[64] + 32
        mem[_5576] = 0
        _5713 = mem[64]
        mem[64] = mem[64] + 32
        mem[_5713] = 0
        _5773 = mem[64]
        mem[64] = mem[64] + 32
        _5774 = mem[ceil32(return_data.size) + 576]
        _5775 = mem[ceil32(return_data.size) + 352]
        _5813 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5813] = 30
        mem[_5813 + 32] = 'SafeMath: subtraction overflow'
        if _5774 > _5775:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[_5773] = _5775 - _5774
        _6056 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6056] = 0
        _6103 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6103] = 0
        _6142 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6142] = 0
        _6172 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6172] = 10^18
        _6218 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6218] = 0
        _6250 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6250] = 10^18
        _6322 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6322] = 0
        _6362 = mem[64]
        mem[64] = mem[64] + 32
        _6363 = mem[ceil32(return_data.size) + 352]
        _6391 = mem[64]
        mem[64] = mem[64] + 64
        mem[_6391] = 30
        mem[_6391 + 32] = 'SafeMath: subtraction overflow'
        if _6363 > 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[_6362] = -_6363 + 10^18
        _6439 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6439] = 0
        _6458 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6458] = 0
        _6489 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6489] = -_6363 + 10^18
        idx = 1
        s = _6489
        while idx < 2:
            _6855 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6855] = 0
            _6934 = mem[64]
            mem[64] = mem[64] + 32
            _6935 = mem[s]
            _6936 = mem[_6362]
            if not mem[s]:
                _7733 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7733] = 26
                mem[_7733 + 32] = 'SafeMath: division by zero'
                mem[_6934] = 0
            else:
                if mem[_6362] * mem[s] / mem[s] != mem[_6362]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _7781 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7781] = 26
                mem[_7781 + 32] = 'SafeMath: division by zero'
                mem[_6934] = _6936 * _6935 / 10^18
            idx = idx + 1
            s = _6934
            continue 
        _6933 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6933] = 0
        _7095 = mem[64]
        mem[64] = mem[64] + 32
        mem[_7095] = 10^18
        _7493 = mem[64]
        mem[64] = mem[64] + 32
        mem[_7493] = 0
        _7571 = mem[64]
        mem[64] = mem[64] + 32
        _7573 = mem[s]
        _7973 = mem[64]
        mem[64] = mem[64] + 64
        mem[_7973] = 26
        mem[_7973 + 32] = 'SafeMath: division by zero'
        if not _7573:
            revert with 0, 'SafeMath: division by zero', 0
        mem[_7571] = 1000000000000000000 * 10^18 / _7573
        _8339 = mem[64]
        mem[64] = mem[64] + 32
        mem[_8339] = 0
        _8541 = mem[64]
        mem[64] = mem[64] + 32
        _8542 = mem[_6172]
        _8751 = mem[64]
        mem[64] = mem[64] + 64
        mem[_8751] = 30
        mem[_8751 + 32] = 'SafeMath: subtraction overflow'
        if _8542 > 1000000000000000000 * 10^18 / _7573:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[_8541] = (1000000000000000000 * 10^18 / _7573) - _8542
        _9269 = mem[64]
        mem[64] = mem[64] + 32
        mem[_9269] = 0
        _9405 = mem[64]
        mem[64] = mem[64] + 32
        mem[_9405] = 0
        _9645 = mem[64]
        mem[64] = mem[64] + 32
        _9646 = mem[ceil32(return_data.size) + 352]
        _9647 = mem[ceil32(return_data.size) + 192]
        _9845 = mem[64]
        mem[64] = mem[64] + 64
        mem[_9845] = 30
        mem[_9845 + 32] = 'SafeMath: subtraction overflow'
        if _9646 > _9647:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[_9645] = _9647 - _9646
        _10355 = mem[64]
        mem[64] = mem[64] + 32
        mem[_10355] = 0
        _10537 = mem[64]
        mem[64] = mem[64] + 32
        if _9647 - _9646 + mem[_5773] < mem[_5773]:
            revert with 0, 'SafeMath: addition overflow'
        mem[_10537] = _9647 - _9646 + mem[_5773]
        _10931 = mem[64]
        mem[64] = mem[64] + 32
        mem[_10931] = 0
        _11123 = mem[64]
        mem[64] = mem[64] + 32
        if not (1000000000000000000 * 10^18 / _7573) - _8542:
            _11679 = mem[64]
            mem[64] = mem[64] + 64
            mem[_11679] = 26
            mem[_11679 + 32] = 'SafeMath: division by zero'
            mem[_11123] = 0
            _11997 = mem[64]
            mem[64] = mem[64] + 32
            mem[_11997] = 0
            _12258 = mem[64]
            mem[64] = mem[64] + 32
            _12259 = mem[_5005]
            _12260 = mem[_5773]
            if not mem[_5005]:
                _12900 = mem[64]
                mem[64] = mem[64] + 64
                mem[_12900] = 26
                mem[_12900 + 32] = 'SafeMath: division by zero'
                mem[_12258] = 0
                _13543 = mem[64]
                mem[64] = mem[64] + 32
                mem[_13543] = 0
                _13893 = mem[64]
                mem[64] = mem[64] + 32
                mem[_13893] = 0
                _15463 = mem[64]
                mem[64] = mem[64] + 32
                mem[_15463] = 0
                mem[64] = mem[64] + 32
                if not mem[_10537]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / mem[_10537]:
                    return 0
                if arg1 * 0 / mem[_10537] / 0 / mem[_10537] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 0 / mem[_10537] / 10^18)
            if mem[_5773] * mem[_5005] / mem[_5005] != mem[_5773]:
                revert with 0, 'SafeMath: multiplication overflow'
            _13082 = mem[64]
            mem[64] = mem[64] + 64
            mem[_13082] = 26
            mem[_13082 + 32] = 'SafeMath: division by zero'
            mem[_12258] = _12260 * _12259 / 10^18
            _13892 = mem[64]
            mem[64] = mem[64] + 32
            mem[_13892] = 0
            _14461 = mem[64]
            mem[64] = mem[64] + 32
            if _12260 * _12259 / 10^18 < _12260 * _12259 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            mem[_14461] = _12260 * _12259 / 10^18
            _15822 = mem[64]
            mem[64] = mem[64] + 32
            mem[_15822] = 0
            mem[64] = mem[64] + 32
            if not _12260 * _12259 / 10^18:
                if not mem[_10537]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / mem[_10537]:
                    return 0
                if arg1 * 0 / mem[_10537] / 0 / mem[_10537] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 0 / mem[_10537] / 10^18)
            if 10^18 * _12260 * _12259 / 10^18 / _12260 * _12259 / 10^18 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not mem[_10537]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^18 * _12260 * _12259 / 10^18 / mem[_10537]:
                return 0
            if arg1 * 10^18 * _12260 * _12259 / 10^18 / mem[_10537] / 10^18 * _12260 * _12259 / 10^18 / mem[_10537] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * 10^18 * _12260 * _12259 / 10^18 / mem[_10537] / 10^18)
        if (_9647 * 1000000000000000000 * 10^18 / _7573) - (_9646 * 1000000000000000000 * 10^18 / _7573) - (_9647 * _8542) + (_9646 * _8542) / (1000000000000000000 * 10^18 / _7573) - _8542 != _9647 - _9646:
            revert with 0, 'SafeMath: multiplication overflow'
        _11765 = mem[64]
        mem[64] = mem[64] + 64
        mem[_11765] = 26
        mem[_11765 + 32] = 'SafeMath: division by zero'
        mem[_11123] = (1000000000000000000 * 10^18 / _7573 * _9647) - (_8542 * _9647) - (1000000000000000000 * 10^18 / _7573 * _9646) + (_8542 * _9646) / 10^18
        _12257 = mem[64]
        mem[64] = mem[64] + 32
        mem[_12257] = 0
        _12553 = mem[64]
        mem[64] = mem[64] + 32
        _12554 = mem[_5005]
        _12555 = mem[_5773]
        if not mem[_5005]:
            _13081 = mem[64]
            mem[64] = mem[64] + 64
            mem[_13081] = 26
            mem[_13081 + 32] = 'SafeMath: division by zero'
            mem[_12553] = 0
            _13891 = mem[64]
            mem[64] = mem[64] + 32
            mem[_13891] = 0
            _14458 = mem[64]
            mem[64] = mem[64] + 32
            if (1000000000000000000 * 10^18 / _7573 * _9647) - (_8542 * _9647) - (1000000000000000000 * 10^18 / _7573 * _9646) + (_8542 * _9646) / 10^18 < 0:
                revert with 0, 'SafeMath: addition overflow'
            mem[_14458] = (1000000000000000000 * 10^18 / _7573 * _9647) - (_8542 * _9647) - (1000000000000000000 * 10^18 / _7573 * _9646) + (_8542 * _9646) / 10^18
            _15821 = mem[64]
            mem[64] = mem[64] + 32
            mem[_15821] = 0
            mem[64] = mem[64] + 32
            if not (1000000000000000000 * 10^18 / _7573 * _9647) - (_8542 * _9647) - (1000000000000000000 * 10^18 / _7573 * _9646) + (_8542 * _9646) / 10^18:
                if not mem[_10537]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / mem[_10537]:
                    return 0
                if arg1 * 0 / mem[_10537] / 0 / mem[_10537] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 0 / mem[_10537] / 10^18)
            if 10^18 * (1000000000000000000 * 10^18 / _7573 * _9647) - (_8542 * _9647) - (1000000000000000000 * 10^18 / _7573 * _9646) + (_8542 * _9646) / 10^18 / (1000000000000000000 * 10^18 / _7573 * _9647) - (_8542 * _9647) - (1000000000000000000 * 10^18 / _7573 * _9646) + (_8542 * _9646) / 10^18 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not mem[_10537]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^18 * (1000000000000000000 * 10^18 / _7573 * _9647) - (_8542 * _9647) - (1000000000000000000 * 10^18 / _7573 * _9646) + (_8542 * _9646) / 10^18 / mem[_10537]:
                return 0
            if arg1 * 10^18 * (1000000000000000000 * 10^18 / _7573 * _9647) - (_8542 * _9647) - (1000000000000000000 * 10^18 / _7573 * _9646) + (_8542 * _9646) / 10^18 / mem[_10537] / 10^18 * (1000000000000000000 * 10^18 / _7573 * _9647) - (_8542 * _9647) - (1000000000000000000 * 10^18 / _7573 * _9646) + (_8542 * _9646) / 10^18 / mem[_10537] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * 10^18 * (1000000000000000000 * 10^18 / _7573 * _9647) - (_8542 * _9647) - (1000000000000000000 * 10^18 / _7573 * _9646) + (_8542 * _9646) / 10^18 / mem[_10537] / 10^18)
        if mem[_5773] * mem[_5005] / mem[_5005] != mem[_5773]:
            revert with 0, 'SafeMath: multiplication overflow'
        _13205 = mem[64]
        mem[64] = mem[64] + 64
        mem[_13205] = 26
        mem[_13205 + 32] = 'SafeMath: division by zero'
        mem[_12553] = _12555 * _12554 / 10^18
        _14457 = mem[64]
        mem[64] = mem[64] + 32
        mem[_14457] = 0
        _14935 = mem[64]
        mem[64] = mem[64] + 32
        if ((1000000000000000000 * 10^18 / _7573 * _9647) - (_8542 * _9647) - (1000000000000000000 * 10^18 / _7573 * _9646) + (_8542 * _9646) / 10^18) + (_12555 * _12554 / 10^18) < _12555 * _12554 / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        mem[_14935] = ((1000000000000000000 * 10^18 / _7573 * _9647) - (_8542 * _9647) - (1000000000000000000 * 10^18 / _7573 * _9646) + (_8542 * _9646) / 10^18) + (_12555 * _12554 / 10^18)
        _16445 = mem[64]
        mem[64] = mem[64] + 32
        mem[_16445] = 0
        mem[64] = mem[64] + 32
        if not ((1000000000000000000 * 10^18 / _7573 * _9647) - (_8542 * _9647) - (1000000000000000000 * 10^18 / _7573 * _9646) + (_8542 * _9646) / 10^18) + (_12555 * _12554 / 10^18):
            if not mem[_10537]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / mem[_10537]:
                return 0
            if arg1 * 0 / mem[_10537] / 0 / mem[_10537] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * 0 / mem[_10537] / 10^18)
        if (10^18 * (1000000000000000000 * 10^18 / _7573 * _9647) - (_8542 * _9647) - (1000000000000000000 * 10^18 / _7573 * _9646) + (_8542 * _9646) / 10^18) + (10^18 * _12555 * _12554 / 10^18) / ((1000000000000000000 * 10^18 / _7573 * _9647) - (_8542 * _9647) - (1000000000000000000 * 10^18 / _7573 * _9646) + (_8542 * _9646) / 10^18) + (_12555 * _12554 / 10^18) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not mem[_10537]:
            revert with 0, 'SafeMath: division by zero', 0
        if not (10^18 * (1000000000000000000 * 10^18 / _7573 * _9647) - (_8542 * _9647) - (1000000000000000000 * 10^18 / _7573 * _9646) + (_8542 * _9646) / 10^18) + (10^18 * _12555 * _12554 / 10^18) / mem[_10537]:
            return 0
        if arg1 * (10^18 * (1000000000000000000 * 10^18 / _7573 * _9647) - (_8542 * _9647) - (1000000000000000000 * 10^18 / _7573 * _9646) + (_8542 * _9646) / 10^18) + (10^18 * _12555 * _12554 / 10^18) / mem[_10537] / (10^18 * (1000000000000000000 * 10^18 / _7573 * _9647) - (_8542 * _9647) - (1000000000000000000 * 10^18 / _7573 * _9646) + (_8542 * _9646) / 10^18) + (10^18 * _12555 * _12554 / 10^18) / mem[_10537] != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        return (arg1 * (10^18 * (1000000000000000000 * 10^18 / _7573 * _9647) - (_8542 * _9647) - (1000000000000000000 * 10^18 / _7573 * _9646) + (_8542 * _9646) / 10^18) + (10^18 * _12555 * _12554 / 10^18) / mem[_10537] / 10^18)
    if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 > 15 * 10^16:
        mem[ceil32(return_data.size) + 736] = 10^18
        mem[ceil32(return_data.size) + 768] = 0
        mem[ceil32(return_data.size) + 800] = 10^18
        mem[ceil32(return_data.size) + 832] = 0
        mem[ceil32(return_data.size) + 896] = 30
        mem[ceil32(return_data.size) + 928] = 'SafeMath: subtraction overflow'
        mem[ceil32(return_data.size) + 864] = 85 * 10^16
        mem[ceil32(return_data.size) + 960] = 0
        mem[ceil32(return_data.size) + 992] = 0
        mem[64] = ceil32(return_data.size) + 1056
        mem[ceil32(return_data.size) + 1024] = 85 * 10^16
        idx = 1
        s = ceil32(return_data.size) + 1024
        while idx < 2:
            _3513 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3513] = 0
            _3560 = mem[64]
            mem[64] = mem[64] + 32
            _3561 = mem[s]
            _3562 = mem[ceil32(return_data.size) + 864]
            if not mem[s]:
                _4296 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4296] = 26
                mem[_4296 + 32] = 'SafeMath: division by zero'
                mem[_3560] = 0
            else:
                if mem[ceil32(return_data.size) + 864] * mem[s] / mem[s] != mem[ceil32(return_data.size) + 864]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4345 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4345] = 26
                mem[_4345 + 32] = 'SafeMath: division by zero'
                mem[_3560] = _3562 * _3561 / 10^18
            idx = idx + 1
            s = _3560
            continue 
        _3559 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3559] = 0
        _3656 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3656] = 10^18
        _4136 = mem[64]
        mem[64] = mem[64] + 32
        mem[_4136] = 0
        _4192 = mem[64]
        mem[64] = mem[64] + 32
        _4194 = mem[s]
        mem[mem[64] + 32] = 'SafeMath: division by zero'
        if not _4194:
            revert with 0, 'SafeMath: division by zero', 0
        mem[_4192] = 1000000000000000000 * 10^18 / _4194
        mem[mem[64]] = 0
        if mem[ceil32(return_data.size) + 736] > 1000000000000000000 * 10^18 / _4194:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not (1000000000000000000 * 10^18 / _4194) - mem[ceil32(return_data.size) + 736]:
            return 0
        if (1000000000000000000 * 10^18 / _4194 * arg1) - (mem[ceil32(return_data.size) + 736] * arg1) / (1000000000000000000 * 10^18 / _4194) - mem[ceil32(return_data.size) + 736] != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        return ((1000000000000000000 * 10^18 / _4194 * arg1) - (mem[ceil32(return_data.size) + 736] * arg1) / 10^18)
    mem[ceil32(return_data.size) + 736] = 0
    if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 != 15 * 10^16:
        mem[ceil32(return_data.size) + 768] = 10^18
        mem[ceil32(return_data.size) + 800] = 0
        mem[ceil32(return_data.size) + 832] = 10^18
        mem[ceil32(return_data.size) + 864] = 0
        mem[ceil32(return_data.size) + 928] = 30
        mem[ceil32(return_data.size) + 960] = 'SafeMath: subtraction overflow'
        if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 > 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[ceil32(return_data.size) + 896] = -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 10^18
        mem[ceil32(return_data.size) + 992] = 0
        mem[ceil32(return_data.size) + 1024] = 10^18
        mem[ceil32(return_data.size) + 1056] = 0
        mem[ceil32(return_data.size) + 1120] = 30
        mem[ceil32(return_data.size) + 1152] = 'SafeMath: subtraction overflow'
        mem[ceil32(return_data.size) + 1088] = 85 * 10^16
        mem[ceil32(return_data.size) + 1184] = 0
        if (-85 * 10^16 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 85 * 10^16 != -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[ceil32(return_data.size) + 1248] = 26
        mem[ceil32(return_data.size) + 1280] = 'SafeMath: division by zero'
        mem[ceil32(return_data.size) + 1216] = (-85 * 10^16 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18
        mem[ceil32(return_data.size) + 1312] = 0
        mem[ceil32(return_data.size) + 1344] = 10^18
        mem[ceil32(return_data.size) + 1376] = 0
        mem[ceil32(return_data.size) + 1440] = 26
        mem[ceil32(return_data.size) + 1472] = 'SafeMath: division by zero'
        if not (-85 * 10^16 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        mem[ceil32(return_data.size) + 1408] = 1000000000000000000 * 10^18 / (-85 * 10^16 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18
        mem[ceil32(return_data.size) + 1504] = 0
        mem[ceil32(return_data.size) + 1568] = 30
        mem[ceil32(return_data.size) + 1600] = 'SafeMath: subtraction overflow'
        if 10^18 > 1000000000000000000 * 10^18 / (-85 * 10^16 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[ceil32(return_data.size) + 1536] = (1000000000000000000 * 10^18 / (-85 * 10^16 * (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 850000000000000000 * 10^18 / 10^18) - 10^18
        mem[ceil32(return_data.size) + 1632] = 0
        mem[ceil32(return_data.size) + 1664] = 0
        mem[ceil32(return_data.size) + 1728] = 30
        mem[ceil32(return_data.size) + 1760] = 'SafeMath: subtraction overflow'
        if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 > 15 * 10^16:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[ceil32(return_data.size) + 1696] = -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 15 * 10^16
        mem[ceil32(return_data.size) + 1792] = 0
        mem[ceil32(return_data.size) + 1824] = 0
        mem[ceil32(return_data.size) + 1856] = 0
        mem[ceil32(return_data.size) + 1888] = 10^18
        mem[ceil32(return_data.size) + 1920] = 0
        mem[ceil32(return_data.size) + 1952] = 10^18
        mem[ceil32(return_data.size) + 1984] = 0
        mem[ceil32(return_data.size) + 2048] = 30
        mem[ceil32(return_data.size) + 2080] = 'SafeMath: subtraction overflow'
        mem[ceil32(return_data.size) + 2016] = 85 * 10^16
        mem[ceil32(return_data.size) + 2112] = 0
        mem[ceil32(return_data.size) + 2144] = 0
        mem[64] = ceil32(return_data.size) + 2208
        mem[ceil32(return_data.size) + 2176] = 85 * 10^16
        idx = 1
        s = ceil32(return_data.size) + 2176
        while idx < 2:
            _6845 = mem[64]
            mem[64] = mem[64] + 32
            mem[_6845] = 0
            _6894 = mem[64]
            mem[64] = mem[64] + 32
            _6895 = mem[s]
            _6896 = mem[ceil32(return_data.size) + 2016]
            if not mem[s]:
                _7723 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7723] = 26
                mem[_7723 + 32] = 'SafeMath: division by zero'
                mem[_6894] = 0
            else:
                if mem[ceil32(return_data.size) + 2016] * mem[s] / mem[s] != mem[ceil32(return_data.size) + 2016]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _7771 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7771] = 26
                mem[_7771 + 32] = 'SafeMath: division by zero'
                mem[_6894] = _6896 * _6895 / 10^18
            idx = idx + 1
            s = _6894
            continue 
        _6893 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6893] = 0
        _7085 = mem[64]
        mem[64] = mem[64] + 32
        mem[_7085] = 10^18
        _7483 = mem[64]
        mem[64] = mem[64] + 32
        mem[_7483] = 0
        _7531 = mem[64]
        mem[64] = mem[64] + 32
        _7533 = mem[s]
        _7963 = mem[64]
        mem[64] = mem[64] + 64
        mem[_7963] = 26
        mem[_7963 + 32] = 'SafeMath: division by zero'
        if not _7533:
            revert with 0, 'SafeMath: division by zero', 0
        mem[_7531] = 1000000000000000000 * 10^18 / _7533
        _8299 = mem[64]
        mem[64] = mem[64] + 32
        mem[_8299] = 0
        _8491 = mem[64]
        mem[64] = mem[64] + 32
        _8492 = mem[ceil32(return_data.size) + 1888]
        _8731 = mem[64]
        mem[64] = mem[64] + 64
        mem[_8731] = 30
        mem[_8731 + 32] = 'SafeMath: subtraction overflow'
        if _8492 > 1000000000000000000 * 10^18 / _7533:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[_8491] = (1000000000000000000 * 10^18 / _7533) - _8492
        _9259 = mem[64]
        mem[64] = mem[64] + 32
        mem[_9259] = 0
        _9355 = mem[64]
        mem[64] = mem[64] + 32
        mem[_9355] = 0
        _9595 = mem[64]
        mem[64] = mem[64] + 32
        _9596 = mem[ceil32(return_data.size) + 352]
        _9597 = mem[ceil32(return_data.size) + 192]
        _9835 = mem[64]
        mem[64] = mem[64] + 64
        mem[_9835] = 30
        mem[_9835 + 32] = 'SafeMath: subtraction overflow'
        if _9596 > _9597:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[_9595] = _9597 - _9596
        _10315 = mem[64]
        mem[64] = mem[64] + 32
        mem[_10315] = 0
        _10507 = mem[64]
        mem[64] = mem[64] + 32
        if _9597 - _9596 + mem[ceil32(return_data.size) + 1696] < mem[ceil32(return_data.size) + 1696]:
            revert with 0, 'SafeMath: addition overflow'
        mem[_10507] = _9597 - _9596 + mem[ceil32(return_data.size) + 1696]
        _10891 = mem[64]
        mem[64] = mem[64] + 32
        mem[_10891] = 0
        _11083 = mem[64]
        mem[64] = mem[64] + 32
        if not (1000000000000000000 * 10^18 / _7533) - _8492:
            _11659 = mem[64]
            mem[64] = mem[64] + 64
            mem[_11659] = 26
            mem[_11659 + 32] = 'SafeMath: division by zero'
            mem[_11083] = 0
            _11947 = mem[64]
            mem[64] = mem[64] + 32
            mem[_11947] = 0
            _12188 = mem[64]
            mem[64] = mem[64] + 32
            _12189 = mem[ceil32(return_data.size) + 1536]
            _12190 = mem[ceil32(return_data.size) + 1696]
            if not mem[ceil32(return_data.size) + 1536]:
                _12860 = mem[64]
                mem[64] = mem[64] + 64
                mem[_12860] = 26
                mem[_12860 + 32] = 'SafeMath: division by zero'
                mem[_12188] = 0
                _13483 = mem[64]
                mem[64] = mem[64] + 32
                mem[_13483] = 0
                _13773 = mem[64]
                mem[64] = mem[64] + 32
                mem[_13773] = 0
                _15403 = mem[64]
                mem[64] = mem[64] + 32
                mem[_15403] = 0
                mem[64] = mem[64] + 32
                if not mem[_10507]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / mem[_10507]:
                    return 0
                if arg1 * 0 / mem[_10507] / 0 / mem[_10507] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 0 / mem[_10507] / 10^18)
            if mem[ceil32(return_data.size) + 1696] * mem[ceil32(return_data.size) + 1536] / mem[ceil32(return_data.size) + 1536] != mem[ceil32(return_data.size) + 1696]:
                revert with 0, 'SafeMath: multiplication overflow'
            _13052 = mem[64]
            mem[64] = mem[64] + 64
            mem[_13052] = 26
            mem[_13052 + 32] = 'SafeMath: division by zero'
            mem[_12188] = _12190 * _12189 / 10^18
            _13772 = mem[64]
            mem[64] = mem[64] + 32
            mem[_13772] = 0
            _14351 = mem[64]
            mem[64] = mem[64] + 32
            if _12190 * _12189 / 10^18 < _12190 * _12189 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            mem[_14351] = _12190 * _12189 / 10^18
            _15692 = mem[64]
            mem[64] = mem[64] + 32
            mem[_15692] = 0
            mem[64] = mem[64] + 32
            if not _12190 * _12189 / 10^18:
                if not mem[_10507]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / mem[_10507]:
                    return 0
                if arg1 * 0 / mem[_10507] / 0 / mem[_10507] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 0 / mem[_10507] / 10^18)
            if 10^18 * _12190 * _12189 / 10^18 / _12190 * _12189 / 10^18 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not mem[_10507]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^18 * _12190 * _12189 / 10^18 / mem[_10507]:
                return 0
            if arg1 * 10^18 * _12190 * _12189 / 10^18 / mem[_10507] / 10^18 * _12190 * _12189 / 10^18 / mem[_10507] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * 10^18 * _12190 * _12189 / 10^18 / mem[_10507] / 10^18)
        if (_9597 * 1000000000000000000 * 10^18 / _7533) - (_9596 * 1000000000000000000 * 10^18 / _7533) - (_9597 * _8492) + (_9596 * _8492) / (1000000000000000000 * 10^18 / _7533) - _8492 != _9597 - _9596:
            revert with 0, 'SafeMath: multiplication overflow'
        _11755 = mem[64]
        mem[64] = mem[64] + 64
        mem[_11755] = 26
        mem[_11755 + 32] = 'SafeMath: division by zero'
        mem[_11083] = (1000000000000000000 * 10^18 / _7533 * _9597) - (_8492 * _9597) - (1000000000000000000 * 10^18 / _7533 * _9596) + (_8492 * _9596) / 10^18
        _12187 = mem[64]
        mem[64] = mem[64] + 32
        mem[_12187] = 0
        _12523 = mem[64]
        mem[64] = mem[64] + 32
        _12524 = mem[ceil32(return_data.size) + 1536]
        _12525 = mem[ceil32(return_data.size) + 1696]
        if not mem[ceil32(return_data.size) + 1536]:
            _13051 = mem[64]
            mem[64] = mem[64] + 64
            mem[_13051] = 26
            mem[_13051 + 32] = 'SafeMath: division by zero'
            mem[_12523] = 0
            _13771 = mem[64]
            mem[64] = mem[64] + 32
            mem[_13771] = 0
            _14348 = mem[64]
            mem[64] = mem[64] + 32
            if (1000000000000000000 * 10^18 / _7533 * _9597) - (_8492 * _9597) - (1000000000000000000 * 10^18 / _7533 * _9596) + (_8492 * _9596) / 10^18 < 0:
                revert with 0, 'SafeMath: addition overflow'
            mem[_14348] = (1000000000000000000 * 10^18 / _7533 * _9597) - (_8492 * _9597) - (1000000000000000000 * 10^18 / _7533 * _9596) + (_8492 * _9596) / 10^18
            _15691 = mem[64]
            mem[64] = mem[64] + 32
            mem[_15691] = 0
            mem[64] = mem[64] + 32
            if not (1000000000000000000 * 10^18 / _7533 * _9597) - (_8492 * _9597) - (1000000000000000000 * 10^18 / _7533 * _9596) + (_8492 * _9596) / 10^18:
                if not mem[_10507]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 0 / mem[_10507]:
                    return 0
                if arg1 * 0 / mem[_10507] / 0 / mem[_10507] != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * 0 / mem[_10507] / 10^18)
            if 10^18 * (1000000000000000000 * 10^18 / _7533 * _9597) - (_8492 * _9597) - (1000000000000000000 * 10^18 / _7533 * _9596) + (_8492 * _9596) / 10^18 / (1000000000000000000 * 10^18 / _7533 * _9597) - (_8492 * _9597) - (1000000000000000000 * 10^18 / _7533 * _9596) + (_8492 * _9596) / 10^18 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not mem[_10507]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^18 * (1000000000000000000 * 10^18 / _7533 * _9597) - (_8492 * _9597) - (1000000000000000000 * 10^18 / _7533 * _9596) + (_8492 * _9596) / 10^18 / mem[_10507]:
                return 0
            if arg1 * 10^18 * (1000000000000000000 * 10^18 / _7533 * _9597) - (_8492 * _9597) - (1000000000000000000 * 10^18 / _7533 * _9596) + (_8492 * _9596) / 10^18 / mem[_10507] / 10^18 * (1000000000000000000 * 10^18 / _7533 * _9597) - (_8492 * _9597) - (1000000000000000000 * 10^18 / _7533 * _9596) + (_8492 * _9596) / 10^18 / mem[_10507] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * 10^18 * (1000000000000000000 * 10^18 / _7533 * _9597) - (_8492 * _9597) - (1000000000000000000 * 10^18 / _7533 * _9596) + (_8492 * _9596) / 10^18 / mem[_10507] / 10^18)
        if mem[ceil32(return_data.size) + 1696] * mem[ceil32(return_data.size) + 1536] / mem[ceil32(return_data.size) + 1536] != mem[ceil32(return_data.size) + 1696]:
            revert with 0, 'SafeMath: multiplication overflow'
        _13195 = mem[64]
        mem[64] = mem[64] + 64
        mem[_13195] = 26
        mem[_13195 + 32] = 'SafeMath: division by zero'
        mem[_12523] = _12525 * _12524 / 10^18
        _14347 = mem[64]
        mem[64] = mem[64] + 32
        mem[_14347] = 0
        _14875 = mem[64]
        mem[64] = mem[64] + 32
        if ((1000000000000000000 * 10^18 / _7533 * _9597) - (_8492 * _9597) - (1000000000000000000 * 10^18 / _7533 * _9596) + (_8492 * _9596) / 10^18) + (_12525 * _12524 / 10^18) < _12525 * _12524 / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        mem[_14875] = ((1000000000000000000 * 10^18 / _7533 * _9597) - (_8492 * _9597) - (1000000000000000000 * 10^18 / _7533 * _9596) + (_8492 * _9596) / 10^18) + (_12525 * _12524 / 10^18)
        _16315 = mem[64]
        mem[64] = mem[64] + 32
        mem[_16315] = 0
        mem[64] = mem[64] + 32
        if not ((1000000000000000000 * 10^18 / _7533 * _9597) - (_8492 * _9597) - (1000000000000000000 * 10^18 / _7533 * _9596) + (_8492 * _9596) / 10^18) + (_12525 * _12524 / 10^18):
            if not mem[_10507]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / mem[_10507]:
                return 0
            if arg1 * 0 / mem[_10507] / 0 / mem[_10507] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * 0 / mem[_10507] / 10^18)
        if (10^18 * (1000000000000000000 * 10^18 / _7533 * _9597) - (_8492 * _9597) - (1000000000000000000 * 10^18 / _7533 * _9596) + (_8492 * _9596) / 10^18) + (10^18 * _12525 * _12524 / 10^18) / ((1000000000000000000 * 10^18 / _7533 * _9597) - (_8492 * _9597) - (1000000000000000000 * 10^18 / _7533 * _9596) + (_8492 * _9596) / 10^18) + (_12525 * _12524 / 10^18) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not mem[_10507]:
            revert with 0, 'SafeMath: division by zero', 0
        if not (10^18 * (1000000000000000000 * 10^18 / _7533 * _9597) - (_8492 * _9597) - (1000000000000000000 * 10^18 / _7533 * _9596) + (_8492 * _9596) / 10^18) + (10^18 * _12525 * _12524 / 10^18) / mem[_10507]:
            return 0
        if arg1 * (10^18 * (1000000000000000000 * 10^18 / _7533 * _9597) - (_8492 * _9597) - (1000000000000000000 * 10^18 / _7533 * _9596) + (_8492 * _9596) / 10^18) + (10^18 * _12525 * _12524 / 10^18) / mem[_10507] / (10^18 * (1000000000000000000 * 10^18 / _7533 * _9597) - (_8492 * _9597) - (1000000000000000000 * 10^18 / _7533 * _9596) + (_8492 * _9596) / 10^18) + (10^18 * _12525 * _12524 / 10^18) / mem[_10507] != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        return (arg1 * (10^18 * (1000000000000000000 * 10^18 / _7533 * _9597) - (_8492 * _9597) - (1000000000000000000 * 10^18 / _7533 * _9596) + (_8492 * _9596) / 10^18) + (10^18 * _12525 * _12524 / 10^18) / mem[_10507] / 10^18)
    mem[ceil32(return_data.size) + 768] = 0
    mem[ceil32(return_data.size) + 800] = 10^18
    mem[ceil32(return_data.size) + 832] = 0
    mem[ceil32(return_data.size) + 864] = 10^18
    mem[ceil32(return_data.size) + 896] = 0
    mem[ceil32(return_data.size) + 960] = 30
    mem[ceil32(return_data.size) + 992] = 'SafeMath: subtraction overflow'
    if (10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1 > 10^18:
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[ceil32(return_data.size) + 928] = -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 10^18
    mem[ceil32(return_data.size) + 1024] = 0
    mem[ceil32(return_data.size) + 1056] = 0
    mem[64] = ceil32(return_data.size) + 1120
    mem[ceil32(return_data.size) + 1088] = -((10^18 * totalDebt) - (10^18 * arg1) / ext_call.return_data[0] - arg1) + 10^18
    idx = 1
    s = ceil32(return_data.size) + 1088
    while idx < 2:
        _3517 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3517] = 0
        _3568 = mem[64]
        mem[64] = mem[64] + 32
        _3569 = mem[s]
        _3570 = mem[ceil32(return_data.size) + 928]
        if not mem[s]:
            _4300 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4300] = 26
            mem[_4300 + 32] = 'SafeMath: division by zero'
            mem[_3568] = 0
        else:
            if mem[ceil32(return_data.size) + 928] * mem[s] / mem[s] != mem[ceil32(return_data.size) + 928]:
                revert with 0, 'SafeMath: multiplication overflow'
            _4347 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4347] = 26
            mem[_4347 + 32] = 'SafeMath: division by zero'
            mem[_3568] = _3570 * _3569 / 10^18
        idx = idx + 1
        s = _3568
        continue 
    _3567 = mem[64]
    mem[64] = mem[64] + 32
    mem[_3567] = 0
    _3660 = mem[64]
    mem[64] = mem[64] + 32
    mem[_3660] = 10^18
    _4142 = mem[64]
    mem[64] = mem[64] + 32
    mem[_4142] = 0
    _4203 = mem[64]
    mem[64] = mem[64] + 32
    _4205 = mem[s]
    _4580 = mem[64]
    mem[64] = mem[64] + 64
    mem[_4580] = 26
    mem[_4580 + 32] = 'SafeMath: division by zero'
    if not _4205:
        revert with 0, 'SafeMath: division by zero', 0
    mem[_4203] = 1000000000000000000 * 10^18 / _4205
    _4906 = mem[64]
    mem[64] = mem[64] + 32
    mem[_4906] = 0
    _5000 = mem[64]
    mem[64] = mem[64] + 32
    _5001 = mem[ceil32(return_data.size) + 800]
    _5105 = mem[64]
    mem[64] = mem[64] + 64
    mem[_5105] = 30
    mem[_5105 + 32] = 'SafeMath: subtraction overflow'
    if _5001 > 1000000000000000000 * 10^18 / _4205:
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[_5000] = (1000000000000000000 * 10^18 / _4205) - _5001
    _5572 = mem[64]
    mem[64] = mem[64] + 32
    mem[_5572] = 0
    _5708 = mem[64]
    mem[64] = mem[64] + 32
    mem[_5708] = 0
    _5767 = mem[64]
    mem[64] = mem[64] + 32
    _5768 = mem[ceil32(return_data.size) + 576]
    _5769 = mem[ceil32(return_data.size) + 352]
    _5811 = mem[64]
    mem[64] = mem[64] + 64
    mem[_5811] = 30
    mem[_5811 + 32] = 'SafeMath: subtraction overflow'
    if _5768 > _5769:
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[_5767] = _5769 - _5768
    _6055 = mem[64]
    mem[64] = mem[64] + 32
    mem[_6055] = 0
    _6102 = mem[64]
    mem[64] = mem[64] + 32
    mem[_6102] = 0
    _6140 = mem[64]
    mem[64] = mem[64] + 32
    mem[_6140] = 0
    _6171 = mem[64]
    mem[64] = mem[64] + 32
    mem[_6171] = 10^18
    _6214 = mem[64]
    mem[64] = mem[64] + 32
    mem[_6214] = 0
    _6247 = mem[64]
    mem[64] = mem[64] + 32
    mem[_6247] = 10^18
    _6318 = mem[64]
    mem[64] = mem[64] + 32
    mem[_6318] = 0
    _6358 = mem[64]
    mem[64] = mem[64] + 32
    _6359 = mem[ceil32(return_data.size) + 352]
    _6390 = mem[64]
    mem[64] = mem[64] + 64
    mem[_6390] = 30
    mem[_6390 + 32] = 'SafeMath: subtraction overflow'
    if _6359 > 10^18:
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[_6358] = -_6359 + 10^18
    _6438 = mem[64]
    mem[64] = mem[64] + 32
    mem[_6438] = 0
    _6454 = mem[64]
    mem[64] = mem[64] + 32
    mem[_6454] = 0
    _6486 = mem[64]
    mem[64] = mem[64] + 32
    mem[_6486] = -_6359 + 10^18
    idx = 1
    s = _6486
    while idx < 2:
        _6849 = mem[64]
        mem[64] = mem[64] + 32
        mem[_6849] = 0
        _6910 = mem[64]
        mem[64] = mem[64] + 32
        _6911 = mem[s]
        _6912 = mem[_6358]
        if not mem[s]:
            _7727 = mem[64]
            mem[64] = mem[64] + 64
            mem[_7727] = 26
            mem[_7727 + 32] = 'SafeMath: division by zero'
            mem[_6910] = 0
        else:
            if mem[_6358] * mem[s] / mem[s] != mem[_6358]:
                revert with 0, 'SafeMath: multiplication overflow'
            _7775 = mem[64]
            mem[64] = mem[64] + 64
            mem[_7775] = 26
            mem[_7775 + 32] = 'SafeMath: division by zero'
            mem[_6910] = _6912 * _6911 / 10^18
        idx = idx + 1
        s = _6910
        continue 
    _6909 = mem[64]
    mem[64] = mem[64] + 32
    mem[_6909] = 0
    _7089 = mem[64]
    mem[64] = mem[64] + 32
    mem[_7089] = 10^18
    _7487 = mem[64]
    mem[64] = mem[64] + 32
    mem[_7487] = 0
    _7547 = mem[64]
    mem[64] = mem[64] + 32
    _7549 = mem[s]
    _7967 = mem[64]
    mem[64] = mem[64] + 64
    mem[_7967] = 26
    mem[_7967 + 32] = 'SafeMath: division by zero'
    if not _7549:
        revert with 0, 'SafeMath: division by zero', 0
    mem[_7547] = 1000000000000000000 * 10^18 / _7549
    _8315 = mem[64]
    mem[64] = mem[64] + 32
    mem[_8315] = 0
    _8511 = mem[64]
    mem[64] = mem[64] + 32
    _8512 = mem[_6171]
    _8739 = mem[64]
    mem[64] = mem[64] + 64
    mem[_8739] = 30
    mem[_8739 + 32] = 'SafeMath: subtraction overflow'
    if _8512 > 1000000000000000000 * 10^18 / _7549:
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[_8511] = (1000000000000000000 * 10^18 / _7549) - _8512
    _9263 = mem[64]
    mem[64] = mem[64] + 32
    mem[_9263] = 0
    _9375 = mem[64]
    mem[64] = mem[64] + 32
    mem[_9375] = 0
    _9615 = mem[64]
    mem[64] = mem[64] + 32
    _9616 = mem[ceil32(return_data.size) + 352]
    _9617 = mem[ceil32(return_data.size) + 192]
    _9839 = mem[64]
    mem[64] = mem[64] + 64
    mem[_9839] = 30
    mem[_9839 + 32] = 'SafeMath: subtraction overflow'
    if _9616 > _9617:
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[_9615] = _9617 - _9616
    _10331 = mem[64]
    mem[64] = mem[64] + 32
    mem[_10331] = 0
    _10519 = mem[64]
    mem[64] = mem[64] + 32
    if _9617 - _9616 + mem[_5767] < mem[_5767]:
        revert with 0, 'SafeMath: addition overflow'
    mem[_10519] = _9617 - _9616 + mem[_5767]
    _10907 = mem[64]
    mem[64] = mem[64] + 32
    mem[_10907] = 0
    _11099 = mem[64]
    mem[64] = mem[64] + 32
    if not (1000000000000000000 * 10^18 / _7549) - _8512:
        _11667 = mem[64]
        mem[64] = mem[64] + 64
        mem[_11667] = 26
        mem[_11667 + 32] = 'SafeMath: division by zero'
        mem[_11099] = 0
        _11967 = mem[64]
        mem[64] = mem[64] + 32
        mem[_11967] = 0
        _12216 = mem[64]
        mem[64] = mem[64] + 32
        _12217 = mem[_5000]
        _12218 = mem[_5767]
        if not mem[_5000]:
            _12876 = mem[64]
            mem[64] = mem[64] + 64
            mem[_12876] = 26
            mem[_12876 + 32] = 'SafeMath: division by zero'
            mem[_12216] = 0
            _13507 = mem[64]
            mem[64] = mem[64] + 32
            mem[_13507] = 0
            _13821 = mem[64]
            mem[64] = mem[64] + 32
            mem[_13821] = 0
            _15427 = mem[64]
            mem[64] = mem[64] + 32
            mem[_15427] = 0
            mem[64] = mem[64] + 32
            if not mem[_10519]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / mem[_10519]:
                return 0
            if arg1 * 0 / mem[_10519] / 0 / mem[_10519] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * 0 / mem[_10519] / 10^18)
        if mem[_5767] * mem[_5000] / mem[_5000] != mem[_5767]:
            revert with 0, 'SafeMath: multiplication overflow'
        _13064 = mem[64]
        mem[64] = mem[64] + 64
        mem[_13064] = 26
        mem[_13064 + 32] = 'SafeMath: division by zero'
        mem[_12216] = _12218 * _12217 / 10^18
        _13820 = mem[64]
        mem[64] = mem[64] + 32
        mem[_13820] = 0
        _14395 = mem[64]
        mem[64] = mem[64] + 32
        if _12218 * _12217 / 10^18 < _12218 * _12217 / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        mem[_14395] = _12218 * _12217 / 10^18
        _15744 = mem[64]
        mem[64] = mem[64] + 32
        mem[_15744] = 0
        mem[64] = mem[64] + 32
        if not _12218 * _12217 / 10^18:
            if not mem[_10519]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / mem[_10519]:
                return 0
            if arg1 * 0 / mem[_10519] / 0 / mem[_10519] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * 0 / mem[_10519] / 10^18)
        if 10^18 * _12218 * _12217 / 10^18 / _12218 * _12217 / 10^18 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not mem[_10519]:
            revert with 0, 'SafeMath: division by zero', 0
        if not 10^18 * _12218 * _12217 / 10^18 / mem[_10519]:
            return 0
        if arg1 * 10^18 * _12218 * _12217 / 10^18 / mem[_10519] / 10^18 * _12218 * _12217 / 10^18 / mem[_10519] != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        return (arg1 * 10^18 * _12218 * _12217 / 10^18 / mem[_10519] / 10^18)
    if (_9617 * 1000000000000000000 * 10^18 / _7549) - (_9616 * 1000000000000000000 * 10^18 / _7549) - (_9617 * _8512) + (_9616 * _8512) / (1000000000000000000 * 10^18 / _7549) - _8512 != _9617 - _9616:
        revert with 0, 'SafeMath: multiplication overflow'
    _11759 = mem[64]
    mem[64] = mem[64] + 64
    mem[_11759] = 26
    mem[_11759 + 32] = 'SafeMath: division by zero'
    mem[_11099] = (1000000000000000000 * 10^18 / _7549 * _9617) - (_8512 * _9617) - (1000000000000000000 * 10^18 / _7549 * _9616) + (_8512 * _9616) / 10^18
    _12215 = mem[64]
    mem[64] = mem[64] + 32
    mem[_12215] = 0
    _12535 = mem[64]
    mem[64] = mem[64] + 32
    _12536 = mem[_5000]
    _12537 = mem[_5767]
    if not mem[_5000]:
        _13063 = mem[64]
        mem[64] = mem[64] + 64
        mem[_13063] = 26
        mem[_13063 + 32] = 'SafeMath: division by zero'
        mem[_12535] = 0
        _13819 = mem[64]
        mem[64] = mem[64] + 32
        mem[_13819] = 0
        _14392 = mem[64]
        mem[64] = mem[64] + 32
        if (1000000000000000000 * 10^18 / _7549 * _9617) - (_8512 * _9617) - (1000000000000000000 * 10^18 / _7549 * _9616) + (_8512 * _9616) / 10^18 < 0:
            revert with 0, 'SafeMath: addition overflow'
        mem[_14392] = (1000000000000000000 * 10^18 / _7549 * _9617) - (_8512 * _9617) - (1000000000000000000 * 10^18 / _7549 * _9616) + (_8512 * _9616) / 10^18
        _15743 = mem[64]
        mem[64] = mem[64] + 32
        mem[_15743] = 0
        mem[64] = mem[64] + 32
        if not (1000000000000000000 * 10^18 / _7549 * _9617) - (_8512 * _9617) - (1000000000000000000 * 10^18 / _7549 * _9616) + (_8512 * _9616) / 10^18:
            if not mem[_10519]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / mem[_10519]:
                return 0
            if arg1 * 0 / mem[_10519] / 0 / mem[_10519] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * 0 / mem[_10519] / 10^18)
        if 10^18 * (1000000000000000000 * 10^18 / _7549 * _9617) - (_8512 * _9617) - (1000000000000000000 * 10^18 / _7549 * _9616) + (_8512 * _9616) / 10^18 / (1000000000000000000 * 10^18 / _7549 * _9617) - (_8512 * _9617) - (1000000000000000000 * 10^18 / _7549 * _9616) + (_8512 * _9616) / 10^18 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not mem[_10519]:
            revert with 0, 'SafeMath: division by zero', 0
        if not 10^18 * (1000000000000000000 * 10^18 / _7549 * _9617) - (_8512 * _9617) - (1000000000000000000 * 10^18 / _7549 * _9616) + (_8512 * _9616) / 10^18 / mem[_10519]:
            return 0
        if arg1 * 10^18 * (1000000000000000000 * 10^18 / _7549 * _9617) - (_8512 * _9617) - (1000000000000000000 * 10^18 / _7549 * _9616) + (_8512 * _9616) / 10^18 / mem[_10519] / 10^18 * (1000000000000000000 * 10^18 / _7549 * _9617) - (_8512 * _9617) - (1000000000000000000 * 10^18 / _7549 * _9616) + (_8512 * _9616) / 10^18 / mem[_10519] != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        return (arg1 * 10^18 * (1000000000000000000 * 10^18 / _7549 * _9617) - (_8512 * _9617) - (1000000000000000000 * 10^18 / _7549 * _9616) + (_8512 * _9616) / 10^18 / mem[_10519] / 10^18)
    if mem[_5767] * mem[_5000] / mem[_5000] != mem[_5767]:
        revert with 0, 'SafeMath: multiplication overflow'
    _13199 = mem[64]
    mem[64] = mem[64] + 64
    mem[_13199] = 26
    mem[_13199 + 32] = 'SafeMath: division by zero'
    mem[_12535] = _12537 * _12536 / 10^18
    _14391 = mem[64]
    mem[64] = mem[64] + 32
    mem[_14391] = 0
    _14899 = mem[64]
    mem[64] = mem[64] + 32
    if ((1000000000000000000 * 10^18 / _7549 * _9617) - (_8512 * _9617) - (1000000000000000000 * 10^18 / _7549 * _9616) + (_8512 * _9616) / 10^18) + (_12537 * _12536 / 10^18) < _12537 * _12536 / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    mem[_14899] = ((1000000000000000000 * 10^18 / _7549 * _9617) - (_8512 * _9617) - (1000000000000000000 * 10^18 / _7549 * _9616) + (_8512 * _9616) / 10^18) + (_12537 * _12536 / 10^18)
    _16367 = mem[64]
    mem[64] = mem[64] + 32
    mem[_16367] = 0
    mem[64] = mem[64] + 32
    if not ((1000000000000000000 * 10^18 / _7549 * _9617) - (_8512 * _9617) - (1000000000000000000 * 10^18 / _7549 * _9616) + (_8512 * _9616) / 10^18) + (_12537 * _12536 / 10^18):
        if not mem[_10519]:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / mem[_10519]:
            return 0
        if arg1 * 0 / mem[_10519] / 0 / mem[_10519] != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        return (arg1 * 0 / mem[_10519] / 10^18)
    if (10^18 * (1000000000000000000 * 10^18 / _7549 * _9617) - (_8512 * _9617) - (1000000000000000000 * 10^18 / _7549 * _9616) + (_8512 * _9616) / 10^18) + (10^18 * _12537 * _12536 / 10^18) / ((1000000000000000000 * 10^18 / _7549 * _9617) - (_8512 * _9617) - (1000000000000000000 * 10^18 / _7549 * _9616) + (_8512 * _9616) / 10^18) + (_12537 * _12536 / 10^18) != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not mem[_10519]:
        revert with 0, 'SafeMath: division by zero', 0
    if not (10^18 * (1000000000000000000 * 10^18 / _7549 * _9617) - (_8512 * _9617) - (1000000000000000000 * 10^18 / _7549 * _9616) + (_8512 * _9616) / 10^18) + (10^18 * _12537 * _12536 / 10^18) / mem[_10519]:
        return 0
    if arg1 * (10^18 * (1000000000000000000 * 10^18 / _7549 * _9617) - (_8512 * _9617) - (1000000000000000000 * 10^18 / _7549 * _9616) + (_8512 * _9616) / 10^18) + (10^18 * _12537 * _12536 / 10^18) / mem[_10519] / (10^18 * (1000000000000000000 * 10^18 / _7549 * _9617) - (_8512 * _9617) - (1000000000000000000 * 10^18 / _7549 * _9616) + (_8512 * _9616) / 10^18) + (10^18 * _12537 * _12536 / 10^18) / mem[_10519] != arg1:
        revert with 0, 'SafeMath: multiplication overflow'
    return (arg1 * (10^18 * (1000000000000000000 * 10^18 / _7549 * _9617) - (_8512 * _9617) - (1000000000000000000 * 10^18 / _7549 * _9616) + (_8512 * _9616) / 10^18) + (10^18 * _12537 * _12536 / 10^18) / mem[_10519] / 10^18)
}



}
