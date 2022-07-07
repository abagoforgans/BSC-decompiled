contract main {




// =====================  Runtime code  =====================


#
#  - convertDustToEarned()
#  - earn()
#
const controllerFeeUL = 300

const controllerFeeMax = 10000

const buyBackRateMax = 10000

const withdrawFeeFactorMax = 10000

const withdrawFeeFactorLL = 9950

const buyBackRateUL = 800

const slippageFactorUL = 995

const entranceFeeFactorLL = 9950

const entranceFeeFactorMax = 10000


address owner;
uint256 stor1;
uint8 stor2;
uint8 stor2; offset 8
uint8 stor2; offset 16
uint8 stor2; offset 24
address farmContractAddress; offset 32
uint256 pid;
address wantAddress;
address token0Address;
address token1Address;
address earnedAddress;
address uniRouterAddress;
address wbnbAddress;
uint32 stor10;
address sub_ec1b7a18Address;
uint256 stor10;
address sub_dc560d58Address;
uint8 onlyGov; offset 160
uint128 stor12; offset 160
address govAddress;
uint256 lastEarnBlock;
uint256 stor14; offset 32
uint256 wantLockedTotal;
big480 stor14;
uint256 sharesTotal;
uint256 controllerFee;
uint256 buyBackRate;
address buyBackAddress;
address rewardsAddress;
address sub_a7fd2b3fAddress;
address withdrawFeeAddress;
address sub_c6088525Address;
uint256 entranceFeeFactor;
uint256 withdrawFeeFactor;
uint256 slippageFactor;
array of address sub_2b72b36f;
array of address earnedToToken0Path;
array of address earnedToToken1Path;
array of address token0ToEarnedPath;
array of address token1ToEarnedPath;
address sub_786caab7Address;

function token1ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token1ToEarnedPath.length
    return token1ToEarnedPath[arg1]
}

function onlyGov() payable {
    return bool(onlyGov)
}

function lastEarnBlock() payable {
    return lastEarnBlock
}

function entranceFeeFactor() payable {
    return entranceFeeFactor
}

function buyBackRate() payable {
    return buyBackRate
}

function sub_2b72b36f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_2b72b36f.length
    return sub_2b72b36f[arg1]
}

function wantLockedTotal() payable {
    return wantLockedTotal
}

function sharesTotal() payable {
    return sharesTotal
}

function govAddress() payable {
    return govAddress
}

function paused() payable {
    return bool(uint8(stor2.field_0))
}

function wbnbAddress() payable {
    return wbnbAddress
}

function withdrawFeeFactor() payable {
    return withdrawFeeFactor
}

function uniRouterAddress() payable {
    return uniRouterAddress
}

function buyBackAddress() payable {
    return buyBackAddress
}

function withdrawFeeAddress() payable {
    return withdrawFeeAddress
}

function sub_786caab7(?) payable {
    return sub_786caab7Address
}

function token0Address() payable {
    return token0Address
}

function isCAKEStaking() payable {
    return bool(uint8(stor2.field_8))
}

function controllerFee() payable {
    return controllerFee
}

function owner() payable {
    return owner
}

function earnedToToken1Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken1Path.length
    return earnedToToken1Path[arg1]
}

function isSameAssetDeposit() payable {
    return bool(uint8(stor2.field_16))
}

function farmContractAddress() payable {
    return farmContractAddress
}

function sub_a7fd2b3f(?) payable {
    return sub_a7fd2b3fAddress
}

function token0ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token0ToEarnedPath.length
    return token0ToEarnedPath[arg1]
}

function rewardsAddress() payable {
    return rewardsAddress
}

function sub_c6088525(?) payable {
    return sub_c6088525Address
}

function earnedToToken0Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken0Path.length
    return earnedToToken0Path[arg1]
}

function token1Address() payable {
    return token1Address
}

function sub_dc560d58(?) payable {
    return sub_dc560d58Address
}

function isAutoComp() payable {
    return bool(uint8(stor2.field_24))
}

function earnedAddress() payable {
    return earnedAddress
}

function wantAddress() payable {
    return wantAddress
}

function sub_ec1b7a18(?) payable {
    return address(sub_ec1b7a18Address)
}

function pid() payable {
    return pid
}

function slippageFactor() payable {
    return slippageFactor
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_46381841(?) payable {
    require calldata.size - 4 >= 32
    if sub_786caab7Address != msg.sender:
        revert with 0, 'Access denied'
    sub_786caab7Address = arg1
}

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    govAddress = arg1
    emit SetGov(arg1);
}

function setOnlyGov(bool arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    stor12 = Mask(96, 0, arg1)
    emit SetOnlyGov(arg1);
}

function setRewardsAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    rewardsAddress = arg1
    emit SetRewardsAddress(arg1);
}

function setBuyBackAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    buyBackAddress = arg1
    emit SetBuyBackAddress(arg1);
}

function setUniRouterAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    uniRouterAddress = arg1
    emit SetUniRouterAddress(arg1);
}

function pause() payable {
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    uint8(stor2.field_0) = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if not uint8(stor2.field_0):
        revert with 0, 'Pausable: not paused'
    uint8(stor2.field_0) = 0
    emit Unpaused(msg.sender);
}

function changeFeeAddress(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if sub_786caab7Address != msg.sender:
        revert with 0, 'Access denied'
    sub_a7fd2b3fAddress = arg1
    withdrawFeeAddress = arg2
}

function sub_79e56815(?) payable {
    mem[388 len 0] = None
    mem[452 len 0] = None
    require ext_code.size(sub_c6088525Address)
    call sub_c6088525Address.0xc12cf4be with:
         gas gas_remaining wei
        args 128, 192, 0, 1, 1, mem[388], 1, mem[452]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function wrapBNB() payable {
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if eth.balance(this.address):
        require ext_code.size(wbnbAddress)
        call wbnbAddress.deposit() with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setSettings(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if arg1 < 9950:
        revert with 0, '_entranceFeeFactor too low'
    if arg1 > 10000:
        revert with 0, '_entranceFeeFactor too high'
    entranceFeeFactor = arg1
    if arg2 < 9950:
        revert with 0, '_withdrawFeeFactor too low'
    if arg2 > 10000:
        revert with 0, '_withdrawFeeFactor too high'
    withdrawFeeFactor = arg2
    if arg3 > 300:
        revert with 0, '_controllerFee too high'
    controllerFee = arg3
    if arg4 > 800:
        revert with 0, '_buyBackRate too high'
    buyBackRate = arg4
    if arg5 > 995:
        revert with 0, '_slippageFactor too high'
    slippageFactor = arg5
    emit SetSettings(arg1, arg2, arg3, arg4, arg5);
}

function inCaseTokensGetStuck(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if earnedAddress == arg1:
        revert with 0, '!safe'
    if wantAddress == arg1:
        revert with 0, '!safe'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2
        if not unknown_0xa9059cbb(?????), address(arg3) << 64:
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

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call wantAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if entranceFeeFactor > 10000:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2:
            if 0 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if wantLockedTotal <= 0:
                if arg2 + sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += arg2
                if arg2 + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
                stor1 = 1
                return arg2
            if sharesTotal <= 0:
                if arg2 + sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += arg2
                if arg2 + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
                stor1 = 1
                return arg2
            if not arg2:
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / wantLockedTotal) + sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += 0 / wantLockedTotal
                if arg2 + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
                stor1 = 1
                return (0 / wantLockedTotal)
            if sharesTotal * arg2 / arg2 != sharesTotal:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[585 len 31]
            if not wantLockedTotal:
                revert with 0, 'SafeMath: division by zero'
            if (sharesTotal * arg2 / wantLockedTotal) + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += sharesTotal * arg2 / wantLockedTotal
            if arg2 + wantLockedTotal < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += arg2
            stor1 = 1
            return (sharesTotal * arg2 / wantLockedTotal)
        if (10000 * arg2) - (entranceFeeFactor * arg2) / arg2 != -entranceFeeFactor + 10000:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[457 len 31]
        if (10000 * arg2) - (entranceFeeFactor * arg2) / 10000:
            require ext_code.size(wantAddress)
            call wantAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_a7fd2b3fAddress, (10000 * arg2) - (entranceFeeFactor * arg2) / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        if (10000 * arg2) - (entranceFeeFactor * arg2) / 10000 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if wantLockedTotal <= 0:
            if arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000) + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal = arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000) + sharesTotal
            if arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000) + wantLockedTotal < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal = arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000) + wantLockedTotal
            stor1 = 1
            return (arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000))
        if sharesTotal <= 0:
            if arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000) + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal = arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000) + sharesTotal
            if arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000) + wantLockedTotal < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal = arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000) + wantLockedTotal
            stor1 = 1
            return (arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000))
        if not arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000):
            if not wantLockedTotal:
                revert with 0, 'SafeMath: division by zero'
            if (0 / wantLockedTotal) + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal
            if arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000) + wantLockedTotal < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal = arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000) + wantLockedTotal
            stor1 = 1
            return (0 / wantLockedTotal)
        if (arg2 * sharesTotal) - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000 * sharesTotal) / arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000) != sharesTotal:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[585 len 31]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if entranceFeeFactor > 10000:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2:
            if 0 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if wantLockedTotal <= 0:
                if arg2 + sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += arg2
                if arg2 + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
                stor1 = 1
                return arg2
            if sharesTotal <= 0:
                if arg2 + sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += arg2
                if arg2 + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
                stor1 = 1
                return arg2
            if not arg2:
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / wantLockedTotal) + sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += 0 / wantLockedTotal
                if arg2 + wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
                stor1 = 1
                return (0 / wantLockedTotal)
            if sharesTotal * arg2 / arg2 != sharesTotal:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 586 len 31]
            if not wantLockedTotal:
                revert with 0, 'SafeMath: division by zero'
            if (sharesTotal * arg2 / wantLockedTotal) + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += sharesTotal * arg2 / wantLockedTotal
            if arg2 + wantLockedTotal < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += arg2
            stor1 = 1
            return (sharesTotal * arg2 / wantLockedTotal)
        if (10000 * arg2) - (entranceFeeFactor * arg2) / arg2 != -entranceFeeFactor + 10000:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 458 len 31]
        if (10000 * arg2) - (entranceFeeFactor * arg2) / 10000:
            require ext_code.size(wantAddress)
            call wantAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_a7fd2b3fAddress, (10000 * arg2) - (entranceFeeFactor * arg2) / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        if (10000 * arg2) - (entranceFeeFactor * arg2) / 10000 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if wantLockedTotal <= 0:
            if arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000) + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal = arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000) + sharesTotal
            if arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000) + wantLockedTotal < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal = arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000) + wantLockedTotal
            stor1 = 1
            return (arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000))
        if sharesTotal <= 0:
            if arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000) + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal = arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000) + sharesTotal
            if arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000) + wantLockedTotal < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal = arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000) + wantLockedTotal
            stor1 = 1
            return (arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000))
        if not arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000):
            if not wantLockedTotal:
                revert with 0, 'SafeMath: division by zero'
            if (0 / wantLockedTotal) + sharesTotal < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal
            if arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000) + wantLockedTotal < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal = arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000) + wantLockedTotal
            stor1 = 1
            return (0 / wantLockedTotal)
        if (arg2 * sharesTotal) - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000 * sharesTotal) / arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000) != sharesTotal:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 586 len 31]
    ('eq', ('div', ('add', ('mul', ('param', 'arg2'), ('stor', ('name', 'sharesTotal', 15))), ('mul', -1, ('div', ('add', ('mul', 10000, ('param', 'arg2')), ('mul', -1, ('stor', ('name', 'entranceFeeFactor', 23)), ('param', 'arg2'))), 10000), ('stor', ('name', 'sharesTotal', 15)))), ('add', ('param', 'arg2'), ('mul', -1, ('div', ('add', ('mul', 10000, ('param', 'arg2')), ('mul', -1, ('stor', ('name', 'entranceFeeFactor', 23)), ('param', 'arg2'))), 10000)))), ('stor', ('name', 'sharesTotal', 15)))
    if not wantLockedTotal:
        revert with 0, 'SafeMath: division by zero'
    if ((arg2 * sharesTotal) - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000 * sharesTotal) / wantLockedTotal) + sharesTotal < sharesTotal:
        revert with 0, 'SafeMath: addition overflow'
    sharesTotal += (arg2 * sharesTotal) - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000 * sharesTotal) / wantLockedTotal
    if arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000) + wantLockedTotal < wantLockedTotal:
        revert with 0, 'SafeMath: addition overflow'
    wantLockedTotal = arg2 - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000) + wantLockedTotal
    stor1 = 1
    return ((arg2 * sharesTotal) - ((10000 * arg2) - (entranceFeeFactor * arg2) / 10000 * sharesTotal) / wantLockedTotal)
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not arg2:
        revert with 0, '_wantAmt <= 0'
    if sharesTotal * arg2 / arg2 != sharesTotal:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not wantLockedTotal:
        revert with 0, 'SafeMath: division by zero'
    if sharesTotal * arg2 / wantLockedTotal <= sharesTotal:
        sharesTotal -= sharesTotal * arg2 / wantLockedTotal
        mem[516 len 0] = None
        mem[580 len 0] = None
        require ext_code.size(sub_c6088525Address)
        call sub_c6088525Address.0xc12cf4be with:
             gas gas_remaining wei
            args 128, 192, 0, 1, 1, mem[516], 1, mem[580]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 <= ext_call.return_data[0]:
            if wantLockedTotal >= arg2:
                if withdrawFeeFactor >= 10000:
                    if arg2 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= arg2
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg2) >> 32
                    mem[644 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor10)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[612]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 691 len 22]
                else:
                    if not arg2:
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg2) >> 32
                        mem[644 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor10)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                    else:
                        if withdrawFeeFactor > 10000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg2:
                            if not arg2:
                                require ext_code.size(wantAddress)
                                call wantAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args withdrawFeeAddress, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
                                mem[836 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0) << 256, mem[836 len 4]
                            else:
                                if withdrawFeeFactor * arg2 / arg2 != withdrawFeeFactor:
                                    revert with 0, '', 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                require ext_code.size(wantAddress)
                                call wantAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args withdrawFeeAddress, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32
                                mem[836 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(224, 32, withdrawFeeFactor * arg2 / 10000) << 224, mem[836 len 4]
                        else:
                            if (10000 * arg2) - (withdrawFeeFactor * arg2) / arg2 != -withdrawFeeFactor + 10000:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if not arg2:
                                require ext_code.size(wantAddress)
                                call wantAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args withdrawFeeAddress, 0, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
                                mem[836 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0) << 256, mem[836 len 4]
                            else:
                                if withdrawFeeFactor * arg2 / arg2 != withdrawFeeFactor:
                                    revert with 0, '', 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                require ext_code.size(wantAddress)
                                call wantAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args withdrawFeeAddress, 0, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32
                                mem[836 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(224, 32, withdrawFeeFactor * arg2 / 10000) << 224, mem[836 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[804]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 883 len 22]
            else:
                if withdrawFeeFactor >= 10000:
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                    mem[644 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor10)
                         gas gas_remaining wei
                        args Mask(480, 0, stor14.field_0), mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[612]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 691 len 22]
                else:
                    if not wantLockedTotal:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                        mem[644 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor10)
                             gas gas_remaining wei
                            args Mask(480, 0, stor14.field_0), mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                    else:
                        if withdrawFeeFactor > 10000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not wantLockedTotal:
                            if not wantLockedTotal:
                                require ext_code.size(wantAddress)
                                call wantAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args withdrawFeeAddress, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
                                mem[836 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0) << 256, mem[836 len 4]
                            else:
                                if withdrawFeeFactor * wantLockedTotal / wantLockedTotal != withdrawFeeFactor:
                                    revert with 0, '', 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                require ext_code.size(wantAddress)
                                call wantAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args withdrawFeeAddress, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if withdrawFeeFactor * wantLockedTotal / 10000 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= withdrawFeeFactor * wantLockedTotal / 10000
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, withdrawFeeFactor * wantLockedTotal / 10000) >> 32
                                mem[836 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(224, 32, withdrawFeeFactor * wantLockedTotal / 10000) << 224, mem[836 len 4]
                        else:
                            if (10000 * wantLockedTotal) - (withdrawFeeFactor * wantLockedTotal) / wantLockedTotal != -withdrawFeeFactor + 10000:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if not wantLockedTotal:
                                require ext_code.size(wantAddress)
                                call wantAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args withdrawFeeAddress, 0, (10000 * wantLockedTotal) - (withdrawFeeFactor * wantLockedTotal) / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
                                mem[836 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0) << 256, mem[836 len 4]
                            else:
                                if withdrawFeeFactor * wantLockedTotal / wantLockedTotal != withdrawFeeFactor:
                                    revert with 0, '', 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                require ext_code.size(wantAddress)
                                call wantAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args withdrawFeeAddress, 0, (10000 * wantLockedTotal) - (withdrawFeeFactor * wantLockedTotal) / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if withdrawFeeFactor * wantLockedTotal / 10000 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= withdrawFeeFactor * wantLockedTotal / 10000
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, withdrawFeeFactor * wantLockedTotal / 10000) >> 32
                                mem[836 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(224, 32, withdrawFeeFactor * wantLockedTotal / 10000) << 224, mem[836 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[804]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 883 len 22]
        else:
            if wantLockedTotal >= ext_call.return_data[0]:
                if withdrawFeeFactor >= 10000:
                    if ext_call.return_data[0] > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= ext_call.return_data[0]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                    mem[644 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor10)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[612]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 691 len 22]
                else:
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                        mem[644 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor10)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                    else:
                        if withdrawFeeFactor > 10000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                require ext_code.size(wantAddress)
                                call wantAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args withdrawFeeAddress, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
                                mem[836 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0) << 256, mem[836 len 4]
                            else:
                                if withdrawFeeFactor * ext_call.return_data[0] / ext_call.return_data[0] != withdrawFeeFactor:
                                    revert with 0, '', 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                require ext_code.size(wantAddress)
                                call wantAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args withdrawFeeAddress, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if withdrawFeeFactor * ext_call.return_data[0] / 10000 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= withdrawFeeFactor * ext_call.return_data[0] / 10000
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, withdrawFeeFactor * ext_call.return_data[0] / 10000) >> 32
                                mem[836 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(224, 32, withdrawFeeFactor * ext_call.return_data[0] / 10000) << 224, mem[836 len 4]
                        else:
                            if (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if not ext_call.return_data[0]:
                                require ext_code.size(wantAddress)
                                call wantAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args withdrawFeeAddress, 0, (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
                                mem[836 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0) << 256, mem[836 len 4]
                            else:
                                if withdrawFeeFactor * ext_call.return_data[0] / ext_call.return_data[0] != withdrawFeeFactor:
                                    revert with 0, '', 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                require ext_code.size(wantAddress)
                                call wantAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args withdrawFeeAddress, 0, (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if withdrawFeeFactor * ext_call.return_data[0] / 10000 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= withdrawFeeFactor * ext_call.return_data[0] / 10000
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, withdrawFeeFactor * ext_call.return_data[0] / 10000) >> 32
                                mem[836 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(224, 32, withdrawFeeFactor * ext_call.return_data[0] / 10000) << 224, mem[836 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[804]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 883 len 22]
            else:
                if withdrawFeeFactor >= 10000:
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                    mem[644 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor10)
                         gas gas_remaining wei
                        args Mask(480, 0, stor14.field_0), mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[612]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 691 len 22]
                else:
                    if not wantLockedTotal:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                        mem[644 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor10)
                             gas gas_remaining wei
                            args Mask(480, 0, stor14.field_0), mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                    else:
                        if withdrawFeeFactor > 10000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not wantLockedTotal:
                            if not wantLockedTotal:
                                require ext_code.size(wantAddress)
                                call wantAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args withdrawFeeAddress, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
                                mem[836 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0) << 256, mem[836 len 4]
                            else:
                                if withdrawFeeFactor * wantLockedTotal / wantLockedTotal != withdrawFeeFactor:
                                    revert with 0, '', 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                require ext_code.size(wantAddress)
                                call wantAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args withdrawFeeAddress, 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if withdrawFeeFactor * wantLockedTotal / 10000 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= withdrawFeeFactor * wantLockedTotal / 10000
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, withdrawFeeFactor * wantLockedTotal / 10000) >> 32
                                mem[836 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(224, 32, withdrawFeeFactor * wantLockedTotal / 10000) << 224, mem[836 len 4]
                        else:
                            if (10000 * wantLockedTotal) - (withdrawFeeFactor * wantLockedTotal) / wantLockedTotal != -withdrawFeeFactor + 10000:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if not wantLockedTotal:
                                require ext_code.size(wantAddress)
                                call wantAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args withdrawFeeAddress, 0, (10000 * wantLockedTotal) - (withdrawFeeFactor * wantLockedTotal) / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
                                mem[836 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0) << 256, mem[836 len 4]
                            else:
                                if withdrawFeeFactor * wantLockedTotal / wantLockedTotal != withdrawFeeFactor:
                                    revert with 0, '', 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                require ext_code.size(wantAddress)
                                call wantAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args withdrawFeeAddress, 0, (10000 * wantLockedTotal) - (withdrawFeeFactor * wantLockedTotal) / 10000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if withdrawFeeFactor * wantLockedTotal / 10000 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= withdrawFeeFactor * wantLockedTotal / 10000
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                                if not ext_code.size(wantAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, withdrawFeeFactor * wantLockedTotal / 10000) >> 32
                                mem[836 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(224, 32, withdrawFeeFactor * wantLockedTotal / 10000) << 224, mem[836 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[804]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 883 len 22]
        stor1 = 1
        return (sharesTotal * arg2 / wantLockedTotal)
    if sharesTotal > sharesTotal:
        revert with 0, 'SafeMath: subtraction overflow'
    sharesTotal = 0
    mem[516 len 0] = None
    mem[580 len 0] = None
    require ext_code.size(sub_c6088525Address)
    call sub_c6088525Address.0xc12cf4be with:
         gas gas_remaining wei
        args 128, 192, 0, 1, 1, mem[516], 1, mem[580]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 <= ext_call.return_data[0]:
        if wantLockedTotal >= arg2:
            if withdrawFeeFactor >= 10000:
                if arg2 > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                wantLockedTotal -= arg2
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg2) >> 32
                mem[644 len 0] = 0
                call wantAddress with:
                   funct uint32(stor10)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[644 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[612]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 691 len 22]
            else:
                if not arg2:
                    if arg2 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= arg2
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg2) >> 32
                    mem[644 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor10)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[612]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 691 len 22]
                else:
                    if withdrawFeeFactor > 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg2:
                        if not arg2:
                            require ext_code.size(wantAddress)
                            call wantAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args withdrawFeeAddress, 0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 0 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
                            mem[836 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0) << 256, mem[836 len 4]
                        else:
                            if withdrawFeeFactor * arg2 / arg2 != withdrawFeeFactor:
                                revert with 0, '', 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            require ext_code.size(wantAddress)
                            call wantAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args withdrawFeeAddress, 0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32
                            mem[836 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(224, 32, withdrawFeeFactor * arg2 / 10000) << 224, mem[836 len 4]
                    else:
                        if (10000 * arg2) - (withdrawFeeFactor * arg2) / arg2 != -withdrawFeeFactor + 10000:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not arg2:
                            require ext_code.size(wantAddress)
                            call wantAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args withdrawFeeAddress, 0, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 0 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
                            mem[836 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0) << 256, mem[836 len 4]
                        else:
                            if withdrawFeeFactor * arg2 / arg2 != withdrawFeeFactor:
                                revert with 0, '', 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            require ext_code.size(wantAddress)
                            call wantAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args withdrawFeeAddress, 0, (10000 * arg2) - (withdrawFeeFactor * arg2) / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if withdrawFeeFactor * arg2 / 10000 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= withdrawFeeFactor * arg2 / 10000
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, withdrawFeeFactor * arg2 / 10000) >> 32
                            mem[836 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(224, 32, withdrawFeeFactor * arg2 / 10000) << 224, mem[836 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[804]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 883 len 22]
        else:
            if withdrawFeeFactor >= 10000:
                if wantLockedTotal > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                wantLockedTotal = 0
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                mem[644 len 0] = 0
                call wantAddress with:
                   funct uint32(stor10)
                     gas gas_remaining wei
                    args Mask(480, 0, stor14.field_0), mem[644 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[612]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 691 len 22]
            else:
                if not wantLockedTotal:
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                    mem[644 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor10)
                         gas gas_remaining wei
                        args Mask(480, 0, stor14.field_0), mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[612]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 691 len 22]
                else:
                    if withdrawFeeFactor > 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not wantLockedTotal:
                        if not wantLockedTotal:
                            require ext_code.size(wantAddress)
                            call wantAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args withdrawFeeAddress, 0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 0 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
                            mem[836 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0) << 256, mem[836 len 4]
                        else:
                            if withdrawFeeFactor * wantLockedTotal / wantLockedTotal != withdrawFeeFactor:
                                revert with 0, '', 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            require ext_code.size(wantAddress)
                            call wantAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args withdrawFeeAddress, 0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if withdrawFeeFactor * wantLockedTotal / 10000 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= withdrawFeeFactor * wantLockedTotal / 10000
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, withdrawFeeFactor * wantLockedTotal / 10000) >> 32
                            mem[836 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(224, 32, withdrawFeeFactor * wantLockedTotal / 10000) << 224, mem[836 len 4]
                    else:
                        if (10000 * wantLockedTotal) - (withdrawFeeFactor * wantLockedTotal) / wantLockedTotal != -withdrawFeeFactor + 10000:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not wantLockedTotal:
                            require ext_code.size(wantAddress)
                            call wantAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args withdrawFeeAddress, 0, (10000 * wantLockedTotal) - (withdrawFeeFactor * wantLockedTotal) / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 0 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
                            mem[836 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0) << 256, mem[836 len 4]
                        else:
                            if withdrawFeeFactor * wantLockedTotal / wantLockedTotal != withdrawFeeFactor:
                                revert with 0, '', 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            require ext_code.size(wantAddress)
                            call wantAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args withdrawFeeAddress, 0, (10000 * wantLockedTotal) - (withdrawFeeFactor * wantLockedTotal) / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if withdrawFeeFactor * wantLockedTotal / 10000 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= withdrawFeeFactor * wantLockedTotal / 10000
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, withdrawFeeFactor * wantLockedTotal / 10000) >> 32
                            mem[836 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(224, 32, withdrawFeeFactor * wantLockedTotal / 10000) << 224, mem[836 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[804]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 883 len 22]
    else:
        if wantLockedTotal >= ext_call.return_data[0]:
            if withdrawFeeFactor >= 10000:
                if ext_call.return_data[0] > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                wantLockedTotal -= ext_call.return_data[0]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                mem[644 len 0] = 0
                call wantAddress with:
                   funct uint32(stor10)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[644 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[612]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 691 len 22]
            else:
                if not ext_call.return_data[0]:
                    if ext_call.return_data[0] > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= ext_call.return_data[0]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                    mem[644 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor10)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[612]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 691 len 22]
                else:
                    if withdrawFeeFactor > 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            require ext_code.size(wantAddress)
                            call wantAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args withdrawFeeAddress, 0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 0 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
                            mem[836 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0) << 256, mem[836 len 4]
                        else:
                            if withdrawFeeFactor * ext_call.return_data[0] / ext_call.return_data[0] != withdrawFeeFactor:
                                revert with 0, '', 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            require ext_code.size(wantAddress)
                            call wantAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args withdrawFeeAddress, 0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if withdrawFeeFactor * ext_call.return_data[0] / 10000 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= withdrawFeeFactor * ext_call.return_data[0] / 10000
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, withdrawFeeFactor * ext_call.return_data[0] / 10000) >> 32
                            mem[836 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(224, 32, withdrawFeeFactor * ext_call.return_data[0] / 10000) << 224, mem[836 len 4]
                    else:
                        if (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / ext_call.return_data[0] != -withdrawFeeFactor + 10000:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not ext_call.return_data[0]:
                            require ext_code.size(wantAddress)
                            call wantAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args withdrawFeeAddress, 0, (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 0 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
                            mem[836 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0) << 256, mem[836 len 4]
                        else:
                            if withdrawFeeFactor * ext_call.return_data[0] / ext_call.return_data[0] != withdrawFeeFactor:
                                revert with 0, '', 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            require ext_code.size(wantAddress)
                            call wantAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args withdrawFeeAddress, 0, (10000 * ext_call.return_data[0]) - (withdrawFeeFactor * ext_call.return_data[0]) / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if withdrawFeeFactor * ext_call.return_data[0] / 10000 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= withdrawFeeFactor * ext_call.return_data[0] / 10000
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, withdrawFeeFactor * ext_call.return_data[0] / 10000) >> 32
                            mem[836 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(224, 32, withdrawFeeFactor * ext_call.return_data[0] / 10000) << 224, mem[836 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[804]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 883 len 22]
        else:
            if withdrawFeeFactor >= 10000:
                if wantLockedTotal > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                wantLockedTotal = 0
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                mem[644 len 0] = 0
                call wantAddress with:
                   funct uint32(stor10)
                     gas gas_remaining wei
                    args Mask(480, 0, stor14.field_0), mem[644 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[612]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 691 len 22]
            else:
                if not wantLockedTotal:
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[686 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                    mem[644 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor10)
                         gas gas_remaining wei
                        args Mask(480, 0, stor14.field_0), mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[612]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 691 len 22]
                else:
                    if withdrawFeeFactor > 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not wantLockedTotal:
                        if not wantLockedTotal:
                            require ext_code.size(wantAddress)
                            call wantAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args withdrawFeeAddress, 0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 0 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
                            mem[836 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0) << 256, mem[836 len 4]
                        else:
                            if withdrawFeeFactor * wantLockedTotal / wantLockedTotal != withdrawFeeFactor:
                                revert with 0, '', 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            require ext_code.size(wantAddress)
                            call wantAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args withdrawFeeAddress, 0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if withdrawFeeFactor * wantLockedTotal / 10000 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= withdrawFeeFactor * wantLockedTotal / 10000
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, withdrawFeeFactor * wantLockedTotal / 10000) >> 32
                            mem[836 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(224, 32, withdrawFeeFactor * wantLockedTotal / 10000) << 224, mem[836 len 4]
                    else:
                        if (10000 * wantLockedTotal) - (withdrawFeeFactor * wantLockedTotal) / wantLockedTotal != -withdrawFeeFactor + 10000:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if not wantLockedTotal:
                            require ext_code.size(wantAddress)
                            call wantAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args withdrawFeeAddress, 0, (10000 * wantLockedTotal) - (withdrawFeeFactor * wantLockedTotal) / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 0 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
                            mem[836 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0) << 256, mem[836 len 4]
                        else:
                            if withdrawFeeFactor * wantLockedTotal / wantLockedTotal != withdrawFeeFactor:
                                revert with 0, '', 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            require ext_code.size(wantAddress)
                            call wantAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args withdrawFeeAddress, 0, (10000 * wantLockedTotal) - (withdrawFeeFactor * wantLockedTotal) / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if withdrawFeeFactor * wantLockedTotal / 10000 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= withdrawFeeFactor * wantLockedTotal / 10000
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if not ext_code.size(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, withdrawFeeFactor * wantLockedTotal / 10000) >> 32
                            mem[836 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(224, 32, withdrawFeeFactor * wantLockedTotal / 10000) << 224, mem[836 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[804]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 883 len 22]
    stor1 = 1
    return sharesTotal
}



}
