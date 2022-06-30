contract main {




// =====================  Runtime code  =====================


#
#  - claim(uint256 arg1)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
const BONUS_MULTIPLIER = 1


address owner;
address sub_9172450dAddress;
address devaddr;
uint256 sub_b1de46f0;
address feeAddress;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 sub_8f54be0e;
uint256 sub_118ab4e1;
uint256 sub_01934a83;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699762;
array of struct stor1546678032441257452667456735582814959992782782816731922691272282333561699763;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699764;

function sub_01934a83(?) payable {
    return sub_01934a83
}

function poolLength() payable {
    return poolInfo.length
}

function sub_118ab4e1(?) payable {
    return sub_118ab4e1
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           bool(poolInfo[arg1].field_784),
           bool(poolInfo[arg1].field_792),
           poolInfo[arg1].field_1024
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function feeAddress() payable {
    return feeAddress
}

function startBlock() payable {
    return startBlock
}

function owner() payable {
    return owner
}

function sub_8f54be0e(?) payable {
    return sub_8f54be0e
}

function sub_9172450d(?) payable {
    return sub_9172450dAddress
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, 
           userInfo[arg1][arg2].field_256,
           userInfo[arg1][arg2].field_512,
           userInfo[arg1][arg2].field_768,
           userInfo[arg1][arg2].field_1024,
           userInfo[arg1][arg2].field_1280,
           bool(userInfo[arg1][arg2].field_1536),
           bool(userInfo[arg1][arg2].field_1544)
}

function sub_b1de46f0(?) payable {
    return sub_b1de46f0
}

function devaddr() payable {
    return devaddr
}

function _fallback() payable {
    revert
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    devaddr = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeAddress != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    feeAddress = arg1
}

function setIntervalBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_8f54be0e = arg1
}

function updateEmissionRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_b1de46f0 = arg1
}

function setEmergencyWithdrawnable(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require arg1 < poolInfo.length
    poolInfo[arg1].field_784 = Mask(240, 0, arg2)
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2 - arg1:
        return 0
    if arg2 - arg1 / arg2 - arg1 != 1:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (arg2 - arg1)
}

function changeTokenOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(sub_9172450dAddress)
    call sub_9172450dAddress._transferownership(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawSafe(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    require ext_code.size(sub_9172450dAddress)
    call sub_9172450dAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if not poolInfo[arg1].field_784:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7321656d657267656e637957697468647261776e61626c65206e6f7420616c6c6f7765,
                    mem[199 len 29]
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
    if not ext_code.size(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][msg.sender].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
}

function pendingTost(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp <= userInfo[arg1][address(arg2)].field_512:
        return 0
    if not ext_call.return_data[0]:
        return 0
    if userInfo[arg1][address(arg2)].field_1544:
        if userInfo[arg1][address(arg2)].field_512 > userInfo[arg1][address(arg2)].field_512:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_8f54be0e:
            revert with 0, 'SafeMath: division by zero'
        if not userInfo[arg1][address(arg2)].field_0:
            return 0
        if sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != sub_b1de46f0:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000:
            return 0
        if 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000 / sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000 != 0 / sub_8f54be0e:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000:
            return 0
        if poolInfo[arg1].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000 / 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000 != poolInfo[arg1].field_256 / 100:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        return (poolInfo[arg1].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000)
    if block.timestamp > userInfo[arg1][address(arg2)].field_1280:
        if userInfo[arg1][address(arg2)].field_1544:
            if userInfo[arg1][address(arg2)].field_512 > userInfo[arg1][address(arg2)].field_1280:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[arg1][address(arg2)].field_1280 - userInfo[arg1][address(arg2)].field_512:
                if not sub_8f54be0e:
                    revert with 0, 'SafeMath: division by zero'
                if not userInfo[arg1][address(arg2)].field_0:
                    return 0
                if sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != sub_b1de46f0:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000:
                    return 0
                if 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000 / sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000 != 0 / sub_8f54be0e:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000:
                    return 0
                if poolInfo[arg1].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000 / 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000 != poolInfo[arg1].field_256 / 100:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                return (poolInfo[arg1].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000)
            if userInfo[arg1][address(arg2)].field_1280 - userInfo[arg1][address(arg2)].field_512 / userInfo[arg1][address(arg2)].field_1280 - userInfo[arg1][address(arg2)].field_512 != 1:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not sub_8f54be0e:
                revert with 0, 'SafeMath: division by zero'
            if not userInfo[arg1][address(arg2)].field_0:
                return 0
            if sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != sub_b1de46f0:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000:
                return 0
            if userInfo[arg1][address(arg2)].field_1280 - userInfo[arg1][address(arg2)].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000 / sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000 != userInfo[arg1][address(arg2)].field_1280 - userInfo[arg1][address(arg2)].field_512 / sub_8f54be0e:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not userInfo[arg1][address(arg2)].field_1280 - userInfo[arg1][address(arg2)].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000:
                return 0
            if poolInfo[arg1].field_256 / 100 * userInfo[arg1][address(arg2)].field_1280 - userInfo[arg1][address(arg2)].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000 / userInfo[arg1][address(arg2)].field_1280 - userInfo[arg1][address(arg2)].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000 != poolInfo[arg1].field_256 / 100:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            return (poolInfo[arg1].field_256 / 100 * userInfo[arg1][address(arg2)].field_1280 - userInfo[arg1][address(arg2)].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000)
        if userInfo[arg1][address(arg2)].field_512 < userInfo[arg1][address(arg2)].field_1280:
            if userInfo[arg1][address(arg2)].field_512 > userInfo[arg1][address(arg2)].field_1280:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[arg1][address(arg2)].field_1280 - userInfo[arg1][address(arg2)].field_512:
                if not sub_8f54be0e:
                    revert with 0, 'SafeMath: division by zero'
                if not userInfo[arg1][address(arg2)].field_0:
                    return 0
                if sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != sub_b1de46f0:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000:
                    return 0
                if 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000 / sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000 != 0 / sub_8f54be0e:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000:
                    return 0
                if poolInfo[arg1].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000 / 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000 != poolInfo[arg1].field_256 / 100:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                return (poolInfo[arg1].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000)
            if userInfo[arg1][address(arg2)].field_1280 - userInfo[arg1][address(arg2)].field_512 / userInfo[arg1][address(arg2)].field_1280 - userInfo[arg1][address(arg2)].field_512 != 1:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not sub_8f54be0e:
                revert with 0, 'SafeMath: division by zero'
            if not userInfo[arg1][address(arg2)].field_0:
                return 0
            if sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != sub_b1de46f0:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000:
                return 0
            if userInfo[arg1][address(arg2)].field_1280 - userInfo[arg1][address(arg2)].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000 / sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000 != userInfo[arg1][address(arg2)].field_1280 - userInfo[arg1][address(arg2)].field_512 / sub_8f54be0e:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not userInfo[arg1][address(arg2)].field_1280 - userInfo[arg1][address(arg2)].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000:
                return 0
            if poolInfo[arg1].field_256 / 100 * userInfo[arg1][address(arg2)].field_1280 - userInfo[arg1][address(arg2)].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000 / userInfo[arg1][address(arg2)].field_1280 - userInfo[arg1][address(arg2)].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000 != poolInfo[arg1].field_256 / 100:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            return (poolInfo[arg1].field_256 / 100 * userInfo[arg1][address(arg2)].field_1280 - userInfo[arg1][address(arg2)].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000)
    if userInfo[arg1][address(arg2)].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - userInfo[arg1][address(arg2)].field_512:
        if not sub_8f54be0e:
            revert with 0, 'SafeMath: division by zero'
        if not userInfo[arg1][address(arg2)].field_0:
            return 0
        if sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != sub_b1de46f0:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000:
            return 0
        if 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000 / sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000 != 0 / sub_8f54be0e:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000:
            return 0
        if poolInfo[arg1].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000 / 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000 != poolInfo[arg1].field_256 / 100:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        return (poolInfo[arg1].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000)
    if block.timestamp - userInfo[arg1][address(arg2)].field_512 / block.timestamp - userInfo[arg1][address(arg2)].field_512 != 1:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not sub_8f54be0e:
        revert with 0, 'SafeMath: division by zero'
    if not userInfo[arg1][address(arg2)].field_0:
        return 0
    if sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != sub_b1de46f0:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000:
        return 0
    if block.timestamp - userInfo[arg1][address(arg2)].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000 / sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000 != block.timestamp - userInfo[arg1][address(arg2)].field_512 / sub_8f54be0e:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not block.timestamp - userInfo[arg1][address(arg2)].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000:
        return 0
    if poolInfo[arg1].field_256 / 100 * block.timestamp - userInfo[arg1][address(arg2)].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000 / block.timestamp - userInfo[arg1][address(arg2)].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000 != poolInfo[arg1].field_256 / 100:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    return (poolInfo[arg1].field_256 / 100 * block.timestamp - userInfo[arg1][address(arg2)].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][address(arg2)].field_0 / 10000)
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if poolInfo[arg1].field_256:
                if userInfo[arg1][msg.sender].field_1544:
                    if userInfo[arg1][msg.sender].field_512 > userInfo[arg1][msg.sender].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_8f54be0e:
                        revert with 0, 'SafeMath: division by zero'
                    if not userInfo[arg1][msg.sender].field_0:
                        require ext_code.size(sub_9172450dAddress)
                        call sub_9172450dAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args devaddr, 0
                    else:
                        if sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b1de46f0:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000:
                            require ext_code.size(sub_9172450dAddress)
                            call sub_9172450dAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            if 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 != 0 / sub_8f54be0e:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if not 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000:
                                require ext_code.size(sub_9172450dAddress)
                                call sub_9172450dAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                if poolInfo[arg1].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 / 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 != poolInfo[arg1].field_256 / 100:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                require ext_code.size(sub_9172450dAddress)
                                call sub_9172450dAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args devaddr, poolInfo[arg1].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 / 10
                else:
                    if block.timestamp <= userInfo[arg1][msg.sender].field_1280:
                        if userInfo[arg1][msg.sender].field_512 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - userInfo[arg1][msg.sender].field_512:
                            if not sub_8f54be0e:
                                revert with 0, 'SafeMath: division by zero'
                            if not userInfo[arg1][msg.sender].field_0:
                                require ext_code.size(sub_9172450dAddress)
                                call sub_9172450dAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                if sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b1de46f0:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000:
                                    require ext_code.size(sub_9172450dAddress)
                                    call sub_9172450dAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    if 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 != 0 / sub_8f54be0e:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000:
                                        require ext_code.size(sub_9172450dAddress)
                                        call sub_9172450dAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devaddr, 0
                                    else:
                                        if poolInfo[arg1].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 / 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 != poolInfo[arg1].field_256 / 100:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        require ext_code.size(sub_9172450dAddress)
                                        call sub_9172450dAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devaddr, poolInfo[arg1].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 / 10
                        else:
                            if block.timestamp - userInfo[arg1][msg.sender].field_512 / block.timestamp - userInfo[arg1][msg.sender].field_512 != 1:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not sub_8f54be0e:
                                revert with 0, 'SafeMath: division by zero'
                            if not userInfo[arg1][msg.sender].field_0:
                                require ext_code.size(sub_9172450dAddress)
                                call sub_9172450dAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                if sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b1de46f0:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000:
                                    require ext_code.size(sub_9172450dAddress)
                                    call sub_9172450dAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    if block.timestamp - userInfo[arg1][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 != block.timestamp - userInfo[arg1][msg.sender].field_512 / sub_8f54be0e:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not block.timestamp - userInfo[arg1][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000:
                                        require ext_code.size(sub_9172450dAddress)
                                        call sub_9172450dAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devaddr, 0
                                    else:
                                        if poolInfo[arg1].field_256 / 100 * block.timestamp - userInfo[arg1][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 / block.timestamp - userInfo[arg1][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 != poolInfo[arg1].field_256 / 100:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        require ext_code.size(sub_9172450dAddress)
                                        call sub_9172450dAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devaddr, poolInfo[arg1].field_256 / 100 * block.timestamp - userInfo[arg1][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 / 10
                    else:
                        if userInfo[arg1][msg.sender].field_1544:
                            if userInfo[arg1][msg.sender].field_512 > userInfo[arg1][msg.sender].field_1280:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not userInfo[arg1][msg.sender].field_1280 - userInfo[arg1][msg.sender].field_512:
                                if not sub_8f54be0e:
                                    revert with 0, 'SafeMath: division by zero'
                                if not userInfo[arg1][msg.sender].field_0:
                                    require ext_code.size(sub_9172450dAddress)
                                    call sub_9172450dAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    if sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b1de46f0:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000:
                                        require ext_code.size(sub_9172450dAddress)
                                        call sub_9172450dAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devaddr, 0
                                    else:
                                        if 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 != 0 / sub_8f54be0e:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if not 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000:
                                            require ext_code.size(sub_9172450dAddress)
                                            call sub_9172450dAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devaddr, 0
                                        else:
                                            if poolInfo[arg1].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 / 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 != poolInfo[arg1].field_256 / 100:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            require ext_code.size(sub_9172450dAddress)
                                            call sub_9172450dAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devaddr, poolInfo[arg1].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 / 10
                            else:
                                if userInfo[arg1][msg.sender].field_1280 - userInfo[arg1][msg.sender].field_512 / userInfo[arg1][msg.sender].field_1280 - userInfo[arg1][msg.sender].field_512 != 1:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not sub_8f54be0e:
                                    revert with 0, 'SafeMath: division by zero'
                                if not userInfo[arg1][msg.sender].field_0:
                                    require ext_code.size(sub_9172450dAddress)
                                    call sub_9172450dAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    if sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b1de46f0:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000:
                                        require ext_code.size(sub_9172450dAddress)
                                        call sub_9172450dAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devaddr, 0
                                    else:
                                        if userInfo[arg1][msg.sender].field_1280 - userInfo[arg1][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 != userInfo[arg1][msg.sender].field_1280 - userInfo[arg1][msg.sender].field_512 / sub_8f54be0e:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if not userInfo[arg1][msg.sender].field_1280 - userInfo[arg1][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000:
                                            require ext_code.size(sub_9172450dAddress)
                                            call sub_9172450dAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devaddr, 0
                                        else:
                                            if poolInfo[arg1].field_256 / 100 * userInfo[arg1][msg.sender].field_1280 - userInfo[arg1][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 / userInfo[arg1][msg.sender].field_1280 - userInfo[arg1][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 != poolInfo[arg1].field_256 / 100:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            require ext_code.size(sub_9172450dAddress)
                                            call sub_9172450dAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devaddr, poolInfo[arg1].field_256 / 100 * userInfo[arg1][msg.sender].field_1280 - userInfo[arg1][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 / 10
                        else:
                            if userInfo[arg1][msg.sender].field_512 < userInfo[arg1][msg.sender].field_1280:
                                if userInfo[arg1][msg.sender].field_512 > userInfo[arg1][msg.sender].field_1280:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not userInfo[arg1][msg.sender].field_1280 - userInfo[arg1][msg.sender].field_512:
                                    if not sub_8f54be0e:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not userInfo[arg1][msg.sender].field_0:
                                        require ext_code.size(sub_9172450dAddress)
                                        call sub_9172450dAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devaddr, 0
                                    else:
                                        if sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b1de46f0:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000:
                                            require ext_code.size(sub_9172450dAddress)
                                            call sub_9172450dAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devaddr, 0
                                        else:
                                            if 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 != 0 / sub_8f54be0e:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if not 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000:
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0
                                            else:
                                                if poolInfo[arg1].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 / 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 != poolInfo[arg1].field_256 / 100:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, poolInfo[arg1].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 / 10
                                else:
                                    if userInfo[arg1][msg.sender].field_1280 - userInfo[arg1][msg.sender].field_512 / userInfo[arg1][msg.sender].field_1280 - userInfo[arg1][msg.sender].field_512 != 1:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not sub_8f54be0e:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not userInfo[arg1][msg.sender].field_0:
                                        require ext_code.size(sub_9172450dAddress)
                                        call sub_9172450dAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devaddr, 0
                                    else:
                                        if sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b1de46f0:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000:
                                            require ext_code.size(sub_9172450dAddress)
                                            call sub_9172450dAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devaddr, 0
                                        else:
                                            if userInfo[arg1][msg.sender].field_1280 - userInfo[arg1][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 != userInfo[arg1][msg.sender].field_1280 - userInfo[arg1][msg.sender].field_512 / sub_8f54be0e:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if not userInfo[arg1][msg.sender].field_1280 - userInfo[arg1][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000:
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0
                                            else:
                                                if poolInfo[arg1].field_256 / 100 * userInfo[arg1][msg.sender].field_1280 - userInfo[arg1][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 / userInfo[arg1][msg.sender].field_1280 - userInfo[arg1][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 != poolInfo[arg1].field_256 / 100:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, poolInfo[arg1].field_256 / 100 * userInfo[arg1][msg.sender].field_1280 - userInfo[arg1][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 / 10
                            else:
                                if userInfo[arg1][msg.sender].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - userInfo[arg1][msg.sender].field_512:
                                    if not sub_8f54be0e:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not userInfo[arg1][msg.sender].field_0:
                                        require ext_code.size(sub_9172450dAddress)
                                        call sub_9172450dAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devaddr, 0
                                    else:
                                        if sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b1de46f0:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000:
                                            require ext_code.size(sub_9172450dAddress)
                                            call sub_9172450dAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devaddr, 0
                                        else:
                                            if 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 != 0 / sub_8f54be0e:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if not 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000:
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0
                                            else:
                                                if poolInfo[arg1].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 / 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 != poolInfo[arg1].field_256 / 100:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, poolInfo[arg1].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 / 10
                                else:
                                    if block.timestamp - userInfo[arg1][msg.sender].field_512 / block.timestamp - userInfo[arg1][msg.sender].field_512 != 1:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not sub_8f54be0e:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not userInfo[arg1][msg.sender].field_0:
                                        require ext_code.size(sub_9172450dAddress)
                                        call sub_9172450dAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devaddr, 0
                                    else:
                                        if sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_b1de46f0:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000:
                                            require ext_code.size(sub_9172450dAddress)
                                            call sub_9172450dAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devaddr, 0
                                        else:
                                            if block.timestamp - userInfo[arg1][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 != block.timestamp - userInfo[arg1][msg.sender].field_512 / sub_8f54be0e:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if not block.timestamp - userInfo[arg1][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000:
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0
                                            else:
                                                if poolInfo[arg1].field_256 / 100 * block.timestamp - userInfo[arg1][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 / block.timestamp - userInfo[arg1][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 != poolInfo[arg1].field_256 / 100:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, poolInfo[arg1].field_256 / 100 * block.timestamp - userInfo[arg1][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[arg1][msg.sender].field_0 / 10000 / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = msg.sender
        mem[32] = sha3(idx, 6)
        if block.number > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if poolInfo[idx].field_256:
                    if userInfo[idx][msg.sender].field_1544:
                        _380 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_380] = 30
                        mem[_380 + 32] = 'SafeMath: subtraction overflow'
                        if userInfo[idx][msg.sender].field_512 > userInfo[idx][msg.sender].field_512:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _380 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        _440 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_440] = 26
                        mem[_440 + 32] = 'SafeMath: division by zero'
                        if not sub_8f54be0e:
                            _450 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _450 + 68] = mem[idx + _440 + 32]
                                idx = idx + 32
                                continue 
                            mem[_450 + 68] = mem[_450 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _450 + -mem[64] + 100
                        _482 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_482] = 26
                        mem[_482 + 32] = 'SafeMath: division by zero'
                        if not userInfo[idx][msg.sender].field_0:
                            _531 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_531] = 26
                            mem[_531 + 32] = 'SafeMath: division by zero'
                            _579 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_579] = 26
                            mem[_579 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = devaddr
                            mem[mem[64] + 36] = 0
                            require ext_code.size(sub_9172450dAddress)
                            call sub_9172450dAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            if sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_b1de46f0:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _534 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_534] = 26
                            mem[_534 + 32] = 'SafeMath: division by zero'
                            if not sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                _586 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_586] = 26
                                mem[_586 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = devaddr
                                mem[mem[64] + 36] = 0
                                require ext_code.size(sub_9172450dAddress)
                                call sub_9172450dAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                if 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != 0 / sub_8f54be0e:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                    _588 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_588] = 26
                                    mem[_588 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = devaddr
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(sub_9172450dAddress)
                                    call sub_9172450dAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    if poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != poolInfo[idx].field_256 / 100:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _594 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_594] = 26
                                    mem[_594 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = devaddr
                                    mem[mem[64] + 36] = poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                    require ext_code.size(sub_9172450dAddress)
                                    call sub_9172450dAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args devaddr, poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                    else:
                        if block.timestamp <= userInfo[idx][msg.sender].field_1280:
                            _381 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_381] = 30
                            mem[_381 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[idx][msg.sender].field_512 > block.timestamp:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _381 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.timestamp - userInfo[idx][msg.sender].field_512:
                                _445 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_445] = 26
                                mem[_445 + 32] = 'SafeMath: division by zero'
                                if not sub_8f54be0e:
                                    _455 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _455 + 68] = mem[idx + _445 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_455 + 68] = mem[_455 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _455 + -mem[64] + 100
                                _496 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_496] = 26
                                mem[_496 + 32] = 'SafeMath: division by zero'
                                if not userInfo[idx][msg.sender].field_0:
                                    _537 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_537] = 26
                                    mem[_537 + 32] = 'SafeMath: division by zero'
                                    _587 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_587] = 26
                                    mem[_587 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = devaddr
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(sub_9172450dAddress)
                                    call sub_9172450dAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    if sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_b1de46f0:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _541 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_541] = 26
                                    mem[_541 + 32] = 'SafeMath: division by zero'
                                    if not sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                        _592 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_592] = 26
                                        mem[_592 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = devaddr
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(sub_9172450dAddress)
                                        call sub_9172450dAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devaddr, 0
                                    else:
                                        if 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != 0 / sub_8f54be0e:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                            _598 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_598] = 26
                                            mem[_598 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = devaddr
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(sub_9172450dAddress)
                                            call sub_9172450dAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devaddr, 0
                                        else:
                                            if poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != poolInfo[idx].field_256 / 100:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _606 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_606] = 26
                                            mem[_606 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = devaddr
                                            mem[mem[64] + 36] = poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                            require ext_code.size(sub_9172450dAddress)
                                            call sub_9172450dAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devaddr, poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                            else:
                                if block.timestamp - userInfo[idx][msg.sender].field_512 / block.timestamp - userInfo[idx][msg.sender].field_512 != 1:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _453 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_453] = 26
                                mem[_453 + 32] = 'SafeMath: division by zero'
                                if not sub_8f54be0e:
                                    _462 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _462 + 68] = mem[idx + _453 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_462 + 68] = mem[_462 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _462 + -mem[64] + 100
                                _503 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_503] = 26
                                mem[_503 + 32] = 'SafeMath: division by zero'
                                if not userInfo[idx][msg.sender].field_0:
                                    _540 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_540] = 26
                                    mem[_540 + 32] = 'SafeMath: division by zero'
                                    _589 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_589] = 26
                                    mem[_589 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = devaddr
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(sub_9172450dAddress)
                                    call sub_9172450dAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    if sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_b1de46f0:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _549 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_549] = 26
                                    mem[_549 + 32] = 'SafeMath: division by zero'
                                    if not sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                        _597 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_597] = 26
                                        mem[_597 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = devaddr
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(sub_9172450dAddress)
                                        call sub_9172450dAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devaddr, 0
                                    else:
                                        if block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if not block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                            _605 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_605] = 26
                                            mem[_605 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = devaddr
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(sub_9172450dAddress)
                                            call sub_9172450dAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devaddr, 0
                                        else:
                                            if poolInfo[idx].field_256 / 100 * block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != poolInfo[idx].field_256 / 100:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _621 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_621] = 26
                                            mem[_621 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = devaddr
                                            mem[mem[64] + 36] = poolInfo[idx].field_256 / 100 * block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                            require ext_code.size(sub_9172450dAddress)
                                            call sub_9172450dAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devaddr, poolInfo[idx].field_256 / 100 * block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                        else:
                            if userInfo[idx][msg.sender].field_1544:
                                _385 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_385] = 30
                                mem[_385 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[idx][msg.sender].field_512 > userInfo[idx][msg.sender].field_1280:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                    idx = 32
                                    while idx < 30:
                                        mem[idx + mem[64] + 68] = mem[idx + _385 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512:
                                    _454 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_454] = 26
                                    mem[_454 + 32] = 'SafeMath: division by zero'
                                    if not sub_8f54be0e:
                                        _465 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _465 + 68] = mem[idx + _454 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_465 + 68] = mem[_465 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _465 + -mem[64] + 100
                                    _507 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_507] = 26
                                    mem[_507 + 32] = 'SafeMath: division by zero'
                                    if not userInfo[idx][msg.sender].field_0:
                                        _544 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_544] = 26
                                        mem[_544 + 32] = 'SafeMath: division by zero'
                                        _593 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_593] = 26
                                        mem[_593 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = devaddr
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(sub_9172450dAddress)
                                        call sub_9172450dAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devaddr, 0
                                    else:
                                        if sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_b1de46f0:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _551 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_551] = 26
                                        mem[_551 + 32] = 'SafeMath: division by zero'
                                        if not sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                            _602 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_602] = 26
                                            mem[_602 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = devaddr
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(sub_9172450dAddress)
                                            call sub_9172450dAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devaddr, 0
                                        else:
                                            if 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != 0 / sub_8f54be0e:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if not 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                _610 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_610] = 26
                                                mem[_610 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = devaddr
                                                mem[mem[64] + 36] = 0
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0
                                            else:
                                                if poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != poolInfo[idx].field_256 / 100:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _623 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_623] = 26
                                                mem[_623 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = devaddr
                                                mem[mem[64] + 36] = poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                else:
                                    if userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 != 1:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _458 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_458] = 26
                                    mem[_458 + 32] = 'SafeMath: division by zero'
                                    if not sub_8f54be0e:
                                        _473 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _473 + 68] = mem[idx + _458 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_473 + 68] = mem[_473 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _473 + -mem[64] + 100
                                    _515 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_515] = 26
                                    mem[_515 + 32] = 'SafeMath: division by zero'
                                    if not userInfo[idx][msg.sender].field_0:
                                        _550 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_550] = 26
                                        mem[_550 + 32] = 'SafeMath: division by zero'
                                        _599 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_599] = 26
                                        mem[_599 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = devaddr
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(sub_9172450dAddress)
                                        call sub_9172450dAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devaddr, 0
                                    else:
                                        if sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_b1de46f0:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _558 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_558] = 26
                                        mem[_558 + 32] = 'SafeMath: division by zero'
                                        if not sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                            _609 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_609] = 26
                                            mem[_609 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = devaddr
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(sub_9172450dAddress)
                                            call sub_9172450dAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devaddr, 0
                                        else:
                                            if userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if not userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                _622 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_622] = 26
                                                mem[_622 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = devaddr
                                                mem[mem[64] + 36] = 0
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0
                                            else:
                                                if poolInfo[idx].field_256 / 100 * userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != poolInfo[idx].field_256 / 100:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _636 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_636] = 26
                                                mem[_636 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = devaddr
                                                mem[mem[64] + 36] = poolInfo[idx].field_256 / 100 * userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, poolInfo[idx].field_256 / 100 * userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                            else:
                                if userInfo[idx][msg.sender].field_512 < userInfo[idx][msg.sender].field_1280:
                                    _390 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_390] = 30
                                    mem[_390 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[idx][msg.sender].field_512 > userInfo[idx][msg.sender].field_1280:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                        idx = 32
                                        while idx < 30:
                                            mem[idx + mem[64] + 68] = mem[idx + _390 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512:
                                        _459 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_459] = 26
                                        mem[_459 + 32] = 'SafeMath: division by zero'
                                        if not sub_8f54be0e:
                                            _476 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _476 + 68] = mem[idx + _459 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_476 + 68] = mem[_476 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _476 + -mem[64] + 100
                                        _519 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_519] = 26
                                        mem[_519 + 32] = 'SafeMath: division by zero'
                                        if not userInfo[idx][msg.sender].field_0:
                                            _554 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_554] = 26
                                            mem[_554 + 32] = 'SafeMath: division by zero'
                                            _603 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_603] = 26
                                            mem[_603 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = devaddr
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(sub_9172450dAddress)
                                            call sub_9172450dAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devaddr, 0
                                        else:
                                            if sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_b1de46f0:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _560 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_560] = 26
                                            mem[_560 + 32] = 'SafeMath: division by zero'
                                            if not sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                _614 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_614] = 26
                                                mem[_614 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = devaddr
                                                mem[mem[64] + 36] = 0
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0
                                            else:
                                                if 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != 0 / sub_8f54be0e:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                    _627 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_627] = 26
                                                    mem[_627 + 32] = 'SafeMath: division by zero'
                                                    mem[mem[64] + 4] = devaddr
                                                    mem[mem[64] + 36] = 0
                                                    require ext_code.size(sub_9172450dAddress)
                                                    call sub_9172450dAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args devaddr, 0
                                                else:
                                                    if poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != poolInfo[idx].field_256 / 100:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _638 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_638] = 26
                                                    mem[_638 + 32] = 'SafeMath: division by zero'
                                                    mem[mem[64] + 4] = devaddr
                                                    mem[mem[64] + 36] = poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                                    require ext_code.size(sub_9172450dAddress)
                                                    call sub_9172450dAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args devaddr, poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                    else:
                                        if userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 != 1:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _468 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_468] = 26
                                        mem[_468 + 32] = 'SafeMath: division by zero'
                                        if not sub_8f54be0e:
                                            _488 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _488 + 68] = mem[idx + _468 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_488 + 68] = mem[_488 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _488 + -mem[64] + 100
                                        _525 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_525] = 26
                                        mem[_525 + 32] = 'SafeMath: division by zero'
                                        if not userInfo[idx][msg.sender].field_0:
                                            _559 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_559] = 26
                                            mem[_559 + 32] = 'SafeMath: division by zero'
                                            _611 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_611] = 26
                                            mem[_611 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = devaddr
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(sub_9172450dAddress)
                                            call sub_9172450dAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devaddr, 0
                                        else:
                                            if sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_b1de46f0:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _563 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_563] = 26
                                            mem[_563 + 32] = 'SafeMath: division by zero'
                                            if not sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                _626 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_626] = 26
                                                mem[_626 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = devaddr
                                                mem[mem[64] + 36] = 0
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0
                                            else:
                                                if userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                    _637 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_637] = 26
                                                    mem[_637 + 32] = 'SafeMath: division by zero'
                                                    mem[mem[64] + 4] = devaddr
                                                    mem[mem[64] + 36] = 0
                                                    require ext_code.size(sub_9172450dAddress)
                                                    call sub_9172450dAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args devaddr, 0
                                                else:
                                                    if poolInfo[idx].field_256 / 100 * userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != poolInfo[idx].field_256 / 100:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _650 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_650] = 26
                                                    mem[_650 + 32] = 'SafeMath: division by zero'
                                                    mem[mem[64] + 4] = devaddr
                                                    mem[mem[64] + 36] = poolInfo[idx].field_256 / 100 * userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                                    require ext_code.size(sub_9172450dAddress)
                                                    call sub_9172450dAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args devaddr, poolInfo[idx].field_256 / 100 * userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                else:
                                    _391 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_391] = 30
                                    mem[_391 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[idx][msg.sender].field_512 > block.timestamp:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                        idx = 32
                                        while idx < 30:
                                            mem[idx + mem[64] + 68] = mem[idx + _391 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - userInfo[idx][msg.sender].field_512:
                                        _460 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_460] = 26
                                        mem[_460 + 32] = 'SafeMath: division by zero'
                                        if not sub_8f54be0e:
                                            _479 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _479 + 68] = mem[idx + _460 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_479 + 68] = mem[_479 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _479 + -mem[64] + 100
                                        _523 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_523] = 26
                                        mem[_523 + 32] = 'SafeMath: division by zero'
                                        if not userInfo[idx][msg.sender].field_0:
                                            _557 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_557] = 26
                                            mem[_557 + 32] = 'SafeMath: division by zero'
                                            _604 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_604] = 26
                                            mem[_604 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = devaddr
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(sub_9172450dAddress)
                                            call sub_9172450dAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devaddr, 0
                                        else:
                                            if sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_b1de46f0:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _562 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_562] = 26
                                            mem[_562 + 32] = 'SafeMath: division by zero'
                                            if not sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                _618 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_618] = 26
                                                mem[_618 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = devaddr
                                                mem[mem[64] + 36] = 0
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0
                                            else:
                                                if 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != 0 / sub_8f54be0e:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                    _631 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_631] = 26
                                                    mem[_631 + 32] = 'SafeMath: division by zero'
                                                    mem[mem[64] + 4] = devaddr
                                                    mem[mem[64] + 36] = 0
                                                    require ext_code.size(sub_9172450dAddress)
                                                    call sub_9172450dAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args devaddr, 0
                                                else:
                                                    if poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != poolInfo[idx].field_256 / 100:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _640 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_640] = 26
                                                    mem[_640 + 32] = 'SafeMath: division by zero'
                                                    mem[mem[64] + 4] = devaddr
                                                    mem[mem[64] + 36] = poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                                    require ext_code.size(sub_9172450dAddress)
                                                    call sub_9172450dAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args devaddr, poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                    else:
                                        if block.timestamp - userInfo[idx][msg.sender].field_512 / block.timestamp - userInfo[idx][msg.sender].field_512 != 1:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _469 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_469] = 26
                                        mem[_469 + 32] = 'SafeMath: division by zero'
                                        if not sub_8f54be0e:
                                            _491 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _491 + 68] = mem[idx + _469 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_491 + 68] = mem[_491 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _491 + -mem[64] + 100
                                        _527 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_527] = 26
                                        mem[_527 + 32] = 'SafeMath: division by zero'
                                        if not userInfo[idx][msg.sender].field_0:
                                            _561 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_561] = 26
                                            mem[_561 + 32] = 'SafeMath: division by zero'
                                            _615 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_615] = 26
                                            mem[_615 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = devaddr
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(sub_9172450dAddress)
                                            call sub_9172450dAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devaddr, 0
                                        else:
                                            if sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_b1de46f0:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _564 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_564] = 26
                                            mem[_564 + 32] = 'SafeMath: division by zero'
                                            if not sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                _630 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_630] = 26
                                                mem[_630 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = devaddr
                                                mem[mem[64] + 36] = 0
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0
                                            else:
                                                if block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                    _639 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_639] = 26
                                                    mem[_639 + 32] = 'SafeMath: division by zero'
                                                    mem[mem[64] + 4] = devaddr
                                                    mem[mem[64] + 36] = 0
                                                    require ext_code.size(sub_9172450dAddress)
                                                    call sub_9172450dAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args devaddr, 0
                                                else:
                                                    if poolInfo[idx].field_256 / 100 * block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != poolInfo[idx].field_256 / 100:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _651 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_651] = 26
                                                    mem[_651 + 32] = 'SafeMath: division by zero'
                                                    mem[mem[64] + 4] = devaddr
                                                    mem[mem[64] + 36] = poolInfo[idx].field_256 / 100 * block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                                    require ext_code.size(sub_9172450dAddress)
                                                    call sub_9172450dAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args devaddr, poolInfo[idx].field_256 / 100 * block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            poolInfo[idx].field_512 = block.number
        idx = idx + 1
        continue 
}

function sub_47e2a104(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if arg3 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x777365743a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = msg.sender
            mem[32] = sha3(idx, 6)
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if poolInfo[idx].field_256:
                        if userInfo[idx][msg.sender].field_1544:
                            _446 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_446] = 30
                            mem[_446 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[idx][msg.sender].field_512 > userInfo[idx][msg.sender].field_512:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _446 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: subtraction overflow'
                            _507 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_507] = 26
                            mem[_507 + 32] = 'SafeMath: division by zero'
                            if not sub_8f54be0e:
                                _517 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _517 + 68] = mem[idx + _507 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_517 + 68] = mem[_517 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _517 + -mem[64] + 100
                            _549 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_549] = 26
                            mem[_549 + 32] = 'SafeMath: division by zero'
                            if not userInfo[idx][msg.sender].field_0:
                                _598 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_598] = 26
                                mem[_598 + 32] = 'SafeMath: division by zero'
                                _646 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_646] = 26
                                mem[_646 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = devaddr
                                mem[mem[64] + 36] = 0
                                require ext_code.size(sub_9172450dAddress)
                                call sub_9172450dAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                if sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_b1de46f0:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _601 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_601] = 26
                                mem[_601 + 32] = 'SafeMath: division by zero'
                                if not sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                    _653 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_653] = 26
                                    mem[_653 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = devaddr
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(sub_9172450dAddress)
                                    call sub_9172450dAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    if 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != 0 / sub_8f54be0e:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                        _655 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_655] = 26
                                        mem[_655 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = devaddr
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(sub_9172450dAddress)
                                        call sub_9172450dAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devaddr, 0
                                    else:
                                        if poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != poolInfo[idx].field_256 / 100:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _661 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_661] = 26
                                        mem[_661 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = devaddr
                                        mem[mem[64] + 36] = poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                        require ext_code.size(sub_9172450dAddress)
                                        call sub_9172450dAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devaddr, poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                        else:
                            if block.timestamp <= userInfo[idx][msg.sender].field_1280:
                                _448 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_448] = 30
                                mem[_448 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[idx][msg.sender].field_512 > block.timestamp:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                    idx = 32
                                    while idx < 30:
                                        mem[idx + mem[64] + 68] = mem[idx + _448 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - userInfo[idx][msg.sender].field_512:
                                    _512 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_512] = 26
                                    mem[_512 + 32] = 'SafeMath: division by zero'
                                    if not sub_8f54be0e:
                                        _522 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _522 + 68] = mem[idx + _512 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_522 + 68] = mem[_522 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _522 + -mem[64] + 100
                                    _563 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_563] = 26
                                    mem[_563 + 32] = 'SafeMath: division by zero'
                                    if not userInfo[idx][msg.sender].field_0:
                                        _604 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_604] = 26
                                        mem[_604 + 32] = 'SafeMath: division by zero'
                                        _654 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_654] = 26
                                        mem[_654 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = devaddr
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(sub_9172450dAddress)
                                        call sub_9172450dAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devaddr, 0
                                    else:
                                        if sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_b1de46f0:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _608 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_608] = 26
                                        mem[_608 + 32] = 'SafeMath: division by zero'
                                        if not sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                            _659 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_659] = 26
                                            mem[_659 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = devaddr
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(sub_9172450dAddress)
                                            call sub_9172450dAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devaddr, 0
                                        else:
                                            if 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != 0 / sub_8f54be0e:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if not 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                _665 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_665] = 26
                                                mem[_665 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = devaddr
                                                mem[mem[64] + 36] = 0
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0
                                            else:
                                                if poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != poolInfo[idx].field_256 / 100:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _673 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_673] = 26
                                                mem[_673 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = devaddr
                                                mem[mem[64] + 36] = poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                else:
                                    if block.timestamp - userInfo[idx][msg.sender].field_512 / block.timestamp - userInfo[idx][msg.sender].field_512 != 1:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _520 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_520] = 26
                                    mem[_520 + 32] = 'SafeMath: division by zero'
                                    if not sub_8f54be0e:
                                        _529 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _529 + 68] = mem[idx + _520 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_529 + 68] = mem[_529 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _529 + -mem[64] + 100
                                    _570 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_570] = 26
                                    mem[_570 + 32] = 'SafeMath: division by zero'
                                    if not userInfo[idx][msg.sender].field_0:
                                        _607 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_607] = 26
                                        mem[_607 + 32] = 'SafeMath: division by zero'
                                        _656 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_656] = 26
                                        mem[_656 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = devaddr
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(sub_9172450dAddress)
                                        call sub_9172450dAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devaddr, 0
                                    else:
                                        if sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_b1de46f0:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _616 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_616] = 26
                                        mem[_616 + 32] = 'SafeMath: division by zero'
                                        if not sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                            _664 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_664] = 26
                                            mem[_664 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = devaddr
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(sub_9172450dAddress)
                                            call sub_9172450dAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devaddr, 0
                                        else:
                                            if block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if not block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                _672 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_672] = 26
                                                mem[_672 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = devaddr
                                                mem[mem[64] + 36] = 0
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0
                                            else:
                                                if poolInfo[idx].field_256 / 100 * block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != poolInfo[idx].field_256 / 100:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _688 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_688] = 26
                                                mem[_688 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = devaddr
                                                mem[mem[64] + 36] = poolInfo[idx].field_256 / 100 * block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, poolInfo[idx].field_256 / 100 * block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                            else:
                                if userInfo[idx][msg.sender].field_1544:
                                    _452 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_452] = 30
                                    mem[_452 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[idx][msg.sender].field_512 > userInfo[idx][msg.sender].field_1280:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                        idx = 32
                                        while idx < 30:
                                            mem[idx + mem[64] + 68] = mem[idx + _452 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512:
                                        _521 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_521] = 26
                                        mem[_521 + 32] = 'SafeMath: division by zero'
                                        if not sub_8f54be0e:
                                            _532 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _532 + 68] = mem[idx + _521 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_532 + 68] = mem[_532 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _532 + -mem[64] + 100
                                        _574 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_574] = 26
                                        mem[_574 + 32] = 'SafeMath: division by zero'
                                        if not userInfo[idx][msg.sender].field_0:
                                            _611 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_611] = 26
                                            mem[_611 + 32] = 'SafeMath: division by zero'
                                            _660 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_660] = 26
                                            mem[_660 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = devaddr
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(sub_9172450dAddress)
                                            call sub_9172450dAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devaddr, 0
                                        else:
                                            if sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_b1de46f0:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _618 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_618] = 26
                                            mem[_618 + 32] = 'SafeMath: division by zero'
                                            if not sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                _669 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_669] = 26
                                                mem[_669 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = devaddr
                                                mem[mem[64] + 36] = 0
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0
                                            else:
                                                if 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != 0 / sub_8f54be0e:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                    _677 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_677] = 26
                                                    mem[_677 + 32] = 'SafeMath: division by zero'
                                                    mem[mem[64] + 4] = devaddr
                                                    mem[mem[64] + 36] = 0
                                                    require ext_code.size(sub_9172450dAddress)
                                                    call sub_9172450dAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args devaddr, 0
                                                else:
                                                    if poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != poolInfo[idx].field_256 / 100:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _690 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_690] = 26
                                                    mem[_690 + 32] = 'SafeMath: division by zero'
                                                    mem[mem[64] + 4] = devaddr
                                                    mem[mem[64] + 36] = poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                                    require ext_code.size(sub_9172450dAddress)
                                                    call sub_9172450dAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args devaddr, poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                    else:
                                        if userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 != 1:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _525 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_525] = 26
                                        mem[_525 + 32] = 'SafeMath: division by zero'
                                        if not sub_8f54be0e:
                                            _540 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _540 + 68] = mem[idx + _525 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_540 + 68] = mem[_540 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _540 + -mem[64] + 100
                                        _582 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_582] = 26
                                        mem[_582 + 32] = 'SafeMath: division by zero'
                                        if not userInfo[idx][msg.sender].field_0:
                                            _617 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_617] = 26
                                            mem[_617 + 32] = 'SafeMath: division by zero'
                                            _666 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_666] = 26
                                            mem[_666 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = devaddr
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(sub_9172450dAddress)
                                            call sub_9172450dAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devaddr, 0
                                        else:
                                            if sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_b1de46f0:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _625 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_625] = 26
                                            mem[_625 + 32] = 'SafeMath: division by zero'
                                            if not sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                _676 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_676] = 26
                                                mem[_676 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = devaddr
                                                mem[mem[64] + 36] = 0
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0
                                            else:
                                                if userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                    _689 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_689] = 26
                                                    mem[_689 + 32] = 'SafeMath: division by zero'
                                                    mem[mem[64] + 4] = devaddr
                                                    mem[mem[64] + 36] = 0
                                                    require ext_code.size(sub_9172450dAddress)
                                                    call sub_9172450dAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args devaddr, 0
                                                else:
                                                    if poolInfo[idx].field_256 / 100 * userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != poolInfo[idx].field_256 / 100:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _703 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_703] = 26
                                                    mem[_703 + 32] = 'SafeMath: division by zero'
                                                    mem[mem[64] + 4] = devaddr
                                                    mem[mem[64] + 36] = poolInfo[idx].field_256 / 100 * userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                                    require ext_code.size(sub_9172450dAddress)
                                                    call sub_9172450dAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args devaddr, poolInfo[idx].field_256 / 100 * userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                else:
                                    if userInfo[idx][msg.sender].field_512 < userInfo[idx][msg.sender].field_1280:
                                        _457 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_457] = 30
                                        mem[_457 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[idx][msg.sender].field_512 > userInfo[idx][msg.sender].field_1280:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                            idx = 32
                                            while idx < 30:
                                                mem[idx + mem[64] + 68] = mem[idx + _457 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512:
                                            _526 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_526] = 26
                                            mem[_526 + 32] = 'SafeMath: division by zero'
                                            if not sub_8f54be0e:
                                                _543 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _543 + 68] = mem[idx + _526 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_543 + 68] = mem[_543 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _543 + -mem[64] + 100
                                            _586 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_586] = 26
                                            mem[_586 + 32] = 'SafeMath: division by zero'
                                            if not userInfo[idx][msg.sender].field_0:
                                                _621 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_621] = 26
                                                mem[_621 + 32] = 'SafeMath: division by zero'
                                                _670 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_670] = 26
                                                mem[_670 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = devaddr
                                                mem[mem[64] + 36] = 0
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0
                                            else:
                                                if sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_b1de46f0:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _627 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_627] = 26
                                                mem[_627 + 32] = 'SafeMath: division by zero'
                                                if not sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                    _681 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_681] = 26
                                                    mem[_681 + 32] = 'SafeMath: division by zero'
                                                    mem[mem[64] + 4] = devaddr
                                                    mem[mem[64] + 36] = 0
                                                    require ext_code.size(sub_9172450dAddress)
                                                    call sub_9172450dAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args devaddr, 0
                                                else:
                                                    if 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != 0 / sub_8f54be0e:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if not 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                        _694 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_694] = 26
                                                        mem[_694 + 32] = 'SafeMath: division by zero'
                                                        mem[mem[64] + 4] = devaddr
                                                        mem[mem[64] + 36] = 0
                                                        require ext_code.size(sub_9172450dAddress)
                                                        call sub_9172450dAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args devaddr, 0
                                                    else:
                                                        if poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != poolInfo[idx].field_256 / 100:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _705 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_705] = 26
                                                        mem[_705 + 32] = 'SafeMath: division by zero'
                                                        mem[mem[64] + 4] = devaddr
                                                        mem[mem[64] + 36] = poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                                        require ext_code.size(sub_9172450dAddress)
                                                        call sub_9172450dAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args devaddr, poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                        else:
                                            if userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 != 1:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _535 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_535] = 26
                                            mem[_535 + 32] = 'SafeMath: division by zero'
                                            if not sub_8f54be0e:
                                                _555 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _555 + 68] = mem[idx + _535 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_555 + 68] = mem[_555 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _555 + -mem[64] + 100
                                            _592 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_592] = 26
                                            mem[_592 + 32] = 'SafeMath: division by zero'
                                            if not userInfo[idx][msg.sender].field_0:
                                                _626 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_626] = 26
                                                mem[_626 + 32] = 'SafeMath: division by zero'
                                                _678 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_678] = 26
                                                mem[_678 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = devaddr
                                                mem[mem[64] + 36] = 0
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0
                                            else:
                                                if sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_b1de46f0:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _630 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_630] = 26
                                                mem[_630 + 32] = 'SafeMath: division by zero'
                                                if not sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                    _693 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_693] = 26
                                                    mem[_693 + 32] = 'SafeMath: division by zero'
                                                    mem[mem[64] + 4] = devaddr
                                                    mem[mem[64] + 36] = 0
                                                    require ext_code.size(sub_9172450dAddress)
                                                    call sub_9172450dAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args devaddr, 0
                                                else:
                                                    if userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if not userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                        _704 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_704] = 26
                                                        mem[_704 + 32] = 'SafeMath: division by zero'
                                                        mem[mem[64] + 4] = devaddr
                                                        mem[mem[64] + 36] = 0
                                                        require ext_code.size(sub_9172450dAddress)
                                                        call sub_9172450dAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args devaddr, 0
                                                    else:
                                                        if poolInfo[idx].field_256 / 100 * userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != poolInfo[idx].field_256 / 100:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _717 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_717] = 26
                                                        mem[_717 + 32] = 'SafeMath: division by zero'
                                                        mem[mem[64] + 4] = devaddr
                                                        mem[mem[64] + 36] = poolInfo[idx].field_256 / 100 * userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                                        require ext_code.size(sub_9172450dAddress)
                                                        call sub_9172450dAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args devaddr, poolInfo[idx].field_256 / 100 * userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                    else:
                                        _458 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_458] = 30
                                        mem[_458 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[idx][msg.sender].field_512 > block.timestamp:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                            idx = 32
                                            while idx < 30:
                                                mem[idx + mem[64] + 68] = mem[idx + _458 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not block.timestamp - userInfo[idx][msg.sender].field_512:
                                            _527 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_527] = 26
                                            mem[_527 + 32] = 'SafeMath: division by zero'
                                            if not sub_8f54be0e:
                                                _546 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _546 + 68] = mem[idx + _527 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_546 + 68] = mem[_546 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _546 + -mem[64] + 100
                                            _590 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_590] = 26
                                            mem[_590 + 32] = 'SafeMath: division by zero'
                                            if not userInfo[idx][msg.sender].field_0:
                                                _624 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_624] = 26
                                                mem[_624 + 32] = 'SafeMath: division by zero'
                                                _671 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_671] = 26
                                                mem[_671 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = devaddr
                                                mem[mem[64] + 36] = 0
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0
                                            else:
                                                if sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_b1de46f0:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _629 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_629] = 26
                                                mem[_629 + 32] = 'SafeMath: division by zero'
                                                if not sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                    _685 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_685] = 26
                                                    mem[_685 + 32] = 'SafeMath: division by zero'
                                                    mem[mem[64] + 4] = devaddr
                                                    mem[mem[64] + 36] = 0
                                                    require ext_code.size(sub_9172450dAddress)
                                                    call sub_9172450dAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args devaddr, 0
                                                else:
                                                    if 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != 0 / sub_8f54be0e:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if not 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                        _698 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_698] = 26
                                                        mem[_698 + 32] = 'SafeMath: division by zero'
                                                        mem[mem[64] + 4] = devaddr
                                                        mem[mem[64] + 36] = 0
                                                        require ext_code.size(sub_9172450dAddress)
                                                        call sub_9172450dAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args devaddr, 0
                                                    else:
                                                        if poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != poolInfo[idx].field_256 / 100:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _707 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_707] = 26
                                                        mem[_707 + 32] = 'SafeMath: division by zero'
                                                        mem[mem[64] + 4] = devaddr
                                                        mem[mem[64] + 36] = poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                                        require ext_code.size(sub_9172450dAddress)
                                                        call sub_9172450dAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args devaddr, poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                        else:
                                            if block.timestamp - userInfo[idx][msg.sender].field_512 / block.timestamp - userInfo[idx][msg.sender].field_512 != 1:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _536 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_536] = 26
                                            mem[_536 + 32] = 'SafeMath: division by zero'
                                            if not sub_8f54be0e:
                                                _558 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _558 + 68] = mem[idx + _536 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_558 + 68] = mem[_558 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _558 + -mem[64] + 100
                                            _594 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_594] = 26
                                            mem[_594 + 32] = 'SafeMath: division by zero'
                                            if not userInfo[idx][msg.sender].field_0:
                                                _628 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_628] = 26
                                                mem[_628 + 32] = 'SafeMath: division by zero'
                                                _682 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_682] = 26
                                                mem[_682 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = devaddr
                                                mem[mem[64] + 36] = 0
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0
                                            else:
                                                if sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_b1de46f0:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _631 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_631] = 26
                                                mem[_631 + 32] = 'SafeMath: division by zero'
                                                if not sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                    _697 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_697] = 26
                                                    mem[_697 + 32] = 'SafeMath: division by zero'
                                                    mem[mem[64] + 4] = devaddr
                                                    mem[mem[64] + 36] = 0
                                                    require ext_code.size(sub_9172450dAddress)
                                                    call sub_9172450dAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args devaddr, 0
                                                else:
                                                    if block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if not block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                        _706 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_706] = 26
                                                        mem[_706 + 32] = 'SafeMath: division by zero'
                                                        mem[mem[64] + 4] = devaddr
                                                        mem[mem[64] + 36] = 0
                                                        require ext_code.size(sub_9172450dAddress)
                                                        call sub_9172450dAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args devaddr, 0
                                                    else:
                                                        if poolInfo[idx].field_256 / 100 * block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != poolInfo[idx].field_256 / 100:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _718 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_718] = 26
                                                        mem[_718 + 32] = 'SafeMath: division by zero'
                                                        mem[mem[64] + 4] = devaddr
                                                        mem[mem[64] + 36] = poolInfo[idx].field_256 / 100 * block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                                        require ext_code.size(sub_9172450dAddress)
                                                        call sub_9172450dAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args devaddr, poolInfo[idx].field_256 / 100 * block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_768 = arg3
    poolInfo[arg1].field_792 = Mask(232, 0, arg5)
    poolInfo[arg1].field_1024 = arg6
}

function sub_cf616d78(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if arg3 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe6164643a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = msg.sender
            mem[32] = sha3(idx, 6)
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if poolInfo[idx].field_256:
                        if userInfo[idx][msg.sender].field_1544:
                            _416 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_416] = 30
                            mem[_416 + 32] = 'SafeMath: subtraction overflow'
                            if userInfo[idx][msg.sender].field_512 > userInfo[idx][msg.sender].field_512:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                idx = 32
                                while idx < 30:
                                    mem[idx + mem[64] + 68] = mem[idx + _416 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: subtraction overflow'
                            _476 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_476] = 26
                            mem[_476 + 32] = 'SafeMath: division by zero'
                            if not sub_8f54be0e:
                                _486 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _486 + 68] = mem[idx + _476 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_486 + 68] = mem[_486 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _486 + -mem[64] + 100
                            _518 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_518] = 26
                            mem[_518 + 32] = 'SafeMath: division by zero'
                            if not userInfo[idx][msg.sender].field_0:
                                _567 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_567] = 26
                                mem[_567 + 32] = 'SafeMath: division by zero'
                                _615 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_615] = 26
                                mem[_615 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = devaddr
                                mem[mem[64] + 36] = 0
                                require ext_code.size(sub_9172450dAddress)
                                call sub_9172450dAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args devaddr, 0
                            else:
                                if sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_b1de46f0:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _570 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_570] = 26
                                mem[_570 + 32] = 'SafeMath: division by zero'
                                if not sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                    _622 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_622] = 26
                                    mem[_622 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = devaddr
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(sub_9172450dAddress)
                                    call sub_9172450dAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args devaddr, 0
                                else:
                                    if 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != 0 / sub_8f54be0e:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                        _624 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_624] = 26
                                        mem[_624 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = devaddr
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(sub_9172450dAddress)
                                        call sub_9172450dAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devaddr, 0
                                    else:
                                        if poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != poolInfo[idx].field_256 / 100:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _630 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_630] = 26
                                        mem[_630 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = devaddr
                                        mem[mem[64] + 36] = poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                        require ext_code.size(sub_9172450dAddress)
                                        call sub_9172450dAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devaddr, poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                        else:
                            if block.timestamp <= userInfo[idx][msg.sender].field_1280:
                                _417 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_417] = 30
                                mem[_417 + 32] = 'SafeMath: subtraction overflow'
                                if userInfo[idx][msg.sender].field_512 > block.timestamp:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                    idx = 32
                                    while idx < 30:
                                        mem[idx + mem[64] + 68] = mem[idx + _417 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - userInfo[idx][msg.sender].field_512:
                                    _481 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_481] = 26
                                    mem[_481 + 32] = 'SafeMath: division by zero'
                                    if not sub_8f54be0e:
                                        _491 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _491 + 68] = mem[idx + _481 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_491 + 68] = mem[_491 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _491 + -mem[64] + 100
                                    _532 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_532] = 26
                                    mem[_532 + 32] = 'SafeMath: division by zero'
                                    if not userInfo[idx][msg.sender].field_0:
                                        _573 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_573] = 26
                                        mem[_573 + 32] = 'SafeMath: division by zero'
                                        _623 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_623] = 26
                                        mem[_623 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = devaddr
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(sub_9172450dAddress)
                                        call sub_9172450dAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devaddr, 0
                                    else:
                                        if sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_b1de46f0:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _577 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_577] = 26
                                        mem[_577 + 32] = 'SafeMath: division by zero'
                                        if not sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                            _628 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_628] = 26
                                            mem[_628 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = devaddr
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(sub_9172450dAddress)
                                            call sub_9172450dAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devaddr, 0
                                        else:
                                            if 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != 0 / sub_8f54be0e:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if not 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                _634 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_634] = 26
                                                mem[_634 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = devaddr
                                                mem[mem[64] + 36] = 0
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0
                                            else:
                                                if poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != poolInfo[idx].field_256 / 100:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _642 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_642] = 26
                                                mem[_642 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = devaddr
                                                mem[mem[64] + 36] = poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                else:
                                    if block.timestamp - userInfo[idx][msg.sender].field_512 / block.timestamp - userInfo[idx][msg.sender].field_512 != 1:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _489 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_489] = 26
                                    mem[_489 + 32] = 'SafeMath: division by zero'
                                    if not sub_8f54be0e:
                                        _498 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[idx + _498 + 68] = mem[idx + _489 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_498 + 68] = mem[_498 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _498 + -mem[64] + 100
                                    _539 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_539] = 26
                                    mem[_539 + 32] = 'SafeMath: division by zero'
                                    if not userInfo[idx][msg.sender].field_0:
                                        _576 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_576] = 26
                                        mem[_576 + 32] = 'SafeMath: division by zero'
                                        _625 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_625] = 26
                                        mem[_625 + 32] = 'SafeMath: division by zero'
                                        mem[mem[64] + 4] = devaddr
                                        mem[mem[64] + 36] = 0
                                        require ext_code.size(sub_9172450dAddress)
                                        call sub_9172450dAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args devaddr, 0
                                    else:
                                        if sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_b1de46f0:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _585 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_585] = 26
                                        mem[_585 + 32] = 'SafeMath: division by zero'
                                        if not sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                            _633 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_633] = 26
                                            mem[_633 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = devaddr
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(sub_9172450dAddress)
                                            call sub_9172450dAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devaddr, 0
                                        else:
                                            if block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if not block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                _641 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_641] = 26
                                                mem[_641 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = devaddr
                                                mem[mem[64] + 36] = 0
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0
                                            else:
                                                if poolInfo[idx].field_256 / 100 * block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != poolInfo[idx].field_256 / 100:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _657 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_657] = 26
                                                mem[_657 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = devaddr
                                                mem[mem[64] + 36] = poolInfo[idx].field_256 / 100 * block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, poolInfo[idx].field_256 / 100 * block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                            else:
                                if userInfo[idx][msg.sender].field_1544:
                                    _421 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_421] = 30
                                    mem[_421 + 32] = 'SafeMath: subtraction overflow'
                                    if userInfo[idx][msg.sender].field_512 > userInfo[idx][msg.sender].field_1280:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                        idx = 32
                                        while idx < 30:
                                            mem[idx + mem[64] + 68] = mem[idx + _421 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512:
                                        _490 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_490] = 26
                                        mem[_490 + 32] = 'SafeMath: division by zero'
                                        if not sub_8f54be0e:
                                            _501 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _501 + 68] = mem[idx + _490 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_501 + 68] = mem[_501 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _501 + -mem[64] + 100
                                        _543 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_543] = 26
                                        mem[_543 + 32] = 'SafeMath: division by zero'
                                        if not userInfo[idx][msg.sender].field_0:
                                            _580 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_580] = 26
                                            mem[_580 + 32] = 'SafeMath: division by zero'
                                            _629 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_629] = 26
                                            mem[_629 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = devaddr
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(sub_9172450dAddress)
                                            call sub_9172450dAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devaddr, 0
                                        else:
                                            if sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_b1de46f0:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _587 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_587] = 26
                                            mem[_587 + 32] = 'SafeMath: division by zero'
                                            if not sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                _638 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_638] = 26
                                                mem[_638 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = devaddr
                                                mem[mem[64] + 36] = 0
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0
                                            else:
                                                if 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != 0 / sub_8f54be0e:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                    _646 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_646] = 26
                                                    mem[_646 + 32] = 'SafeMath: division by zero'
                                                    mem[mem[64] + 4] = devaddr
                                                    mem[mem[64] + 36] = 0
                                                    require ext_code.size(sub_9172450dAddress)
                                                    call sub_9172450dAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args devaddr, 0
                                                else:
                                                    if poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != poolInfo[idx].field_256 / 100:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _659 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_659] = 26
                                                    mem[_659 + 32] = 'SafeMath: division by zero'
                                                    mem[mem[64] + 4] = devaddr
                                                    mem[mem[64] + 36] = poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                                    require ext_code.size(sub_9172450dAddress)
                                                    call sub_9172450dAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args devaddr, poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                    else:
                                        if userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 != 1:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _494 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_494] = 26
                                        mem[_494 + 32] = 'SafeMath: division by zero'
                                        if not sub_8f54be0e:
                                            _509 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[idx + _509 + 68] = mem[idx + _494 + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_509 + 68] = mem[_509 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _509 + -mem[64] + 100
                                        _551 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_551] = 26
                                        mem[_551 + 32] = 'SafeMath: division by zero'
                                        if not userInfo[idx][msg.sender].field_0:
                                            _586 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_586] = 26
                                            mem[_586 + 32] = 'SafeMath: division by zero'
                                            _635 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_635] = 26
                                            mem[_635 + 32] = 'SafeMath: division by zero'
                                            mem[mem[64] + 4] = devaddr
                                            mem[mem[64] + 36] = 0
                                            require ext_code.size(sub_9172450dAddress)
                                            call sub_9172450dAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args devaddr, 0
                                        else:
                                            if sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_b1de46f0:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _594 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_594] = 26
                                            mem[_594 + 32] = 'SafeMath: division by zero'
                                            if not sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                _645 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_645] = 26
                                                mem[_645 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = devaddr
                                                mem[mem[64] + 36] = 0
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0
                                            else:
                                                if userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                    _658 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_658] = 26
                                                    mem[_658 + 32] = 'SafeMath: division by zero'
                                                    mem[mem[64] + 4] = devaddr
                                                    mem[mem[64] + 36] = 0
                                                    require ext_code.size(sub_9172450dAddress)
                                                    call sub_9172450dAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args devaddr, 0
                                                else:
                                                    if poolInfo[idx].field_256 / 100 * userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != poolInfo[idx].field_256 / 100:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _672 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_672] = 26
                                                    mem[_672 + 32] = 'SafeMath: division by zero'
                                                    mem[mem[64] + 4] = devaddr
                                                    mem[mem[64] + 36] = poolInfo[idx].field_256 / 100 * userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                                    require ext_code.size(sub_9172450dAddress)
                                                    call sub_9172450dAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args devaddr, poolInfo[idx].field_256 / 100 * userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                else:
                                    if userInfo[idx][msg.sender].field_512 < userInfo[idx][msg.sender].field_1280:
                                        _426 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_426] = 30
                                        mem[_426 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[idx][msg.sender].field_512 > userInfo[idx][msg.sender].field_1280:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                            idx = 32
                                            while idx < 30:
                                                mem[idx + mem[64] + 68] = mem[idx + _426 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512:
                                            _495 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_495] = 26
                                            mem[_495 + 32] = 'SafeMath: division by zero'
                                            if not sub_8f54be0e:
                                                _512 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _512 + 68] = mem[idx + _495 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_512 + 68] = mem[_512 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _512 + -mem[64] + 100
                                            _555 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_555] = 26
                                            mem[_555 + 32] = 'SafeMath: division by zero'
                                            if not userInfo[idx][msg.sender].field_0:
                                                _590 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_590] = 26
                                                mem[_590 + 32] = 'SafeMath: division by zero'
                                                _639 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_639] = 26
                                                mem[_639 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = devaddr
                                                mem[mem[64] + 36] = 0
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0
                                            else:
                                                if sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_b1de46f0:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _596 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_596] = 26
                                                mem[_596 + 32] = 'SafeMath: division by zero'
                                                if not sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                    _650 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_650] = 26
                                                    mem[_650 + 32] = 'SafeMath: division by zero'
                                                    mem[mem[64] + 4] = devaddr
                                                    mem[mem[64] + 36] = 0
                                                    require ext_code.size(sub_9172450dAddress)
                                                    call sub_9172450dAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args devaddr, 0
                                                else:
                                                    if 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != 0 / sub_8f54be0e:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if not 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                        _663 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_663] = 26
                                                        mem[_663 + 32] = 'SafeMath: division by zero'
                                                        mem[mem[64] + 4] = devaddr
                                                        mem[mem[64] + 36] = 0
                                                        require ext_code.size(sub_9172450dAddress)
                                                        call sub_9172450dAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args devaddr, 0
                                                    else:
                                                        if poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != poolInfo[idx].field_256 / 100:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _674 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_674] = 26
                                                        mem[_674 + 32] = 'SafeMath: division by zero'
                                                        mem[mem[64] + 4] = devaddr
                                                        mem[mem[64] + 36] = poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                                        require ext_code.size(sub_9172450dAddress)
                                                        call sub_9172450dAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args devaddr, poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                        else:
                                            if userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 != 1:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _504 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_504] = 26
                                            mem[_504 + 32] = 'SafeMath: division by zero'
                                            if not sub_8f54be0e:
                                                _524 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _524 + 68] = mem[idx + _504 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_524 + 68] = mem[_524 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _524 + -mem[64] + 100
                                            _561 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_561] = 26
                                            mem[_561 + 32] = 'SafeMath: division by zero'
                                            if not userInfo[idx][msg.sender].field_0:
                                                _595 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_595] = 26
                                                mem[_595 + 32] = 'SafeMath: division by zero'
                                                _647 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_647] = 26
                                                mem[_647 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = devaddr
                                                mem[mem[64] + 36] = 0
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0
                                            else:
                                                if sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_b1de46f0:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _599 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_599] = 26
                                                mem[_599 + 32] = 'SafeMath: division by zero'
                                                if not sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                    _662 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_662] = 26
                                                    mem[_662 + 32] = 'SafeMath: division by zero'
                                                    mem[mem[64] + 4] = devaddr
                                                    mem[mem[64] + 36] = 0
                                                    require ext_code.size(sub_9172450dAddress)
                                                    call sub_9172450dAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args devaddr, 0
                                                else:
                                                    if userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if not userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                        _673 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_673] = 26
                                                        mem[_673 + 32] = 'SafeMath: division by zero'
                                                        mem[mem[64] + 4] = devaddr
                                                        mem[mem[64] + 36] = 0
                                                        require ext_code.size(sub_9172450dAddress)
                                                        call sub_9172450dAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args devaddr, 0
                                                    else:
                                                        if poolInfo[idx].field_256 / 100 * userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != poolInfo[idx].field_256 / 100:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _686 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_686] = 26
                                                        mem[_686 + 32] = 'SafeMath: division by zero'
                                                        mem[mem[64] + 4] = devaddr
                                                        mem[mem[64] + 36] = poolInfo[idx].field_256 / 100 * userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                                        require ext_code.size(sub_9172450dAddress)
                                                        call sub_9172450dAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args devaddr, poolInfo[idx].field_256 / 100 * userInfo[idx][msg.sender].field_1280 - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                    else:
                                        _427 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_427] = 30
                                        mem[_427 + 32] = 'SafeMath: subtraction overflow'
                                        if userInfo[idx][msg.sender].field_512 > block.timestamp:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 30
                                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                                            idx = 32
                                            while idx < 30:
                                                mem[idx + mem[64] + 68] = mem[idx + _427 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not block.timestamp - userInfo[idx][msg.sender].field_512:
                                            _496 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_496] = 26
                                            mem[_496 + 32] = 'SafeMath: division by zero'
                                            if not sub_8f54be0e:
                                                _515 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _515 + 68] = mem[idx + _496 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_515 + 68] = mem[_515 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _515 + -mem[64] + 100
                                            _559 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_559] = 26
                                            mem[_559 + 32] = 'SafeMath: division by zero'
                                            if not userInfo[idx][msg.sender].field_0:
                                                _593 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_593] = 26
                                                mem[_593 + 32] = 'SafeMath: division by zero'
                                                _640 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_640] = 26
                                                mem[_640 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = devaddr
                                                mem[mem[64] + 36] = 0
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0
                                            else:
                                                if sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_b1de46f0:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _598 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_598] = 26
                                                mem[_598 + 32] = 'SafeMath: division by zero'
                                                if not sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                    _654 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_654] = 26
                                                    mem[_654 + 32] = 'SafeMath: division by zero'
                                                    mem[mem[64] + 4] = devaddr
                                                    mem[mem[64] + 36] = 0
                                                    require ext_code.size(sub_9172450dAddress)
                                                    call sub_9172450dAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args devaddr, 0
                                                else:
                                                    if 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != 0 / sub_8f54be0e:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if not 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                        _667 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_667] = 26
                                                        mem[_667 + 32] = 'SafeMath: division by zero'
                                                        mem[mem[64] + 4] = devaddr
                                                        mem[mem[64] + 36] = 0
                                                        require ext_code.size(sub_9172450dAddress)
                                                        call sub_9172450dAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args devaddr, 0
                                                    else:
                                                        if poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != poolInfo[idx].field_256 / 100:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _676 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_676] = 26
                                                        mem[_676 + 32] = 'SafeMath: division by zero'
                                                        mem[mem[64] + 4] = devaddr
                                                        mem[mem[64] + 36] = poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                                        require ext_code.size(sub_9172450dAddress)
                                                        call sub_9172450dAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args devaddr, poolInfo[idx].field_256 / 100 * 0 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                        else:
                                            if block.timestamp - userInfo[idx][msg.sender].field_512 / block.timestamp - userInfo[idx][msg.sender].field_512 != 1:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _505 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_505] = 26
                                            mem[_505 + 32] = 'SafeMath: division by zero'
                                            if not sub_8f54be0e:
                                                _527 = mem[64]
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                idx = 0
                                                while idx < 26:
                                                    mem[idx + _527 + 68] = mem[idx + _505 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                mem[_527 + 68] = mem[_527 + 74 len 26]
                                                revert with memory
                                                  from mem[64]
                                                   len _527 + -mem[64] + 100
                                            _563 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_563] = 26
                                            mem[_563 + 32] = 'SafeMath: division by zero'
                                            if not userInfo[idx][msg.sender].field_0:
                                                _597 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_597] = 26
                                                mem[_597 + 32] = 'SafeMath: division by zero'
                                                _651 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_651] = 26
                                                mem[_651 + 32] = 'SafeMath: division by zero'
                                                mem[mem[64] + 4] = devaddr
                                                mem[mem[64] + 36] = 0
                                                require ext_code.size(sub_9172450dAddress)
                                                call sub_9172450dAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args devaddr, 0
                                            else:
                                                if sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / userInfo[idx][msg.sender].field_0 != sub_b1de46f0:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _600 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_600] = 26
                                                mem[_600 + 32] = 'SafeMath: division by zero'
                                                if not sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                    _666 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_666] = 26
                                                    mem[_666 + 32] = 'SafeMath: division by zero'
                                                    mem[mem[64] + 4] = devaddr
                                                    mem[mem[64] + 36] = 0
                                                    require ext_code.size(sub_9172450dAddress)
                                                    call sub_9172450dAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args devaddr, 0
                                                else:
                                                    if block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if not block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000:
                                                        _675 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_675] = 26
                                                        mem[_675 + 32] = 'SafeMath: division by zero'
                                                        mem[mem[64] + 4] = devaddr
                                                        mem[mem[64] + 36] = 0
                                                        require ext_code.size(sub_9172450dAddress)
                                                        call sub_9172450dAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args devaddr, 0
                                                    else:
                                                        if poolInfo[idx].field_256 / 100 * block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 != poolInfo[idx].field_256 / 100:
                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        _687 = mem[64]
                                                        mem[64] = mem[64] + 64
                                                        mem[_687] = 26
                                                        mem[_687 + 32] = 'SafeMath: division by zero'
                                                        mem[mem[64] + 4] = devaddr
                                                        mem[mem[64] + 36] = poolInfo[idx].field_256 / 100 * block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                                                        require ext_code.size(sub_9172450dAddress)
                                                        call sub_9172450dAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args devaddr, poolInfo[idx].field_256 / 100 * block.timestamp - userInfo[idx][msg.sender].field_512 / sub_8f54be0e * sub_b1de46f0 * userInfo[idx][msg.sender].field_0 / 10000 / 10
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    stor36B6[stor5.length] = arg2
    stor36B6[stor5.length] = arg1
    stor36B6[stor5.length] = block.timestamp
    stor36B6[stor5.length].field_0 = arg3
    stor36B6[stor5.length].field_16 = 0
    stor36B6[stor5.length].field_24 = Mask(232, 0, arg5)
    stor36B6[stor5.length].field_32 = 0
    stor36B6[stor5.length] = arg6
}



}
