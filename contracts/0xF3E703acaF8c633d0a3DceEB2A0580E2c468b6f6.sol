contract main {




// =====================  Runtime code  =====================


#
#  - withdrawEarly(uint256 arg1, uint256 arg2)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - updatePool(uint256 arg1)
#  - massUpdatePools()
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#  - sub_a64b6798(?)
#  - set(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint16 arg5, bool arg6)
#  - sub_cf78fae2(?)
#
const sub_3ed637ca(?) = 10 * 10^18

const sub_54f85369(?) = 10^15

const sub_83ef8654(?) = 100

const sub_a81c46e0(?) = (720 * 24 * 3600)

const sub_aee10490(?) = 200

const sub_cca5afc5(?) = 5000

const sub_e93b2602(?) = 10^14

const sub_eef09c08(?) = (27500 * 10^18 * 3600)

const MAX_RATE = 10000

const BURN_ADDRESS = 57005


address owner;
uint256 stor1;
address sub_796f74fcAddress;
address feeReceiverAddress;
uint256 sub_c294cb80;
uint256 sub_c405ef62;
uint256 sub_04d504a9;
uint256 sub_e87adc51;
uint256 sub_2ca69f90;
uint256 sub_43073de2;
address lockerAddress;
uint16 stor11;
uint16 lockerRate; offset 160
address sub_b8711ef9Address;
mapping of uint8 stor12;
uint256 sub_72be588c;
uint256 startBlock;
uint256 sub_e1ce413f;
uint16 stor16;
uint16 referralCommissionRate; offset 160
address referralAddress;
array of struct poolInfo;
mapping of struct sub_1b7795b5;
uint256 totalAllocPoint;
uint256 sub_5b731561;
uint256 sub_ef68009f;

function sub_04d504a9(?) payable {
    return sub_04d504a9
}

function poolLength() payable {
    return poolInfo.length
}

function referral() payable {
    return referralAddress
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280,
           poolInfo[arg1].field_1536,
           poolInfo[arg1].field_1792,
           bool(poolInfo[arg1].field_1808),
           bool(poolInfo[arg1].field_1816),
           poolInfo[arg1].field_2048,
           poolInfo[arg1].field_2304
}

function sub_16d37595(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function sub_1b7795b5(?) payable {
    require calldata.size - 4 >= 32
    return sub_1b7795b5[arg1][msg.sender].field_1536
}

function sub_2ca69f90(?) payable {
    return sub_2ca69f90
}

function sub_43073de2(?) payable {
    return sub_43073de2
}

function startBlock() payable {
    return startBlock
}

function lockerRate() payable {
    return lockerRate
}

function sub_5b731561(?) payable {
    return sub_5b731561
}

function sub_72be588c(?) payable {
    return sub_72be588c
}

function sub_796f74fc(?) payable {
    return sub_796f74fcAddress
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return sub_1b7795b5[arg1][arg2].field_0, 
           sub_1b7795b5[arg1][arg2].field_256,
           sub_1b7795b5[arg1][arg2].field_512,
           sub_1b7795b5[arg1][arg2].field_768,
           sub_1b7795b5[arg1][arg2].field_1024,
           sub_1b7795b5[arg1][arg2].field_1280,
           sub_1b7795b5[arg1][arg2].field_1536
}

function feeReceiver() payable {
    return feeReceiverAddress
}

function sub_b8711ef9(?) payable {
    return sub_b8711ef9Address
}

function sub_c294cb80(?) payable {
    return sub_c294cb80
}

function sub_c405ef62(?) payable {
    return sub_c405ef62
}

function referralCommissionRate() payable {
    return referralCommissionRate
}

function locker() payable {
    return lockerAddress
}

function sub_e1ce413f(?) payable {
    return sub_e1ce413f
}

function sub_e87adc51(?) payable {
    return sub_e87adc51
}

function sub_ef68009f(?) payable {
    return sub_ef68009f
}

function _fallback() payable {
    revert
}

function canHarvest(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return block.timestamp >= sub_1b7795b5[arg1][address(arg2)].field_1280
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_5117300e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.wantLockedTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function lockedUntil(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.lockedUntil(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_b8711ef9Address)
    staticcall sub_b8711ef9Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 27500 * 10^18 * 3600:
        return 0
    if block.number < startBlock:
        return 0
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg2 - arg1)
}

function sub_0779c23f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if block.timestamp >= sub_1b7795b5[arg1][msg.sender].field_1536:
        return 0
    if not arg2:
        return 0
    if poolInfo[arg1].field_1792 * arg2 / arg2 != poolInfo[arg1].field_1792:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (poolInfo[arg1].field_1792 * arg2 / 10000)
}

function setEmissionRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 < 10^14:
        revert with 0, 'emission rate too low'
    if arg1 > 10 * 10^18:
        revert with 0, 'emission rate too big'
    if sub_72be588c >= 10^15:
        if arg1 < 10^15:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x64656d697373696f6e206d757374206e6f7720626520686967686572207468616e207468726573686f6c,
                        mem[206 len 22]
    emit EmissionRateUpdated(sub_72be588c, arg1);
    sub_72be588c = arg1
    return 0
}

function sub_5e80ad09(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(lockerAddress)
    staticcall lockerAddress.released(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(lockerAddress)
    staticcall lockerAddress.lockOf(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    else:
        return 0
}

function sub_9dd7e066(?) payable {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if lockerRate != arg1:
        if arg1 > 10000:
            revert with 0, 'locker rate exceed allowed value'
        if block.number > sub_e1ce413f:
            revert with 0, 'too late to update locker'
        emit 0x1c547d57: stor11, arg1
        lockerRate = arg1
    if lockerAddress != arg3:
        if block.number > sub_e1ce413f:
            revert with 0, 'too late to update locker'
        emit LockerUpdated(lockerAddress, arg3);
        lockerAddress = arg3
    if referralCommissionRate != arg2:
        if arg2 > 200:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x73636f6d6d697373696f6e207261746520657863656564207570706572206c696d69,
                        mem[198 len 30]
        emit 0x262a5d8a: stor16, arg2
        referralCommissionRate = arg2
    if referralAddress != arg4:
        emit 0xeefe1ce2: referralAddress, arg4
        referralAddress = arg4
    if feeReceiverAddress != arg5:
        emit FeeReceiverUpdated(feeReceiverAddress, arg5);
        feeReceiverAddress = arg5
    if sub_796f74fcAddress != arg6:
        emit 0x304e6454: sub_796f74fcAddress, arg6
        sub_796f74fcAddress = arg6
}

function inCaseTokensGetStuck(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if sub_b8711ef9Address == arg1:
        revert with 0, '!safe'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function stakedWantTokens(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.sharesTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.wantLockedTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if not sub_1b7795b5[arg1][address(arg2)].field_0:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0 / sub_1b7795b5[arg1][address(arg2)].field_0 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0 / ext_call.return_data[0])
    ('iszero', ('ext_call.return_data', 0, 32))
    revert
}

function sub_649a6c83(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.sharesTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_1b7795b5[arg1][address(arg2)].field_0:
        return 0
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.0x772efb4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.0x83fa0ef9 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.0xae7d7d81 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not sub_1b7795b5[arg1][address(arg2)].field_0:
        if sub_1b7795b5[arg1][address(arg2)].field_768 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -sub_1b7795b5[arg1][address(arg2)].field_768
    if (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if sub_1b7795b5[arg1][address(arg2)].field_768 > (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_768)
}

function sub_d33a49ee(?) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'insufficient balance'
    require ext_code.size(poolInfo[arg1].field_1024)
    call poolInfo[arg1].field_1024.0xe9e443df with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2 + sub_1b7795b5[arg1][msg.sender].field_0 < sub_1b7795b5[arg1][msg.sender].field_0:
        revert with 0, 'SafeMath: addition overflow'
    sub_1b7795b5[arg1][msg.sender].field_0 += arg2
    if not arg2:
        if sub_1b7795b5[arg1][msg.sender].field_256 < sub_1b7795b5[arg1][msg.sender].field_256:
            revert with 0, 'SafeMath: addition overflow'
    else:
        if poolInfo[arg1].field_768 * arg2 / arg2 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (poolInfo[arg1].field_768 * arg2 / 10^12) + sub_1b7795b5[arg1][msg.sender].field_256 < sub_1b7795b5[arg1][msg.sender].field_256:
            revert with 0, 'SafeMath: addition overflow'
        sub_1b7795b5[arg1][msg.sender].field_256 += poolInfo[arg1].field_768 * arg2 / 10^12
    if not arg2:
        if sub_1b7795b5[arg1][msg.sender].field_512 < sub_1b7795b5[arg1][msg.sender].field_512:
            revert with 0, 'SafeMath: addition overflow'
    else:
        if poolInfo[arg1].field_2048 * arg2 / arg2 != poolInfo[arg1].field_2048:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (poolInfo[arg1].field_2048 * arg2 / 10^12) + sub_1b7795b5[arg1][msg.sender].field_512 < sub_1b7795b5[arg1][msg.sender].field_512:
            revert with 0, 'SafeMath: addition overflow'
        sub_1b7795b5[arg1][msg.sender].field_512 += poolInfo[arg1].field_2048 * arg2 / 10^12
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.0x83fa0ef9 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        if sub_1b7795b5[arg1][msg.sender].field_768 < sub_1b7795b5[arg1][msg.sender].field_768:
            revert with 0, 'SafeMath: addition overflow'
    else:
        if ext_call.return_data[0] * arg2 / arg2 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (ext_call.return_data[0] * arg2 / 10^12) + sub_1b7795b5[arg1][msg.sender].field_768 < sub_1b7795b5[arg1][msg.sender].field_768:
            revert with 0, 'SafeMath: addition overflow'
        sub_1b7795b5[arg1][msg.sender].field_768 += ext_call.return_data[0] * arg2 / 10^12
    stor1 = 1
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.wantLockedTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.sharesTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_1b7795b5[arg1][msg.sender].field_0:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(poolInfo[arg1].field_1024)
        call poolInfo[arg1].field_1024.withdraw(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 0 / ext_call.return_data[0]
    else:
        if ext_call.return_data[0] * sub_1b7795b5[arg1][msg.sender].field_0 / sub_1b7795b5[arg1][msg.sender].field_0 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(poolInfo[arg1].field_1024)
        call poolInfo[arg1].field_1024.withdraw(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] * sub_1b7795b5[arg1][msg.sender].field_0 / ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, 0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    sub_1b7795b5[arg1][msg.sender].field_0 = 0
    sub_1b7795b5[arg1][msg.sender].field_256 = 0
    sub_1b7795b5[arg1][msg.sender].field_768 = 0
    sub_1b7795b5[arg1][msg.sender].field_512 = 0
    sub_1b7795b5[arg1][msg.sender].field_1024 = 0
    sub_1b7795b5[arg1][msg.sender].field_1280 = 0
    sub_1b7795b5[arg1][msg.sender].field_1536 = 0
    emit EmergencyWithdraw(0, msg.sender, arg1);
    stor1 = 1
}

function emergencyWithdrawEarly(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.wantLockedTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.sharesTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_1b7795b5[arg1][msg.sender].field_0:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(poolInfo[arg1].field_1024)
        call poolInfo[arg1].field_1024.withdrawEarly(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 0 / ext_call.return_data[0]
    else:
        if ext_call.return_data[0] * sub_1b7795b5[arg1][msg.sender].field_0 / sub_1b7795b5[arg1][msg.sender].field_0 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(poolInfo[arg1].field_1024)
        call poolInfo[arg1].field_1024.withdrawEarly(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] * sub_1b7795b5[arg1][msg.sender].field_0 / ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, 0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    sub_1b7795b5[arg1][msg.sender].field_0 = 0
    sub_1b7795b5[arg1][msg.sender].field_256 = 0
    sub_1b7795b5[arg1][msg.sender].field_512 = 0
    sub_1b7795b5[arg1][msg.sender].field_768 = 0
    sub_1b7795b5[arg1][msg.sender].field_1024 = 0
    sub_1b7795b5[arg1][msg.sender].field_1280 = 0
    sub_1b7795b5[arg1][msg.sender].field_1536 = 0
    emit 0xad2db606: 0, msg.sender, arg1
    stor1 = 1
}

function sub_0068c83d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.sharesTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= poolInfo[arg1].field_512:
        if not sub_1b7795b5[arg1][address(arg2)].field_0:
            if sub_1b7795b5[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_1b7795b5[arg1][address(arg2)].field_1024 - sub_1b7795b5[arg1][address(arg2)].field_256 < -sub_1b7795b5[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_1b7795b5[arg1][address(arg2)].field_1024 - sub_1b7795b5[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0 / sub_1b7795b5[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_1b7795b5[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_1b7795b5[arg1][address(arg2)].field_1024 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_1b7795b5[arg1][address(arg2)].field_1024 + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0 / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not sub_1b7795b5[arg1][address(arg2)].field_0:
            if sub_1b7795b5[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_1b7795b5[arg1][address(arg2)].field_1024 - sub_1b7795b5[arg1][address(arg2)].field_256 < -sub_1b7795b5[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_1b7795b5[arg1][address(arg2)].field_1024 - sub_1b7795b5[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0 / sub_1b7795b5[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_1b7795b5[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_1b7795b5[arg1][address(arg2)].field_1024 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_1b7795b5[arg1][address(arg2)].field_1024 + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0 / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_256)
    require ext_code.size(sub_b8711ef9Address)
    staticcall sub_b8711ef9Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 27500 * 10^18 * 3600:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_1b7795b5[arg1][address(arg2)].field_0:
                if sub_1b7795b5[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_1b7795b5[arg1][address(arg2)].field_1024 - sub_1b7795b5[arg1][address(arg2)].field_256 < -sub_1b7795b5[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_1b7795b5[arg1][address(arg2)].field_1024 - sub_1b7795b5[arg1][address(arg2)].field_256)
            if (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_1b7795b5[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_1b7795b5[arg1][address(arg2)].field_1024 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_1b7795b5[arg1][address(arg2)].field_1024 + ((0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_1b7795b5[arg1][address(arg2)].field_0:
            if sub_1b7795b5[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_1b7795b5[arg1][address(arg2)].field_1024 - sub_1b7795b5[arg1][address(arg2)].field_256 < -sub_1b7795b5[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_1b7795b5[arg1][address(arg2)].field_1024 - sub_1b7795b5[arg1][address(arg2)].field_256)
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_1b7795b5[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_1b7795b5[arg1][address(arg2)].field_1024 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_1b7795b5[arg1][address(arg2)].field_1024 + ((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_256)
    if block.number < startBlock:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_1b7795b5[arg1][address(arg2)].field_0:
                if sub_1b7795b5[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_1b7795b5[arg1][address(arg2)].field_1024 - sub_1b7795b5[arg1][address(arg2)].field_256 < -sub_1b7795b5[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_1b7795b5[arg1][address(arg2)].field_1024 - sub_1b7795b5[arg1][address(arg2)].field_256)
            if (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_1b7795b5[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_1b7795b5[arg1][address(arg2)].field_1024 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_1b7795b5[arg1][address(arg2)].field_1024 + ((0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_1b7795b5[arg1][address(arg2)].field_0:
            if sub_1b7795b5[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_1b7795b5[arg1][address(arg2)].field_1024 - sub_1b7795b5[arg1][address(arg2)].field_256 < -sub_1b7795b5[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_1b7795b5[arg1][address(arg2)].field_1024 - sub_1b7795b5[arg1][address(arg2)].field_256)
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_1b7795b5[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_1b7795b5[arg1][address(arg2)].field_1024 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_1b7795b5[arg1][address(arg2)].field_1024 + ((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - poolInfo[arg1].field_512:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_1b7795b5[arg1][address(arg2)].field_0:
                if sub_1b7795b5[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_1b7795b5[arg1][address(arg2)].field_1024 - sub_1b7795b5[arg1][address(arg2)].field_256 < -sub_1b7795b5[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_1b7795b5[arg1][address(arg2)].field_1024 - sub_1b7795b5[arg1][address(arg2)].field_256)
            if (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_1b7795b5[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_1b7795b5[arg1][address(arg2)].field_1024 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_1b7795b5[arg1][address(arg2)].field_1024 + ((0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_1b7795b5[arg1][address(arg2)].field_0:
            if sub_1b7795b5[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_1b7795b5[arg1][address(arg2)].field_1024 - sub_1b7795b5[arg1][address(arg2)].field_256 < -sub_1b7795b5[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_1b7795b5[arg1][address(arg2)].field_1024 - sub_1b7795b5[arg1][address(arg2)].field_256)
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_1b7795b5[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_1b7795b5[arg1][address(arg2)].field_1024 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_1b7795b5[arg1][address(arg2)].field_1024 + ((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_256)
    if (block.number * sub_72be588c) - (poolInfo[arg1].field_512 * sub_72be588c) / block.number - poolInfo[arg1].field_512 != sub_72be588c:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.number * sub_72be588c) - (poolInfo[arg1].field_512 * sub_72be588c):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_1b7795b5[arg1][address(arg2)].field_0:
                if sub_1b7795b5[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_1b7795b5[arg1][address(arg2)].field_1024 - sub_1b7795b5[arg1][address(arg2)].field_256 < -sub_1b7795b5[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_1b7795b5[arg1][address(arg2)].field_1024 - sub_1b7795b5[arg1][address(arg2)].field_256)
            if (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_1b7795b5[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_1b7795b5[arg1][address(arg2)].field_1024 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_1b7795b5[arg1][address(arg2)].field_1024 + ((0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_1b7795b5[arg1][address(arg2)].field_0:
            if sub_1b7795b5[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_1b7795b5[arg1][address(arg2)].field_1024 - sub_1b7795b5[arg1][address(arg2)].field_256 < -sub_1b7795b5[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_1b7795b5[arg1][address(arg2)].field_1024 - sub_1b7795b5[arg1][address(arg2)].field_256)
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_1b7795b5[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_1b7795b5[arg1][address(arg2)].field_1024 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_1b7795b5[arg1][address(arg2)].field_1024 + ((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_256)
    if (block.number * sub_72be588c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_72be588c * poolInfo[arg1].field_256) / (block.number * sub_72be588c) - (poolInfo[arg1].field_512 * sub_72be588c) != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * sub_72be588c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_72be588c * poolInfo[arg1].field_256) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_1b7795b5[arg1][address(arg2)].field_0:
            if sub_1b7795b5[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_1b7795b5[arg1][address(arg2)].field_1024 - sub_1b7795b5[arg1][address(arg2)].field_256 < -sub_1b7795b5[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_1b7795b5[arg1][address(arg2)].field_1024 - sub_1b7795b5[arg1][address(arg2)].field_256)
        if (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_1b7795b5[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_1b7795b5[arg1][address(arg2)].field_1024 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_1b7795b5[arg1][address(arg2)].field_1024 + ((0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_256)
    if 10^12 * (block.number * sub_72be588c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_72be588c * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_72be588c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_72be588c * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if (10^12 * (block.number * sub_72be588c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_72be588c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not sub_1b7795b5[arg1][address(arg2)].field_0:
        if sub_1b7795b5[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_1b7795b5[arg1][address(arg2)].field_1024 - sub_1b7795b5[arg1][address(arg2)].field_256 < -sub_1b7795b5[arg1][address(arg2)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_1b7795b5[arg1][address(arg2)].field_1024 - sub_1b7795b5[arg1][address(arg2)].field_256)
    if (10^12 * (block.number * sub_72be588c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_72be588c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_72be588c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_72be588c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if sub_1b7795b5[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_72be588c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_72be588c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_1b7795b5[arg1][address(arg2)].field_1024 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (sub_1b7795b5[arg1][address(arg2)].field_1024 + ((10^12 * (block.number * sub_72be588c * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_72be588c * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_256)
}

function sub_92937ef8(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.sharesTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not poolInfo[arg1].field_1816:
        return 0
    if not poolInfo[arg1].field_256:
        return 0
    if block.number <= sub_2ca69f90:
        if poolInfo[arg1].field_2304 >= sub_c294cb80:
            return 0
        if ext_call.return_data[0] <= 0:
            return 0
        if poolInfo[arg1].field_2304 > sub_c294cb80:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_c294cb80 - poolInfo[arg1].field_2304:
            if sub_5b731561 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_5b731561
            if not 0 / sub_5b731561:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_2048 < poolInfo[arg1].field_2048:
                    revert with 0, 'SafeMath: addition overflow'
                if not sub_1b7795b5[arg1][address(arg2)].field_0:
                    if sub_1b7795b5[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -sub_1b7795b5[arg1][address(arg2)].field_512
                if (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_2048:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if sub_1b7795b5[arg1][address(arg2)].field_512 > (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512)
            if 10^12 * 0 / sub_5b731561 / 0 / sub_5b731561 != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^12 * 0 / sub_5b731561 / ext_call.return_data[0]) + poolInfo[arg1].field_2048 < poolInfo[arg1].field_2048:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_1b7795b5[arg1][address(arg2)].field_0:
                if sub_1b7795b5[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -sub_1b7795b5[arg1][address(arg2)].field_512
            if (10^12 * 0 / sub_5b731561 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_5b731561 / ext_call.return_data[0]) + poolInfo[arg1].field_2048:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_1b7795b5[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_5b731561 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / sub_5b731561 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512)
        if (sub_c294cb80 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_c294cb80 - poolInfo[arg1].field_2304 != poolInfo[arg1].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_5b731561 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_5b731561
        if not (sub_c294cb80 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_5b731561:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_2048 < poolInfo[arg1].field_2048:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_1b7795b5[arg1][address(arg2)].field_0:
                if sub_1b7795b5[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -sub_1b7795b5[arg1][address(arg2)].field_512
            if (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_2048:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_1b7795b5[arg1][address(arg2)].field_512 > (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512)
        if 10^12 * (sub_c294cb80 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_5b731561 / (sub_c294cb80 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_5b731561 != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^12 * (sub_c294cb80 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_5b731561 / ext_call.return_data[0]) + poolInfo[arg1].field_2048 < poolInfo[arg1].field_2048:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_1b7795b5[arg1][address(arg2)].field_0:
            if sub_1b7795b5[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -sub_1b7795b5[arg1][address(arg2)].field_512
        if (10^12 * (sub_c294cb80 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_5b731561 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (10^12 * (sub_c294cb80 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_5b731561 / ext_call.return_data[0]) + poolInfo[arg1].field_2048:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_1b7795b5[arg1][address(arg2)].field_512 > (10^12 * (sub_c294cb80 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_5b731561 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * (sub_c294cb80 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_5b731561 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512)
    require ext_code.size(sub_b8711ef9Address)
    staticcall sub_b8711ef9Address.0x70a08231 with:
            gas gas_remaining wei
           args feeReceiverAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_04d504a9 + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if sub_c294cb80 > sub_04d504a9 + ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_04d504a9 + ext_call.return_data[0] - sub_c294cb80 <= 0:
        if poolInfo[arg1].field_2304 >= sub_c294cb80:
            return 0
        if ext_call.return_data[0] <= 0:
            return 0
        if poolInfo[arg1].field_2304 > sub_c294cb80:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_c294cb80 - poolInfo[arg1].field_2304:
            if sub_5b731561 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_5b731561
            if not 0 / sub_5b731561:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_2048 < poolInfo[arg1].field_2048:
                    revert with 0, 'SafeMath: addition overflow'
                if not sub_1b7795b5[arg1][address(arg2)].field_0:
                    if sub_1b7795b5[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -sub_1b7795b5[arg1][address(arg2)].field_512
                if (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_2048:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if sub_1b7795b5[arg1][address(arg2)].field_512 > (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512)
            if 10^12 * 0 / sub_5b731561 / 0 / sub_5b731561 != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^12 * 0 / sub_5b731561 / ext_call.return_data[0]) + poolInfo[arg1].field_2048 < poolInfo[arg1].field_2048:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_1b7795b5[arg1][address(arg2)].field_0:
                if sub_1b7795b5[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -sub_1b7795b5[arg1][address(arg2)].field_512
            if (10^12 * 0 / sub_5b731561 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_5b731561 / ext_call.return_data[0]) + poolInfo[arg1].field_2048:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_1b7795b5[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_5b731561 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^12 * 0 / sub_5b731561 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512)
        if (sub_c294cb80 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_c294cb80 - poolInfo[arg1].field_2304 != poolInfo[arg1].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_5b731561 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_5b731561
        if not (sub_c294cb80 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_5b731561:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_2048 < poolInfo[arg1].field_2048:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_1b7795b5[arg1][address(arg2)].field_0:
                if sub_1b7795b5[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -sub_1b7795b5[arg1][address(arg2)].field_512
            if (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_2048:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_1b7795b5[arg1][address(arg2)].field_512 > (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512)
        if 10^12 * (sub_c294cb80 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_5b731561 / (sub_c294cb80 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_5b731561 != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^12 * (sub_c294cb80 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_5b731561 / ext_call.return_data[0]) + poolInfo[arg1].field_2048 < poolInfo[arg1].field_2048:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_1b7795b5[arg1][address(arg2)].field_0:
            if sub_1b7795b5[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -sub_1b7795b5[arg1][address(arg2)].field_512
        if (10^12 * (sub_c294cb80 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_5b731561 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (10^12 * (sub_c294cb80 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_5b731561 / ext_call.return_data[0]) + poolInfo[arg1].field_2048:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_1b7795b5[arg1][address(arg2)].field_512 > (10^12 * (sub_c294cb80 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_5b731561 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * (sub_c294cb80 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_5b731561 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512)
    if poolInfo[arg1].field_2304 >= sub_04d504a9 + ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] <= 0:
        return 0
    if poolInfo[arg1].field_2304 > sub_04d504a9 + ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_04d504a9 + ext_call.return_data[0] - poolInfo[arg1].field_2304:
        if sub_5b731561 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_5b731561
        if not 0 / sub_5b731561:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_2048 < poolInfo[arg1].field_2048:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_1b7795b5[arg1][address(arg2)].field_0:
                if sub_1b7795b5[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -sub_1b7795b5[arg1][address(arg2)].field_512
            if (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_2048:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_1b7795b5[arg1][address(arg2)].field_512 > (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512)
        if 10^12 * 0 / sub_5b731561 / 0 / sub_5b731561 != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^12 * 0 / sub_5b731561 / ext_call.return_data[0]) + poolInfo[arg1].field_2048 < poolInfo[arg1].field_2048:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_1b7795b5[arg1][address(arg2)].field_0:
            if sub_1b7795b5[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -sub_1b7795b5[arg1][address(arg2)].field_512
        if (10^12 * 0 / sub_5b731561 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_5b731561 / ext_call.return_data[0]) + poolInfo[arg1].field_2048:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_1b7795b5[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_5b731561 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / sub_5b731561 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512)
    if (sub_04d504a9 * poolInfo[arg1].field_256) + (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_04d504a9 + ext_call.return_data[0] - poolInfo[arg1].field_2304 != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if sub_5b731561 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_5b731561
    if not (sub_04d504a9 * poolInfo[arg1].field_256) + (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_5b731561:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_2048 < poolInfo[arg1].field_2048:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_1b7795b5[arg1][address(arg2)].field_0:
            if sub_1b7795b5[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -sub_1b7795b5[arg1][address(arg2)].field_512
        if (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_2048:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_1b7795b5[arg1][address(arg2)].field_512 > (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512)
    if 10^12 * (sub_04d504a9 * poolInfo[arg1].field_256) + (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_5b731561 / (sub_04d504a9 * poolInfo[arg1].field_256) + (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_5b731561 != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if (10^12 * (sub_04d504a9 * poolInfo[arg1].field_256) + (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_5b731561 / ext_call.return_data[0]) + poolInfo[arg1].field_2048 < poolInfo[arg1].field_2048:
        revert with 0, 'SafeMath: addition overflow'
    if not sub_1b7795b5[arg1][address(arg2)].field_0:
        if sub_1b7795b5[arg1][address(arg2)].field_512 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -sub_1b7795b5[arg1][address(arg2)].field_512
    if (10^12 * (sub_04d504a9 * poolInfo[arg1].field_256) + (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_5b731561 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (10^12 * (sub_04d504a9 * poolInfo[arg1].field_256) + (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_5b731561 / ext_call.return_data[0]) + poolInfo[arg1].field_2048:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if sub_1b7795b5[arg1][address(arg2)].field_512 > (10^12 * (sub_04d504a9 * poolInfo[arg1].field_256) + (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_5b731561 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (sub_04d504a9 * poolInfo[arg1].field_256) + (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_5b731561 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512)
}

function sub_09dff082(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.sharesTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not poolInfo[arg1].field_1808:
        return 0
    if not poolInfo[arg1].field_256:
        return 0
    if block.number <= sub_43073de2:
        if poolInfo[arg1].field_2304 >= sub_c405ef62:
            return 0
        if not ext_call.return_data[0]:
            return 0
        if poolInfo[arg1].field_2304 > sub_c405ef62:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_c405ef62 - poolInfo[arg1].field_2304:
            if sub_ef68009f <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_ef68009f
            if not 0 / sub_ef68009f:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_2048 < poolInfo[arg1].field_2048:
                    revert with 0, 'SafeMath: addition overflow'
                if not sub_1b7795b5[arg1][address(arg2)].field_0:
                    if sub_1b7795b5[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_1b7795b5[arg1][address(arg2)].field_512 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return -sub_1b7795b5[arg1][address(arg2)].field_512
                if (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_2048:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if sub_1b7795b5[arg1][address(arg2)].field_512 > (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ((0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (((0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512)
            if 10^12 * 0 / sub_ef68009f / 0 / sub_ef68009f != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^12 * 0 / sub_ef68009f / ext_call.return_data[0]) + poolInfo[arg1].field_2048 < poolInfo[arg1].field_2048:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_1b7795b5[arg1][address(arg2)].field_0:
                if sub_1b7795b5[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_1b7795b5[arg1][address(arg2)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return -sub_1b7795b5[arg1][address(arg2)].field_512
            if (10^12 * 0 / sub_ef68009f / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_ef68009f / ext_call.return_data[0]) + poolInfo[arg1].field_2048:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_1b7795b5[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_ef68009f / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if ((10^12 * 0 / sub_ef68009f / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((10^12 * 0 / sub_ef68009f / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512)
        if (sub_c405ef62 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_c405ef62 - poolInfo[arg1].field_2304 != poolInfo[arg1].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_ef68009f <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_ef68009f
        if not (sub_c405ef62 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_ef68009f:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_2048 < poolInfo[arg1].field_2048:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_1b7795b5[arg1][address(arg2)].field_0:
                if sub_1b7795b5[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_1b7795b5[arg1][address(arg2)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return -sub_1b7795b5[arg1][address(arg2)].field_512
            if (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_2048:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_1b7795b5[arg1][address(arg2)].field_512 > (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if ((0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512)
        if 10^12 * (sub_c405ef62 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_ef68009f / (sub_c405ef62 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_ef68009f != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^12 * (sub_c405ef62 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_ef68009f / ext_call.return_data[0]) + poolInfo[arg1].field_2048 < poolInfo[arg1].field_2048:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_1b7795b5[arg1][address(arg2)].field_0:
            if sub_1b7795b5[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_1b7795b5[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return -sub_1b7795b5[arg1][address(arg2)].field_512
        if (10^12 * (sub_c405ef62 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_ef68009f / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (10^12 * (sub_c405ef62 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_ef68009f / ext_call.return_data[0]) + poolInfo[arg1].field_2048:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_1b7795b5[arg1][address(arg2)].field_512 > (10^12 * (sub_c405ef62 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_ef68009f / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if ((10^12 * (sub_c405ef62 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_ef68009f / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((10^12 * (sub_c405ef62 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_ef68009f / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512)
    require ext_code.size(sub_b8711ef9Address)
    staticcall sub_b8711ef9Address.0x70a08231 with:
            gas gas_remaining wei
           args sub_796f74fcAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_e87adc51 + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if sub_c405ef62 > sub_e87adc51 + ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_e87adc51 + ext_call.return_data[0] - sub_c405ef62 <= 0:
        if poolInfo[arg1].field_2304 >= sub_c405ef62:
            return 0
        if not ext_call.return_data[0]:
            return 0
        if poolInfo[arg1].field_2304 > sub_c405ef62:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_c405ef62 - poolInfo[arg1].field_2304:
            if sub_ef68009f <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_ef68009f
            if not 0 / sub_ef68009f:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_2048 < poolInfo[arg1].field_2048:
                    revert with 0, 'SafeMath: addition overflow'
                if not sub_1b7795b5[arg1][address(arg2)].field_0:
                    if sub_1b7795b5[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -sub_1b7795b5[arg1][address(arg2)].field_512 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return -sub_1b7795b5[arg1][address(arg2)].field_512
                if (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_2048:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if sub_1b7795b5[arg1][address(arg2)].field_512 > (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ((0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (((0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512)
            if 10^12 * 0 / sub_ef68009f / 0 / sub_ef68009f != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^12 * 0 / sub_ef68009f / ext_call.return_data[0]) + poolInfo[arg1].field_2048 < poolInfo[arg1].field_2048:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_1b7795b5[arg1][address(arg2)].field_0:
                if sub_1b7795b5[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_1b7795b5[arg1][address(arg2)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return -sub_1b7795b5[arg1][address(arg2)].field_512
            if (10^12 * 0 / sub_ef68009f / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_ef68009f / ext_call.return_data[0]) + poolInfo[arg1].field_2048:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_1b7795b5[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_ef68009f / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if ((10^12 * 0 / sub_ef68009f / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((10^12 * 0 / sub_ef68009f / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512)
        if (sub_c405ef62 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_c405ef62 - poolInfo[arg1].field_2304 != poolInfo[arg1].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_ef68009f <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_ef68009f
        if not (sub_c405ef62 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_ef68009f:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_2048 < poolInfo[arg1].field_2048:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_1b7795b5[arg1][address(arg2)].field_0:
                if sub_1b7795b5[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_1b7795b5[arg1][address(arg2)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return -sub_1b7795b5[arg1][address(arg2)].field_512
            if (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_2048:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_1b7795b5[arg1][address(arg2)].field_512 > (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if ((0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512)
        if 10^12 * (sub_c405ef62 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_ef68009f / (sub_c405ef62 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_ef68009f != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^12 * (sub_c405ef62 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_ef68009f / ext_call.return_data[0]) + poolInfo[arg1].field_2048 < poolInfo[arg1].field_2048:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_1b7795b5[arg1][address(arg2)].field_0:
            if sub_1b7795b5[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_1b7795b5[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return -sub_1b7795b5[arg1][address(arg2)].field_512
        if (10^12 * (sub_c405ef62 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_ef68009f / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (10^12 * (sub_c405ef62 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_ef68009f / ext_call.return_data[0]) + poolInfo[arg1].field_2048:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_1b7795b5[arg1][address(arg2)].field_512 > (10^12 * (sub_c405ef62 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_ef68009f / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if ((10^12 * (sub_c405ef62 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_ef68009f / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((10^12 * (sub_c405ef62 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_ef68009f / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512)
    if poolInfo[arg1].field_2304 >= sub_e87adc51 + ext_call.return_data[0]:
        return 0
    if not ext_call.return_data[0]:
        return 0
    if poolInfo[arg1].field_2304 > sub_e87adc51 + ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_e87adc51 + ext_call.return_data[0] - poolInfo[arg1].field_2304:
        if sub_ef68009f <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_ef68009f
        if not 0 / sub_ef68009f:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_2048 < poolInfo[arg1].field_2048:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_1b7795b5[arg1][address(arg2)].field_0:
                if sub_1b7795b5[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_1b7795b5[arg1][address(arg2)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return -sub_1b7795b5[arg1][address(arg2)].field_512
            if (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_2048:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_1b7795b5[arg1][address(arg2)].field_512 > (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if ((0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512)
        if 10^12 * 0 / sub_ef68009f / 0 / sub_ef68009f != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^12 * 0 / sub_ef68009f / ext_call.return_data[0]) + poolInfo[arg1].field_2048 < poolInfo[arg1].field_2048:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_1b7795b5[arg1][address(arg2)].field_0:
            if sub_1b7795b5[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_1b7795b5[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return -sub_1b7795b5[arg1][address(arg2)].field_512
        if (10^12 * 0 / sub_ef68009f / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (10^12 * 0 / sub_ef68009f / ext_call.return_data[0]) + poolInfo[arg1].field_2048:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_1b7795b5[arg1][address(arg2)].field_512 > (10^12 * 0 / sub_ef68009f / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if ((10^12 * 0 / sub_ef68009f / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((10^12 * 0 / sub_ef68009f / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512)
    if (sub_e87adc51 * poolInfo[arg1].field_256) + (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_e87adc51 + ext_call.return_data[0] - poolInfo[arg1].field_2304 != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if sub_ef68009f <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_ef68009f
    if not (sub_e87adc51 * poolInfo[arg1].field_256) + (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_ef68009f:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_2048 < poolInfo[arg1].field_2048:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_1b7795b5[arg1][address(arg2)].field_0:
            if sub_1b7795b5[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_1b7795b5[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return -sub_1b7795b5[arg1][address(arg2)].field_512
        if (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_2048:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_1b7795b5[arg1][address(arg2)].field_512 > (0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if ((0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((0 / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512)
    if 10^12 * (sub_e87adc51 * poolInfo[arg1].field_256) + (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_ef68009f / (sub_e87adc51 * poolInfo[arg1].field_256) + (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_ef68009f != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if (10^12 * (sub_e87adc51 * poolInfo[arg1].field_256) + (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_ef68009f / ext_call.return_data[0]) + poolInfo[arg1].field_2048 < poolInfo[arg1].field_2048:
        revert with 0, 'SafeMath: addition overflow'
    if not sub_1b7795b5[arg1][address(arg2)].field_0:
        if sub_1b7795b5[arg1][address(arg2)].field_512 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -sub_1b7795b5[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return -sub_1b7795b5[arg1][address(arg2)].field_512
    if (10^12 * (sub_e87adc51 * poolInfo[arg1].field_256) + (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_ef68009f / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / sub_1b7795b5[arg1][address(arg2)].field_0 != (10^12 * (sub_e87adc51 * poolInfo[arg1].field_256) + (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_ef68009f / ext_call.return_data[0]) + poolInfo[arg1].field_2048:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if sub_1b7795b5[arg1][address(arg2)].field_512 > (10^12 * (sub_e87adc51 * poolInfo[arg1].field_256) + (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_ef68009f / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if ((10^12 * (sub_e87adc51 * poolInfo[arg1].field_256) + (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_ef68009f / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (((10^12 * (sub_e87adc51 * poolInfo[arg1].field_256) + (ext_call.return_data[0] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_2304 * poolInfo[arg1].field_256) / sub_ef68009f / ext_call.return_data[0] * sub_1b7795b5[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_2048 * sub_1b7795b5[arg1][address(arg2)].field_0) / 10^12) - sub_1b7795b5[arg1][address(arg2)].field_512)
}



}
