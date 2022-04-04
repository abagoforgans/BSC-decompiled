contract main {




// =====================  Runtime code  =====================


#
#  - emergencyCommit(address arg1)
#  - couponPremium(uint256 arg1)
#  - purchaseCoupons(uint256 arg1)
#  - advance()
#
const name = 'Binance Agile Set Dollar Stake', 0

const decimals = 18

const epochTime = (block.timestamp - (447492 * 3600) / 3600)

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
    return arg1 <= 24
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

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function couponRedemptionPenalty(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if block.timestamp % 3600 > (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360:
        return 0
    if (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 500000000000000000 * 10^18 / 360 != -epoch + arg1 + 360:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18:
        if not (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360:
            if arg2:
                if 0 / arg2:
                    revert with 0, 'SafeMath: multiplication overflow'
                else:
                    return 0
            else:
                return 0
        if ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 != ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600):
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg2:
            return 0
        if ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / arg2 != ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        return (((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18)
    if 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360:
        revert with 0, 'SafeMath: division by zero', 0
    if not 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360:
        if arg2:
            if 0 / arg2:
                revert with 0, 'SafeMath: multiplication overflow'
            else:
                return 0
        else:
            return 0
    if ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 != ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600):
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg2:
        return 0
    if ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / arg2 != ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    return (((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 10^18 * (-1388888888888888888888888888888888 * epoch) + (0x447a3e09e11395f01ae338e38e38 * arg1) + 0x604be73de4838ad9a5cf87fffffec0 / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 10^18 * (-1388888888888888888888888888888888 * epoch) + (0x447a3e09e11395f01ae338e38e38 * arg1) + 0x604be73de4838ad9a5cf87fffffec0 / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18)
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
    if epoch + 72 < epoch:
        revert with 0, 'SafeMath: addition overflow'
    fluidUntil[address(msg.sender)].field_1024 = epoch + 72
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
    if epoch + 72 < epoch:
        revert with 0, 'SafeMath: addition overflow'
    fluidUntil[address(msg.sender)].field_1024 = epoch + 72
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
    if epoch + 72 < epoch:
        revert with 0, 'SafeMath: addition overflow'
    fluidUntil[address(msg.sender)].field_1024 = epoch + 72
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
    if block.timestamp % 3600 > (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360:
        require ext_code.size(dollarAddress)
        call dollarAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 448] = 42
        mem[ceil32(return_data.size) + 480 len 42] = 0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63
        if arg2 > totalRedeemable:
            revert with 0, 
                        32,
                        42,
                        0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63, mem[ceil32(return_data.size) + 522 len 22] >> 80,
                        0
        totalRedeemable -= arg2
        if totalStaged + totalBonded < totalBonded:
            revert with 0, 'SafeMath: addition overflow'
        if totalRedeemable < 0:
            revert with 0, 'SafeMath: addition overflow'
        mem[ceil32(return_data.size) + 548] = this.address
        require ext_code.size(dollarAddress)
        staticcall dollarAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 544] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= totalRedeemable + totalStaged + totalBonded:
            emit CouponRedemption(arg2, msg.sender, arg1);
        mem[(2 * ceil32(return_data.size)) + 576] = 0x436f6d7074726f6c6c6572000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 544] = 32
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + (2 * ceil32(return_data.size)) + 575]):
                idx = idx - 1
                continue 
            mem[(2 * ceil32(return_data.size)) + 640] = 'Inconsistent balances' << 88
            mem[(2 * ceil32(return_data.size)) + 608] = 32
            s = 32
            while s:
                require s - 1 < 32
                if not Mask(8, 248, mem[s + (2 * ceil32(return_data.size)) + 639]):
                    s = s - 1
                    continue 
                mem[(2 * ceil32(return_data.size)) + 608] = s
                t = 0
                while t < idx:
                    mem[t + (2 * ceil32(return_data.size)) + 704] = mem[t + (2 * ceil32(return_data.size)) + 576]
                    t = t + 32
                    continue 
                mem[idx + (2 * ceil32(return_data.size)) + 704] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                t = 0
                while t < s:
                    mem[t + idx + (2 * ceil32(return_data.size)) + 706] = mem[t + (2 * ceil32(return_data.size)) + 640]
                    t = t + 32
                    continue 
                mem[s + idx + (2 * ceil32(return_data.size)) + 706] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[s + idx + (2 * ceil32(return_data.size)) + 710] = 32
                mem[s + idx + (2 * ceil32(return_data.size)) + 742] = s + idx + 2
                t = 0
                while t < s + idx + 2:
                    mem[t + s + idx + (2 * ceil32(return_data.size)) + 774] = mem[t + (2 * ceil32(return_data.size)) + 704]
                    t = t + 32
                    continue 
                if floor32(s + idx + 33) > s + idx + 2:
                    mem[(2 * s) + (2 * idx) + (2 * ceil32(return_data.size)) + 776] = 0
                revert with 0, 32, s + idx + 2, mem[s + idx + (2 * ceil32(return_data.size)) + 774 len floor32(s + idx + 33)]
            mem[(2 * ceil32(return_data.size)) + 672] = 0
            s = 0
            while s < idx:
                mem[s + (2 * ceil32(return_data.size)) + 736] = mem[s + (2 * ceil32(return_data.size)) + 576]
                s = s + 32
                continue 
            mem[idx + (2 * ceil32(return_data.size)) + 736] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            s = 0
            while s < 0:
                mem[s + idx + (2 * ceil32(return_data.size)) + 738] = mem[s + (2 * ceil32(return_data.size)) + 704]
                s = s + 32
                continue 
            mem[idx + (2 * ceil32(return_data.size)) + 738] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[idx + (2 * ceil32(return_data.size)) + 742] = 32
            mem[idx + (2 * ceil32(return_data.size)) + 774] = idx + 2
            s = 0
            while s < idx + 2:
                mem[s + idx + (2 * ceil32(return_data.size)) + 806] = mem[s + (2 * ceil32(return_data.size)) + 736]
                s = s + 32
                continue 
            if floor32(idx + 33) > idx + 2:
                mem[(2 * idx) + (2 * ceil32(return_data.size)) + 808] = 0
            revert with 0, 32, idx + 2, mem[idx + (2 * ceil32(return_data.size)) + 806 len floor32(idx + 33)]
        mem[(2 * ceil32(return_data.size)) + 672] = 'Inconsistent balances' << 88
        mem[(2 * ceil32(return_data.size)) + 640] = 32
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + (2 * ceil32(return_data.size)) + 671]):
                idx = idx - 1
                continue 
            mem[(2 * ceil32(return_data.size)) + 640] = idx
            s = 0
            while s < 0:
                mem[s + (2 * ceil32(return_data.size)) + 736] = mem[s + (2 * ceil32(return_data.size)) + 640]
                s = s + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 736] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            s = 0
            while s < idx:
                mem[s + (2 * ceil32(return_data.size)) + 738] = mem[s + (2 * ceil32(return_data.size)) + 672]
                s = s + 32
                continue 
            mem[idx + (2 * ceil32(return_data.size)) + 738] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[idx + (2 * ceil32(return_data.size)) + 742] = 32
            mem[idx + (2 * ceil32(return_data.size)) + 774] = idx + 2
            s = 0
            while s < idx + 2:
                mem[s + idx + (2 * ceil32(return_data.size)) + 806] = mem[s + (2 * ceil32(return_data.size)) + 736]
                s = s + 32
                continue 
            if floor32(idx + 33) > idx + 2:
                mem[(2 * idx) + (2 * ceil32(return_data.size)) + 808] = 0
            revert with 0, 32, idx + 2, mem[idx + (2 * ceil32(return_data.size)) + 806 len floor32(idx + 33)]
    else:
        if (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 500000000000000000 * 10^18 / 360 != -epoch + arg1 + 360:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18:
            if not (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360:
                if not arg2:
                    require ext_code.size(dollarAddress)
                    call dollarAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 1376] = 42
                    mem[ceil32(return_data.size) + 1408 len 42] = 0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63
                    if arg2 > totalRedeemable:
                        revert with 0, 
                                    32,
                                    42,
                                    0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63, mem[ceil32(return_data.size) + 1450 len 22] >> 80,
                                    0
                    totalRedeemable -= arg2
                else:
                    if 0 / arg2:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(dollarAddress)
                    call dollarAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 1376] = 42
                    mem[ceil32(return_data.size) + 1408 len 42] = 0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63
                    if arg2 - (0 / 10^18) > totalRedeemable:
                        revert with 0, 
                                    32,
                                    42,
                                    0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63, mem[ceil32(return_data.size) + 1450 len 22] >> 80,
                                    0
                    totalRedeemable = totalRedeemable - arg2 + (0 / 10^18)
                if totalStaged + totalBonded < totalBonded:
                    revert with 0, 'SafeMath: addition overflow'
                if totalRedeemable < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[ceil32(return_data.size) + 1476] = this.address
                require ext_code.size(dollarAddress)
                staticcall dollarAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 1472] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] >= totalRedeemable + totalStaged + totalBonded:
                    emit CouponRedemption(arg2, msg.sender, arg1);
            else:
                if ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 != ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg2:
                    require ext_code.size(dollarAddress)
                    call dollarAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 1376] = 42
                    mem[ceil32(return_data.size) + 1408 len 42] = 0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63
                    if arg2 > totalRedeemable:
                        revert with 0, 
                                    32,
                                    42,
                                    0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63, mem[ceil32(return_data.size) + 1450 len 22] >> 80,
                                    0
                    totalRedeemable -= arg2
                    if totalStaged + totalBonded < totalBonded:
                        revert with 0, 'SafeMath: addition overflow'
                    if totalRedeemable < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(return_data.size) + 1476] = this.address
                    require ext_code.size(dollarAddress)
                    staticcall dollarAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 1472] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] >= totalRedeemable + totalStaged + totalBonded:
                        emit CouponRedemption(arg2, msg.sender, arg1);
                else:
                    if ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / arg2 != ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(dollarAddress)
                    call dollarAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg2 - (((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 1376] = 42
                    mem[ceil32(return_data.size) + 1408 len 42] = 0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63
                    if arg2 - (((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18) > totalRedeemable:
                        revert with 0, 
                                    32,
                                    42,
                                    0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63, mem[ceil32(return_data.size) + 1450 len 22] >> 80,
                                    0
                    totalRedeemable = totalRedeemable - arg2 + (((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18)
                    if totalStaged + totalBonded < totalBonded:
                        revert with 0, 'SafeMath: addition overflow'
                    if totalRedeemable < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(return_data.size) + 1476] = this.address
                    require ext_code.size(dollarAddress)
                    staticcall dollarAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 1472] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] >= totalRedeemable + totalStaged + totalBonded:
                        if ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18:
                            emit CouponBurn((((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18), msg.sender, arg1);
                        emit CouponRedemption((arg2 - (((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18)), msg.sender, arg1);
        else:
            if 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360:
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360:
                if not arg2:
                    require ext_code.size(dollarAddress)
                    call dollarAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 1376] = 42
                    mem[ceil32(return_data.size) + 1408 len 42] = 0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63
                    if arg2 > totalRedeemable:
                        revert with 0, 
                                    32,
                                    42,
                                    0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63, mem[ceil32(return_data.size) + 1450 len 22] >> 80,
                                    0
                    totalRedeemable -= arg2
                else:
                    if 0 / arg2:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(dollarAddress)
                    call dollarAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 1376] = 42
                    mem[ceil32(return_data.size) + 1408 len 42] = 0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63
                    if arg2 - (0 / 10^18) > totalRedeemable:
                        revert with 0, 
                                    32,
                                    42,
                                    0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63, mem[ceil32(return_data.size) + 1450 len 22] >> 80,
                                    0
                    totalRedeemable = totalRedeemable - arg2 + (0 / 10^18)
                if totalStaged + totalBonded < totalBonded:
                    revert with 0, 'SafeMath: addition overflow'
                if totalRedeemable < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[ceil32(return_data.size) + 1476] = this.address
                require ext_code.size(dollarAddress)
                staticcall dollarAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 1472] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] >= totalRedeemable + totalStaged + totalBonded:
                    emit CouponRedemption(arg2, msg.sender, arg1);
            else:
                if ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 != ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600):
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg2:
                    require ext_code.size(dollarAddress)
                    call dollarAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 1376] = 42
                    mem[ceil32(return_data.size) + 1408 len 42] = 0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63
                    if arg2 > totalRedeemable:
                        revert with 0, 
                                    32,
                                    42,
                                    0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63, mem[ceil32(return_data.size) + 1450 len 22] >> 80,
                                    0
                    totalRedeemable -= arg2
                    if totalStaged + totalBonded < totalBonded:
                        revert with 0, 'SafeMath: addition overflow'
                    if totalRedeemable < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(return_data.size) + 1476] = this.address
                    require ext_code.size(dollarAddress)
                    staticcall dollarAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 1472] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] >= totalRedeemable + totalStaged + totalBonded:
                        emit CouponRedemption(arg2, msg.sender, arg1);
                else:
                    if ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / arg2 != ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(dollarAddress)
                    call dollarAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg2 - (((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 10^18 * (-1388888888888888888888888888888888 * epoch) + (0x447a3e09e11395f01ae338e38e38 * arg1) + 0x604be73de4838ad9a5cf87fffffec0 / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 10^18 * (-1388888888888888888888888888888888 * epoch) + (0x447a3e09e11395f01ae338e38e38 * arg1) + 0x604be73de4838ad9a5cf87fffffec0 / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 1376] = 42
                    mem[ceil32(return_data.size) + 1408 len 42] = 0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63
                    if arg2 - (((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18) > totalRedeemable:
                        revert with 0, 
                                    32,
                                    42,
                                    0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63, mem[ceil32(return_data.size) + 1450 len 22] >> 80,
                                    0
                    totalRedeemable = totalRedeemable - arg2 + (((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18)
                    if totalStaged + totalBonded < totalBonded:
                        revert with 0, 'SafeMath: addition overflow'
                    if totalRedeemable < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(return_data.size) + 1476] = this.address
                    require ext_code.size(dollarAddress)
                    staticcall dollarAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 1472] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] >= totalRedeemable + totalStaged + totalBonded:
                        if ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18:
                            emit CouponBurn((((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 10^18 * (-1388888888888888888888888888888888 * epoch) + (0x447a3e09e11395f01ae338e38e38 * arg1) + 0x604be73de4838ad9a5cf87fffffec0 / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 10^18 * (-1388888888888888888888888888888888 * epoch) + (0x447a3e09e11395f01ae338e38e38 * arg1) + 0x604be73de4838ad9a5cf87fffffec0 / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18), msg.sender, arg1);
                        emit CouponRedemption((arg2 - (((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 10^18 * (-1388888888888888888888888888888888 * epoch) + (0x447a3e09e11395f01ae338e38e38 * arg1) + 0x604be73de4838ad9a5cf87fffffec0 / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 10^18 * (-1388888888888888888888888888888888 * epoch) + (0x447a3e09e11395f01ae338e38e38 * arg1) + 0x604be73de4838ad9a5cf87fffffec0 / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18)), msg.sender, arg1);
        ('lt', ('ext_call.return_data', 0, 32), ('add', ('stor', ('name', 'totalRedeemable', 6)), ('stor', ('name', 'totalStaged', 5)), ('stor', ('name', 'totalBonded', 4))))
        mem[(2 * ceil32(return_data.size)) + 1504] = 0x436f6d7074726f6c6c6572000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 1472] = 32
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + (2 * ceil32(return_data.size)) + 1503]):
                idx = idx - 1
                continue 
            mem[(2 * ceil32(return_data.size)) + 1568] = 'Inconsistent balances' << 88
            mem[(2 * ceil32(return_data.size)) + 1536] = 32
            s = 32
            while s:
                require s - 1 < 32
                if not Mask(8, 248, mem[s + (2 * ceil32(return_data.size)) + 1567]):
                    s = s - 1
                    continue 
                mem[(2 * ceil32(return_data.size)) + 1536] = s
                t = 0
                while t < idx:
                    mem[t + (2 * ceil32(return_data.size)) + 1632] = mem[t + (2 * ceil32(return_data.size)) + 1504]
                    t = t + 32
                    continue 
                mem[idx + (2 * ceil32(return_data.size)) + 1632] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                t = 0
                while t < s:
                    mem[t + idx + (2 * ceil32(return_data.size)) + 1634] = mem[t + (2 * ceil32(return_data.size)) + 1568]
                    t = t + 32
                    continue 
                mem[s + idx + (2 * ceil32(return_data.size)) + 1634] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[s + idx + (2 * ceil32(return_data.size)) + 1638] = 32
                mem[s + idx + (2 * ceil32(return_data.size)) + 1670] = s + idx + 2
                t = 0
                while t < s + idx + 2:
                    mem[t + s + idx + (2 * ceil32(return_data.size)) + 1702] = mem[t + (2 * ceil32(return_data.size)) + 1632]
                    t = t + 32
                    continue 
                if floor32(s + idx + 33) > s + idx + 2:
                    mem[(2 * s) + (2 * idx) + (2 * ceil32(return_data.size)) + 1704] = 0
                revert with 0, 32, s + idx + 2, mem[s + idx + (2 * ceil32(return_data.size)) + 1702 len floor32(s + idx + 33)]
            mem[(2 * ceil32(return_data.size)) + 1600] = 0
            s = 0
            while s < idx:
                mem[s + (2 * ceil32(return_data.size)) + 1664] = mem[s + (2 * ceil32(return_data.size)) + 1504]
                s = s + 32
                continue 
            mem[idx + (2 * ceil32(return_data.size)) + 1664] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            s = 0
            while s < 0:
                mem[s + idx + (2 * ceil32(return_data.size)) + 1666] = mem[s + (2 * ceil32(return_data.size)) + 1632]
                s = s + 32
                continue 
            mem[idx + (2 * ceil32(return_data.size)) + 1666] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[idx + (2 * ceil32(return_data.size)) + 1670] = 32
            mem[idx + (2 * ceil32(return_data.size)) + 1702] = idx + 2
            s = 0
            while s < idx + 2:
                mem[s + idx + (2 * ceil32(return_data.size)) + 1734] = mem[s + (2 * ceil32(return_data.size)) + 1664]
                s = s + 32
                continue 
            if floor32(idx + 33) > idx + 2:
                mem[(2 * idx) + (2 * ceil32(return_data.size)) + 1736] = 0
            revert with 0, 32, idx + 2, mem[idx + (2 * ceil32(return_data.size)) + 1734 len floor32(idx + 33)]
        mem[(2 * ceil32(return_data.size)) + 1600] = 'Inconsistent balances' << 88
        mem[(2 * ceil32(return_data.size)) + 1568] = 32
        idx = 32
        while idx:
            require idx - 1 < 32
            if not Mask(8, 248, mem[idx + (2 * ceil32(return_data.size)) + 1599]):
                idx = idx - 1
                continue 
            mem[(2 * ceil32(return_data.size)) + 1568] = idx
            s = 0
            while s < 0:
                mem[s + (2 * ceil32(return_data.size)) + 1664] = mem[s + (2 * ceil32(return_data.size)) + 1568]
                s = s + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 1664] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            s = 0
            while s < idx:
                mem[s + (2 * ceil32(return_data.size)) + 1666] = mem[s + (2 * ceil32(return_data.size)) + 1600]
                s = s + 32
                continue 
            mem[idx + (2 * ceil32(return_data.size)) + 1666] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[idx + (2 * ceil32(return_data.size)) + 1670] = 32
            mem[idx + (2 * ceil32(return_data.size)) + 1702] = idx + 2
            s = 0
            while s < idx + 2:
                mem[s + idx + (2 * ceil32(return_data.size)) + 1734] = mem[s + (2 * ceil32(return_data.size)) + 1664]
                s = s + 32
                continue 
            if floor32(idx + 33) > idx + 2:
                mem[(2 * idx) + (2 * ceil32(return_data.size)) + 1736] = 0
            revert with 0, 32, idx + 2, mem[idx + (2 * ceil32(return_data.size)) + 1734 len floor32(idx + 33)]
    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
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
                    _2478 = mem[160]
                    s = 0
                    while s < mem[160]:
                        mem[s + idx + 258] = mem[s + 192]
                        s = s + 32
                        continue 
                    if ceil32(mem[160]) <= mem[160]:
                        _3800 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _2478 + idx + 258
                        mem[_2478 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2478 + idx + 262] = 32
                        _3960 = mem[_3800]
                        mem[_2478 + idx + 294] = mem[_3800]
                        s = 0
                        while s < _3960:
                            mem[s + _2478 + idx + 326] = mem[s + _3800 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3960) > _3960:
                            mem[_3960 + _2478 + idx + 326] = 0
                        revert with 0, 32, mem[_2478 + idx + 294 len ceil32(_3960) + 32]
                    mem[mem[160] + idx + 258] = 0
                    _3801 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _2478 + idx + 258
                    mem[_2478 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2478 + idx + 262] = 32
                    _3961 = mem[_3801]
                    mem[_2478 + idx + 294] = mem[_3801]
                    s = 0
                    while s < _3961:
                        mem[s + _2478 + idx + 326] = mem[s + _3801 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3961) > _3961:
                        mem[_3961 + _2478 + idx + 326] = 0
                    revert with 0, 32, mem[_2478 + idx + 294 len ceil32(_3961) + 32]
                _2479 = mem[160]
                s = 0
                while s < mem[160]:
                    mem[s + idx + 258] = mem[s + 192]
                    s = s + 32
                    continue 
                if ceil32(mem[160]) <= mem[160]:
                    _3802 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _2479 + idx + 258
                    mem[_2479 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2479 + idx + 262] = 32
                    _3962 = mem[_3802]
                    mem[_2479 + idx + 294] = mem[_3802]
                    s = 0
                    while s < _3962:
                        mem[s + _2479 + idx + 326] = mem[s + _3802 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3962) > _3962:
                        mem[_3962 + _2479 + idx + 326] = 0
                    revert with 0, 32, mem[_2479 + idx + 294 len ceil32(_3962) + 32]
                mem[mem[160] + idx + 258] = 0
                _3803 = mem[64]
                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                mem[64] = _2479 + idx + 258
                mem[_2479 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2479 + idx + 262] = 32
                _3963 = mem[_3803]
                mem[_2479 + idx + 294] = mem[_3803]
                s = 0
                while s < _3963:
                    mem[s + _2479 + idx + 326] = mem[s + _3803 + 32]
                    s = s + 32
                    continue 
                if ceil32(_3963) > _3963:
                    mem[_3963 + _2479 + idx + 326] = 0
                revert with 0, 32, mem[_2479 + idx + 294 len ceil32(_3963) + 32]
            mem[224] = 0
            mem[64] = 256
            s = 0
            while s < idx:
                mem[s + 288] = mem[s + 128]
                s = s + 32
                continue 
            mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            if ceil32(idx) <= idx:
                _2476 = mem[224]
                s = 0
                while s < mem[224]:
                    mem[s + idx + 290] = mem[s + 256]
                    s = s + 32
                    continue 
                if ceil32(mem[224]) <= mem[224]:
                    _3796 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _2476 + idx + 290
                    mem[_2476 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2476 + idx + 294] = 32
                    _3956 = mem[_3796]
                    mem[_2476 + idx + 326] = mem[_3796]
                    s = 0
                    while s < _3956:
                        mem[s + _2476 + idx + 358] = mem[s + _3796 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3956) > _3956:
                        mem[_3956 + _2476 + idx + 358] = 0
                    revert with 0, 32, mem[_2476 + idx + 326 len ceil32(_3956) + 32]
                mem[mem[224] + idx + 290] = 0
                _3797 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _2476 + idx + 290
                mem[_2476 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2476 + idx + 294] = 32
                _3957 = mem[_3797]
                mem[_2476 + idx + 326] = mem[_3797]
                s = 0
                while s < _3957:
                    mem[s + _2476 + idx + 358] = mem[s + _3797 + 32]
                    s = s + 32
                    continue 
                if ceil32(_3957) > _3957:
                    mem[_3957 + _2476 + idx + 358] = 0
                revert with 0, 32, mem[_2476 + idx + 326 len ceil32(_3957) + 32]
            _2477 = mem[224]
            s = 0
            while s < mem[224]:
                mem[s + idx + 290] = mem[s + 256]
                s = s + 32
                continue 
            if ceil32(mem[224]) <= mem[224]:
                _3798 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _2477 + idx + 290
                mem[_2477 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2477 + idx + 294] = 32
                _3958 = mem[_3798]
                mem[_2477 + idx + 326] = mem[_3798]
                s = 0
                while s < _3958:
                    mem[s + _2477 + idx + 358] = mem[s + _3798 + 32]
                    s = s + 32
                    continue 
                if ceil32(_3958) > _3958:
                    mem[_3958 + _2477 + idx + 358] = 0
                revert with 0, 32, mem[_2477 + idx + 326 len ceil32(_3958) + 32]
            mem[mem[224] + idx + 290] = 0
            _3799 = mem[64]
            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
            mem[64] = _2477 + idx + 290
            mem[_2477 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_2477 + idx + 294] = 32
            _3959 = mem[_3799]
            mem[_2477 + idx + 326] = mem[_3799]
            s = 0
            while s < _3959:
                mem[s + _2477 + idx + 358] = mem[s + _3799 + 32]
                s = s + 32
                continue 
            if ceil32(_3959) > _3959:
                mem[_3959 + _2477 + idx + 358] = 0
            revert with 0, 32, mem[_2477 + idx + 326 len ceil32(_3959) + 32]
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
        mem[132] = 130000 * 10^18
        require ext_code.size(dollarAddress)
        call dollarAddress.0x40c10f19 with:
             gas gas_remaining wei
            args 0x34b5a51edea3bcee73e01a7fcbee177b004cc781, 130000 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if epoch <= 24:
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
            if totalDebt + 130000 * 10^18 < totalDebt:
                revert with 0, 'SafeMath: addition overflow'
            totalDebt += 130000 * 10^18
            mem[ceil32(return_data.size) + 96] = 0
            mem[ceil32(return_data.size) + 128] = 35 * 10^16
            require ext_code.size(dollarAddress)
            staticcall dollarAddress.0x18160ddd with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 160] = 0
            if 35 * 10^16 * ext_call.return_data[0] / 35 * 10^16 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[(2 * ceil32(return_data.size)) + 192] = 35 * 10^16 * ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 224] = 26
            mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
            if totalDebt <= 35 * 10^16 * ext_call.return_data[0] / 10^18:
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
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    require ext_code.size(dollarAddress)
                    staticcall dollarAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] >= totalRedeemable + totalStaged + totalBonded:
                    mem[(6 * ceil32(return_data.size)) + 320] = 0x436f6d7074726f6c6c6572000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 288] = 32
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + (6 * ceil32(return_data.size)) + 319]):
                            idx = idx - 1
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 384] = 'Inconsistent balances' << 88
                        mem[(6 * ceil32(return_data.size)) + 352] = 32
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + (6 * ceil32(return_data.size)) + 383]):
                                s = s - 1
                                continue 
                            mem[(6 * ceil32(return_data.size)) + 352] = s
                            t = 0
                            while t < idx:
                                mem[t + (6 * ceil32(return_data.size)) + 448] = mem[t + (6 * ceil32(return_data.size)) + 320]
                                t = t + 32
                                continue 
                            mem[idx + (6 * ceil32(return_data.size)) + 448] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            t = 0
                            while t < s:
                                mem[t + idx + (6 * ceil32(return_data.size)) + 450] = mem[t + (6 * ceil32(return_data.size)) + 384]
                                t = t + 32
                                continue 
                            mem[s + idx + (6 * ceil32(return_data.size)) + 450] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[s + idx + (6 * ceil32(return_data.size)) + 454] = 32
                            mem[s + idx + (6 * ceil32(return_data.size)) + 486] = s + idx + 2
                            t = 0
                            while t < s + idx + 2:
                                mem[t + s + idx + (6 * ceil32(return_data.size)) + 518] = mem[t + (6 * ceil32(return_data.size)) + 448]
                                t = t + 32
                                continue 
                            if floor32(s + idx + 33) > s + idx + 2:
                                mem[(2 * s) + (2 * idx) + (6 * ceil32(return_data.size)) + 520] = 0
                            revert with 0, 32, s + idx + 2, mem[s + idx + (6 * ceil32(return_data.size)) + 518 len floor32(s + idx + 33)]
                        mem[(6 * ceil32(return_data.size)) + 416] = 0
                        s = 0
                        while s < idx:
                            mem[s + (6 * ceil32(return_data.size)) + 480] = mem[s + (6 * ceil32(return_data.size)) + 320]
                            s = s + 32
                            continue 
                        mem[idx + (6 * ceil32(return_data.size)) + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < 0:
                            mem[s + idx + (6 * ceil32(return_data.size)) + 482] = mem[s + (6 * ceil32(return_data.size)) + 448]
                            s = s + 32
                            continue 
                        mem[idx + (6 * ceil32(return_data.size)) + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + (6 * ceil32(return_data.size)) + 486] = 32
                        mem[idx + (6 * ceil32(return_data.size)) + 518] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + (6 * ceil32(return_data.size)) + 550] = mem[s + (6 * ceil32(return_data.size)) + 480]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + (6 * ceil32(return_data.size)) + 552] = 0
                        revert with 0, 32, idx + 2, mem[idx + (6 * ceil32(return_data.size)) + 550 len floor32(idx + 33)]
                    mem[(6 * ceil32(return_data.size)) + 416] = 'Inconsistent balances' << 88
                    mem[(6 * ceil32(return_data.size)) + 384] = 32
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + (6 * ceil32(return_data.size)) + 415]):
                            idx = idx - 1
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 384] = idx
                        s = 0
                        while s < 0:
                            mem[s + (6 * ceil32(return_data.size)) + 480] = mem[s + (6 * ceil32(return_data.size)) + 384]
                            s = s + 32
                            continue 
                        mem[(6 * ceil32(return_data.size)) + 480] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + (6 * ceil32(return_data.size)) + 482] = mem[s + (6 * ceil32(return_data.size)) + 416]
                            s = s + 32
                            continue 
                        mem[idx + (6 * ceil32(return_data.size)) + 482] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + (6 * ceil32(return_data.size)) + 486] = 32
                        mem[idx + (6 * ceil32(return_data.size)) + 518] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + (6 * ceil32(return_data.size)) + 550] = mem[s + (6 * ceil32(return_data.size)) + 480]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + (6 * ceil32(return_data.size)) + 552] = 0
                        revert with 0, 32, idx + 2, mem[idx + (6 * ceil32(return_data.size)) + 550 len floor32(idx + 33)]
            else:
                mem[(2 * ceil32(return_data.size)) + 288] = 30
                mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction overflow'
                if 35 * 10^16 * ext_call.return_data[0] / 10^18 > totalDebt:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[(2 * ceil32(return_data.size)) + 352] = 28
                mem[(2 * ceil32(return_data.size)) + 384] = 'Comptroller: not enough debt'
                if totalDebt - (35 * 10^16 * ext_call.return_data[0] / 10^18) > totalDebt:
                    revert with 0, 'Comptroller: not enough debt', 0
                totalDebt = 35 * 10^16 * ext_call.return_data[0] / 10^18
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
    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
}

function commit(address arg1) payable {
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
                    _2030 = mem[160]
                    s = 0
                    while s < mem[160]:
                        mem[s + idx + 258] = mem[s + 192]
                        s = s + 32
                        continue 
                    if ceil32(mem[160]) <= mem[160]:
                        _2924 = mem[64]
                        mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                        mem[64] = _2030 + idx + 258
                        mem[_2030 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2030 + idx + 262] = 32
                        _3052 = mem[_2924]
                        mem[_2030 + idx + 294] = mem[_2924]
                        s = 0
                        while s < _3052:
                            mem[s + _2030 + idx + 326] = mem[s + _2924 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3052) > _3052:
                            mem[_3052 + _2030 + idx + 326] = 0
                        revert with 0, 32, mem[_2030 + idx + 294 len ceil32(_3052) + 32]
                    mem[mem[160] + idx + 258] = 0
                    _2925 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _2030 + idx + 258
                    mem[_2030 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2030 + idx + 262] = 32
                    _3053 = mem[_2925]
                    mem[_2030 + idx + 294] = mem[_2925]
                    s = 0
                    while s < _3053:
                        mem[s + _2030 + idx + 326] = mem[s + _2925 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3053) > _3053:
                        mem[_3053 + _2030 + idx + 326] = 0
                    revert with 0, 32, mem[_2030 + idx + 294 len ceil32(_3053) + 32]
                _2031 = mem[160]
                s = 0
                while s < mem[160]:
                    mem[s + idx + 258] = mem[s + 192]
                    s = s + 32
                    continue 
                if ceil32(mem[160]) <= mem[160]:
                    _2926 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _2031 + idx + 258
                    mem[_2031 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2031 + idx + 262] = 32
                    _3054 = mem[_2926]
                    mem[_2031 + idx + 294] = mem[_2926]
                    s = 0
                    while s < _3054:
                        mem[s + _2031 + idx + 326] = mem[s + _2926 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3054) > _3054:
                        mem[_3054 + _2031 + idx + 326] = 0
                    revert with 0, 32, mem[_2031 + idx + 294 len ceil32(_3054) + 32]
                mem[mem[160] + idx + 258] = 0
                _2927 = mem[64]
                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                mem[64] = _2031 + idx + 258
                mem[_2031 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2031 + idx + 262] = 32
                _3055 = mem[_2927]
                mem[_2031 + idx + 294] = mem[_2927]
                s = 0
                while s < _3055:
                    mem[s + _2031 + idx + 326] = mem[s + _2927 + 32]
                    s = s + 32
                    continue 
                if ceil32(_3055) > _3055:
                    mem[_3055 + _2031 + idx + 326] = 0
                revert with 0, 32, mem[_2031 + idx + 294 len ceil32(_3055) + 32]
            mem[224] = 0
            mem[64] = 256
            s = 0
            while s < idx:
                mem[s + 288] = mem[s + 128]
                s = s + 32
                continue 
            mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            if ceil32(idx) <= idx:
                _2028 = mem[224]
                s = 0
                while s < mem[224]:
                    mem[s + idx + 290] = mem[s + 256]
                    s = s + 32
                    continue 
                if ceil32(mem[224]) <= mem[224]:
                    _2920 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                    mem[64] = _2028 + idx + 290
                    mem[_2028 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2028 + idx + 294] = 32
                    _3048 = mem[_2920]
                    mem[_2028 + idx + 326] = mem[_2920]
                    s = 0
                    while s < _3048:
                        mem[s + _2028 + idx + 358] = mem[s + _2920 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3048) > _3048:
                        mem[_3048 + _2028 + idx + 358] = 0
                    revert with 0, 32, mem[_2028 + idx + 326 len ceil32(_3048) + 32]
                mem[mem[224] + idx + 290] = 0
                _2921 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _2028 + idx + 290
                mem[_2028 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2028 + idx + 294] = 32
                _3049 = mem[_2921]
                mem[_2028 + idx + 326] = mem[_2921]
                s = 0
                while s < _3049:
                    mem[s + _2028 + idx + 358] = mem[s + _2921 + 32]
                    s = s + 32
                    continue 
                if ceil32(_3049) > _3049:
                    mem[_3049 + _2028 + idx + 358] = 0
                revert with 0, 32, mem[_2028 + idx + 326 len ceil32(_3049) + 32]
            _2029 = mem[224]
            s = 0
            while s < mem[224]:
                mem[s + idx + 290] = mem[s + 256]
                s = s + 32
                continue 
            if ceil32(mem[224]) <= mem[224]:
                _2922 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _2029 + idx + 290
                mem[_2029 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2029 + idx + 294] = 32
                _3050 = mem[_2922]
                mem[_2029 + idx + 326] = mem[_2922]
                s = 0
                while s < _3050:
                    mem[s + _2029 + idx + 358] = mem[s + _2922 + 32]
                    s = s + 32
                    continue 
                if ceil32(_3050) > _3050:
                    mem[_3050 + _2029 + idx + 358] = 0
                revert with 0, 32, mem[_2029 + idx + 326 len ceil32(_3050) + 32]
            mem[mem[224] + idx + 290] = 0
            _2923 = mem[64]
            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
            mem[64] = _2029 + idx + 290
            mem[_2029 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_2029 + idx + 294] = 32
            _3051 = mem[_2923]
            mem[_2029 + idx + 326] = mem[_2923]
            s = 0
            while s < _3051:
                mem[s + _2029 + idx + 358] = mem[s + _2923 + 32]
                s = s + 32
                continue 
            if ceil32(_3051) > _3051:
                mem[_3051 + _2029 + idx + 358] = 0
            revert with 0, 32, mem[_2029 + idx + 326 len ceil32(_3051) + 32]
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
        mem[0] = arg1
        mem[32] = 14
        if periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0 < periodFor[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        mem[96] = 30
        mem[128] = 'SafeMath: subtraction overflow'
        if 1 > periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if epoch <= periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0 - 1:
            mem[192] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
            mem[160] = 32
            mem[64] = 224
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 191]):
                    idx = idx - 1
                    continue 
                mem[160] = idx
                mem[256] = 0x4e6f7420656e6465640000000000000000000000000000000000000000000000
                mem[224] = 32
                mem[64] = 288
                s = 32
                while s:
                    require s - 1 < 32
                    if not Mask(8, 248, mem[s + 255]):
                        s = s - 1
                        continue 
                    mem[224] = s
                    s = 0
                    while s < idx:
                        mem[s + 320] = mem[s + 192]
                        s = s + 32
                        continue 
                    mem[idx + 320] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    if ceil32(idx) <= idx:
                        _2022 = mem[224]
                        s = 0
                        while s < mem[224]:
                            mem[s + idx + 322] = mem[s + 256]
                            s = s + 32
                            continue 
                        if ceil32(mem[224]) <= mem[224]:
                            _2908 = mem[64]
                            mem[mem[64]] = mem[224] + idx + -mem[64] + 290
                            mem[64] = _2022 + idx + 322
                            mem[_2022 + idx + 322] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2022 + idx + 326] = 32
                            _3036 = mem[_2908]
                            mem[_2022 + idx + 358] = mem[_2908]
                            s = 0
                            while s < _3036:
                                mem[s + _2022 + idx + 390] = mem[s + _2908 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3036) > _3036:
                                mem[_3036 + _2022 + idx + 390] = 0
                            revert with 0, 32, mem[_2022 + idx + 358 len ceil32(_3036) + 32]
                        mem[mem[224] + idx + 322] = 0
                        _2909 = mem[64]
                        mem[mem[64]] = mem[224] + idx + -mem[64] + 290
                        mem[64] = _2022 + idx + 322
                        mem[_2022 + idx + 322] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2022 + idx + 326] = 32
                        _3037 = mem[_2909]
                        mem[_2022 + idx + 358] = mem[_2909]
                        s = 0
                        while s < _3037:
                            mem[s + _2022 + idx + 390] = mem[s + _2909 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3037) > _3037:
                            mem[_3037 + _2022 + idx + 390] = 0
                        revert with 0, 32, mem[_2022 + idx + 358 len ceil32(_3037) + 32]
                    _2023 = mem[224]
                    s = 0
                    while s < mem[224]:
                        mem[s + idx + 322] = mem[s + 256]
                        s = s + 32
                        continue 
                    if ceil32(mem[224]) <= mem[224]:
                        _2910 = mem[64]
                        mem[mem[64]] = mem[224] + idx + -mem[64] + 290
                        mem[64] = _2023 + idx + 322
                        mem[_2023 + idx + 322] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2023 + idx + 326] = 32
                        _3038 = mem[_2910]
                        mem[_2023 + idx + 358] = mem[_2910]
                        s = 0
                        while s < _3038:
                            mem[s + _2023 + idx + 390] = mem[s + _2910 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3038) > _3038:
                            mem[_3038 + _2023 + idx + 390] = 0
                        revert with 0, 32, mem[_2023 + idx + 358 len ceil32(_3038) + 32]
                    mem[mem[224] + idx + 322] = 0
                    _2911 = mem[64]
                    mem[mem[64]] = mem[224] + idx + -mem[64] + 290
                    mem[64] = _2023 + idx + 322
                    mem[_2023 + idx + 322] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2023 + idx + 326] = 32
                    _3039 = mem[_2911]
                    mem[_2023 + idx + 358] = mem[_2911]
                    s = 0
                    while s < _3039:
                        mem[s + _2023 + idx + 390] = mem[s + _2911 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3039) > _3039:
                        mem[_3039 + _2023 + idx + 390] = 0
                    revert with 0, 32, mem[_2023 + idx + 358 len ceil32(_3039) + 32]
                mem[288] = 0
                mem[64] = 320
                s = 0
                while s < idx:
                    mem[s + 352] = mem[s + 192]
                    s = s + 32
                    continue 
                mem[idx + 352] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                if ceil32(idx) <= idx:
                    _2020 = mem[288]
                    s = 0
                    while s < mem[288]:
                        mem[s + idx + 354] = mem[s + 320]
                        s = s + 32
                        continue 
                    if ceil32(mem[288]) <= mem[288]:
                        _2904 = mem[64]
                        mem[mem[64]] = mem[288] + idx + -mem[64] + 322
                        mem[64] = _2020 + idx + 354
                        mem[_2020 + idx + 354] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2020 + idx + 358] = 32
                        _3032 = mem[_2904]
                        mem[_2020 + idx + 390] = mem[_2904]
                        s = 0
                        while s < _3032:
                            mem[s + _2020 + idx + 422] = mem[s + _2904 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3032) > _3032:
                            mem[_3032 + _2020 + idx + 422] = 0
                        revert with 0, 32, mem[_2020 + idx + 390 len ceil32(_3032) + 32]
                    mem[mem[288] + idx + 354] = 0
                    _2905 = mem[64]
                    mem[mem[64]] = mem[288] + idx + -mem[64] + 322
                    mem[64] = _2020 + idx + 354
                    mem[_2020 + idx + 354] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2020 + idx + 358] = 32
                    _3033 = mem[_2905]
                    mem[_2020 + idx + 390] = mem[_2905]
                    s = 0
                    while s < _3033:
                        mem[s + _2020 + idx + 422] = mem[s + _2905 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3033) > _3033:
                        mem[_3033 + _2020 + idx + 422] = 0
                    revert with 0, 32, mem[_2020 + idx + 390 len ceil32(_3033) + 32]
                _2021 = mem[288]
                s = 0
                while s < mem[288]:
                    mem[s + idx + 354] = mem[s + 320]
                    s = s + 32
                    continue 
                if ceil32(mem[288]) <= mem[288]:
                    _2906 = mem[64]
                    mem[mem[64]] = mem[288] + idx + -mem[64] + 322
                    mem[64] = _2021 + idx + 354
                    mem[_2021 + idx + 354] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2021 + idx + 358] = 32
                    _3034 = mem[_2906]
                    mem[_2021 + idx + 390] = mem[_2906]
                    s = 0
                    while s < _3034:
                        mem[s + _2021 + idx + 422] = mem[s + _2906 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3034) > _3034:
                        mem[_3034 + _2021 + idx + 422] = 0
                    revert with 0, 32, mem[_2021 + idx + 390 len ceil32(_3034) + 32]
                mem[mem[288] + idx + 354] = 0
                _2907 = mem[64]
                mem[mem[64]] = mem[288] + idx + -mem[64] + 322
                mem[64] = _2021 + idx + 354
                mem[_2021 + idx + 354] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2021 + idx + 358] = 32
                _3035 = mem[_2907]
                mem[_2021 + idx + 390] = mem[_2907]
                s = 0
                while s < _3035:
                    mem[s + _2021 + idx + 422] = mem[s + _2907 + 32]
                    s = s + 32
                    continue 
                if ceil32(_3035) > _3035:
                    mem[_3035 + _2021 + idx + 422] = 0
                revert with 0, 32, mem[_2021 + idx + 390 len ceil32(_3035) + 32]
            mem[224] = 0
            mem[288] = 0x4e6f7420656e6465640000000000000000000000000000000000000000000000
            mem[256] = 32
            mem[64] = 320
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 287]):
                    idx = idx - 1
                    continue 
                mem[256] = idx
                s = 0
                while s < 0:
                    mem[s + 352] = mem[s + 256]
                    s = s + 32
                    continue 
                mem[352] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                s = 0
                while s < idx:
                    mem[s + 354] = mem[s + 288]
                    s = s + 32
                    continue 
                mem[320] = idx + 2
                mem[64] = idx + 354
                mem[idx + 354] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[idx + 358] = 32
                mem[idx + 390] = idx + 2
                s = 0
                while s < idx + 2:
                    mem[s + idx + 422] = mem[s + 352]
                    s = s + 32
                    continue 
                if floor32(idx + 33) > idx + 2:
                    mem[(2 * idx) + 424] = 0
                revert with 0, 32, idx + 2, mem[idx + 422 len floor32(idx + 33)]
        else:
            mem[160] = 0
            mem[192] = 2 * 10^17
            if periodFor[address(arg1)].field_768 + periodFor[address(arg1)].field_512 < periodFor[address(arg1)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = periodFor[address(arg1)].field_256 + periodFor[address(arg1)].field_0 - 1
            mem[32] = 13
            mem[224] = 0
            if not periodFor[address(arg1)].field_768 + periodFor[address(arg1)].field_512:
                mem[288] = 26
                mem[320] = 'SafeMath: division by zero'
                if not couponsExpiration[stor14[address(arg1)].field_256 + stor14[address(arg1)].field_0 - 1].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[256] = 0 / couponsExpiration[stor14[address(arg1)].field_256 + stor14[address(arg1)].field_0 - 1].field_0
                if 2 * 10^17 == 0 / couponsExpiration[stor14[address(arg1)].field_256 + stor14[address(arg1)].field_0 - 1].field_0:
                    mem[384] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[352] = 32
                    mem[64] = 416
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 383]):
                            idx = idx - 1
                            continue 
                        mem[352] = idx
                        mem[448] = 'Must have quorom' << 128
                        mem[416] = 32
                        mem[64] = 480
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 447]):
                                s = s - 1
                                continue 
                            mem[416] = s
                            s = 0
                            while s < idx:
                                mem[s + 512] = mem[s + 384]
                                s = s + 32
                                continue 
                            mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _2014 = mem[416]
                                s = 0
                                while s < mem[416]:
                                    mem[s + idx + 514] = mem[s + 448]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[416]) <= mem[416]:
                                    _2892 = mem[64]
                                    mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                                    mem[64] = _2014 + idx + 514
                                    mem[_2014 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2014 + idx + 518] = 32
                                    _3020 = mem[_2892]
                                    mem[_2014 + idx + 550] = mem[_2892]
                                    s = 0
                                    while s < _3020:
                                        mem[s + _2014 + idx + 582] = mem[s + _2892 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_3020) > _3020:
                                        mem[_3020 + _2014 + idx + 582] = 0
                                    revert with 0, 32, mem[_2014 + idx + 550 len ceil32(_3020) + 32]
                                mem[mem[416] + idx + 514] = 0
                                _2893 = mem[64]
                                mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                                mem[64] = _2014 + idx + 514
                                mem[_2014 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2014 + idx + 518] = 32
                                _3021 = mem[_2893]
                                mem[_2014 + idx + 550] = mem[_2893]
                                s = 0
                                while s < _3021:
                                    mem[s + _2014 + idx + 582] = mem[s + _2893 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3021) > _3021:
                                    mem[_3021 + _2014 + idx + 582] = 0
                                revert with 0, 32, mem[_2014 + idx + 550 len ceil32(_3021) + 32]
                            _2015 = mem[416]
                            s = 0
                            while s < mem[416]:
                                mem[s + idx + 514] = mem[s + 448]
                                s = s + 32
                                continue 
                            if ceil32(mem[416]) <= mem[416]:
                                _2894 = mem[64]
                                mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                                mem[64] = _2015 + idx + 514
                                mem[_2015 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2015 + idx + 518] = 32
                                _3022 = mem[_2894]
                                mem[_2015 + idx + 550] = mem[_2894]
                                s = 0
                                while s < _3022:
                                    mem[s + _2015 + idx + 582] = mem[s + _2894 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3022) > _3022:
                                    mem[_3022 + _2015 + idx + 582] = 0
                                revert with 0, 32, mem[_2015 + idx + 550 len ceil32(_3022) + 32]
                            mem[mem[416] + idx + 514] = 0
                            _2895 = mem[64]
                            mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                            mem[64] = _2015 + idx + 514
                            mem[_2015 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2015 + idx + 518] = 32
                            _3023 = mem[_2895]
                            mem[_2015 + idx + 550] = mem[_2895]
                            s = 0
                            while s < _3023:
                                mem[s + _2015 + idx + 582] = mem[s + _2895 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3023) > _3023:
                                mem[_3023 + _2015 + idx + 582] = 0
                            revert with 0, 32, mem[_2015 + idx + 550 len ceil32(_3023) + 32]
                        mem[480] = 0
                        mem[64] = 512
                        s = 0
                        while s < idx:
                            mem[s + 544] = mem[s + 384]
                            s = s + 32
                            continue 
                        mem[idx + 544] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _2012 = mem[480]
                            s = 0
                            while s < mem[480]:
                                mem[s + idx + 546] = mem[s + 512]
                                s = s + 32
                                continue 
                            if ceil32(mem[480]) <= mem[480]:
                                _2888 = mem[64]
                                mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                                mem[64] = _2012 + idx + 546
                                mem[_2012 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2012 + idx + 550] = 32
                                _3016 = mem[_2888]
                                mem[_2012 + idx + 582] = mem[_2888]
                                s = 0
                                while s < _3016:
                                    mem[s + _2012 + idx + 614] = mem[s + _2888 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3016) > _3016:
                                    mem[_3016 + _2012 + idx + 614] = 0
                                revert with 0, 32, mem[_2012 + idx + 582 len ceil32(_3016) + 32]
                            mem[mem[480] + idx + 546] = 0
                            _2889 = mem[64]
                            mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                            mem[64] = _2012 + idx + 546
                            mem[_2012 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2012 + idx + 550] = 32
                            _3017 = mem[_2889]
                            mem[_2012 + idx + 582] = mem[_2889]
                            s = 0
                            while s < _3017:
                                mem[s + _2012 + idx + 614] = mem[s + _2889 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3017) > _3017:
                                mem[_3017 + _2012 + idx + 614] = 0
                            revert with 0, 32, mem[_2012 + idx + 582 len ceil32(_3017) + 32]
                        _2013 = mem[480]
                        s = 0
                        while s < mem[480]:
                            mem[s + idx + 546] = mem[s + 512]
                            s = s + 32
                            continue 
                        if ceil32(mem[480]) <= mem[480]:
                            _2890 = mem[64]
                            mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                            mem[64] = _2013 + idx + 546
                            mem[_2013 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2013 + idx + 550] = 32
                            _3018 = mem[_2890]
                            mem[_2013 + idx + 582] = mem[_2890]
                            s = 0
                            while s < _3018:
                                mem[s + _2013 + idx + 614] = mem[s + _2890 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3018) > _3018:
                                mem[_3018 + _2013 + idx + 614] = 0
                            revert with 0, 32, mem[_2013 + idx + 582 len ceil32(_3018) + 32]
                        mem[mem[480] + idx + 546] = 0
                        _2891 = mem[64]
                        mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                        mem[64] = _2013 + idx + 546
                        mem[_2013 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2013 + idx + 550] = 32
                        _3019 = mem[_2891]
                        mem[_2013 + idx + 582] = mem[_2891]
                        s = 0
                        while s < _3019:
                            mem[s + _2013 + idx + 614] = mem[s + _2891 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3019) > _3019:
                            mem[_3019 + _2013 + idx + 614] = 0
                        revert with 0, 32, mem[_2013 + idx + 582 len ceil32(_3019) + 32]
                    mem[416] = 0
                    mem[480] = 'Must have quorom' << 128
                    mem[448] = 32
                    mem[64] = 512
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 479]):
                            idx = idx - 1
                            continue 
                        mem[448] = idx
                        s = 0
                        while s < 0:
                            mem[s + 544] = mem[s + 448]
                            s = s + 32
                            continue 
                        mem[544] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 546] = mem[s + 480]
                            s = s + 32
                            continue 
                        mem[512] = idx + 2
                        mem[64] = idx + 546
                        mem[idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 550] = 32
                        mem[idx + 582] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 614] = mem[s + 544]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 616] = 0
                        revert with 0, 32, idx + 2, mem[idx + 614 len floor32(idx + 33)]
                else:
                    if 0 / couponsExpiration[stor14[address(arg1)].field_256 + stor14[address(arg1)].field_0 - 1].field_0 <= 2 * 10^17:
                        mem[384] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                        mem[352] = 32
                        mem[64] = 416
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 383]):
                                idx = idx - 1
                                continue 
                            mem[352] = idx
                            mem[448] = 'Must have quorom' << 128
                            mem[416] = 32
                            mem[64] = 480
                            s = 32
                            while s:
                                require s - 1 < 32
                                if not Mask(8, 248, mem[s + 447]):
                                    s = s - 1
                                    continue 
                                mem[416] = s
                                s = 0
                                while s < idx:
                                    mem[s + 512] = mem[s + 384]
                                    s = s + 32
                                    continue 
                                mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                if ceil32(idx) <= idx:
                                    _2006 = mem[416]
                                    s = 0
                                    while s < mem[416]:
                                        mem[s + idx + 514] = mem[s + 448]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[416]) <= mem[416]:
                                        _2876 = mem[64]
                                        mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                                        mem[64] = _2006 + idx + 514
                                        mem[_2006 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2006 + idx + 518] = 32
                                        _3004 = mem[_2876]
                                        mem[_2006 + idx + 550] = mem[_2876]
                                        s = 0
                                        while s < _3004:
                                            mem[s + _2006 + idx + 582] = mem[s + _2876 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_3004) > _3004:
                                            mem[_3004 + _2006 + idx + 582] = 0
                                        revert with 0, 32, mem[_2006 + idx + 550 len ceil32(_3004) + 32]
                                    mem[mem[416] + idx + 514] = 0
                                    _2877 = mem[64]
                                    mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                                    mem[64] = _2006 + idx + 514
                                    mem[_2006 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2006 + idx + 518] = 32
                                    _3005 = mem[_2877]
                                    mem[_2006 + idx + 550] = mem[_2877]
                                    s = 0
                                    while s < _3005:
                                        mem[s + _2006 + idx + 582] = mem[s + _2877 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_3005) > _3005:
                                        mem[_3005 + _2006 + idx + 582] = 0
                                    revert with 0, 32, mem[_2006 + idx + 550 len ceil32(_3005) + 32]
                                _2007 = mem[416]
                                s = 0
                                while s < mem[416]:
                                    mem[s + idx + 514] = mem[s + 448]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[416]) <= mem[416]:
                                    _2878 = mem[64]
                                    mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                                    mem[64] = _2007 + idx + 514
                                    mem[_2007 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2007 + idx + 518] = 32
                                    _3006 = mem[_2878]
                                    mem[_2007 + idx + 550] = mem[_2878]
                                    s = 0
                                    while s < _3006:
                                        mem[s + _2007 + idx + 582] = mem[s + _2878 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_3006) > _3006:
                                        mem[_3006 + _2007 + idx + 582] = 0
                                    revert with 0, 32, mem[_2007 + idx + 550 len ceil32(_3006) + 32]
                                mem[mem[416] + idx + 514] = 0
                                _2879 = mem[64]
                                mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                                mem[64] = _2007 + idx + 514
                                mem[_2007 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2007 + idx + 518] = 32
                                _3007 = mem[_2879]
                                mem[_2007 + idx + 550] = mem[_2879]
                                s = 0
                                while s < _3007:
                                    mem[s + _2007 + idx + 582] = mem[s + _2879 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3007) > _3007:
                                    mem[_3007 + _2007 + idx + 582] = 0
                                revert with 0, 32, mem[_2007 + idx + 550 len ceil32(_3007) + 32]
                            mem[480] = 0
                            mem[64] = 512
                            s = 0
                            while s < idx:
                                mem[s + 544] = mem[s + 384]
                                s = s + 32
                                continue 
                            mem[idx + 544] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _2004 = mem[480]
                                s = 0
                                while s < mem[480]:
                                    mem[s + idx + 546] = mem[s + 512]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[480]) <= mem[480]:
                                    _2872 = mem[64]
                                    mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                                    mem[64] = _2004 + idx + 546
                                    mem[_2004 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2004 + idx + 550] = 32
                                    _3000 = mem[_2872]
                                    mem[_2004 + idx + 582] = mem[_2872]
                                    s = 0
                                    while s < _3000:
                                        mem[s + _2004 + idx + 614] = mem[s + _2872 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_3000) > _3000:
                                        mem[_3000 + _2004 + idx + 614] = 0
                                    revert with 0, 32, mem[_2004 + idx + 582 len ceil32(_3000) + 32]
                                mem[mem[480] + idx + 546] = 0
                                _2873 = mem[64]
                                mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                                mem[64] = _2004 + idx + 546
                                mem[_2004 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2004 + idx + 550] = 32
                                _3001 = mem[_2873]
                                mem[_2004 + idx + 582] = mem[_2873]
                                s = 0
                                while s < _3001:
                                    mem[s + _2004 + idx + 614] = mem[s + _2873 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3001) > _3001:
                                    mem[_3001 + _2004 + idx + 614] = 0
                                revert with 0, 32, mem[_2004 + idx + 582 len ceil32(_3001) + 32]
                            _2005 = mem[480]
                            s = 0
                            while s < mem[480]:
                                mem[s + idx + 546] = mem[s + 512]
                                s = s + 32
                                continue 
                            if ceil32(mem[480]) <= mem[480]:
                                _2874 = mem[64]
                                mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                                mem[64] = _2005 + idx + 546
                                mem[_2005 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2005 + idx + 550] = 32
                                _3002 = mem[_2874]
                                mem[_2005 + idx + 582] = mem[_2874]
                                s = 0
                                while s < _3002:
                                    mem[s + _2005 + idx + 614] = mem[s + _2874 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3002) > _3002:
                                    mem[_3002 + _2005 + idx + 614] = 0
                                revert with 0, 32, mem[_2005 + idx + 582 len ceil32(_3002) + 32]
                            mem[mem[480] + idx + 546] = 0
                            _2875 = mem[64]
                            mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                            mem[64] = _2005 + idx + 546
                            mem[_2005 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2005 + idx + 550] = 32
                            _3003 = mem[_2875]
                            mem[_2005 + idx + 582] = mem[_2875]
                            s = 0
                            while s < _3003:
                                mem[s + _2005 + idx + 614] = mem[s + _2875 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3003) > _3003:
                                mem[_3003 + _2005 + idx + 614] = 0
                            revert with 0, 32, mem[_2005 + idx + 582 len ceil32(_3003) + 32]
                        mem[416] = 0
                        mem[480] = 'Must have quorom' << 128
                        mem[448] = 32
                        mem[64] = 512
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 479]):
                                idx = idx - 1
                                continue 
                            mem[448] = idx
                            s = 0
                            while s < 0:
                                mem[s + 544] = mem[s + 448]
                                s = s + 32
                                continue 
                            mem[544] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < idx:
                                mem[s + 546] = mem[s + 480]
                                s = s + 32
                                continue 
                            mem[512] = idx + 2
                            mem[64] = idx + 546
                            mem[idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + 550] = 32
                            mem[idx + 582] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + 614] = mem[s + 544]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + 616] = 0
                            revert with 0, 32, idx + 2, mem[idx + 614 len floor32(idx + 33)]
                    else:
                        mem[0] = arg1
                        mem[32] = 14
                        if periodFor[address(arg1)].field_512 > periodFor[address(arg1)].field_768:
                            if not ext_code.size(arg1):
                                revert with 0, 'Cannot set a proxy implementation to a non-contract address'
                            uint256(stor3608) = arg1
                            mem[388] = 0, mem[388 len 28]
                            delegate arg1.mem[388 len 4] with:
                                 gas gas_remaining wei
                                args 
                            if not return_data.size:
                                if not delegate.return_code:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                            else:
                                if not delegate.return_code:
                                    revert with 0, 
                                                32,
                                                return_data.size,
                                                ext_call.return_data[0 len return_data.size],
                                                Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256
                            emit Upgraded(arg1);
                            emit Commit(msg.sender, arg1);
                        mem[384] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                        mem[352] = 32
                        mem[64] = 416
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 383]):
                                idx = idx - 1
                                continue 
                            mem[352] = idx
                            mem[448] = 0x4e6f7420617070726f7665640000000000000000000000000000000000000000
                            mem[416] = 32
                            mem[64] = 480
                            s = 32
                            while s:
                                require s - 1 < 32
                                if not Mask(8, 248, mem[s + 447]):
                                    s = s - 1
                                    continue 
                                mem[416] = s
                                s = 0
                                while s < idx:
                                    mem[s + 512] = mem[s + 384]
                                    s = s + 32
                                    continue 
                                mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                if ceil32(idx) <= idx:
                                    _1998 = mem[416]
                                    s = 0
                                    while s < mem[416]:
                                        mem[s + idx + 514] = mem[s + 448]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[416]) <= mem[416]:
                                        _2860 = mem[64]
                                        mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                                        mem[64] = _1998 + idx + 514
                                        mem[_1998 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1998 + idx + 518] = 32
                                        _2988 = mem[_2860]
                                        mem[_1998 + idx + 550] = mem[_2860]
                                        s = 0
                                        while s < _2988:
                                            mem[s + _1998 + idx + 582] = mem[s + _2860 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2988) > _2988:
                                            mem[_2988 + _1998 + idx + 582] = 0
                                        revert with 0, 32, mem[_1998 + idx + 550 len ceil32(_2988) + 32]
                                    mem[mem[416] + idx + 514] = 0
                                    _2861 = mem[64]
                                    mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                                    mem[64] = _1998 + idx + 514
                                    mem[_1998 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1998 + idx + 518] = 32
                                    _2989 = mem[_2861]
                                    mem[_1998 + idx + 550] = mem[_2861]
                                    s = 0
                                    while s < _2989:
                                        mem[s + _1998 + idx + 582] = mem[s + _2861 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2989) > _2989:
                                        mem[_2989 + _1998 + idx + 582] = 0
                                    revert with 0, 32, mem[_1998 + idx + 550 len ceil32(_2989) + 32]
                                _1999 = mem[416]
                                s = 0
                                while s < mem[416]:
                                    mem[s + idx + 514] = mem[s + 448]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[416]) <= mem[416]:
                                    _2862 = mem[64]
                                    mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                                    mem[64] = _1999 + idx + 514
                                    mem[_1999 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1999 + idx + 518] = 32
                                    _2990 = mem[_2862]
                                    mem[_1999 + idx + 550] = mem[_2862]
                                    s = 0
                                    while s < _2990:
                                        mem[s + _1999 + idx + 582] = mem[s + _2862 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2990) > _2990:
                                        mem[_2990 + _1999 + idx + 582] = 0
                                    revert with 0, 32, mem[_1999 + idx + 550 len ceil32(_2990) + 32]
                                mem[mem[416] + idx + 514] = 0
                                _2863 = mem[64]
                                mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                                mem[64] = _1999 + idx + 514
                                mem[_1999 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1999 + idx + 518] = 32
                                _2991 = mem[_2863]
                                mem[_1999 + idx + 550] = mem[_2863]
                                s = 0
                                while s < _2991:
                                    mem[s + _1999 + idx + 582] = mem[s + _2863 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2991) > _2991:
                                    mem[_2991 + _1999 + idx + 582] = 0
                                revert with 0, 32, mem[_1999 + idx + 550 len ceil32(_2991) + 32]
                            mem[480] = 0
                            mem[64] = 512
                            s = 0
                            while s < idx:
                                mem[s + 544] = mem[s + 384]
                                s = s + 32
                                continue 
                            mem[idx + 544] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _1996 = mem[480]
                                s = 0
                                while s < mem[480]:
                                    mem[s + idx + 546] = mem[s + 512]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[480]) <= mem[480]:
                                    _2856 = mem[64]
                                    mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                                    mem[64] = _1996 + idx + 546
                                    mem[_1996 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1996 + idx + 550] = 32
                                    _2984 = mem[_2856]
                                    mem[_1996 + idx + 582] = mem[_2856]
                                    s = 0
                                    while s < _2984:
                                        mem[s + _1996 + idx + 614] = mem[s + _2856 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2984) > _2984:
                                        mem[_2984 + _1996 + idx + 614] = 0
                                    revert with 0, 32, mem[_1996 + idx + 582 len ceil32(_2984) + 32]
                                mem[mem[480] + idx + 546] = 0
                                _2857 = mem[64]
                                mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                                mem[64] = _1996 + idx + 546
                                mem[_1996 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1996 + idx + 550] = 32
                                _2985 = mem[_2857]
                                mem[_1996 + idx + 582] = mem[_2857]
                                s = 0
                                while s < _2985:
                                    mem[s + _1996 + idx + 614] = mem[s + _2857 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2985) > _2985:
                                    mem[_2985 + _1996 + idx + 614] = 0
                                revert with 0, 32, mem[_1996 + idx + 582 len ceil32(_2985) + 32]
                            _1997 = mem[480]
                            s = 0
                            while s < mem[480]:
                                mem[s + idx + 546] = mem[s + 512]
                                s = s + 32
                                continue 
                            if ceil32(mem[480]) <= mem[480]:
                                _2858 = mem[64]
                                mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                                mem[64] = _1997 + idx + 546
                                mem[_1997 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1997 + idx + 550] = 32
                                _2986 = mem[_2858]
                                mem[_1997 + idx + 582] = mem[_2858]
                                s = 0
                                while s < _2986:
                                    mem[s + _1997 + idx + 614] = mem[s + _2858 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2986) > _2986:
                                    mem[_2986 + _1997 + idx + 614] = 0
                                revert with 0, 32, mem[_1997 + idx + 582 len ceil32(_2986) + 32]
                            mem[mem[480] + idx + 546] = 0
                            _2859 = mem[64]
                            mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                            mem[64] = _1997 + idx + 546
                            mem[_1997 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1997 + idx + 550] = 32
                            _2987 = mem[_2859]
                            mem[_1997 + idx + 582] = mem[_2859]
                            s = 0
                            while s < _2987:
                                mem[s + _1997 + idx + 614] = mem[s + _2859 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2987) > _2987:
                                mem[_2987 + _1997 + idx + 614] = 0
                            revert with 0, 32, mem[_1997 + idx + 582 len ceil32(_2987) + 32]
                        mem[416] = 0
                        mem[480] = 0x4e6f7420617070726f7665640000000000000000000000000000000000000000
                        mem[448] = 32
                        mem[64] = 512
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 479]):
                                idx = idx - 1
                                continue 
                            mem[448] = idx
                            s = 0
                            while s < 0:
                                mem[s + 544] = mem[s + 448]
                                s = s + 32
                                continue 
                            mem[544] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < idx:
                                mem[s + 546] = mem[s + 480]
                                s = s + 32
                                continue 
                            mem[512] = idx + 2
                            mem[64] = idx + 546
                            mem[idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + 550] = 32
                            mem[idx + 582] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + 614] = mem[s + 544]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + 616] = 0
                            revert with 0, 32, idx + 2, mem[idx + 614 len floor32(idx + 33)]
            else:
                if (10^18 * periodFor[address(arg1)].field_768) + (10^18 * periodFor[address(arg1)].field_512) / periodFor[address(arg1)].field_768 + periodFor[address(arg1)].field_512 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[288] = 26
                mem[320] = 'SafeMath: division by zero'
                if not couponsExpiration[stor14[address(arg1)].field_256 + stor14[address(arg1)].field_0 - 1].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[256] = (10^18 * periodFor[address(arg1)].field_768) + (10^18 * periodFor[address(arg1)].field_512) / couponsExpiration[stor14[address(arg1)].field_256 + stor14[address(arg1)].field_0 - 1].field_0
                if 2 * 10^17 == (10^18 * periodFor[address(arg1)].field_768) + (10^18 * periodFor[address(arg1)].field_512) / couponsExpiration[stor14[address(arg1)].field_256 + stor14[address(arg1)].field_0 - 1].field_0:
                    mem[384] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                    mem[352] = 32
                    mem[64] = 416
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 383]):
                            idx = idx - 1
                            continue 
                        mem[352] = idx
                        mem[448] = 'Must have quorom' << 128
                        mem[416] = 32
                        mem[64] = 480
                        s = 32
                        while s:
                            require s - 1 < 32
                            if not Mask(8, 248, mem[s + 447]):
                                s = s - 1
                                continue 
                            mem[416] = s
                            s = 0
                            while s < idx:
                                mem[s + 512] = mem[s + 384]
                                s = s + 32
                                continue 
                            mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _1990 = mem[416]
                                s = 0
                                while s < mem[416]:
                                    mem[s + idx + 514] = mem[s + 448]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[416]) <= mem[416]:
                                    _2844 = mem[64]
                                    mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                                    mem[64] = _1990 + idx + 514
                                    mem[_1990 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1990 + idx + 518] = 32
                                    _2972 = mem[_2844]
                                    mem[_1990 + idx + 550] = mem[_2844]
                                    s = 0
                                    while s < _2972:
                                        mem[s + _1990 + idx + 582] = mem[s + _2844 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2972) > _2972:
                                        mem[_2972 + _1990 + idx + 582] = 0
                                    revert with 0, 32, mem[_1990 + idx + 550 len ceil32(_2972) + 32]
                                mem[mem[416] + idx + 514] = 0
                                _2845 = mem[64]
                                mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                                mem[64] = _1990 + idx + 514
                                mem[_1990 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1990 + idx + 518] = 32
                                _2973 = mem[_2845]
                                mem[_1990 + idx + 550] = mem[_2845]
                                s = 0
                                while s < _2973:
                                    mem[s + _1990 + idx + 582] = mem[s + _2845 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2973) > _2973:
                                    mem[_2973 + _1990 + idx + 582] = 0
                                revert with 0, 32, mem[_1990 + idx + 550 len ceil32(_2973) + 32]
                            _1991 = mem[416]
                            s = 0
                            while s < mem[416]:
                                mem[s + idx + 514] = mem[s + 448]
                                s = s + 32
                                continue 
                            if ceil32(mem[416]) <= mem[416]:
                                _2846 = mem[64]
                                mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                                mem[64] = _1991 + idx + 514
                                mem[_1991 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1991 + idx + 518] = 32
                                _2974 = mem[_2846]
                                mem[_1991 + idx + 550] = mem[_2846]
                                s = 0
                                while s < _2974:
                                    mem[s + _1991 + idx + 582] = mem[s + _2846 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2974) > _2974:
                                    mem[_2974 + _1991 + idx + 582] = 0
                                revert with 0, 32, mem[_1991 + idx + 550 len ceil32(_2974) + 32]
                            mem[mem[416] + idx + 514] = 0
                            _2847 = mem[64]
                            mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                            mem[64] = _1991 + idx + 514
                            mem[_1991 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1991 + idx + 518] = 32
                            _2975 = mem[_2847]
                            mem[_1991 + idx + 550] = mem[_2847]
                            s = 0
                            while s < _2975:
                                mem[s + _1991 + idx + 582] = mem[s + _2847 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2975) > _2975:
                                mem[_2975 + _1991 + idx + 582] = 0
                            revert with 0, 32, mem[_1991 + idx + 550 len ceil32(_2975) + 32]
                        mem[480] = 0
                        mem[64] = 512
                        s = 0
                        while s < idx:
                            mem[s + 544] = mem[s + 384]
                            s = s + 32
                            continue 
                        mem[idx + 544] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        if ceil32(idx) <= idx:
                            _1988 = mem[480]
                            s = 0
                            while s < mem[480]:
                                mem[s + idx + 546] = mem[s + 512]
                                s = s + 32
                                continue 
                            if ceil32(mem[480]) <= mem[480]:
                                _2840 = mem[64]
                                mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                                mem[64] = _1988 + idx + 546
                                mem[_1988 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1988 + idx + 550] = 32
                                _2968 = mem[_2840]
                                mem[_1988 + idx + 582] = mem[_2840]
                                s = 0
                                while s < _2968:
                                    mem[s + _1988 + idx + 614] = mem[s + _2840 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2968) > _2968:
                                    mem[_2968 + _1988 + idx + 614] = 0
                                revert with 0, 32, mem[_1988 + idx + 582 len ceil32(_2968) + 32]
                            mem[mem[480] + idx + 546] = 0
                            _2841 = mem[64]
                            mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                            mem[64] = _1988 + idx + 546
                            mem[_1988 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1988 + idx + 550] = 32
                            _2969 = mem[_2841]
                            mem[_1988 + idx + 582] = mem[_2841]
                            s = 0
                            while s < _2969:
                                mem[s + _1988 + idx + 614] = mem[s + _2841 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2969) > _2969:
                                mem[_2969 + _1988 + idx + 614] = 0
                            revert with 0, 32, mem[_1988 + idx + 582 len ceil32(_2969) + 32]
                        _1989 = mem[480]
                        s = 0
                        while s < mem[480]:
                            mem[s + idx + 546] = mem[s + 512]
                            s = s + 32
                            continue 
                        if ceil32(mem[480]) <= mem[480]:
                            _2842 = mem[64]
                            mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                            mem[64] = _1989 + idx + 546
                            mem[_1989 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1989 + idx + 550] = 32
                            _2970 = mem[_2842]
                            mem[_1989 + idx + 582] = mem[_2842]
                            s = 0
                            while s < _2970:
                                mem[s + _1989 + idx + 614] = mem[s + _2842 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2970) > _2970:
                                mem[_2970 + _1989 + idx + 614] = 0
                            revert with 0, 32, mem[_1989 + idx + 582 len ceil32(_2970) + 32]
                        mem[mem[480] + idx + 546] = 0
                        _2843 = mem[64]
                        mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                        mem[64] = _1989 + idx + 546
                        mem[_1989 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1989 + idx + 550] = 32
                        _2971 = mem[_2843]
                        mem[_1989 + idx + 582] = mem[_2843]
                        s = 0
                        while s < _2971:
                            mem[s + _1989 + idx + 614] = mem[s + _2843 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2971) > _2971:
                            mem[_2971 + _1989 + idx + 614] = 0
                        revert with 0, 32, mem[_1989 + idx + 582 len ceil32(_2971) + 32]
                    mem[416] = 0
                    mem[480] = 'Must have quorom' << 128
                    mem[448] = 32
                    mem[64] = 512
                    idx = 32
                    while idx:
                        require idx - 1 < 32
                        if not Mask(8, 248, mem[idx + 479]):
                            idx = idx - 1
                            continue 
                        mem[448] = idx
                        s = 0
                        while s < 0:
                            mem[s + 544] = mem[s + 448]
                            s = s + 32
                            continue 
                        mem[544] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                        s = 0
                        while s < idx:
                            mem[s + 546] = mem[s + 480]
                            s = s + 32
                            continue 
                        mem[512] = idx + 2
                        mem[64] = idx + 546
                        mem[idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[idx + 550] = 32
                        mem[idx + 582] = idx + 2
                        s = 0
                        while s < idx + 2:
                            mem[s + idx + 614] = mem[s + 544]
                            s = s + 32
                            continue 
                        if floor32(idx + 33) > idx + 2:
                            mem[(2 * idx) + 616] = 0
                        revert with 0, 32, idx + 2, mem[idx + 614 len floor32(idx + 33)]
                else:
                    if (10^18 * periodFor[address(arg1)].field_768) + (10^18 * periodFor[address(arg1)].field_512) / couponsExpiration[stor14[address(arg1)].field_256 + stor14[address(arg1)].field_0 - 1].field_0 <= 2 * 10^17:
                        mem[384] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                        mem[352] = 32
                        mem[64] = 416
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 383]):
                                idx = idx - 1
                                continue 
                            mem[352] = idx
                            mem[448] = 'Must have quorom' << 128
                            mem[416] = 32
                            mem[64] = 480
                            s = 32
                            while s:
                                require s - 1 < 32
                                if not Mask(8, 248, mem[s + 447]):
                                    s = s - 1
                                    continue 
                                mem[416] = s
                                s = 0
                                while s < idx:
                                    mem[s + 512] = mem[s + 384]
                                    s = s + 32
                                    continue 
                                mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                if ceil32(idx) <= idx:
                                    _1982 = mem[416]
                                    s = 0
                                    while s < mem[416]:
                                        mem[s + idx + 514] = mem[s + 448]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[416]) <= mem[416]:
                                        _2828 = mem[64]
                                        mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                                        mem[64] = _1982 + idx + 514
                                        mem[_1982 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1982 + idx + 518] = 32
                                        _2956 = mem[_2828]
                                        mem[_1982 + idx + 550] = mem[_2828]
                                        s = 0
                                        while s < _2956:
                                            mem[s + _1982 + idx + 582] = mem[s + _2828 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2956) > _2956:
                                            mem[_2956 + _1982 + idx + 582] = 0
                                        revert with 0, 32, mem[_1982 + idx + 550 len ceil32(_2956) + 32]
                                    mem[mem[416] + idx + 514] = 0
                                    _2829 = mem[64]
                                    mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                                    mem[64] = _1982 + idx + 514
                                    mem[_1982 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1982 + idx + 518] = 32
                                    _2957 = mem[_2829]
                                    mem[_1982 + idx + 550] = mem[_2829]
                                    s = 0
                                    while s < _2957:
                                        mem[s + _1982 + idx + 582] = mem[s + _2829 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2957) > _2957:
                                        mem[_2957 + _1982 + idx + 582] = 0
                                    revert with 0, 32, mem[_1982 + idx + 550 len ceil32(_2957) + 32]
                                _1983 = mem[416]
                                s = 0
                                while s < mem[416]:
                                    mem[s + idx + 514] = mem[s + 448]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[416]) <= mem[416]:
                                    _2830 = mem[64]
                                    mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                                    mem[64] = _1983 + idx + 514
                                    mem[_1983 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1983 + idx + 518] = 32
                                    _2958 = mem[_2830]
                                    mem[_1983 + idx + 550] = mem[_2830]
                                    s = 0
                                    while s < _2958:
                                        mem[s + _1983 + idx + 582] = mem[s + _2830 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2958) > _2958:
                                        mem[_2958 + _1983 + idx + 582] = 0
                                    revert with 0, 32, mem[_1983 + idx + 550 len ceil32(_2958) + 32]
                                mem[mem[416] + idx + 514] = 0
                                _2831 = mem[64]
                                mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                                mem[64] = _1983 + idx + 514
                                mem[_1983 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1983 + idx + 518] = 32
                                _2959 = mem[_2831]
                                mem[_1983 + idx + 550] = mem[_2831]
                                s = 0
                                while s < _2959:
                                    mem[s + _1983 + idx + 582] = mem[s + _2831 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2959) > _2959:
                                    mem[_2959 + _1983 + idx + 582] = 0
                                revert with 0, 32, mem[_1983 + idx + 550 len ceil32(_2959) + 32]
                            mem[480] = 0
                            mem[64] = 512
                            s = 0
                            while s < idx:
                                mem[s + 544] = mem[s + 384]
                                s = s + 32
                                continue 
                            mem[idx + 544] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _1980 = mem[480]
                                s = 0
                                while s < mem[480]:
                                    mem[s + idx + 546] = mem[s + 512]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[480]) <= mem[480]:
                                    _2824 = mem[64]
                                    mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                                    mem[64] = _1980 + idx + 546
                                    mem[_1980 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1980 + idx + 550] = 32
                                    _2952 = mem[_2824]
                                    mem[_1980 + idx + 582] = mem[_2824]
                                    s = 0
                                    while s < _2952:
                                        mem[s + _1980 + idx + 614] = mem[s + _2824 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2952) > _2952:
                                        mem[_2952 + _1980 + idx + 614] = 0
                                    revert with 0, 32, mem[_1980 + idx + 582 len ceil32(_2952) + 32]
                                mem[mem[480] + idx + 546] = 0
                                _2825 = mem[64]
                                mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                                mem[64] = _1980 + idx + 546
                                mem[_1980 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1980 + idx + 550] = 32
                                _2953 = mem[_2825]
                                mem[_1980 + idx + 582] = mem[_2825]
                                s = 0
                                while s < _2953:
                                    mem[s + _1980 + idx + 614] = mem[s + _2825 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2953) > _2953:
                                    mem[_2953 + _1980 + idx + 614] = 0
                                revert with 0, 32, mem[_1980 + idx + 582 len ceil32(_2953) + 32]
                            _1981 = mem[480]
                            s = 0
                            while s < mem[480]:
                                mem[s + idx + 546] = mem[s + 512]
                                s = s + 32
                                continue 
                            if ceil32(mem[480]) <= mem[480]:
                                _2826 = mem[64]
                                mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                                mem[64] = _1981 + idx + 546
                                mem[_1981 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1981 + idx + 550] = 32
                                _2954 = mem[_2826]
                                mem[_1981 + idx + 582] = mem[_2826]
                                s = 0
                                while s < _2954:
                                    mem[s + _1981 + idx + 614] = mem[s + _2826 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2954) > _2954:
                                    mem[_2954 + _1981 + idx + 614] = 0
                                revert with 0, 32, mem[_1981 + idx + 582 len ceil32(_2954) + 32]
                            mem[mem[480] + idx + 546] = 0
                            _2827 = mem[64]
                            mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                            mem[64] = _1981 + idx + 546
                            mem[_1981 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1981 + idx + 550] = 32
                            _2955 = mem[_2827]
                            mem[_1981 + idx + 582] = mem[_2827]
                            s = 0
                            while s < _2955:
                                mem[s + _1981 + idx + 614] = mem[s + _2827 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2955) > _2955:
                                mem[_2955 + _1981 + idx + 614] = 0
                            revert with 0, 32, mem[_1981 + idx + 582 len ceil32(_2955) + 32]
                        mem[416] = 0
                        mem[480] = 'Must have quorom' << 128
                        mem[448] = 32
                        mem[64] = 512
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 479]):
                                idx = idx - 1
                                continue 
                            mem[448] = idx
                            s = 0
                            while s < 0:
                                mem[s + 544] = mem[s + 448]
                                s = s + 32
                                continue 
                            mem[544] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < idx:
                                mem[s + 546] = mem[s + 480]
                                s = s + 32
                                continue 
                            mem[512] = idx + 2
                            mem[64] = idx + 546
                            mem[idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + 550] = 32
                            mem[idx + 582] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + 614] = mem[s + 544]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + 616] = 0
                            revert with 0, 32, idx + 2, mem[idx + 614 len floor32(idx + 33)]
                    else:
                        mem[0] = arg1
                        mem[32] = 14
                        if periodFor[address(arg1)].field_512 > periodFor[address(arg1)].field_768:
                            if not ext_code.size(arg1):
                                revert with 0, 'Cannot set a proxy implementation to a non-contract address'
                            uint256(stor3608) = arg1
                            mem[388] = 0, mem[388 len 28]
                            delegate arg1.mem[388 len 4] with:
                                 gas gas_remaining wei
                                args 
                            if not return_data.size:
                                if not delegate.return_code:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                            else:
                                if not delegate.return_code:
                                    revert with 0, 
                                                32,
                                                return_data.size,
                                                ext_call.return_data[0 len return_data.size],
                                                Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 27) + 256
                            emit Upgraded(arg1);
                            emit Commit(msg.sender, arg1);
                        mem[384] = 0x476f7665726e0000000000000000000000000000000000000000000000000000
                        mem[352] = 32
                        mem[64] = 416
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 383]):
                                idx = idx - 1
                                continue 
                            mem[352] = idx
                            mem[448] = 0x4e6f7420617070726f7665640000000000000000000000000000000000000000
                            mem[416] = 32
                            mem[64] = 480
                            s = 32
                            while s:
                                require s - 1 < 32
                                if not Mask(8, 248, mem[s + 447]):
                                    s = s - 1
                                    continue 
                                mem[416] = s
                                s = 0
                                while s < idx:
                                    mem[s + 512] = mem[s + 384]
                                    s = s + 32
                                    continue 
                                mem[idx + 512] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                if ceil32(idx) <= idx:
                                    _1974 = mem[416]
                                    s = 0
                                    while s < mem[416]:
                                        mem[s + idx + 514] = mem[s + 448]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[416]) <= mem[416]:
                                        _2812 = mem[64]
                                        mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                                        mem[64] = _1974 + idx + 514
                                        mem[_1974 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_1974 + idx + 518] = 32
                                        _2940 = mem[_2812]
                                        mem[_1974 + idx + 550] = mem[_2812]
                                        s = 0
                                        while s < _2940:
                                            mem[s + _1974 + idx + 582] = mem[s + _2812 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2940) > _2940:
                                            mem[_2940 + _1974 + idx + 582] = 0
                                        revert with 0, 32, mem[_1974 + idx + 550 len ceil32(_2940) + 32]
                                    mem[mem[416] + idx + 514] = 0
                                    _2813 = mem[64]
                                    mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                                    mem[64] = _1974 + idx + 514
                                    mem[_1974 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1974 + idx + 518] = 32
                                    _2941 = mem[_2813]
                                    mem[_1974 + idx + 550] = mem[_2813]
                                    s = 0
                                    while s < _2941:
                                        mem[s + _1974 + idx + 582] = mem[s + _2813 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2941) > _2941:
                                        mem[_2941 + _1974 + idx + 582] = 0
                                    revert with 0, 32, mem[_1974 + idx + 550 len ceil32(_2941) + 32]
                                _1975 = mem[416]
                                s = 0
                                while s < mem[416]:
                                    mem[s + idx + 514] = mem[s + 448]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[416]) <= mem[416]:
                                    _2814 = mem[64]
                                    mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                                    mem[64] = _1975 + idx + 514
                                    mem[_1975 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1975 + idx + 518] = 32
                                    _2942 = mem[_2814]
                                    mem[_1975 + idx + 550] = mem[_2814]
                                    s = 0
                                    while s < _2942:
                                        mem[s + _1975 + idx + 582] = mem[s + _2814 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2942) > _2942:
                                        mem[_2942 + _1975 + idx + 582] = 0
                                    revert with 0, 32, mem[_1975 + idx + 550 len ceil32(_2942) + 32]
                                mem[mem[416] + idx + 514] = 0
                                _2815 = mem[64]
                                mem[mem[64]] = mem[416] + idx + -mem[64] + 482
                                mem[64] = _1975 + idx + 514
                                mem[_1975 + idx + 514] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1975 + idx + 518] = 32
                                _2943 = mem[_2815]
                                mem[_1975 + idx + 550] = mem[_2815]
                                s = 0
                                while s < _2943:
                                    mem[s + _1975 + idx + 582] = mem[s + _2815 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2943) > _2943:
                                    mem[_2943 + _1975 + idx + 582] = 0
                                revert with 0, 32, mem[_1975 + idx + 550 len ceil32(_2943) + 32]
                            mem[480] = 0
                            mem[64] = 512
                            s = 0
                            while s < idx:
                                mem[s + 544] = mem[s + 384]
                                s = s + 32
                                continue 
                            mem[idx + 544] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _1972 = mem[480]
                                s = 0
                                while s < mem[480]:
                                    mem[s + idx + 546] = mem[s + 512]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[480]) <= mem[480]:
                                    _2808 = mem[64]
                                    mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                                    mem[64] = _1972 + idx + 546
                                    mem[_1972 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_1972 + idx + 550] = 32
                                    _2936 = mem[_2808]
                                    mem[_1972 + idx + 582] = mem[_2808]
                                    s = 0
                                    while s < _2936:
                                        mem[s + _1972 + idx + 614] = mem[s + _2808 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2936) > _2936:
                                        mem[_2936 + _1972 + idx + 614] = 0
                                    revert with 0, 32, mem[_1972 + idx + 582 len ceil32(_2936) + 32]
                                mem[mem[480] + idx + 546] = 0
                                _2809 = mem[64]
                                mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                                mem[64] = _1972 + idx + 546
                                mem[_1972 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1972 + idx + 550] = 32
                                _2937 = mem[_2809]
                                mem[_1972 + idx + 582] = mem[_2809]
                                s = 0
                                while s < _2937:
                                    mem[s + _1972 + idx + 614] = mem[s + _2809 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2937) > _2937:
                                    mem[_2937 + _1972 + idx + 614] = 0
                                revert with 0, 32, mem[_1972 + idx + 582 len ceil32(_2937) + 32]
                            _1973 = mem[480]
                            s = 0
                            while s < mem[480]:
                                mem[s + idx + 546] = mem[s + 512]
                                s = s + 32
                                continue 
                            if ceil32(mem[480]) <= mem[480]:
                                _2810 = mem[64]
                                mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                                mem[64] = _1973 + idx + 546
                                mem[_1973 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_1973 + idx + 550] = 32
                                _2938 = mem[_2810]
                                mem[_1973 + idx + 582] = mem[_2810]
                                s = 0
                                while s < _2938:
                                    mem[s + _1973 + idx + 614] = mem[s + _2810 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2938) > _2938:
                                    mem[_2938 + _1973 + idx + 614] = 0
                                revert with 0, 32, mem[_1973 + idx + 582 len ceil32(_2938) + 32]
                            mem[mem[480] + idx + 546] = 0
                            _2811 = mem[64]
                            mem[mem[64]] = mem[480] + idx + -mem[64] + 514
                            mem[64] = _1973 + idx + 546
                            mem[_1973 + idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1973 + idx + 550] = 32
                            _2939 = mem[_2811]
                            mem[_1973 + idx + 582] = mem[_2811]
                            s = 0
                            while s < _2939:
                                mem[s + _1973 + idx + 614] = mem[s + _2811 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2939) > _2939:
                                mem[_2939 + _1973 + idx + 614] = 0
                            revert with 0, 32, mem[_1973 + idx + 582 len ceil32(_2939) + 32]
                        mem[416] = 0
                        mem[480] = 0x4e6f7420617070726f7665640000000000000000000000000000000000000000
                        mem[448] = 32
                        mem[64] = 512
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 479]):
                                idx = idx - 1
                                continue 
                            mem[448] = idx
                            s = 0
                            while s < 0:
                                mem[s + 544] = mem[s + 448]
                                s = s + 32
                                continue 
                            mem[544] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < idx:
                                mem[s + 546] = mem[s + 480]
                                s = s + 32
                                continue 
                            mem[512] = idx + 2
                            mem[64] = idx + 546
                            mem[idx + 546] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + 550] = 32
                            mem[idx + 582] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + 614] = mem[s + 544]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + 616] = 0
                            revert with 0, 32, idx + 2, mem[idx + 614 len floor32(idx + 33)]
    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
}

function redeemCoupons(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if arg1 > epoch:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if epoch - arg1 < 2:
        revert with 0, 'Market: Too early to redeem'
    mem[160] = 35
    mem[192 len 35] = 0xfe4d61726b65743a20496e73756666696369656e7420636f75706f6e2062616c616e63
    if arg2 > fluidUntil[address(msg.sender)][2][arg1].field_0:
        revert with 0, 32, 35, 0xfe4d61726b65743a20496e73756666696369656e7420636f75706f6e2062616c616e63, mem[227 len 29] >> 24, 0
    fluidUntil[address(msg.sender)][2][arg1].field_0 -= arg2
    if arg2 > couponsExpiration[arg1].field_256:
        revert with 0, 32, 35, 0xfe4d61726b65743a20496e73756666696369656e7420636f75706f6e2062616c616e63, mem[227 len 29] >> 24, 0
    mem[0] = arg1
    mem[32] = 13
    couponsExpiration[arg1].field_256 -= arg2
    if arg2 > totalCoupons:
        revert with 0, 32, 35, 0xfe4d61726b65743a20496e73756666696369656e7420636f75706f6e2062616c616e63, mem[227 len 29] >> 24, 0
    totalCoupons -= arg2
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 447492 * 3600
    mem[416] = 3600
    if block.timestamp % 3600 > (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360:
        if arg2 < arg3:
            mem[480] = 0x4d61726b65740000000000000000000000000000000000000000000000000000
            mem[448] = 32
            mem[64] = 512
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 479]):
                    idx = idx - 1
                    continue 
                mem[448] = idx
                mem[544] = 'Insufficient output amount'
                mem[512] = 32
                mem[64] = 576
                s = 32
                while s:
                    require s - 1 < 32
                    if not Mask(8, 248, mem[s + 543]):
                        s = s - 1
                        continue 
                    mem[512] = s
                    s = 0
                    while s < idx:
                        mem[s + 608] = mem[s + 480]
                        s = s + 32
                        continue 
                    mem[idx + 608] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    if ceil32(idx) <= idx:
                        _11878 = mem[512]
                        s = 0
                        while s < mem[512]:
                            mem[s + idx + 610] = mem[s + 544]
                            s = s + 32
                            continue 
                        if ceil32(mem[512]) <= mem[512]:
                            _18948 = mem[64]
                            mem[mem[64]] = mem[512] + idx + -mem[64] + 578
                            mem[64] = _11878 + idx + 610
                            mem[_11878 + idx + 610] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_11878 + idx + 614] = 32
                            _19492 = mem[_18948]
                            mem[_11878 + idx + 646] = mem[_18948]
                            s = 0
                            while s < _19492:
                                mem[s + _11878 + idx + 678] = mem[s + _18948 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_19492) > _19492:
                                mem[_19492 + _11878 + idx + 678] = 0
                            revert with 0, 32, mem[_11878 + idx + 646 len ceil32(_19492) + 32]
                        mem[mem[512] + idx + 610] = 0
                        _18949 = mem[64]
                        mem[mem[64]] = mem[512] + idx + -mem[64] + 578
                        mem[64] = _11878 + idx + 610
                        mem[_11878 + idx + 610] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_11878 + idx + 614] = 32
                        _19493 = mem[_18949]
                        mem[_11878 + idx + 646] = mem[_18949]
                        s = 0
                        while s < _19493:
                            mem[s + _11878 + idx + 678] = mem[s + _18949 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_19493) > _19493:
                            mem[_19493 + _11878 + idx + 678] = 0
                        revert with 0, 32, mem[_11878 + idx + 646 len ceil32(_19493) + 32]
                    _11879 = mem[512]
                    s = 0
                    while s < mem[512]:
                        mem[s + idx + 610] = mem[s + 544]
                        s = s + 32
                        continue 
                    if ceil32(mem[512]) <= mem[512]:
                        _18950 = mem[64]
                        mem[mem[64]] = mem[512] + idx + -mem[64] + 578
                        mem[64] = _11879 + idx + 610
                        mem[_11879 + idx + 610] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_11879 + idx + 614] = 32
                        _19494 = mem[_18950]
                        mem[_11879 + idx + 646] = mem[_18950]
                        s = 0
                        while s < _19494:
                            mem[s + _11879 + idx + 678] = mem[s + _18950 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_19494) > _19494:
                            mem[_19494 + _11879 + idx + 678] = 0
                        revert with 0, 32, mem[_11879 + idx + 646 len ceil32(_19494) + 32]
                    mem[mem[512] + idx + 610] = 0
                    _18951 = mem[64]
                    mem[mem[64]] = mem[512] + idx + -mem[64] + 578
                    mem[64] = _11879 + idx + 610
                    mem[_11879 + idx + 610] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_11879 + idx + 614] = 32
                    _19495 = mem[_18951]
                    mem[_11879 + idx + 646] = mem[_18951]
                    s = 0
                    while s < _19495:
                        mem[s + _11879 + idx + 678] = mem[s + _18951 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_19495) > _19495:
                        mem[_19495 + _11879 + idx + 678] = 0
                    revert with 0, 32, mem[_11879 + idx + 646 len ceil32(_19495) + 32]
                mem[576] = 0
                mem[64] = 608
                s = 0
                while s < idx:
                    mem[s + 640] = mem[s + 480]
                    s = s + 32
                    continue 
                mem[idx + 640] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                if ceil32(idx) <= idx:
                    _11876 = mem[576]
                    s = 0
                    while s < mem[576]:
                        mem[s + idx + 642] = mem[s + 608]
                        s = s + 32
                        continue 
                    if ceil32(mem[576]) <= mem[576]:
                        _18944 = mem[64]
                        mem[mem[64]] = mem[576] + idx + -mem[64] + 610
                        mem[64] = _11876 + idx + 642
                        mem[_11876 + idx + 642] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_11876 + idx + 646] = 32
                        _19488 = mem[_18944]
                        mem[_11876 + idx + 678] = mem[_18944]
                        s = 0
                        while s < _19488:
                            mem[s + _11876 + idx + 710] = mem[s + _18944 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_19488) > _19488:
                            mem[_19488 + _11876 + idx + 710] = 0
                        revert with 0, 32, mem[_11876 + idx + 678 len ceil32(_19488) + 32]
                    mem[mem[576] + idx + 642] = 0
                    _18945 = mem[64]
                    mem[mem[64]] = mem[576] + idx + -mem[64] + 610
                    mem[64] = _11876 + idx + 642
                    mem[_11876 + idx + 642] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_11876 + idx + 646] = 32
                    _19489 = mem[_18945]
                    mem[_11876 + idx + 678] = mem[_18945]
                    s = 0
                    while s < _19489:
                        mem[s + _11876 + idx + 710] = mem[s + _18945 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_19489) > _19489:
                        mem[_19489 + _11876 + idx + 710] = 0
                    revert with 0, 32, mem[_11876 + idx + 678 len ceil32(_19489) + 32]
                _11877 = mem[576]
                s = 0
                while s < mem[576]:
                    mem[s + idx + 642] = mem[s + 608]
                    s = s + 32
                    continue 
                if ceil32(mem[576]) <= mem[576]:
                    _18946 = mem[64]
                    mem[mem[64]] = mem[576] + idx + -mem[64] + 610
                    mem[64] = _11877 + idx + 642
                    mem[_11877 + idx + 642] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_11877 + idx + 646] = 32
                    _19490 = mem[_18946]
                    mem[_11877 + idx + 678] = mem[_18946]
                    s = 0
                    while s < _19490:
                        mem[s + _11877 + idx + 710] = mem[s + _18946 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_19490) > _19490:
                        mem[_19490 + _11877 + idx + 710] = 0
                    revert with 0, 32, mem[_11877 + idx + 678 len ceil32(_19490) + 32]
                mem[mem[576] + idx + 642] = 0
                _18947 = mem[64]
                mem[mem[64]] = mem[576] + idx + -mem[64] + 610
                mem[64] = _11877 + idx + 642
                mem[_11877 + idx + 642] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_11877 + idx + 646] = 32
                _19491 = mem[_18947]
                mem[_11877 + idx + 678] = mem[_18947]
                s = 0
                while s < _19491:
                    mem[s + _11877 + idx + 710] = mem[s + _18947 + 32]
                    s = s + 32
                    continue 
                if ceil32(_19491) > _19491:
                    mem[_19491 + _11877 + idx + 710] = 0
                revert with 0, 32, mem[_11877 + idx + 678 len ceil32(_19491) + 32]
            mem[512] = 0
            mem[576] = 'Insufficient output amount'
            mem[544] = 32
            mem[64] = 608
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + 575]):
                    idx = idx - 1
                    continue 
                mem[544] = idx
                s = 0
                while s < 0:
                    mem[s + 640] = mem[s + 544]
                    s = s + 32
                    continue 
                mem[640] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                s = 0
                while s < idx:
                    mem[s + 642] = mem[s + 576]
                    s = s + 32
                    continue 
                mem[608] = idx + 2
                mem[64] = idx + 642
                mem[idx + 642] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[idx + 646] = 32
                mem[idx + 678] = idx + 2
                s = 0
                while s < idx + 2:
                    mem[s + idx + 710] = mem[s + 640]
                    s = s + 32
                    continue 
                if floor32(idx + 33) > idx + 2:
                    mem[(2 * idx) + 712] = 0
                revert with 0, 32, idx + 2, mem[idx + 710 len floor32(idx + 33)]
        else:
            require ext_code.size(dollarAddress)
            call dollarAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 448] = 42
            mem[ceil32(return_data.size) + 480 len 42] = 0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63
            if arg2 > totalRedeemable:
                revert with 0, 
                            32,
                            42,
                            0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63, mem[ceil32(return_data.size) + 522 len 22] >> 80,
                            0
            totalRedeemable -= arg2
            if totalStaged + totalBonded < totalBonded:
                revert with 0, 'SafeMath: addition overflow'
            if totalRedeemable < 0:
                revert with 0, 'SafeMath: addition overflow'
            mem[ceil32(return_data.size) + 548] = this.address
            require ext_code.size(dollarAddress)
            staticcall dollarAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 544] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= totalRedeemable + totalStaged + totalBonded:
                emit CouponRedemption(arg2, msg.sender, arg1);
            mem[(2 * ceil32(return_data.size)) + 576] = 0x436f6d7074726f6c6c6572000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 544] = 32
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + (2 * ceil32(return_data.size)) + 575]):
                    idx = idx - 1
                    continue 
                mem[(2 * ceil32(return_data.size)) + 640] = 'Inconsistent balances' << 88
                mem[(2 * ceil32(return_data.size)) + 608] = 32
                s = 32
                while s:
                    require s - 1 < 32
                    if not Mask(8, 248, mem[s + (2 * ceil32(return_data.size)) + 639]):
                        s = s - 1
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 608] = s
                    t = 0
                    while t < idx:
                        mem[t + (2 * ceil32(return_data.size)) + 704] = mem[t + (2 * ceil32(return_data.size)) + 576]
                        t = t + 32
                        continue 
                    mem[idx + (2 * ceil32(return_data.size)) + 704] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    t = 0
                    while t < s:
                        mem[t + idx + (2 * ceil32(return_data.size)) + 706] = mem[t + (2 * ceil32(return_data.size)) + 640]
                        t = t + 32
                        continue 
                    mem[s + idx + (2 * ceil32(return_data.size)) + 706] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[s + idx + (2 * ceil32(return_data.size)) + 710] = 32
                    mem[s + idx + (2 * ceil32(return_data.size)) + 742] = s + idx + 2
                    t = 0
                    while t < s + idx + 2:
                        mem[t + s + idx + (2 * ceil32(return_data.size)) + 774] = mem[t + (2 * ceil32(return_data.size)) + 704]
                        t = t + 32
                        continue 
                    if floor32(s + idx + 33) > s + idx + 2:
                        mem[(2 * s) + (2 * idx) + (2 * ceil32(return_data.size)) + 776] = 0
                    revert with 0, 32, s + idx + 2, mem[s + idx + (2 * ceil32(return_data.size)) + 774 len floor32(s + idx + 33)]
                mem[(2 * ceil32(return_data.size)) + 672] = 0
                s = 0
                while s < idx:
                    mem[s + (2 * ceil32(return_data.size)) + 736] = mem[s + (2 * ceil32(return_data.size)) + 576]
                    s = s + 32
                    continue 
                mem[idx + (2 * ceil32(return_data.size)) + 736] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                s = 0
                while s < 0:
                    mem[s + idx + (2 * ceil32(return_data.size)) + 738] = mem[s + (2 * ceil32(return_data.size)) + 704]
                    s = s + 32
                    continue 
                mem[idx + (2 * ceil32(return_data.size)) + 738] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[idx + (2 * ceil32(return_data.size)) + 742] = 32
                mem[idx + (2 * ceil32(return_data.size)) + 774] = idx + 2
                s = 0
                while s < idx + 2:
                    mem[s + idx + (2 * ceil32(return_data.size)) + 806] = mem[s + (2 * ceil32(return_data.size)) + 736]
                    s = s + 32
                    continue 
                if floor32(idx + 33) > idx + 2:
                    mem[(2 * idx) + (2 * ceil32(return_data.size)) + 808] = 0
                revert with 0, 32, idx + 2, mem[idx + (2 * ceil32(return_data.size)) + 806 len floor32(idx + 33)]
            mem[(2 * ceil32(return_data.size)) + 672] = 'Inconsistent balances' << 88
            mem[(2 * ceil32(return_data.size)) + 640] = 32
            idx = 32
            while idx:
                require idx - 1 < 32
                if not Mask(8, 248, mem[idx + (2 * ceil32(return_data.size)) + 671]):
                    idx = idx - 1
                    continue 
                mem[(2 * ceil32(return_data.size)) + 640] = idx
                s = 0
                while s < 0:
                    mem[s + (2 * ceil32(return_data.size)) + 736] = mem[s + (2 * ceil32(return_data.size)) + 640]
                    s = s + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 736] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                s = 0
                while s < idx:
                    mem[s + (2 * ceil32(return_data.size)) + 738] = mem[s + (2 * ceil32(return_data.size)) + 672]
                    s = s + 32
                    continue 
                mem[idx + (2 * ceil32(return_data.size)) + 738] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[idx + (2 * ceil32(return_data.size)) + 742] = 32
                mem[idx + (2 * ceil32(return_data.size)) + 774] = idx + 2
                s = 0
                while s < idx + 2:
                    mem[s + idx + (2 * ceil32(return_data.size)) + 806] = mem[s + (2 * ceil32(return_data.size)) + 736]
                    s = s + 32
                    continue 
                if floor32(idx + 33) > idx + 2:
                    mem[(2 * idx) + (2 * ceil32(return_data.size)) + 808] = 0
                revert with 0, 32, idx + 2, mem[idx + (2 * ceil32(return_data.size)) + 806 len floor32(idx + 33)]
    else:
        mem[448] = 0
        mem[480] = -epoch + arg1 + 360
        mem[512] = 360
        mem[544] = 0
        mem[576] = 5 * 10^17
        mem[608] = 0
        mem[672] = 26
        mem[704] = 'SafeMath: division by zero'
        mem[640] = 500000000000000000 * 10^18 / 360
        mem[736] = 0
        if (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 500000000000000000 * 10^18 / 360 != -epoch + arg1 + 360:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[800] = 26
        mem[832] = 'SafeMath: division by zero'
        mem[768] = (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18
        mem[864] = 0
        mem[896] = ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600)
        mem[928] = (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360
        mem[960] = 0
        if not (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18:
            mem[1024] = 26
            mem[1056] = 'SafeMath: division by zero'
            if not (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360:
                revert with 0, 'SafeMath: division by zero', 0
            mem[992] = 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360
            mem[1088] = 0
            if not 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360:
                mem[1152] = 26
                mem[1184] = 'SafeMath: division by zero'
                mem[1120] = 0
                mem[1216] = arg2
                mem[1248] = 0
                if not arg2:
                    mem[1312] = 26
                    mem[1344] = 'SafeMath: division by zero'
                    mem[1280] = 0
                    if arg2 < arg3:
                        mem[1408] = 0x4d61726b65740000000000000000000000000000000000000000000000000000
                        mem[1376] = 32
                        mem[64] = 1440
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 1407]):
                                idx = idx - 1
                                continue 
                            mem[1376] = idx
                            mem[1472] = 'Insufficient output amount'
                            mem[1440] = 32
                            mem[64] = 1504
                            s = 32
                            while s:
                                require s - 1 < 32
                                if not Mask(8, 248, mem[s + 1471]):
                                    s = s - 1
                                    continue 
                                mem[1440] = s
                                s = 0
                                while s < idx:
                                    mem[s + 1536] = mem[s + 1408]
                                    s = s + 32
                                    continue 
                                mem[idx + 1536] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                if ceil32(idx) <= idx:
                                    _11670 = mem[1440]
                                    s = 0
                                    while s < mem[1440]:
                                        mem[s + idx + 1538] = mem[s + 1472]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[1440]) <= mem[1440]:
                                        _18532 = mem[64]
                                        mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                        mem[64] = _11670 + idx + 1538
                                        mem[_11670 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_11670 + idx + 1542] = 32
                                        _19076 = mem[_18532]
                                        mem[_11670 + idx + 1574] = mem[_18532]
                                        s = 0
                                        while s < _19076:
                                            mem[s + _11670 + idx + 1606] = mem[s + _18532 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_19076) > _19076:
                                            mem[_19076 + _11670 + idx + 1606] = 0
                                        revert with 0, 32, mem[_11670 + idx + 1574 len ceil32(_19076) + 32]
                                    mem[mem[1440] + idx + 1538] = 0
                                    _18533 = mem[64]
                                    mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                    mem[64] = _11670 + idx + 1538
                                    mem[_11670 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_11670 + idx + 1542] = 32
                                    _19077 = mem[_18533]
                                    mem[_11670 + idx + 1574] = mem[_18533]
                                    s = 0
                                    while s < _19077:
                                        mem[s + _11670 + idx + 1606] = mem[s + _18533 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_19077) > _19077:
                                        mem[_19077 + _11670 + idx + 1606] = 0
                                    revert with 0, 32, mem[_11670 + idx + 1574 len ceil32(_19077) + 32]
                                _11671 = mem[1440]
                                s = 0
                                while s < mem[1440]:
                                    mem[s + idx + 1538] = mem[s + 1472]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[1440]) <= mem[1440]:
                                    _18534 = mem[64]
                                    mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                    mem[64] = _11671 + idx + 1538
                                    mem[_11671 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_11671 + idx + 1542] = 32
                                    _19078 = mem[_18534]
                                    mem[_11671 + idx + 1574] = mem[_18534]
                                    s = 0
                                    while s < _19078:
                                        mem[s + _11671 + idx + 1606] = mem[s + _18534 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_19078) > _19078:
                                        mem[_19078 + _11671 + idx + 1606] = 0
                                    revert with 0, 32, mem[_11671 + idx + 1574 len ceil32(_19078) + 32]
                                mem[mem[1440] + idx + 1538] = 0
                                _18535 = mem[64]
                                mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                mem[64] = _11671 + idx + 1538
                                mem[_11671 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_11671 + idx + 1542] = 32
                                _19079 = mem[_18535]
                                mem[_11671 + idx + 1574] = mem[_18535]
                                s = 0
                                while s < _19079:
                                    mem[s + _11671 + idx + 1606] = mem[s + _18535 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_19079) > _19079:
                                    mem[_19079 + _11671 + idx + 1606] = 0
                                revert with 0, 32, mem[_11671 + idx + 1574 len ceil32(_19079) + 32]
                            mem[1504] = 0
                            mem[64] = 1536
                            s = 0
                            while s < idx:
                                mem[s + 1568] = mem[s + 1408]
                                s = s + 32
                                continue 
                            mem[idx + 1568] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _11668 = mem[1504]
                                s = 0
                                while s < mem[1504]:
                                    mem[s + idx + 1570] = mem[s + 1536]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[1504]) <= mem[1504]:
                                    _18528 = mem[64]
                                    mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                                    mem[64] = _11668 + idx + 1570
                                    mem[_11668 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_11668 + idx + 1574] = 32
                                    _19072 = mem[_18528]
                                    mem[_11668 + idx + 1606] = mem[_18528]
                                    s = 0
                                    while s < _19072:
                                        mem[s + _11668 + idx + 1638] = mem[s + _18528 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_19072) > _19072:
                                        mem[_19072 + _11668 + idx + 1638] = 0
                                    revert with 0, 32, mem[_11668 + idx + 1606 len ceil32(_19072) + 32]
                                mem[mem[1504] + idx + 1570] = 0
                                _18529 = mem[64]
                                mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                                mem[64] = _11668 + idx + 1570
                                mem[_11668 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_11668 + idx + 1574] = 32
                                _19073 = mem[_18529]
                                mem[_11668 + idx + 1606] = mem[_18529]
                                s = 0
                                while s < _19073:
                                    mem[s + _11668 + idx + 1638] = mem[s + _18529 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_19073) > _19073:
                                    mem[_19073 + _11668 + idx + 1638] = 0
                                revert with 0, 32, mem[_11668 + idx + 1606 len ceil32(_19073) + 32]
                            _11669 = mem[1504]
                            s = 0
                            while s < mem[1504]:
                                mem[s + idx + 1570] = mem[s + 1536]
                                s = s + 32
                                continue 
                            if ceil32(mem[1504]) <= mem[1504]:
                                _18530 = mem[64]
                                mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                                mem[64] = _11669 + idx + 1570
                                mem[_11669 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_11669 + idx + 1574] = 32
                                _19074 = mem[_18530]
                                mem[_11669 + idx + 1606] = mem[_18530]
                                s = 0
                                while s < _19074:
                                    mem[s + _11669 + idx + 1638] = mem[s + _18530 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_19074) > _19074:
                                    mem[_19074 + _11669 + idx + 1638] = 0
                                revert with 0, 32, mem[_11669 + idx + 1606 len ceil32(_19074) + 32]
                            mem[mem[1504] + idx + 1570] = 0
                            _18531 = mem[64]
                            mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                            mem[64] = _11669 + idx + 1570
                            mem[_11669 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_11669 + idx + 1574] = 32
                            _19075 = mem[_18531]
                            mem[_11669 + idx + 1606] = mem[_18531]
                            s = 0
                            while s < _19075:
                                mem[s + _11669 + idx + 1638] = mem[s + _18531 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_19075) > _19075:
                                mem[_19075 + _11669 + idx + 1638] = 0
                            revert with 0, 32, mem[_11669 + idx + 1606 len ceil32(_19075) + 32]
                        mem[1440] = 0
                        mem[1504] = 'Insufficient output amount'
                        mem[1472] = 32
                        mem[64] = 1536
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 1503]):
                                idx = idx - 1
                                continue 
                            mem[1472] = idx
                            s = 0
                            while s < 0:
                                mem[s + 1568] = mem[s + 1472]
                                s = s + 32
                                continue 
                            mem[1568] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < idx:
                                mem[s + 1570] = mem[s + 1504]
                                s = s + 32
                                continue 
                            mem[1536] = idx + 2
                            mem[64] = idx + 1570
                            mem[idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + 1574] = 32
                            mem[idx + 1606] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + 1638] = mem[s + 1568]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + 1640] = 0
                            revert with 0, 32, idx + 2, mem[idx + 1638 len floor32(idx + 33)]
                    else:
                        require ext_code.size(dollarAddress)
                        call dollarAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 1376] = 42
                        mem[ceil32(return_data.size) + 1408 len 42] = 0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63
                        if arg2 > totalRedeemable:
                            revert with 0, 
                                        32,
                                        42,
                                        0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63, mem[ceil32(return_data.size) + 1450 len 22] >> 80,
                                        0
                        totalRedeemable -= arg2
                        if totalStaged + totalBonded < totalBonded:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalRedeemable < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + 1476] = this.address
                        require ext_code.size(dollarAddress)
                        staticcall dollarAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 1472] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] >= totalRedeemable + totalStaged + totalBonded:
                            emit CouponRedemption(arg2, msg.sender, arg1);
                        mem[(2 * ceil32(return_data.size)) + 1504] = 0x436f6d7074726f6c6c6572000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 1472] = 32
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + (2 * ceil32(return_data.size)) + 1503]):
                                idx = idx - 1
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 1568] = 'Inconsistent balances' << 88
                            mem[(2 * ceil32(return_data.size)) + 1536] = 32
                            s = 32
                            while s:
                                require s - 1 < 32
                                if not Mask(8, 248, mem[s + (2 * ceil32(return_data.size)) + 1567]):
                                    s = s - 1
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 1536] = s
                                t = 0
                                while t < idx:
                                    mem[t + (2 * ceil32(return_data.size)) + 1632] = mem[t + (2 * ceil32(return_data.size)) + 1504]
                                    t = t + 32
                                    continue 
                                mem[idx + (2 * ceil32(return_data.size)) + 1632] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                t = 0
                                while t < s:
                                    mem[t + idx + (2 * ceil32(return_data.size)) + 1634] = mem[t + (2 * ceil32(return_data.size)) + 1568]
                                    t = t + 32
                                    continue 
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1634] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1638] = 32
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1670] = s + idx + 2
                                t = 0
                                while t < s + idx + 2:
                                    mem[t + s + idx + (2 * ceil32(return_data.size)) + 1702] = mem[t + (2 * ceil32(return_data.size)) + 1632]
                                    t = t + 32
                                    continue 
                                if floor32(s + idx + 33) > s + idx + 2:
                                    mem[(2 * s) + (2 * idx) + (2 * ceil32(return_data.size)) + 1704] = 0
                                revert with 0, 32, s + idx + 2, mem[s + idx + (2 * ceil32(return_data.size)) + 1702 len floor32(s + idx + 33)]
                            mem[(2 * ceil32(return_data.size)) + 1600] = 0
                            s = 0
                            while s < idx:
                                mem[s + (2 * ceil32(return_data.size)) + 1664] = mem[s + (2 * ceil32(return_data.size)) + 1504]
                                s = s + 32
                                continue 
                            mem[idx + (2 * ceil32(return_data.size)) + 1664] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < 0:
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1666] = mem[s + (2 * ceil32(return_data.size)) + 1632]
                                s = s + 32
                                continue 
                            mem[idx + (2 * ceil32(return_data.size)) + 1666] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + (2 * ceil32(return_data.size)) + 1670] = 32
                            mem[idx + (2 * ceil32(return_data.size)) + 1702] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1734] = mem[s + (2 * ceil32(return_data.size)) + 1664]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + (2 * ceil32(return_data.size)) + 1736] = 0
                            revert with 0, 32, idx + 2, mem[idx + (2 * ceil32(return_data.size)) + 1734 len floor32(idx + 33)]
                        mem[(2 * ceil32(return_data.size)) + 1600] = 'Inconsistent balances' << 88
                        mem[(2 * ceil32(return_data.size)) + 1568] = 32
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + (2 * ceil32(return_data.size)) + 1599]):
                                idx = idx - 1
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 1568] = idx
                            s = 0
                            while s < 0:
                                mem[s + (2 * ceil32(return_data.size)) + 1664] = mem[s + (2 * ceil32(return_data.size)) + 1568]
                                s = s + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 1664] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < idx:
                                mem[s + (2 * ceil32(return_data.size)) + 1666] = mem[s + (2 * ceil32(return_data.size)) + 1600]
                                s = s + 32
                                continue 
                            mem[idx + (2 * ceil32(return_data.size)) + 1666] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + (2 * ceil32(return_data.size)) + 1670] = 32
                            mem[idx + (2 * ceil32(return_data.size)) + 1702] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1734] = mem[s + (2 * ceil32(return_data.size)) + 1664]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + (2 * ceil32(return_data.size)) + 1736] = 0
                            revert with 0, 32, idx + 2, mem[idx + (2 * ceil32(return_data.size)) + 1734 len floor32(idx + 33)]
                else:
                    if 0 / arg2:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[1312] = 26
                    mem[1344] = 'SafeMath: division by zero'
                    mem[1280] = 0 / 10^18
                    if arg2 - (0 / 10^18) < arg3:
                        mem[1408] = 0x4d61726b65740000000000000000000000000000000000000000000000000000
                        mem[1376] = 32
                        mem[64] = 1440
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 1407]):
                                idx = idx - 1
                                continue 
                            mem[1376] = idx
                            mem[1472] = 'Insufficient output amount'
                            mem[1440] = 32
                            mem[64] = 1504
                            s = 32
                            while s:
                                require s - 1 < 32
                                if not Mask(8, 248, mem[s + 1471]):
                                    s = s - 1
                                    continue 
                                mem[1440] = s
                                s = 0
                                while s < idx:
                                    mem[s + 1536] = mem[s + 1408]
                                    s = s + 32
                                    continue 
                                mem[idx + 1536] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                if ceil32(idx) <= idx:
                                    _11662 = mem[1440]
                                    s = 0
                                    while s < mem[1440]:
                                        mem[s + idx + 1538] = mem[s + 1472]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[1440]) <= mem[1440]:
                                        _18516 = mem[64]
                                        mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                        mem[64] = _11662 + idx + 1538
                                        mem[_11662 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_11662 + idx + 1542] = 32
                                        _19060 = mem[_18516]
                                        mem[_11662 + idx + 1574] = mem[_18516]
                                        s = 0
                                        while s < _19060:
                                            mem[s + _11662 + idx + 1606] = mem[s + _18516 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_19060) > _19060:
                                            mem[_19060 + _11662 + idx + 1606] = 0
                                        revert with 0, 32, mem[_11662 + idx + 1574 len ceil32(_19060) + 32]
                                    mem[mem[1440] + idx + 1538] = 0
                                    _18517 = mem[64]
                                    mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                    mem[64] = _11662 + idx + 1538
                                    mem[_11662 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_11662 + idx + 1542] = 32
                                    _19061 = mem[_18517]
                                    mem[_11662 + idx + 1574] = mem[_18517]
                                    s = 0
                                    while s < _19061:
                                        mem[s + _11662 + idx + 1606] = mem[s + _18517 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_19061) > _19061:
                                        mem[_19061 + _11662 + idx + 1606] = 0
                                    revert with 0, 32, mem[_11662 + idx + 1574 len ceil32(_19061) + 32]
                                _11663 = mem[1440]
                                s = 0
                                while s < mem[1440]:
                                    mem[s + idx + 1538] = mem[s + 1472]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[1440]) <= mem[1440]:
                                    _18518 = mem[64]
                                    mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                    mem[64] = _11663 + idx + 1538
                                    mem[_11663 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_11663 + idx + 1542] = 32
                                    _19062 = mem[_18518]
                                    mem[_11663 + idx + 1574] = mem[_18518]
                                    s = 0
                                    while s < _19062:
                                        mem[s + _11663 + idx + 1606] = mem[s + _18518 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_19062) > _19062:
                                        mem[_19062 + _11663 + idx + 1606] = 0
                                    revert with 0, 32, mem[_11663 + idx + 1574 len ceil32(_19062) + 32]
                                mem[mem[1440] + idx + 1538] = 0
                                _18519 = mem[64]
                                mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                mem[64] = _11663 + idx + 1538
                                mem[_11663 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_11663 + idx + 1542] = 32
                                _19063 = mem[_18519]
                                mem[_11663 + idx + 1574] = mem[_18519]
                                s = 0
                                while s < _19063:
                                    mem[s + _11663 + idx + 1606] = mem[s + _18519 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_19063) > _19063:
                                    mem[_19063 + _11663 + idx + 1606] = 0
                                revert with 0, 32, mem[_11663 + idx + 1574 len ceil32(_19063) + 32]
                            mem[1504] = 0
                            mem[64] = 1536
                            s = 0
                            while s < idx:
                                mem[s + 1568] = mem[s + 1408]
                                s = s + 32
                                continue 
                            mem[idx + 1568] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _11660 = mem[1504]
                                s = 0
                                while s < mem[1504]:
                                    mem[s + idx + 1570] = mem[s + 1536]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[1504]) <= mem[1504]:
                                    _18512 = mem[64]
                                    mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                                    mem[64] = _11660 + idx + 1570
                                    mem[_11660 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_11660 + idx + 1574] = 32
                                    _19056 = mem[_18512]
                                    mem[_11660 + idx + 1606] = mem[_18512]
                                    s = 0
                                    while s < _19056:
                                        mem[s + _11660 + idx + 1638] = mem[s + _18512 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_19056) > _19056:
                                        mem[_19056 + _11660 + idx + 1638] = 0
                                    revert with 0, 32, mem[_11660 + idx + 1606 len ceil32(_19056) + 32]
                                mem[mem[1504] + idx + 1570] = 0
                                _18513 = mem[64]
                                mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                                mem[64] = _11660 + idx + 1570
                                mem[_11660 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_11660 + idx + 1574] = 32
                                _19057 = mem[_18513]
                                mem[_11660 + idx + 1606] = mem[_18513]
                                s = 0
                                while s < _19057:
                                    mem[s + _11660 + idx + 1638] = mem[s + _18513 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_19057) > _19057:
                                    mem[_19057 + _11660 + idx + 1638] = 0
                                revert with 0, 32, mem[_11660 + idx + 1606 len ceil32(_19057) + 32]
                            _11661 = mem[1504]
                            s = 0
                            while s < mem[1504]:
                                mem[s + idx + 1570] = mem[s + 1536]
                                s = s + 32
                                continue 
                            if ceil32(mem[1504]) <= mem[1504]:
                                _18514 = mem[64]
                                mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                                mem[64] = _11661 + idx + 1570
                                mem[_11661 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_11661 + idx + 1574] = 32
                                _19058 = mem[_18514]
                                mem[_11661 + idx + 1606] = mem[_18514]
                                s = 0
                                while s < _19058:
                                    mem[s + _11661 + idx + 1638] = mem[s + _18514 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_19058) > _19058:
                                    mem[_19058 + _11661 + idx + 1638] = 0
                                revert with 0, 32, mem[_11661 + idx + 1606 len ceil32(_19058) + 32]
                            mem[mem[1504] + idx + 1570] = 0
                            _18515 = mem[64]
                            mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                            mem[64] = _11661 + idx + 1570
                            mem[_11661 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_11661 + idx + 1574] = 32
                            _19059 = mem[_18515]
                            mem[_11661 + idx + 1606] = mem[_18515]
                            s = 0
                            while s < _19059:
                                mem[s + _11661 + idx + 1638] = mem[s + _18515 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_19059) > _19059:
                                mem[_19059 + _11661 + idx + 1638] = 0
                            revert with 0, 32, mem[_11661 + idx + 1606 len ceil32(_19059) + 32]
                        mem[1440] = 0
                        mem[1504] = 'Insufficient output amount'
                        mem[1472] = 32
                        mem[64] = 1536
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 1503]):
                                idx = idx - 1
                                continue 
                            mem[1472] = idx
                            s = 0
                            while s < 0:
                                mem[s + 1568] = mem[s + 1472]
                                s = s + 32
                                continue 
                            mem[1568] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < idx:
                                mem[s + 1570] = mem[s + 1504]
                                s = s + 32
                                continue 
                            mem[1536] = idx + 2
                            mem[64] = idx + 1570
                            mem[idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + 1574] = 32
                            mem[idx + 1606] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + 1638] = mem[s + 1568]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + 1640] = 0
                            revert with 0, 32, idx + 2, mem[idx + 1638 len floor32(idx + 33)]
                    else:
                        require ext_code.size(dollarAddress)
                        call dollarAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 1376] = 42
                        mem[ceil32(return_data.size) + 1408 len 42] = 0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63
                        if arg2 - (0 / 10^18) > totalRedeemable:
                            revert with 0, 
                                        32,
                                        42,
                                        0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63, mem[ceil32(return_data.size) + 1450 len 22] >> 80,
                                        0
                        totalRedeemable = totalRedeemable - arg2 + (0 / 10^18)
                        if totalStaged + totalBonded < totalBonded:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalRedeemable < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + 1476] = this.address
                        require ext_code.size(dollarAddress)
                        staticcall dollarAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 1472] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] >= totalRedeemable + totalStaged + totalBonded:
                            emit CouponRedemption(arg2, msg.sender, arg1);
                        mem[(2 * ceil32(return_data.size)) + 1504] = 0x436f6d7074726f6c6c6572000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 1472] = 32
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + (2 * ceil32(return_data.size)) + 1503]):
                                idx = idx - 1
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 1568] = 'Inconsistent balances' << 88
                            mem[(2 * ceil32(return_data.size)) + 1536] = 32
                            s = 32
                            while s:
                                require s - 1 < 32
                                if not Mask(8, 248, mem[s + (2 * ceil32(return_data.size)) + 1567]):
                                    s = s - 1
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 1536] = s
                                t = 0
                                while t < idx:
                                    mem[t + (2 * ceil32(return_data.size)) + 1632] = mem[t + (2 * ceil32(return_data.size)) + 1504]
                                    t = t + 32
                                    continue 
                                mem[idx + (2 * ceil32(return_data.size)) + 1632] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                t = 0
                                while t < s:
                                    mem[t + idx + (2 * ceil32(return_data.size)) + 1634] = mem[t + (2 * ceil32(return_data.size)) + 1568]
                                    t = t + 32
                                    continue 
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1634] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1638] = 32
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1670] = s + idx + 2
                                t = 0
                                while t < s + idx + 2:
                                    mem[t + s + idx + (2 * ceil32(return_data.size)) + 1702] = mem[t + (2 * ceil32(return_data.size)) + 1632]
                                    t = t + 32
                                    continue 
                                if floor32(s + idx + 33) > s + idx + 2:
                                    mem[(2 * s) + (2 * idx) + (2 * ceil32(return_data.size)) + 1704] = 0
                                revert with 0, 32, s + idx + 2, mem[s + idx + (2 * ceil32(return_data.size)) + 1702 len floor32(s + idx + 33)]
                            mem[(2 * ceil32(return_data.size)) + 1600] = 0
                            s = 0
                            while s < idx:
                                mem[s + (2 * ceil32(return_data.size)) + 1664] = mem[s + (2 * ceil32(return_data.size)) + 1504]
                                s = s + 32
                                continue 
                            mem[idx + (2 * ceil32(return_data.size)) + 1664] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < 0:
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1666] = mem[s + (2 * ceil32(return_data.size)) + 1632]
                                s = s + 32
                                continue 
                            mem[idx + (2 * ceil32(return_data.size)) + 1666] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + (2 * ceil32(return_data.size)) + 1670] = 32
                            mem[idx + (2 * ceil32(return_data.size)) + 1702] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1734] = mem[s + (2 * ceil32(return_data.size)) + 1664]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + (2 * ceil32(return_data.size)) + 1736] = 0
                            revert with 0, 32, idx + 2, mem[idx + (2 * ceil32(return_data.size)) + 1734 len floor32(idx + 33)]
                        mem[(2 * ceil32(return_data.size)) + 1600] = 'Inconsistent balances' << 88
                        mem[(2 * ceil32(return_data.size)) + 1568] = 32
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + (2 * ceil32(return_data.size)) + 1599]):
                                idx = idx - 1
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 1568] = idx
                            s = 0
                            while s < 0:
                                mem[s + (2 * ceil32(return_data.size)) + 1664] = mem[s + (2 * ceil32(return_data.size)) + 1568]
                                s = s + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 1664] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < idx:
                                mem[s + (2 * ceil32(return_data.size)) + 1666] = mem[s + (2 * ceil32(return_data.size)) + 1600]
                                s = s + 32
                                continue 
                            mem[idx + (2 * ceil32(return_data.size)) + 1666] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + (2 * ceil32(return_data.size)) + 1670] = 32
                            mem[idx + (2 * ceil32(return_data.size)) + 1702] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1734] = mem[s + (2 * ceil32(return_data.size)) + 1664]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + (2 * ceil32(return_data.size)) + 1736] = 0
                            revert with 0, 32, idx + 2, mem[idx + (2 * ceil32(return_data.size)) + 1734 len floor32(idx + 33)]
            else:
                if ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 != ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600):
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[1152] = 26
                mem[1184] = 'SafeMath: division by zero'
                mem[1120] = ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18
                mem[1216] = arg2
                mem[1248] = 0
                if not arg2:
                    mem[1312] = 26
                    mem[1344] = 'SafeMath: division by zero'
                    mem[1280] = 0
                    if arg2 < arg3:
                        mem[1408] = 0x4d61726b65740000000000000000000000000000000000000000000000000000
                        mem[1376] = 32
                        mem[64] = 1440
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 1407]):
                                idx = idx - 1
                                continue 
                            mem[1376] = idx
                            mem[1472] = 'Insufficient output amount'
                            mem[1440] = 32
                            mem[64] = 1504
                            s = 32
                            while s:
                                require s - 1 < 32
                                if not Mask(8, 248, mem[s + 1471]):
                                    s = s - 1
                                    continue 
                                mem[1440] = s
                                s = 0
                                while s < idx:
                                    mem[s + 1536] = mem[s + 1408]
                                    s = s + 32
                                    continue 
                                mem[idx + 1536] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                if ceil32(idx) <= idx:
                                    _11654 = mem[1440]
                                    s = 0
                                    while s < mem[1440]:
                                        mem[s + idx + 1538] = mem[s + 1472]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[1440]) <= mem[1440]:
                                        _18500 = mem[64]
                                        mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                        mem[64] = _11654 + idx + 1538
                                        mem[_11654 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_11654 + idx + 1542] = 32
                                        _19044 = mem[_18500]
                                        mem[_11654 + idx + 1574] = mem[_18500]
                                        s = 0
                                        while s < _19044:
                                            mem[s + _11654 + idx + 1606] = mem[s + _18500 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_19044) > _19044:
                                            mem[_19044 + _11654 + idx + 1606] = 0
                                        revert with 0, 32, mem[_11654 + idx + 1574 len ceil32(_19044) + 32]
                                    mem[mem[1440] + idx + 1538] = 0
                                    _18501 = mem[64]
                                    mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                    mem[64] = _11654 + idx + 1538
                                    mem[_11654 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_11654 + idx + 1542] = 32
                                    _19045 = mem[_18501]
                                    mem[_11654 + idx + 1574] = mem[_18501]
                                    s = 0
                                    while s < _19045:
                                        mem[s + _11654 + idx + 1606] = mem[s + _18501 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_19045) > _19045:
                                        mem[_19045 + _11654 + idx + 1606] = 0
                                    revert with 0, 32, mem[_11654 + idx + 1574 len ceil32(_19045) + 32]
                                _11655 = mem[1440]
                                s = 0
                                while s < mem[1440]:
                                    mem[s + idx + 1538] = mem[s + 1472]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[1440]) <= mem[1440]:
                                    _18502 = mem[64]
                                    mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                    mem[64] = _11655 + idx + 1538
                                    mem[_11655 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_11655 + idx + 1542] = 32
                                    _19046 = mem[_18502]
                                    mem[_11655 + idx + 1574] = mem[_18502]
                                    s = 0
                                    while s < _19046:
                                        mem[s + _11655 + idx + 1606] = mem[s + _18502 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_19046) > _19046:
                                        mem[_19046 + _11655 + idx + 1606] = 0
                                    revert with 0, 32, mem[_11655 + idx + 1574 len ceil32(_19046) + 32]
                                mem[mem[1440] + idx + 1538] = 0
                                _18503 = mem[64]
                                mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                mem[64] = _11655 + idx + 1538
                                mem[_11655 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_11655 + idx + 1542] = 32
                                _19047 = mem[_18503]
                                mem[_11655 + idx + 1574] = mem[_18503]
                                s = 0
                                while s < _19047:
                                    mem[s + _11655 + idx + 1606] = mem[s + _18503 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_19047) > _19047:
                                    mem[_19047 + _11655 + idx + 1606] = 0
                                revert with 0, 32, mem[_11655 + idx + 1574 len ceil32(_19047) + 32]
                            mem[1504] = 0
                            mem[64] = 1536
                            s = 0
                            while s < idx:
                                mem[s + 1568] = mem[s + 1408]
                                s = s + 32
                                continue 
                            mem[idx + 1568] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _11652 = mem[1504]
                                s = 0
                                while s < mem[1504]:
                                    mem[s + idx + 1570] = mem[s + 1536]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[1504]) <= mem[1504]:
                                    _18496 = mem[64]
                                    mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                                    mem[64] = _11652 + idx + 1570
                                    mem[_11652 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_11652 + idx + 1574] = 32
                                    _19040 = mem[_18496]
                                    mem[_11652 + idx + 1606] = mem[_18496]
                                    s = 0
                                    while s < _19040:
                                        mem[s + _11652 + idx + 1638] = mem[s + _18496 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_19040) > _19040:
                                        mem[_19040 + _11652 + idx + 1638] = 0
                                    revert with 0, 32, mem[_11652 + idx + 1606 len ceil32(_19040) + 32]
                                mem[mem[1504] + idx + 1570] = 0
                                _18497 = mem[64]
                                mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                                mem[64] = _11652 + idx + 1570
                                mem[_11652 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_11652 + idx + 1574] = 32
                                _19041 = mem[_18497]
                                mem[_11652 + idx + 1606] = mem[_18497]
                                s = 0
                                while s < _19041:
                                    mem[s + _11652 + idx + 1638] = mem[s + _18497 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_19041) > _19041:
                                    mem[_19041 + _11652 + idx + 1638] = 0
                                revert with 0, 32, mem[_11652 + idx + 1606 len ceil32(_19041) + 32]
                            _11653 = mem[1504]
                            s = 0
                            while s < mem[1504]:
                                mem[s + idx + 1570] = mem[s + 1536]
                                s = s + 32
                                continue 
                            if ceil32(mem[1504]) <= mem[1504]:
                                _18498 = mem[64]
                                mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                                mem[64] = _11653 + idx + 1570
                                mem[_11653 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_11653 + idx + 1574] = 32
                                _19042 = mem[_18498]
                                mem[_11653 + idx + 1606] = mem[_18498]
                                s = 0
                                while s < _19042:
                                    mem[s + _11653 + idx + 1638] = mem[s + _18498 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_19042) > _19042:
                                    mem[_19042 + _11653 + idx + 1638] = 0
                                revert with 0, 32, mem[_11653 + idx + 1606 len ceil32(_19042) + 32]
                            mem[mem[1504] + idx + 1570] = 0
                            _18499 = mem[64]
                            mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                            mem[64] = _11653 + idx + 1570
                            mem[_11653 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_11653 + idx + 1574] = 32
                            _19043 = mem[_18499]
                            mem[_11653 + idx + 1606] = mem[_18499]
                            s = 0
                            while s < _19043:
                                mem[s + _11653 + idx + 1638] = mem[s + _18499 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_19043) > _19043:
                                mem[_19043 + _11653 + idx + 1638] = 0
                            revert with 0, 32, mem[_11653 + idx + 1606 len ceil32(_19043) + 32]
                        mem[1440] = 0
                        mem[1504] = 'Insufficient output amount'
                        mem[1472] = 32
                        mem[64] = 1536
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 1503]):
                                idx = idx - 1
                                continue 
                            mem[1472] = idx
                            s = 0
                            while s < 0:
                                mem[s + 1568] = mem[s + 1472]
                                s = s + 32
                                continue 
                            mem[1568] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < idx:
                                mem[s + 1570] = mem[s + 1504]
                                s = s + 32
                                continue 
                            mem[1536] = idx + 2
                            mem[64] = idx + 1570
                            mem[idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + 1574] = 32
                            mem[idx + 1606] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + 1638] = mem[s + 1568]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + 1640] = 0
                            revert with 0, 32, idx + 2, mem[idx + 1638 len floor32(idx + 33)]
                    else:
                        require ext_code.size(dollarAddress)
                        call dollarAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 1376] = 42
                        mem[ceil32(return_data.size) + 1408 len 42] = 0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63
                        if arg2 > totalRedeemable:
                            revert with 0, 
                                        32,
                                        42,
                                        0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63, mem[ceil32(return_data.size) + 1450 len 22] >> 80,
                                        0
                        totalRedeemable -= arg2
                        if totalStaged + totalBonded < totalBonded:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalRedeemable < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + 1476] = this.address
                        require ext_code.size(dollarAddress)
                        staticcall dollarAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 1472] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] >= totalRedeemable + totalStaged + totalBonded:
                            emit CouponRedemption(arg2, msg.sender, arg1);
                        mem[(2 * ceil32(return_data.size)) + 1504] = 0x436f6d7074726f6c6c6572000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 1472] = 32
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + (2 * ceil32(return_data.size)) + 1503]):
                                idx = idx - 1
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 1568] = 'Inconsistent balances' << 88
                            mem[(2 * ceil32(return_data.size)) + 1536] = 32
                            s = 32
                            while s:
                                require s - 1 < 32
                                if not Mask(8, 248, mem[s + (2 * ceil32(return_data.size)) + 1567]):
                                    s = s - 1
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 1536] = s
                                t = 0
                                while t < idx:
                                    mem[t + (2 * ceil32(return_data.size)) + 1632] = mem[t + (2 * ceil32(return_data.size)) + 1504]
                                    t = t + 32
                                    continue 
                                mem[idx + (2 * ceil32(return_data.size)) + 1632] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                t = 0
                                while t < s:
                                    mem[t + idx + (2 * ceil32(return_data.size)) + 1634] = mem[t + (2 * ceil32(return_data.size)) + 1568]
                                    t = t + 32
                                    continue 
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1634] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1638] = 32
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1670] = s + idx + 2
                                t = 0
                                while t < s + idx + 2:
                                    mem[t + s + idx + (2 * ceil32(return_data.size)) + 1702] = mem[t + (2 * ceil32(return_data.size)) + 1632]
                                    t = t + 32
                                    continue 
                                if floor32(s + idx + 33) > s + idx + 2:
                                    mem[(2 * s) + (2 * idx) + (2 * ceil32(return_data.size)) + 1704] = 0
                                revert with 0, 32, s + idx + 2, mem[s + idx + (2 * ceil32(return_data.size)) + 1702 len floor32(s + idx + 33)]
                            mem[(2 * ceil32(return_data.size)) + 1600] = 0
                            s = 0
                            while s < idx:
                                mem[s + (2 * ceil32(return_data.size)) + 1664] = mem[s + (2 * ceil32(return_data.size)) + 1504]
                                s = s + 32
                                continue 
                            mem[idx + (2 * ceil32(return_data.size)) + 1664] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < 0:
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1666] = mem[s + (2 * ceil32(return_data.size)) + 1632]
                                s = s + 32
                                continue 
                            mem[idx + (2 * ceil32(return_data.size)) + 1666] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + (2 * ceil32(return_data.size)) + 1670] = 32
                            mem[idx + (2 * ceil32(return_data.size)) + 1702] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1734] = mem[s + (2 * ceil32(return_data.size)) + 1664]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + (2 * ceil32(return_data.size)) + 1736] = 0
                            revert with 0, 32, idx + 2, mem[idx + (2 * ceil32(return_data.size)) + 1734 len floor32(idx + 33)]
                        mem[(2 * ceil32(return_data.size)) + 1600] = 'Inconsistent balances' << 88
                        mem[(2 * ceil32(return_data.size)) + 1568] = 32
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + (2 * ceil32(return_data.size)) + 1599]):
                                idx = idx - 1
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 1568] = idx
                            s = 0
                            while s < 0:
                                mem[s + (2 * ceil32(return_data.size)) + 1664] = mem[s + (2 * ceil32(return_data.size)) + 1568]
                                s = s + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 1664] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < idx:
                                mem[s + (2 * ceil32(return_data.size)) + 1666] = mem[s + (2 * ceil32(return_data.size)) + 1600]
                                s = s + 32
                                continue 
                            mem[idx + (2 * ceil32(return_data.size)) + 1666] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + (2 * ceil32(return_data.size)) + 1670] = 32
                            mem[idx + (2 * ceil32(return_data.size)) + 1702] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1734] = mem[s + (2 * ceil32(return_data.size)) + 1664]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + (2 * ceil32(return_data.size)) + 1736] = 0
                            revert with 0, 32, idx + 2, mem[idx + (2 * ceil32(return_data.size)) + 1734 len floor32(idx + 33)]
                else:
                    if ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / arg2 != ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[1312] = 26
                    mem[1344] = 'SafeMath: division by zero'
                    mem[1280] = ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18
                    if arg2 - (((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18) < arg3:
                        mem[1408] = 0x4d61726b65740000000000000000000000000000000000000000000000000000
                        mem[1376] = 32
                        mem[64] = 1440
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 1407]):
                                idx = idx - 1
                                continue 
                            mem[1376] = idx
                            mem[1472] = 'Insufficient output amount'
                            mem[1440] = 32
                            mem[64] = 1504
                            s = 32
                            while s:
                                require s - 1 < 32
                                if not Mask(8, 248, mem[s + 1471]):
                                    s = s - 1
                                    continue 
                                mem[1440] = s
                                s = 0
                                while s < idx:
                                    mem[s + 1536] = mem[s + 1408]
                                    s = s + 32
                                    continue 
                                mem[idx + 1536] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                if ceil32(idx) <= idx:
                                    _11646 = mem[1440]
                                    s = 0
                                    while s < mem[1440]:
                                        mem[s + idx + 1538] = mem[s + 1472]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[1440]) <= mem[1440]:
                                        _18484 = mem[64]
                                        mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                        mem[64] = _11646 + idx + 1538
                                        mem[_11646 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_11646 + idx + 1542] = 32
                                        _19028 = mem[_18484]
                                        mem[_11646 + idx + 1574] = mem[_18484]
                                        s = 0
                                        while s < _19028:
                                            mem[s + _11646 + idx + 1606] = mem[s + _18484 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_19028) > _19028:
                                            mem[_19028 + _11646 + idx + 1606] = 0
                                        revert with 0, 32, mem[_11646 + idx + 1574 len ceil32(_19028) + 32]
                                    mem[mem[1440] + idx + 1538] = 0
                                    _18485 = mem[64]
                                    mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                    mem[64] = _11646 + idx + 1538
                                    mem[_11646 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_11646 + idx + 1542] = 32
                                    _19029 = mem[_18485]
                                    mem[_11646 + idx + 1574] = mem[_18485]
                                    s = 0
                                    while s < _19029:
                                        mem[s + _11646 + idx + 1606] = mem[s + _18485 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_19029) > _19029:
                                        mem[_19029 + _11646 + idx + 1606] = 0
                                    revert with 0, 32, mem[_11646 + idx + 1574 len ceil32(_19029) + 32]
                                _11647 = mem[1440]
                                s = 0
                                while s < mem[1440]:
                                    mem[s + idx + 1538] = mem[s + 1472]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[1440]) <= mem[1440]:
                                    _18486 = mem[64]
                                    mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                    mem[64] = _11647 + idx + 1538
                                    mem[_11647 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_11647 + idx + 1542] = 32
                                    _19030 = mem[_18486]
                                    mem[_11647 + idx + 1574] = mem[_18486]
                                    s = 0
                                    while s < _19030:
                                        mem[s + _11647 + idx + 1606] = mem[s + _18486 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_19030) > _19030:
                                        mem[_19030 + _11647 + idx + 1606] = 0
                                    revert with 0, 32, mem[_11647 + idx + 1574 len ceil32(_19030) + 32]
                                mem[mem[1440] + idx + 1538] = 0
                                _18487 = mem[64]
                                mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                mem[64] = _11647 + idx + 1538
                                mem[_11647 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_11647 + idx + 1542] = 32
                                _19031 = mem[_18487]
                                mem[_11647 + idx + 1574] = mem[_18487]
                                s = 0
                                while s < _19031:
                                    mem[s + _11647 + idx + 1606] = mem[s + _18487 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_19031) > _19031:
                                    mem[_19031 + _11647 + idx + 1606] = 0
                                revert with 0, 32, mem[_11647 + idx + 1574 len ceil32(_19031) + 32]
                            mem[1504] = 0
                            mem[64] = 1536
                            s = 0
                            while s < idx:
                                mem[s + 1568] = mem[s + 1408]
                                s = s + 32
                                continue 
                            mem[idx + 1568] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _11644 = mem[1504]
                                s = 0
                                while s < mem[1504]:
                                    mem[s + idx + 1570] = mem[s + 1536]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[1504]) <= mem[1504]:
                                    _18480 = mem[64]
                                    mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                                    mem[64] = _11644 + idx + 1570
                                    mem[_11644 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_11644 + idx + 1574] = 32
                                    _19024 = mem[_18480]
                                    mem[_11644 + idx + 1606] = mem[_18480]
                                    s = 0
                                    while s < _19024:
                                        mem[s + _11644 + idx + 1638] = mem[s + _18480 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_19024) > _19024:
                                        mem[_19024 + _11644 + idx + 1638] = 0
                                    revert with 0, 32, mem[_11644 + idx + 1606 len ceil32(_19024) + 32]
                                mem[mem[1504] + idx + 1570] = 0
                                _18481 = mem[64]
                                mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                                mem[64] = _11644 + idx + 1570
                                mem[_11644 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_11644 + idx + 1574] = 32
                                _19025 = mem[_18481]
                                mem[_11644 + idx + 1606] = mem[_18481]
                                s = 0
                                while s < _19025:
                                    mem[s + _11644 + idx + 1638] = mem[s + _18481 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_19025) > _19025:
                                    mem[_19025 + _11644 + idx + 1638] = 0
                                revert with 0, 32, mem[_11644 + idx + 1606 len ceil32(_19025) + 32]
                            _11645 = mem[1504]
                            s = 0
                            while s < mem[1504]:
                                mem[s + idx + 1570] = mem[s + 1536]
                                s = s + 32
                                continue 
                            if ceil32(mem[1504]) <= mem[1504]:
                                _18482 = mem[64]
                                mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                                mem[64] = _11645 + idx + 1570
                                mem[_11645 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_11645 + idx + 1574] = 32
                                _19026 = mem[_18482]
                                mem[_11645 + idx + 1606] = mem[_18482]
                                s = 0
                                while s < _19026:
                                    mem[s + _11645 + idx + 1638] = mem[s + _18482 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_19026) > _19026:
                                    mem[_19026 + _11645 + idx + 1638] = 0
                                revert with 0, 32, mem[_11645 + idx + 1606 len ceil32(_19026) + 32]
                            mem[mem[1504] + idx + 1570] = 0
                            _18483 = mem[64]
                            mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                            mem[64] = _11645 + idx + 1570
                            mem[_11645 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_11645 + idx + 1574] = 32
                            _19027 = mem[_18483]
                            mem[_11645 + idx + 1606] = mem[_18483]
                            s = 0
                            while s < _19027:
                                mem[s + _11645 + idx + 1638] = mem[s + _18483 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_19027) > _19027:
                                mem[_19027 + _11645 + idx + 1638] = 0
                            revert with 0, 32, mem[_11645 + idx + 1606 len ceil32(_19027) + 32]
                        mem[1440] = 0
                        mem[1504] = 'Insufficient output amount'
                        mem[1472] = 32
                        mem[64] = 1536
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 1503]):
                                idx = idx - 1
                                continue 
                            mem[1472] = idx
                            s = 0
                            while s < 0:
                                mem[s + 1568] = mem[s + 1472]
                                s = s + 32
                                continue 
                            mem[1568] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < idx:
                                mem[s + 1570] = mem[s + 1504]
                                s = s + 32
                                continue 
                            mem[1536] = idx + 2
                            mem[64] = idx + 1570
                            mem[idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + 1574] = 32
                            mem[idx + 1606] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + 1638] = mem[s + 1568]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + 1640] = 0
                            revert with 0, 32, idx + 2, mem[idx + 1638 len floor32(idx + 33)]
                    else:
                        require ext_code.size(dollarAddress)
                        call dollarAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg2 - (((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 1376] = 42
                        mem[ceil32(return_data.size) + 1408 len 42] = 0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63
                        if arg2 - (((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18) > totalRedeemable:
                            revert with 0, 
                                        32,
                                        42,
                                        0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63, mem[ceil32(return_data.size) + 1450 len 22] >> 80,
                                        0
                        totalRedeemable = totalRedeemable - arg2 + (((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18)
                        if totalStaged + totalBonded < totalBonded:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalRedeemable < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + 1476] = this.address
                        require ext_code.size(dollarAddress)
                        staticcall dollarAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 1472] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] >= totalRedeemable + totalStaged + totalBonded:
                            if ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18:
                                emit CouponBurn((((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18), msg.sender, arg1);
                            emit CouponRedemption((arg2 - (((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 0 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18)), msg.sender, arg1);
                        mem[(2 * ceil32(return_data.size)) + 1504] = 0x436f6d7074726f6c6c6572000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 1472] = 32
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + (2 * ceil32(return_data.size)) + 1503]):
                                idx = idx - 1
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 1568] = 'Inconsistent balances' << 88
                            mem[(2 * ceil32(return_data.size)) + 1536] = 32
                            s = 32
                            while s:
                                require s - 1 < 32
                                if not Mask(8, 248, mem[s + (2 * ceil32(return_data.size)) + 1567]):
                                    s = s - 1
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 1536] = s
                                t = 0
                                while t < idx:
                                    mem[t + (2 * ceil32(return_data.size)) + 1632] = mem[t + (2 * ceil32(return_data.size)) + 1504]
                                    t = t + 32
                                    continue 
                                mem[idx + (2 * ceil32(return_data.size)) + 1632] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                t = 0
                                while t < s:
                                    mem[t + idx + (2 * ceil32(return_data.size)) + 1634] = mem[t + (2 * ceil32(return_data.size)) + 1568]
                                    t = t + 32
                                    continue 
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1634] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1638] = 32
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1670] = s + idx + 2
                                t = 0
                                while t < s + idx + 2:
                                    mem[t + s + idx + (2 * ceil32(return_data.size)) + 1702] = mem[t + (2 * ceil32(return_data.size)) + 1632]
                                    t = t + 32
                                    continue 
                                if floor32(s + idx + 33) > s + idx + 2:
                                    mem[(2 * s) + (2 * idx) + (2 * ceil32(return_data.size)) + 1704] = 0
                                revert with 0, 32, s + idx + 2, mem[s + idx + (2 * ceil32(return_data.size)) + 1702 len floor32(s + idx + 33)]
                            mem[(2 * ceil32(return_data.size)) + 1600] = 0
                            s = 0
                            while s < idx:
                                mem[s + (2 * ceil32(return_data.size)) + 1664] = mem[s + (2 * ceil32(return_data.size)) + 1504]
                                s = s + 32
                                continue 
                            mem[idx + (2 * ceil32(return_data.size)) + 1664] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < 0:
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1666] = mem[s + (2 * ceil32(return_data.size)) + 1632]
                                s = s + 32
                                continue 
                            mem[idx + (2 * ceil32(return_data.size)) + 1666] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + (2 * ceil32(return_data.size)) + 1670] = 32
                            mem[idx + (2 * ceil32(return_data.size)) + 1702] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1734] = mem[s + (2 * ceil32(return_data.size)) + 1664]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + (2 * ceil32(return_data.size)) + 1736] = 0
                            revert with 0, 32, idx + 2, mem[idx + (2 * ceil32(return_data.size)) + 1734 len floor32(idx + 33)]
                        mem[(2 * ceil32(return_data.size)) + 1600] = 'Inconsistent balances' << 88
                        mem[(2 * ceil32(return_data.size)) + 1568] = 32
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + (2 * ceil32(return_data.size)) + 1599]):
                                idx = idx - 1
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 1568] = idx
                            s = 0
                            while s < 0:
                                mem[s + (2 * ceil32(return_data.size)) + 1664] = mem[s + (2 * ceil32(return_data.size)) + 1568]
                                s = s + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 1664] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < idx:
                                mem[s + (2 * ceil32(return_data.size)) + 1666] = mem[s + (2 * ceil32(return_data.size)) + 1600]
                                s = s + 32
                                continue 
                            mem[idx + (2 * ceil32(return_data.size)) + 1666] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + (2 * ceil32(return_data.size)) + 1670] = 32
                            mem[idx + (2 * ceil32(return_data.size)) + 1702] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1734] = mem[s + (2 * ceil32(return_data.size)) + 1664]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + (2 * ceil32(return_data.size)) + 1736] = 0
                            revert with 0, 32, idx + 2, mem[idx + (2 * ceil32(return_data.size)) + 1734 len floor32(idx + 33)]
        else:
            if 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[1024] = 26
            mem[1056] = 'SafeMath: division by zero'
            if not (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360:
                revert with 0, 'SafeMath: division by zero', 0
            mem[992] = 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360
            mem[1088] = 0
            if not 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360:
                mem[1152] = 26
                mem[1184] = 'SafeMath: division by zero'
                mem[1120] = 0
                mem[1216] = arg2
                mem[1248] = 0
                if not arg2:
                    mem[1312] = 26
                    mem[1344] = 'SafeMath: division by zero'
                    mem[1280] = 0
                    if arg2 < arg3:
                        mem[1408] = 0x4d61726b65740000000000000000000000000000000000000000000000000000
                        mem[1376] = 32
                        mem[64] = 1440
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 1407]):
                                idx = idx - 1
                                continue 
                            mem[1376] = idx
                            mem[1472] = 'Insufficient output amount'
                            mem[1440] = 32
                            mem[64] = 1504
                            s = 32
                            while s:
                                require s - 1 < 32
                                if not Mask(8, 248, mem[s + 1471]):
                                    s = s - 1
                                    continue 
                                mem[1440] = s
                                s = 0
                                while s < idx:
                                    mem[s + 1536] = mem[s + 1408]
                                    s = s + 32
                                    continue 
                                mem[idx + 1536] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                if ceil32(idx) <= idx:
                                    _11638 = mem[1440]
                                    s = 0
                                    while s < mem[1440]:
                                        mem[s + idx + 1538] = mem[s + 1472]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[1440]) <= mem[1440]:
                                        _18468 = mem[64]
                                        mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                        mem[64] = _11638 + idx + 1538
                                        mem[_11638 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_11638 + idx + 1542] = 32
                                        _19012 = mem[_18468]
                                        mem[_11638 + idx + 1574] = mem[_18468]
                                        s = 0
                                        while s < _19012:
                                            mem[s + _11638 + idx + 1606] = mem[s + _18468 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_19012) > _19012:
                                            mem[_19012 + _11638 + idx + 1606] = 0
                                        revert with 0, 32, mem[_11638 + idx + 1574 len ceil32(_19012) + 32]
                                    mem[mem[1440] + idx + 1538] = 0
                                    _18469 = mem[64]
                                    mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                    mem[64] = _11638 + idx + 1538
                                    mem[_11638 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_11638 + idx + 1542] = 32
                                    _19013 = mem[_18469]
                                    mem[_11638 + idx + 1574] = mem[_18469]
                                    s = 0
                                    while s < _19013:
                                        mem[s + _11638 + idx + 1606] = mem[s + _18469 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_19013) > _19013:
                                        mem[_19013 + _11638 + idx + 1606] = 0
                                    revert with 0, 32, mem[_11638 + idx + 1574 len ceil32(_19013) + 32]
                                _11639 = mem[1440]
                                s = 0
                                while s < mem[1440]:
                                    mem[s + idx + 1538] = mem[s + 1472]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[1440]) <= mem[1440]:
                                    _18470 = mem[64]
                                    mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                    mem[64] = _11639 + idx + 1538
                                    mem[_11639 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_11639 + idx + 1542] = 32
                                    _19014 = mem[_18470]
                                    mem[_11639 + idx + 1574] = mem[_18470]
                                    s = 0
                                    while s < _19014:
                                        mem[s + _11639 + idx + 1606] = mem[s + _18470 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_19014) > _19014:
                                        mem[_19014 + _11639 + idx + 1606] = 0
                                    revert with 0, 32, mem[_11639 + idx + 1574 len ceil32(_19014) + 32]
                                mem[mem[1440] + idx + 1538] = 0
                                _18471 = mem[64]
                                mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                mem[64] = _11639 + idx + 1538
                                mem[_11639 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_11639 + idx + 1542] = 32
                                _19015 = mem[_18471]
                                mem[_11639 + idx + 1574] = mem[_18471]
                                s = 0
                                while s < _19015:
                                    mem[s + _11639 + idx + 1606] = mem[s + _18471 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_19015) > _19015:
                                    mem[_19015 + _11639 + idx + 1606] = 0
                                revert with 0, 32, mem[_11639 + idx + 1574 len ceil32(_19015) + 32]
                            mem[1504] = 0
                            mem[64] = 1536
                            s = 0
                            while s < idx:
                                mem[s + 1568] = mem[s + 1408]
                                s = s + 32
                                continue 
                            mem[idx + 1568] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _11636 = mem[1504]
                                s = 0
                                while s < mem[1504]:
                                    mem[s + idx + 1570] = mem[s + 1536]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[1504]) <= mem[1504]:
                                    _18464 = mem[64]
                                    mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                                    mem[64] = _11636 + idx + 1570
                                    mem[_11636 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_11636 + idx + 1574] = 32
                                    _19008 = mem[_18464]
                                    mem[_11636 + idx + 1606] = mem[_18464]
                                    s = 0
                                    while s < _19008:
                                        mem[s + _11636 + idx + 1638] = mem[s + _18464 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_19008) > _19008:
                                        mem[_19008 + _11636 + idx + 1638] = 0
                                    revert with 0, 32, mem[_11636 + idx + 1606 len ceil32(_19008) + 32]
                                mem[mem[1504] + idx + 1570] = 0
                                _18465 = mem[64]
                                mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                                mem[64] = _11636 + idx + 1570
                                mem[_11636 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_11636 + idx + 1574] = 32
                                _19009 = mem[_18465]
                                mem[_11636 + idx + 1606] = mem[_18465]
                                s = 0
                                while s < _19009:
                                    mem[s + _11636 + idx + 1638] = mem[s + _18465 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_19009) > _19009:
                                    mem[_19009 + _11636 + idx + 1638] = 0
                                revert with 0, 32, mem[_11636 + idx + 1606 len ceil32(_19009) + 32]
                            _11637 = mem[1504]
                            s = 0
                            while s < mem[1504]:
                                mem[s + idx + 1570] = mem[s + 1536]
                                s = s + 32
                                continue 
                            if ceil32(mem[1504]) <= mem[1504]:
                                _18466 = mem[64]
                                mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                                mem[64] = _11637 + idx + 1570
                                mem[_11637 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_11637 + idx + 1574] = 32
                                _19010 = mem[_18466]
                                mem[_11637 + idx + 1606] = mem[_18466]
                                s = 0
                                while s < _19010:
                                    mem[s + _11637 + idx + 1638] = mem[s + _18466 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_19010) > _19010:
                                    mem[_19010 + _11637 + idx + 1638] = 0
                                revert with 0, 32, mem[_11637 + idx + 1606 len ceil32(_19010) + 32]
                            mem[mem[1504] + idx + 1570] = 0
                            _18467 = mem[64]
                            mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                            mem[64] = _11637 + idx + 1570
                            mem[_11637 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_11637 + idx + 1574] = 32
                            _19011 = mem[_18467]
                            mem[_11637 + idx + 1606] = mem[_18467]
                            s = 0
                            while s < _19011:
                                mem[s + _11637 + idx + 1638] = mem[s + _18467 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_19011) > _19011:
                                mem[_19011 + _11637 + idx + 1638] = 0
                            revert with 0, 32, mem[_11637 + idx + 1606 len ceil32(_19011) + 32]
                        mem[1440] = 0
                        mem[1504] = 'Insufficient output amount'
                        mem[1472] = 32
                        mem[64] = 1536
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 1503]):
                                idx = idx - 1
                                continue 
                            mem[1472] = idx
                            s = 0
                            while s < 0:
                                mem[s + 1568] = mem[s + 1472]
                                s = s + 32
                                continue 
                            mem[1568] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < idx:
                                mem[s + 1570] = mem[s + 1504]
                                s = s + 32
                                continue 
                            mem[1536] = idx + 2
                            mem[64] = idx + 1570
                            mem[idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + 1574] = 32
                            mem[idx + 1606] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + 1638] = mem[s + 1568]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + 1640] = 0
                            revert with 0, 32, idx + 2, mem[idx + 1638 len floor32(idx + 33)]
                    else:
                        require ext_code.size(dollarAddress)
                        call dollarAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 1376] = 42
                        mem[ceil32(return_data.size) + 1408 len 42] = 0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63
                        if arg2 > totalRedeemable:
                            revert with 0, 
                                        32,
                                        42,
                                        0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63, mem[ceil32(return_data.size) + 1450 len 22] >> 80,
                                        0
                        totalRedeemable -= arg2
                        if totalStaged + totalBonded < totalBonded:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalRedeemable < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + 1476] = this.address
                        require ext_code.size(dollarAddress)
                        staticcall dollarAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 1472] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] >= totalRedeemable + totalStaged + totalBonded:
                            emit CouponRedemption(arg2, msg.sender, arg1);
                        mem[(2 * ceil32(return_data.size)) + 1504] = 0x436f6d7074726f6c6c6572000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 1472] = 32
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + (2 * ceil32(return_data.size)) + 1503]):
                                idx = idx - 1
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 1568] = 'Inconsistent balances' << 88
                            mem[(2 * ceil32(return_data.size)) + 1536] = 32
                            s = 32
                            while s:
                                require s - 1 < 32
                                if not Mask(8, 248, mem[s + (2 * ceil32(return_data.size)) + 1567]):
                                    s = s - 1
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 1536] = s
                                t = 0
                                while t < idx:
                                    mem[t + (2 * ceil32(return_data.size)) + 1632] = mem[t + (2 * ceil32(return_data.size)) + 1504]
                                    t = t + 32
                                    continue 
                                mem[idx + (2 * ceil32(return_data.size)) + 1632] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                t = 0
                                while t < s:
                                    mem[t + idx + (2 * ceil32(return_data.size)) + 1634] = mem[t + (2 * ceil32(return_data.size)) + 1568]
                                    t = t + 32
                                    continue 
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1634] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1638] = 32
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1670] = s + idx + 2
                                t = 0
                                while t < s + idx + 2:
                                    mem[t + s + idx + (2 * ceil32(return_data.size)) + 1702] = mem[t + (2 * ceil32(return_data.size)) + 1632]
                                    t = t + 32
                                    continue 
                                if floor32(s + idx + 33) > s + idx + 2:
                                    mem[(2 * s) + (2 * idx) + (2 * ceil32(return_data.size)) + 1704] = 0
                                revert with 0, 32, s + idx + 2, mem[s + idx + (2 * ceil32(return_data.size)) + 1702 len floor32(s + idx + 33)]
                            mem[(2 * ceil32(return_data.size)) + 1600] = 0
                            s = 0
                            while s < idx:
                                mem[s + (2 * ceil32(return_data.size)) + 1664] = mem[s + (2 * ceil32(return_data.size)) + 1504]
                                s = s + 32
                                continue 
                            mem[idx + (2 * ceil32(return_data.size)) + 1664] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < 0:
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1666] = mem[s + (2 * ceil32(return_data.size)) + 1632]
                                s = s + 32
                                continue 
                            mem[idx + (2 * ceil32(return_data.size)) + 1666] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + (2 * ceil32(return_data.size)) + 1670] = 32
                            mem[idx + (2 * ceil32(return_data.size)) + 1702] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1734] = mem[s + (2 * ceil32(return_data.size)) + 1664]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + (2 * ceil32(return_data.size)) + 1736] = 0
                            revert with 0, 32, idx + 2, mem[idx + (2 * ceil32(return_data.size)) + 1734 len floor32(idx + 33)]
                        mem[(2 * ceil32(return_data.size)) + 1600] = 'Inconsistent balances' << 88
                        mem[(2 * ceil32(return_data.size)) + 1568] = 32
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + (2 * ceil32(return_data.size)) + 1599]):
                                idx = idx - 1
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 1568] = idx
                            s = 0
                            while s < 0:
                                mem[s + (2 * ceil32(return_data.size)) + 1664] = mem[s + (2 * ceil32(return_data.size)) + 1568]
                                s = s + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 1664] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < idx:
                                mem[s + (2 * ceil32(return_data.size)) + 1666] = mem[s + (2 * ceil32(return_data.size)) + 1600]
                                s = s + 32
                                continue 
                            mem[idx + (2 * ceil32(return_data.size)) + 1666] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + (2 * ceil32(return_data.size)) + 1670] = 32
                            mem[idx + (2 * ceil32(return_data.size)) + 1702] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1734] = mem[s + (2 * ceil32(return_data.size)) + 1664]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + (2 * ceil32(return_data.size)) + 1736] = 0
                            revert with 0, 32, idx + 2, mem[idx + (2 * ceil32(return_data.size)) + 1734 len floor32(idx + 33)]
                else:
                    if 0 / arg2:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[1312] = 26
                    mem[1344] = 'SafeMath: division by zero'
                    mem[1280] = 0 / 10^18
                    if arg2 - (0 / 10^18) < arg3:
                        mem[1408] = 0x4d61726b65740000000000000000000000000000000000000000000000000000
                        mem[1376] = 32
                        mem[64] = 1440
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 1407]):
                                idx = idx - 1
                                continue 
                            mem[1376] = idx
                            mem[1472] = 'Insufficient output amount'
                            mem[1440] = 32
                            mem[64] = 1504
                            s = 32
                            while s:
                                require s - 1 < 32
                                if not Mask(8, 248, mem[s + 1471]):
                                    s = s - 1
                                    continue 
                                mem[1440] = s
                                s = 0
                                while s < idx:
                                    mem[s + 1536] = mem[s + 1408]
                                    s = s + 32
                                    continue 
                                mem[idx + 1536] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                if ceil32(idx) <= idx:
                                    _11630 = mem[1440]
                                    s = 0
                                    while s < mem[1440]:
                                        mem[s + idx + 1538] = mem[s + 1472]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[1440]) <= mem[1440]:
                                        _18452 = mem[64]
                                        mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                        mem[64] = _11630 + idx + 1538
                                        mem[_11630 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_11630 + idx + 1542] = 32
                                        _18996 = mem[_18452]
                                        mem[_11630 + idx + 1574] = mem[_18452]
                                        s = 0
                                        while s < _18996:
                                            mem[s + _11630 + idx + 1606] = mem[s + _18452 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_18996) > _18996:
                                            mem[_18996 + _11630 + idx + 1606] = 0
                                        revert with 0, 32, mem[_11630 + idx + 1574 len ceil32(_18996) + 32]
                                    mem[mem[1440] + idx + 1538] = 0
                                    _18453 = mem[64]
                                    mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                    mem[64] = _11630 + idx + 1538
                                    mem[_11630 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_11630 + idx + 1542] = 32
                                    _18997 = mem[_18453]
                                    mem[_11630 + idx + 1574] = mem[_18453]
                                    s = 0
                                    while s < _18997:
                                        mem[s + _11630 + idx + 1606] = mem[s + _18453 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_18997) > _18997:
                                        mem[_18997 + _11630 + idx + 1606] = 0
                                    revert with 0, 32, mem[_11630 + idx + 1574 len ceil32(_18997) + 32]
                                _11631 = mem[1440]
                                s = 0
                                while s < mem[1440]:
                                    mem[s + idx + 1538] = mem[s + 1472]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[1440]) <= mem[1440]:
                                    _18454 = mem[64]
                                    mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                    mem[64] = _11631 + idx + 1538
                                    mem[_11631 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_11631 + idx + 1542] = 32
                                    _18998 = mem[_18454]
                                    mem[_11631 + idx + 1574] = mem[_18454]
                                    s = 0
                                    while s < _18998:
                                        mem[s + _11631 + idx + 1606] = mem[s + _18454 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_18998) > _18998:
                                        mem[_18998 + _11631 + idx + 1606] = 0
                                    revert with 0, 32, mem[_11631 + idx + 1574 len ceil32(_18998) + 32]
                                mem[mem[1440] + idx + 1538] = 0
                                _18455 = mem[64]
                                mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                mem[64] = _11631 + idx + 1538
                                mem[_11631 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_11631 + idx + 1542] = 32
                                _18999 = mem[_18455]
                                mem[_11631 + idx + 1574] = mem[_18455]
                                s = 0
                                while s < _18999:
                                    mem[s + _11631 + idx + 1606] = mem[s + _18455 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_18999) > _18999:
                                    mem[_18999 + _11631 + idx + 1606] = 0
                                revert with 0, 32, mem[_11631 + idx + 1574 len ceil32(_18999) + 32]
                            mem[1504] = 0
                            mem[64] = 1536
                            s = 0
                            while s < idx:
                                mem[s + 1568] = mem[s + 1408]
                                s = s + 32
                                continue 
                            mem[idx + 1568] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _11628 = mem[1504]
                                s = 0
                                while s < mem[1504]:
                                    mem[s + idx + 1570] = mem[s + 1536]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[1504]) <= mem[1504]:
                                    _18448 = mem[64]
                                    mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                                    mem[64] = _11628 + idx + 1570
                                    mem[_11628 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_11628 + idx + 1574] = 32
                                    _18992 = mem[_18448]
                                    mem[_11628 + idx + 1606] = mem[_18448]
                                    s = 0
                                    while s < _18992:
                                        mem[s + _11628 + idx + 1638] = mem[s + _18448 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_18992) > _18992:
                                        mem[_18992 + _11628 + idx + 1638] = 0
                                    revert with 0, 32, mem[_11628 + idx + 1606 len ceil32(_18992) + 32]
                                mem[mem[1504] + idx + 1570] = 0
                                _18449 = mem[64]
                                mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                                mem[64] = _11628 + idx + 1570
                                mem[_11628 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_11628 + idx + 1574] = 32
                                _18993 = mem[_18449]
                                mem[_11628 + idx + 1606] = mem[_18449]
                                s = 0
                                while s < _18993:
                                    mem[s + _11628 + idx + 1638] = mem[s + _18449 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_18993) > _18993:
                                    mem[_18993 + _11628 + idx + 1638] = 0
                                revert with 0, 32, mem[_11628 + idx + 1606 len ceil32(_18993) + 32]
                            _11629 = mem[1504]
                            s = 0
                            while s < mem[1504]:
                                mem[s + idx + 1570] = mem[s + 1536]
                                s = s + 32
                                continue 
                            if ceil32(mem[1504]) <= mem[1504]:
                                _18450 = mem[64]
                                mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                                mem[64] = _11629 + idx + 1570
                                mem[_11629 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_11629 + idx + 1574] = 32
                                _18994 = mem[_18450]
                                mem[_11629 + idx + 1606] = mem[_18450]
                                s = 0
                                while s < _18994:
                                    mem[s + _11629 + idx + 1638] = mem[s + _18450 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_18994) > _18994:
                                    mem[_18994 + _11629 + idx + 1638] = 0
                                revert with 0, 32, mem[_11629 + idx + 1606 len ceil32(_18994) + 32]
                            mem[mem[1504] + idx + 1570] = 0
                            _18451 = mem[64]
                            mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                            mem[64] = _11629 + idx + 1570
                            mem[_11629 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_11629 + idx + 1574] = 32
                            _18995 = mem[_18451]
                            mem[_11629 + idx + 1606] = mem[_18451]
                            s = 0
                            while s < _18995:
                                mem[s + _11629 + idx + 1638] = mem[s + _18451 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_18995) > _18995:
                                mem[_18995 + _11629 + idx + 1638] = 0
                            revert with 0, 32, mem[_11629 + idx + 1606 len ceil32(_18995) + 32]
                        mem[1440] = 0
                        mem[1504] = 'Insufficient output amount'
                        mem[1472] = 32
                        mem[64] = 1536
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 1503]):
                                idx = idx - 1
                                continue 
                            mem[1472] = idx
                            s = 0
                            while s < 0:
                                mem[s + 1568] = mem[s + 1472]
                                s = s + 32
                                continue 
                            mem[1568] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < idx:
                                mem[s + 1570] = mem[s + 1504]
                                s = s + 32
                                continue 
                            mem[1536] = idx + 2
                            mem[64] = idx + 1570
                            mem[idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + 1574] = 32
                            mem[idx + 1606] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + 1638] = mem[s + 1568]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + 1640] = 0
                            revert with 0, 32, idx + 2, mem[idx + 1638 len floor32(idx + 33)]
                    else:
                        require ext_code.size(dollarAddress)
                        call dollarAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 1376] = 42
                        mem[ceil32(return_data.size) + 1408 len 42] = 0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63
                        if arg2 - (0 / 10^18) > totalRedeemable:
                            revert with 0, 
                                        32,
                                        42,
                                        0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63, mem[ceil32(return_data.size) + 1450 len 22] >> 80,
                                        0
                        totalRedeemable = totalRedeemable - arg2 + (0 / 10^18)
                        if totalStaged + totalBonded < totalBonded:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalRedeemable < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + 1476] = this.address
                        require ext_code.size(dollarAddress)
                        staticcall dollarAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 1472] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] >= totalRedeemable + totalStaged + totalBonded:
                            emit CouponRedemption(arg2, msg.sender, arg1);
                        mem[(2 * ceil32(return_data.size)) + 1504] = 0x436f6d7074726f6c6c6572000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 1472] = 32
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + (2 * ceil32(return_data.size)) + 1503]):
                                idx = idx - 1
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 1568] = 'Inconsistent balances' << 88
                            mem[(2 * ceil32(return_data.size)) + 1536] = 32
                            s = 32
                            while s:
                                require s - 1 < 32
                                if not Mask(8, 248, mem[s + (2 * ceil32(return_data.size)) + 1567]):
                                    s = s - 1
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 1536] = s
                                t = 0
                                while t < idx:
                                    mem[t + (2 * ceil32(return_data.size)) + 1632] = mem[t + (2 * ceil32(return_data.size)) + 1504]
                                    t = t + 32
                                    continue 
                                mem[idx + (2 * ceil32(return_data.size)) + 1632] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                t = 0
                                while t < s:
                                    mem[t + idx + (2 * ceil32(return_data.size)) + 1634] = mem[t + (2 * ceil32(return_data.size)) + 1568]
                                    t = t + 32
                                    continue 
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1634] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1638] = 32
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1670] = s + idx + 2
                                t = 0
                                while t < s + idx + 2:
                                    mem[t + s + idx + (2 * ceil32(return_data.size)) + 1702] = mem[t + (2 * ceil32(return_data.size)) + 1632]
                                    t = t + 32
                                    continue 
                                if floor32(s + idx + 33) > s + idx + 2:
                                    mem[(2 * s) + (2 * idx) + (2 * ceil32(return_data.size)) + 1704] = 0
                                revert with 0, 32, s + idx + 2, mem[s + idx + (2 * ceil32(return_data.size)) + 1702 len floor32(s + idx + 33)]
                            mem[(2 * ceil32(return_data.size)) + 1600] = 0
                            s = 0
                            while s < idx:
                                mem[s + (2 * ceil32(return_data.size)) + 1664] = mem[s + (2 * ceil32(return_data.size)) + 1504]
                                s = s + 32
                                continue 
                            mem[idx + (2 * ceil32(return_data.size)) + 1664] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < 0:
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1666] = mem[s + (2 * ceil32(return_data.size)) + 1632]
                                s = s + 32
                                continue 
                            mem[idx + (2 * ceil32(return_data.size)) + 1666] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + (2 * ceil32(return_data.size)) + 1670] = 32
                            mem[idx + (2 * ceil32(return_data.size)) + 1702] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1734] = mem[s + (2 * ceil32(return_data.size)) + 1664]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + (2 * ceil32(return_data.size)) + 1736] = 0
                            revert with 0, 32, idx + 2, mem[idx + (2 * ceil32(return_data.size)) + 1734 len floor32(idx + 33)]
                        mem[(2 * ceil32(return_data.size)) + 1600] = 'Inconsistent balances' << 88
                        mem[(2 * ceil32(return_data.size)) + 1568] = 32
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + (2 * ceil32(return_data.size)) + 1599]):
                                idx = idx - 1
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 1568] = idx
                            s = 0
                            while s < 0:
                                mem[s + (2 * ceil32(return_data.size)) + 1664] = mem[s + (2 * ceil32(return_data.size)) + 1568]
                                s = s + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 1664] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < idx:
                                mem[s + (2 * ceil32(return_data.size)) + 1666] = mem[s + (2 * ceil32(return_data.size)) + 1600]
                                s = s + 32
                                continue 
                            mem[idx + (2 * ceil32(return_data.size)) + 1666] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + (2 * ceil32(return_data.size)) + 1670] = 32
                            mem[idx + (2 * ceil32(return_data.size)) + 1702] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1734] = mem[s + (2 * ceil32(return_data.size)) + 1664]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + (2 * ceil32(return_data.size)) + 1736] = 0
                            revert with 0, 32, idx + 2, mem[idx + (2 * ceil32(return_data.size)) + 1734 len floor32(idx + 33)]
            else:
                if ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 != ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600):
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[1152] = 26
                mem[1184] = 'SafeMath: division by zero'
                mem[1120] = ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18
                mem[1216] = arg2
                mem[1248] = 0
                if not arg2:
                    mem[1312] = 26
                    mem[1344] = 'SafeMath: division by zero'
                    mem[1280] = 0
                    if arg2 < arg3:
                        mem[1408] = 0x4d61726b65740000000000000000000000000000000000000000000000000000
                        mem[1376] = 32
                        mem[64] = 1440
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 1407]):
                                idx = idx - 1
                                continue 
                            mem[1376] = idx
                            mem[1472] = 'Insufficient output amount'
                            mem[1440] = 32
                            mem[64] = 1504
                            s = 32
                            while s:
                                require s - 1 < 32
                                if not Mask(8, 248, mem[s + 1471]):
                                    s = s - 1
                                    continue 
                                mem[1440] = s
                                s = 0
                                while s < idx:
                                    mem[s + 1536] = mem[s + 1408]
                                    s = s + 32
                                    continue 
                                mem[idx + 1536] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                if ceil32(idx) <= idx:
                                    _11622 = mem[1440]
                                    s = 0
                                    while s < mem[1440]:
                                        mem[s + idx + 1538] = mem[s + 1472]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[1440]) <= mem[1440]:
                                        _18436 = mem[64]
                                        mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                        mem[64] = _11622 + idx + 1538
                                        mem[_11622 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_11622 + idx + 1542] = 32
                                        _18980 = mem[_18436]
                                        mem[_11622 + idx + 1574] = mem[_18436]
                                        s = 0
                                        while s < _18980:
                                            mem[s + _11622 + idx + 1606] = mem[s + _18436 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_18980) > _18980:
                                            mem[_18980 + _11622 + idx + 1606] = 0
                                        revert with 0, 32, mem[_11622 + idx + 1574 len ceil32(_18980) + 32]
                                    mem[mem[1440] + idx + 1538] = 0
                                    _18437 = mem[64]
                                    mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                    mem[64] = _11622 + idx + 1538
                                    mem[_11622 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_11622 + idx + 1542] = 32
                                    _18981 = mem[_18437]
                                    mem[_11622 + idx + 1574] = mem[_18437]
                                    s = 0
                                    while s < _18981:
                                        mem[s + _11622 + idx + 1606] = mem[s + _18437 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_18981) > _18981:
                                        mem[_18981 + _11622 + idx + 1606] = 0
                                    revert with 0, 32, mem[_11622 + idx + 1574 len ceil32(_18981) + 32]
                                _11623 = mem[1440]
                                s = 0
                                while s < mem[1440]:
                                    mem[s + idx + 1538] = mem[s + 1472]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[1440]) <= mem[1440]:
                                    _18438 = mem[64]
                                    mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                    mem[64] = _11623 + idx + 1538
                                    mem[_11623 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_11623 + idx + 1542] = 32
                                    _18982 = mem[_18438]
                                    mem[_11623 + idx + 1574] = mem[_18438]
                                    s = 0
                                    while s < _18982:
                                        mem[s + _11623 + idx + 1606] = mem[s + _18438 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_18982) > _18982:
                                        mem[_18982 + _11623 + idx + 1606] = 0
                                    revert with 0, 32, mem[_11623 + idx + 1574 len ceil32(_18982) + 32]
                                mem[mem[1440] + idx + 1538] = 0
                                _18439 = mem[64]
                                mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                mem[64] = _11623 + idx + 1538
                                mem[_11623 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_11623 + idx + 1542] = 32
                                _18983 = mem[_18439]
                                mem[_11623 + idx + 1574] = mem[_18439]
                                s = 0
                                while s < _18983:
                                    mem[s + _11623 + idx + 1606] = mem[s + _18439 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_18983) > _18983:
                                    mem[_18983 + _11623 + idx + 1606] = 0
                                revert with 0, 32, mem[_11623 + idx + 1574 len ceil32(_18983) + 32]
                            mem[1504] = 0
                            mem[64] = 1536
                            s = 0
                            while s < idx:
                                mem[s + 1568] = mem[s + 1408]
                                s = s + 32
                                continue 
                            mem[idx + 1568] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _11620 = mem[1504]
                                s = 0
                                while s < mem[1504]:
                                    mem[s + idx + 1570] = mem[s + 1536]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[1504]) <= mem[1504]:
                                    _18432 = mem[64]
                                    mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                                    mem[64] = _11620 + idx + 1570
                                    mem[_11620 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_11620 + idx + 1574] = 32
                                    _18976 = mem[_18432]
                                    mem[_11620 + idx + 1606] = mem[_18432]
                                    s = 0
                                    while s < _18976:
                                        mem[s + _11620 + idx + 1638] = mem[s + _18432 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_18976) > _18976:
                                        mem[_18976 + _11620 + idx + 1638] = 0
                                    revert with 0, 32, mem[_11620 + idx + 1606 len ceil32(_18976) + 32]
                                mem[mem[1504] + idx + 1570] = 0
                                _18433 = mem[64]
                                mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                                mem[64] = _11620 + idx + 1570
                                mem[_11620 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_11620 + idx + 1574] = 32
                                _18977 = mem[_18433]
                                mem[_11620 + idx + 1606] = mem[_18433]
                                s = 0
                                while s < _18977:
                                    mem[s + _11620 + idx + 1638] = mem[s + _18433 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_18977) > _18977:
                                    mem[_18977 + _11620 + idx + 1638] = 0
                                revert with 0, 32, mem[_11620 + idx + 1606 len ceil32(_18977) + 32]
                            _11621 = mem[1504]
                            s = 0
                            while s < mem[1504]:
                                mem[s + idx + 1570] = mem[s + 1536]
                                s = s + 32
                                continue 
                            if ceil32(mem[1504]) <= mem[1504]:
                                _18434 = mem[64]
                                mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                                mem[64] = _11621 + idx + 1570
                                mem[_11621 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_11621 + idx + 1574] = 32
                                _18978 = mem[_18434]
                                mem[_11621 + idx + 1606] = mem[_18434]
                                s = 0
                                while s < _18978:
                                    mem[s + _11621 + idx + 1638] = mem[s + _18434 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_18978) > _18978:
                                    mem[_18978 + _11621 + idx + 1638] = 0
                                revert with 0, 32, mem[_11621 + idx + 1606 len ceil32(_18978) + 32]
                            mem[mem[1504] + idx + 1570] = 0
                            _18435 = mem[64]
                            mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                            mem[64] = _11621 + idx + 1570
                            mem[_11621 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_11621 + idx + 1574] = 32
                            _18979 = mem[_18435]
                            mem[_11621 + idx + 1606] = mem[_18435]
                            s = 0
                            while s < _18979:
                                mem[s + _11621 + idx + 1638] = mem[s + _18435 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_18979) > _18979:
                                mem[_18979 + _11621 + idx + 1638] = 0
                            revert with 0, 32, mem[_11621 + idx + 1606 len ceil32(_18979) + 32]
                        mem[1440] = 0
                        mem[1504] = 'Insufficient output amount'
                        mem[1472] = 32
                        mem[64] = 1536
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 1503]):
                                idx = idx - 1
                                continue 
                            mem[1472] = idx
                            s = 0
                            while s < 0:
                                mem[s + 1568] = mem[s + 1472]
                                s = s + 32
                                continue 
                            mem[1568] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < idx:
                                mem[s + 1570] = mem[s + 1504]
                                s = s + 32
                                continue 
                            mem[1536] = idx + 2
                            mem[64] = idx + 1570
                            mem[idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + 1574] = 32
                            mem[idx + 1606] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + 1638] = mem[s + 1568]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + 1640] = 0
                            revert with 0, 32, idx + 2, mem[idx + 1638 len floor32(idx + 33)]
                    else:
                        require ext_code.size(dollarAddress)
                        call dollarAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 1376] = 42
                        mem[ceil32(return_data.size) + 1408 len 42] = 0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63
                        if arg2 > totalRedeemable:
                            revert with 0, 
                                        32,
                                        42,
                                        0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63, mem[ceil32(return_data.size) + 1450 len 22] >> 80,
                                        0
                        totalRedeemable -= arg2
                        if totalStaged + totalBonded < totalBonded:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalRedeemable < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + 1476] = this.address
                        require ext_code.size(dollarAddress)
                        staticcall dollarAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 1472] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] >= totalRedeemable + totalStaged + totalBonded:
                            emit CouponRedemption(arg2, msg.sender, arg1);
                        mem[(2 * ceil32(return_data.size)) + 1504] = 0x436f6d7074726f6c6c6572000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 1472] = 32
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + (2 * ceil32(return_data.size)) + 1503]):
                                idx = idx - 1
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 1568] = 'Inconsistent balances' << 88
                            mem[(2 * ceil32(return_data.size)) + 1536] = 32
                            s = 32
                            while s:
                                require s - 1 < 32
                                if not Mask(8, 248, mem[s + (2 * ceil32(return_data.size)) + 1567]):
                                    s = s - 1
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 1536] = s
                                t = 0
                                while t < idx:
                                    mem[t + (2 * ceil32(return_data.size)) + 1632] = mem[t + (2 * ceil32(return_data.size)) + 1504]
                                    t = t + 32
                                    continue 
                                mem[idx + (2 * ceil32(return_data.size)) + 1632] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                t = 0
                                while t < s:
                                    mem[t + idx + (2 * ceil32(return_data.size)) + 1634] = mem[t + (2 * ceil32(return_data.size)) + 1568]
                                    t = t + 32
                                    continue 
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1634] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1638] = 32
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1670] = s + idx + 2
                                t = 0
                                while t < s + idx + 2:
                                    mem[t + s + idx + (2 * ceil32(return_data.size)) + 1702] = mem[t + (2 * ceil32(return_data.size)) + 1632]
                                    t = t + 32
                                    continue 
                                if floor32(s + idx + 33) > s + idx + 2:
                                    mem[(2 * s) + (2 * idx) + (2 * ceil32(return_data.size)) + 1704] = 0
                                revert with 0, 32, s + idx + 2, mem[s + idx + (2 * ceil32(return_data.size)) + 1702 len floor32(s + idx + 33)]
                            mem[(2 * ceil32(return_data.size)) + 1600] = 0
                            s = 0
                            while s < idx:
                                mem[s + (2 * ceil32(return_data.size)) + 1664] = mem[s + (2 * ceil32(return_data.size)) + 1504]
                                s = s + 32
                                continue 
                            mem[idx + (2 * ceil32(return_data.size)) + 1664] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < 0:
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1666] = mem[s + (2 * ceil32(return_data.size)) + 1632]
                                s = s + 32
                                continue 
                            mem[idx + (2 * ceil32(return_data.size)) + 1666] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + (2 * ceil32(return_data.size)) + 1670] = 32
                            mem[idx + (2 * ceil32(return_data.size)) + 1702] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1734] = mem[s + (2 * ceil32(return_data.size)) + 1664]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + (2 * ceil32(return_data.size)) + 1736] = 0
                            revert with 0, 32, idx + 2, mem[idx + (2 * ceil32(return_data.size)) + 1734 len floor32(idx + 33)]
                        mem[(2 * ceil32(return_data.size)) + 1600] = 'Inconsistent balances' << 88
                        mem[(2 * ceil32(return_data.size)) + 1568] = 32
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + (2 * ceil32(return_data.size)) + 1599]):
                                idx = idx - 1
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 1568] = idx
                            s = 0
                            while s < 0:
                                mem[s + (2 * ceil32(return_data.size)) + 1664] = mem[s + (2 * ceil32(return_data.size)) + 1568]
                                s = s + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 1664] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < idx:
                                mem[s + (2 * ceil32(return_data.size)) + 1666] = mem[s + (2 * ceil32(return_data.size)) + 1600]
                                s = s + 32
                                continue 
                            mem[idx + (2 * ceil32(return_data.size)) + 1666] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + (2 * ceil32(return_data.size)) + 1670] = 32
                            mem[idx + (2 * ceil32(return_data.size)) + 1702] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1734] = mem[s + (2 * ceil32(return_data.size)) + 1664]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + (2 * ceil32(return_data.size)) + 1736] = 0
                            revert with 0, 32, idx + 2, mem[idx + (2 * ceil32(return_data.size)) + 1734 len floor32(idx + 33)]
                else:
                    if ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / arg2 != ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[1312] = 26
                    mem[1344] = 'SafeMath: division by zero'
                    mem[1280] = ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18
                    if arg2 - (((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18) < arg3:
                        mem[1408] = 0x4d61726b65740000000000000000000000000000000000000000000000000000
                        mem[1376] = 32
                        mem[64] = 1440
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 1407]):
                                idx = idx - 1
                                continue 
                            mem[1376] = idx
                            mem[1472] = 'Insufficient output amount'
                            mem[1440] = 32
                            mem[64] = 1504
                            s = 32
                            while s:
                                require s - 1 < 32
                                if not Mask(8, 248, mem[s + 1471]):
                                    s = s - 1
                                    continue 
                                mem[1440] = s
                                s = 0
                                while s < idx:
                                    mem[s + 1536] = mem[s + 1408]
                                    s = s + 32
                                    continue 
                                mem[idx + 1536] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                if ceil32(idx) <= idx:
                                    _11614 = mem[1440]
                                    s = 0
                                    while s < mem[1440]:
                                        mem[s + idx + 1538] = mem[s + 1472]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[1440]) <= mem[1440]:
                                        _18420 = mem[64]
                                        mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                        mem[64] = _11614 + idx + 1538
                                        mem[_11614 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_11614 + idx + 1542] = 32
                                        _18964 = mem[_18420]
                                        mem[_11614 + idx + 1574] = mem[_18420]
                                        s = 0
                                        while s < _18964:
                                            mem[s + _11614 + idx + 1606] = mem[s + _18420 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_18964) > _18964:
                                            mem[_18964 + _11614 + idx + 1606] = 0
                                        revert with 0, 32, mem[_11614 + idx + 1574 len ceil32(_18964) + 32]
                                    mem[mem[1440] + idx + 1538] = 0
                                    _18421 = mem[64]
                                    mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                    mem[64] = _11614 + idx + 1538
                                    mem[_11614 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_11614 + idx + 1542] = 32
                                    _18965 = mem[_18421]
                                    mem[_11614 + idx + 1574] = mem[_18421]
                                    s = 0
                                    while s < _18965:
                                        mem[s + _11614 + idx + 1606] = mem[s + _18421 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_18965) > _18965:
                                        mem[_18965 + _11614 + idx + 1606] = 0
                                    revert with 0, 32, mem[_11614 + idx + 1574 len ceil32(_18965) + 32]
                                _11615 = mem[1440]
                                s = 0
                                while s < mem[1440]:
                                    mem[s + idx + 1538] = mem[s + 1472]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[1440]) <= mem[1440]:
                                    _18422 = mem[64]
                                    mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                    mem[64] = _11615 + idx + 1538
                                    mem[_11615 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_11615 + idx + 1542] = 32
                                    _18966 = mem[_18422]
                                    mem[_11615 + idx + 1574] = mem[_18422]
                                    s = 0
                                    while s < _18966:
                                        mem[s + _11615 + idx + 1606] = mem[s + _18422 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_18966) > _18966:
                                        mem[_18966 + _11615 + idx + 1606] = 0
                                    revert with 0, 32, mem[_11615 + idx + 1574 len ceil32(_18966) + 32]
                                mem[mem[1440] + idx + 1538] = 0
                                _18423 = mem[64]
                                mem[mem[64]] = mem[1440] + idx + -mem[64] + 1506
                                mem[64] = _11615 + idx + 1538
                                mem[_11615 + idx + 1538] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_11615 + idx + 1542] = 32
                                _18967 = mem[_18423]
                                mem[_11615 + idx + 1574] = mem[_18423]
                                s = 0
                                while s < _18967:
                                    mem[s + _11615 + idx + 1606] = mem[s + _18423 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_18967) > _18967:
                                    mem[_18967 + _11615 + idx + 1606] = 0
                                revert with 0, 32, mem[_11615 + idx + 1574 len ceil32(_18967) + 32]
                            mem[1504] = 0
                            mem[64] = 1536
                            s = 0
                            while s < idx:
                                mem[s + 1568] = mem[s + 1408]
                                s = s + 32
                                continue 
                            mem[idx + 1568] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            if ceil32(idx) <= idx:
                                _11612 = mem[1504]
                                s = 0
                                while s < mem[1504]:
                                    mem[s + idx + 1570] = mem[s + 1536]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[1504]) <= mem[1504]:
                                    _18416 = mem[64]
                                    mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                                    mem[64] = _11612 + idx + 1570
                                    mem[_11612 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_11612 + idx + 1574] = 32
                                    _18960 = mem[_18416]
                                    mem[_11612 + idx + 1606] = mem[_18416]
                                    s = 0
                                    while s < _18960:
                                        mem[s + _11612 + idx + 1638] = mem[s + _18416 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_18960) > _18960:
                                        mem[_18960 + _11612 + idx + 1638] = 0
                                    revert with 0, 32, mem[_11612 + idx + 1606 len ceil32(_18960) + 32]
                                mem[mem[1504] + idx + 1570] = 0
                                _18417 = mem[64]
                                mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                                mem[64] = _11612 + idx + 1570
                                mem[_11612 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_11612 + idx + 1574] = 32
                                _18961 = mem[_18417]
                                mem[_11612 + idx + 1606] = mem[_18417]
                                s = 0
                                while s < _18961:
                                    mem[s + _11612 + idx + 1638] = mem[s + _18417 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_18961) > _18961:
                                    mem[_18961 + _11612 + idx + 1638] = 0
                                revert with 0, 32, mem[_11612 + idx + 1606 len ceil32(_18961) + 32]
                            _11613 = mem[1504]
                            s = 0
                            while s < mem[1504]:
                                mem[s + idx + 1570] = mem[s + 1536]
                                s = s + 32
                                continue 
                            if ceil32(mem[1504]) <= mem[1504]:
                                _18418 = mem[64]
                                mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                                mem[64] = _11613 + idx + 1570
                                mem[_11613 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_11613 + idx + 1574] = 32
                                _18962 = mem[_18418]
                                mem[_11613 + idx + 1606] = mem[_18418]
                                s = 0
                                while s < _18962:
                                    mem[s + _11613 + idx + 1638] = mem[s + _18418 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_18962) > _18962:
                                    mem[_18962 + _11613 + idx + 1638] = 0
                                revert with 0, 32, mem[_11613 + idx + 1606 len ceil32(_18962) + 32]
                            mem[mem[1504] + idx + 1570] = 0
                            _18419 = mem[64]
                            mem[mem[64]] = mem[1504] + idx + -mem[64] + 1538
                            mem[64] = _11613 + idx + 1570
                            mem[_11613 + idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_11613 + idx + 1574] = 32
                            _18963 = mem[_18419]
                            mem[_11613 + idx + 1606] = mem[_18419]
                            s = 0
                            while s < _18963:
                                mem[s + _11613 + idx + 1638] = mem[s + _18419 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_18963) > _18963:
                                mem[_18963 + _11613 + idx + 1638] = 0
                            revert with 0, 32, mem[_11613 + idx + 1606 len ceil32(_18963) + 32]
                        mem[1440] = 0
                        mem[1504] = 'Insufficient output amount'
                        mem[1472] = 32
                        mem[64] = 1536
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + 1503]):
                                idx = idx - 1
                                continue 
                            mem[1472] = idx
                            s = 0
                            while s < 0:
                                mem[s + 1568] = mem[s + 1472]
                                s = s + 32
                                continue 
                            mem[1568] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < idx:
                                mem[s + 1570] = mem[s + 1504]
                                s = s + 32
                                continue 
                            mem[1536] = idx + 2
                            mem[64] = idx + 1570
                            mem[idx + 1570] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + 1574] = 32
                            mem[idx + 1606] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + 1638] = mem[s + 1568]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + 1640] = 0
                            revert with 0, 32, idx + 2, mem[idx + 1638 len floor32(idx + 33)]
                    else:
                        require ext_code.size(dollarAddress)
                        call dollarAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg2 - (((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 10^18 * (-1388888888888888888888888888888888 * epoch) + (0x447a3e09e11395f01ae338e38e38 * arg1) + 0x604be73de4838ad9a5cf87fffffec0 / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 10^18 * (-1388888888888888888888888888888888 * epoch) + (0x447a3e09e11395f01ae338e38e38 * arg1) + 0x604be73de4838ad9a5cf87fffffec0 / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 1376] = 42
                        mem[ceil32(return_data.size) + 1408 len 42] = 0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63
                        if arg2 - (((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18) > totalRedeemable:
                            revert with 0, 
                                        32,
                                        42,
                                        0x74436f6d7074726f6c6c65723a206e6f7420656e6f7567682072656465656d61626c652062616c616e63, mem[ceil32(return_data.size) + 1450 len 22] >> 80,
                                        0
                        totalRedeemable = totalRedeemable - arg2 + (((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18)
                        if totalStaged + totalBonded < totalBonded:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalRedeemable < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + 1476] = this.address
                        require ext_code.size(dollarAddress)
                        staticcall dollarAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 1472] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] >= totalRedeemable + totalStaged + totalBonded:
                            if ((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 10^18 * (360 * 500000000000000000 * 10^18 / 360) - (epoch * 500000000000000000 * 10^18 / 360) + (arg1 * 500000000000000000 * 10^18 / 360) / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18:
                                emit CouponBurn((((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 10^18 * (-1388888888888888888888888888888888 * epoch) + (0x447a3e09e11395f01ae338e38e38 * arg1) + 0x604be73de4838ad9a5cf87fffffec0 / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 10^18 * (-1388888888888888888888888888888888 * epoch) + (0x447a3e09e11395f01ae338e38e38 * arg1) + 0x604be73de4838ad9a5cf87fffffec0 / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18), msg.sender, arg1);
                            emit CouponRedemption((arg2 - (((-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360 * 10^18 * (-1388888888888888888888888888888888 * epoch) + (0x447a3e09e11395f01ae338e38e38 * arg1) + 0x604be73de4838ad9a5cf87fffffec0 / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) - (block.timestamp % 3600 * 10^18 * (-1388888888888888888888888888888888 * epoch) + (0x447a3e09e11395f01ae338e38e38 * arg1) + 0x604be73de4838ad9a5cf87fffffec0 / 10^18 / (-3600 * epoch) + (3600 * arg1) + (360 * 24 * 3600) / 360) / 10^18 * arg2 / 10^18)), msg.sender, arg1);
                        mem[(2 * ceil32(return_data.size)) + 1504] = 0x436f6d7074726f6c6c6572000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 1472] = 32
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + (2 * ceil32(return_data.size)) + 1503]):
                                idx = idx - 1
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 1568] = 'Inconsistent balances' << 88
                            mem[(2 * ceil32(return_data.size)) + 1536] = 32
                            s = 32
                            while s:
                                require s - 1 < 32
                                if not Mask(8, 248, mem[s + (2 * ceil32(return_data.size)) + 1567]):
                                    s = s - 1
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 1536] = s
                                t = 0
                                while t < idx:
                                    mem[t + (2 * ceil32(return_data.size)) + 1632] = mem[t + (2 * ceil32(return_data.size)) + 1504]
                                    t = t + 32
                                    continue 
                                mem[idx + (2 * ceil32(return_data.size)) + 1632] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                                t = 0
                                while t < s:
                                    mem[t + idx + (2 * ceil32(return_data.size)) + 1634] = mem[t + (2 * ceil32(return_data.size)) + 1568]
                                    t = t + 32
                                    continue 
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1634] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1638] = 32
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1670] = s + idx + 2
                                t = 0
                                while t < s + idx + 2:
                                    mem[t + s + idx + (2 * ceil32(return_data.size)) + 1702] = mem[t + (2 * ceil32(return_data.size)) + 1632]
                                    t = t + 32
                                    continue 
                                if floor32(s + idx + 33) > s + idx + 2:
                                    mem[(2 * s) + (2 * idx) + (2 * ceil32(return_data.size)) + 1704] = 0
                                revert with 0, 32, s + idx + 2, mem[s + idx + (2 * ceil32(return_data.size)) + 1702 len floor32(s + idx + 33)]
                            mem[(2 * ceil32(return_data.size)) + 1600] = 0
                            s = 0
                            while s < idx:
                                mem[s + (2 * ceil32(return_data.size)) + 1664] = mem[s + (2 * ceil32(return_data.size)) + 1504]
                                s = s + 32
                                continue 
                            mem[idx + (2 * ceil32(return_data.size)) + 1664] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < 0:
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1666] = mem[s + (2 * ceil32(return_data.size)) + 1632]
                                s = s + 32
                                continue 
                            mem[idx + (2 * ceil32(return_data.size)) + 1666] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + (2 * ceil32(return_data.size)) + 1670] = 32
                            mem[idx + (2 * ceil32(return_data.size)) + 1702] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1734] = mem[s + (2 * ceil32(return_data.size)) + 1664]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + (2 * ceil32(return_data.size)) + 1736] = 0
                            revert with 0, 32, idx + 2, mem[idx + (2 * ceil32(return_data.size)) + 1734 len floor32(idx + 33)]
                        mem[(2 * ceil32(return_data.size)) + 1600] = 'Inconsistent balances' << 88
                        mem[(2 * ceil32(return_data.size)) + 1568] = 32
                        idx = 32
                        while idx:
                            require idx - 1 < 32
                            if not Mask(8, 248, mem[idx + (2 * ceil32(return_data.size)) + 1599]):
                                idx = idx - 1
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 1568] = idx
                            s = 0
                            while s < 0:
                                mem[s + (2 * ceil32(return_data.size)) + 1664] = mem[s + (2 * ceil32(return_data.size)) + 1568]
                                s = s + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 1664] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                            s = 0
                            while s < idx:
                                mem[s + (2 * ceil32(return_data.size)) + 1666] = mem[s + (2 * ceil32(return_data.size)) + 1600]
                                s = s + 32
                                continue 
                            mem[idx + (2 * ceil32(return_data.size)) + 1666] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[idx + (2 * ceil32(return_data.size)) + 1670] = 32
                            mem[idx + (2 * ceil32(return_data.size)) + 1702] = idx + 2
                            s = 0
                            while s < idx + 2:
                                mem[s + idx + (2 * ceil32(return_data.size)) + 1734] = mem[s + (2 * ceil32(return_data.size)) + 1664]
                                s = s + 32
                                continue 
                            if floor32(idx + 33) > idx + 2:
                                mem[(2 * idx) + (2 * ceil32(return_data.size)) + 1736] = 0
                            revert with 0, 32, idx + 2, mem[idx + (2 * ceil32(return_data.size)) + 1734 len floor32(idx + 33)]
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
                periodFor[address(arg1)].field_256 = 36
                emit Proposal(36, arg1, msg.sender, epoch);
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
                periodFor[address(arg1)].field_256 = 36
                emit Proposal(36, arg1, msg.sender, epoch);
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
                periodFor[address(arg1)].field_256 = 36
                emit Proposal(36, arg1, msg.sender, epoch);
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
                periodFor[address(arg1)].field_256 = 36
                emit Proposal(36, arg1, msg.sender, epoch);
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



}
