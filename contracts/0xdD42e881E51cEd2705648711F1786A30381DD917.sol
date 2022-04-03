contract main {




// =====================  Runtime code  =====================


#
#  - earn()
#
const controllerFeeUL = 300

const controllerFeeMax = 10000

const buyBackRateMax = 10000

const wbnbAddress = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const buyBackAddress = 57005

const buyBackRateUL = 800

const entranceFeeFactorLL = 9950

const entranceFeeFactorMax = 10000


uint8 stor0; offset 160
uint8 stor0; offset 168
uint8 stor0; offset 176
uint128 stor0; offset 160
address owner;
uint32 stor1;
address farmContractAddress;
uint256 stor1;
uint256 pid;
address wantAddress;
address token0Address;
address token1Address;
address earnedAddress;
uint32 stor7;
address uniRouterAddress;
uint256 stor7;
uint32 stor8;
address autoFarmAddress;
uint256 stor8;
address aUTOAddress;
uint8 onlyGov; offset 160
uint128 stor10; offset 160
address govAddress;
uint256 lastEarnBlock;
uint256 stor12; offset 32
uint256 wantLockedTotal;
big480 stor12;
uint256 sharesTotal;
uint256 controllerFee;
uint256 buyBackRate;
uint256 entranceFeeFactor;
array of address earnedToAUTOPath;
array of address earnedToToken0Path;
array of address earnedToToken1Path;
array of struct token0ToEarnedPath;
array of struct token1ToEarnedPath;

function token1ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token1ToEarnedPath.length
    return token1ToEarnedPath[arg1].field_0
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

function AUTOAddress() payable {
    return aUTOAddress
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
    return bool(uint8(stor0.field_160))
}

function earnedToAUTOPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToAUTOPath.length
    return earnedToAUTOPath[arg1]
}

function uniRouterAddress() payable {
    return address(uniRouterAddress)
}

function token0Address() payable {
    return token0Address
}

function isCAKEStaking() payable {
    return bool(uint8(stor0.field_168))
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

function farmContractAddress() payable {
    return address(farmContractAddress)
}

function token0ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token0ToEarnedPath.length
    return token0ToEarnedPath[arg1].field_0
}

function earnedToToken0Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken0Path.length
    return earnedToToken0Path[arg1]
}

function token1Address() payable {
    return token1Address
}

function isAutoComp() payable {
    return bool(uint8(stor0.field_176))
}

function earnedAddress() payable {
    return earnedAddress
}

function wantAddress() payable {
    return wantAddress
}

function pid() payable {
    return pid
}

function autoFarmAddress() payable {
    return address(autoFarmAddress)
}

function _fallback() payable {
    revert
}

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    govAddress = arg1
}

function setOnlyGov(bool arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    stor10 = Mask(96, 0, arg1)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setControllerFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 > 300:
        revert with 0, 'too high'
    controllerFee = arg1
}

function pause() payable {
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor0.field_160) = 1
    emit Paused(msg.sender);
}

function setbuyBackRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if buyBackRate > 800:
        revert with 0, 'too high'
    buyBackRate = arg1
}

function unpause() payable {
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if not uint8(stor0.field_160):
        revert with 0, 'Pausable: not paused'
    Mask(96, 0, stor0.field_160) = 0
    emit Unpaused(msg.sender);
}

function setEntranceFeeFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 <= 9950:
        revert with 0, '!safe - too low'
    entranceFeeFactor = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function inCaseTokensGetStuck(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if arg1 == earnedAddress:
        revert with 0, '!safe'
    if arg1 == wantAddress:
        revert with 0, '!safe'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2
        if not unknown_0xa9059cbb(?????), address(arg3) << 64:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function farm() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    wantLockedTotal += ext_call.return_data[0]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(farmContractAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(wantAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), Mask(224, 31, ext_call.return_data[0]) >> 31
    call wantAddress with:
       funct uint32(stor1)
         gas gas_remaining wei
        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), 2 * ext_call.return_data[0]
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor1):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    require ext_code.size(address(farmContractAddress))
    if not uint8(stor0.field_168):
        call address(farmContractAddress).0xe2bbb158 with:
             gas gas_remaining wei
            args pid, ext_call.return_data[0]
    else:
        call address(farmContractAddress).enterStaking(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= 0:
        revert with 0, '_wantAmt <= 0'
    if uint8(stor0.field_176):
        require ext_code.size(address(farmContractAddress))
        if not uint8(stor0.field_168):
            call address(farmContractAddress).0x441a3e70 with:
                 gas gas_remaining wei
                args pid, arg2
        else:
            call address(farmContractAddress).leaveStaking(uint256 rg1) with:
                 gas gas_remaining wei
                args arg2
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
            if not arg2:
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                if 0 / wantLockedTotal <= sharesTotal:
                    sharesTotal -= 0 / wantLockedTotal
                    wantLockedTotal -= arg2
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 32, arg2) >> 32
                    call wantAddress with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                    return (0 / wantLockedTotal)
            else:
                require arg2
                if arg2 * sharesTotal / arg2 != sharesTotal:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                if arg2 * sharesTotal / wantLockedTotal <= sharesTotal:
                    sharesTotal -= arg2 * sharesTotal / wantLockedTotal
                    wantLockedTotal -= arg2
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 32, arg2) >> 32
                    call wantAddress with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                    return (arg2 * sharesTotal / wantLockedTotal)
            sharesTotal = 0
            wantLockedTotal -= arg2
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 32, arg2) >> 32
            call wantAddress with:
               funct uint32(stor8)
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 224, mem[388 len 4]
        else:
            if not wantLockedTotal:
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                if 0 / wantLockedTotal <= sharesTotal:
                    sharesTotal -= 0 / wantLockedTotal
                    wantLockedTotal = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 0, stor12.field_32)
                    call wantAddress with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(480, 0, stor12.field_0), mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                    return (0 / wantLockedTotal)
            else:
                require wantLockedTotal
                if wantLockedTotal * sharesTotal / wantLockedTotal != sharesTotal:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                if wantLockedTotal * sharesTotal / wantLockedTotal <= sharesTotal:
                    sharesTotal -= wantLockedTotal * sharesTotal / wantLockedTotal
                    wantLockedTotal = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 0, stor12.field_32)
                    call wantAddress with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(480, 0, stor12.field_0), mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                    return (wantLockedTotal * sharesTotal / wantLockedTotal)
            sharesTotal = 0
            wantLockedTotal = 0
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 0, stor12.field_32)
            call wantAddress with:
               funct uint32(stor8)
                 gas gas_remaining wei
                args Mask(480, 0, stor12.field_0), mem[388 len 4]
    else:
        if wantLockedTotal >= ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                if 0 / wantLockedTotal <= sharesTotal:
                    sharesTotal -= 0 / wantLockedTotal
                    wantLockedTotal -= ext_call.return_data[0]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
                    call wantAddress with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                    return (0 / wantLockedTotal)
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * sharesTotal / ext_call.return_data[0] != sharesTotal:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                if ext_call.return_data[0] * sharesTotal / wantLockedTotal <= sharesTotal:
                    sharesTotal -= ext_call.return_data[0] * sharesTotal / wantLockedTotal
                    wantLockedTotal -= ext_call.return_data[0]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
                    call wantAddress with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                    return (ext_call.return_data[0] * sharesTotal / wantLockedTotal)
            sharesTotal = 0
            wantLockedTotal -= ext_call.return_data[0]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
            call wantAddress with:
               funct uint32(stor8)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
        else:
            if not wantLockedTotal:
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                if 0 / wantLockedTotal <= sharesTotal:
                    sharesTotal -= 0 / wantLockedTotal
                    wantLockedTotal = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 0, stor12.field_32)
                    call wantAddress with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(480, 0, stor12.field_0), mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                    return (0 / wantLockedTotal)
            else:
                require wantLockedTotal
                if wantLockedTotal * sharesTotal / wantLockedTotal != sharesTotal:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                if wantLockedTotal * sharesTotal / wantLockedTotal <= sharesTotal:
                    sharesTotal -= wantLockedTotal * sharesTotal / wantLockedTotal
                    wantLockedTotal = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 0, stor12.field_32)
                    call wantAddress with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(480, 0, stor12.field_0), mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                    return (wantLockedTotal * sharesTotal / wantLockedTotal)
            sharesTotal = 0
            wantLockedTotal = 0
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 0, stor12.field_32)
            call wantAddress with:
               funct uint32(stor8)
                 gas gas_remaining wei
                args Mask(480, 0, stor12.field_0), mem[388 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: division by zero'
    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[356]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 435 len 22]
    return sharesTotal
}

function convertDustToEarned() payable {
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    if not uint8(stor0.field_176):
        revert with 0, '!isAutoComp'
    if uint8(stor0.field_168):
        revert with 0, 'isCAKEStaking'
    require ext_code.size(token0Address)
    staticcall token0Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if token0Address == earnedAddress:
        require ext_code.size(token1Address)
        staticcall token1Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if token1Address != earnedAddress:
            if ext_call.return_data[0] > 0:
                require ext_code.size(token1Address)
                staticcall token1Address.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(uniRouterAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if ext_code.size(token1Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor7), uint32(stor7), Mask(224, 31, ext_call.return_data[0]) >> 31
                call token1Address with:
                   funct uint32(stor7)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor7), uint32(stor7), 2 * ext_call.return_data[0]
                    if not approve(address rg1, uint256 rg2), Mask(224, 0, stor7):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    if not token1ToEarnedPath.length:
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token1ToEarnedPath.length
                    else:
                        mem[456] = address(token1ToEarnedPath.field_0)
                        idx = 456
                        s = 0
                        while (32 * token1ToEarnedPath.length) + 456 > idx + 32:
                            mem[idx + 32] = token1ToEarnedPath[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token1ToEarnedPath.length, mem[456 len 32 * token1ToEarnedPath.length]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                    if not token1ToEarnedPath.length:
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token1ToEarnedPath.length
                    else:
                        mem[ceil32(return_data.size) + 457] = address(token1ToEarnedPath.field_0)
                        idx = ceil32(return_data.size) + 457
                        s = 0
                        while ceil32(return_data.size) + (32 * token1ToEarnedPath.length) + 457 > idx + 32:
                            mem[idx + 32] = token1ToEarnedPath[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token1ToEarnedPath.length, mem[ceil32(return_data.size) + 457 len 32 * token1ToEarnedPath.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if ext_call.return_data[0] <= 0:
            require ext_code.size(token1Address)
            staticcall token1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if token1Address != earnedAddress:
                if ext_call.return_data[0] > 0:
                    require ext_code.size(token1Address)
                    staticcall token1Address.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), address(uniRouterAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if ext_code.size(token1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor7), uint32(stor7), Mask(224, 31, ext_call.return_data[0]) >> 31
                    call token1Address with:
                       funct uint32(stor7)
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor7), uint32(stor7), 2 * ext_call.return_data[0]
                        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor7):
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if not token1ToEarnedPath.length:
                            require ext_code.size(address(uniRouterAddress))
                            call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token1ToEarnedPath.length
                        else:
                            mem[456] = address(token1ToEarnedPath.field_0)
                            idx = 456
                            s = 0
                            while (32 * token1ToEarnedPath.length) + 456 > idx + 32:
                                mem[idx + 32] = token1ToEarnedPath[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(address(uniRouterAddress))
                            call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token1ToEarnedPath.length, mem[456 len 32 * token1ToEarnedPath.length]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        if not token1ToEarnedPath.length:
                            require ext_code.size(address(uniRouterAddress))
                            call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token1ToEarnedPath.length
                        else:
                            mem[ceil32(return_data.size) + 457] = address(token1ToEarnedPath.field_0)
                            idx = ceil32(return_data.size) + 457
                            s = 0
                            while ceil32(return_data.size) + (32 * token1ToEarnedPath.length) + 457 > idx + 32:
                                mem[idx + 32] = token1ToEarnedPath[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(address(uniRouterAddress))
                            call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token1ToEarnedPath.length, mem[ceil32(return_data.size) + 457 len 32 * token1ToEarnedPath.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(token0Address)
            staticcall token0Address.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(uniRouterAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if ext_code.size(token0Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor7), uint32(stor7), Mask(224, 31, ext_call.return_data[0]) >> 31
            call token0Address with:
               funct uint32(stor7)
                 gas gas_remaining wei
                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor7), uint32(stor7), 2 * ext_call.return_data[0]
                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor7):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                if not token0ToEarnedPath.length:
                    require ext_code.size(address(uniRouterAddress))
                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token0ToEarnedPath.length
                else:
                    mem[456] = address(token0ToEarnedPath.field_0)
                    idx = 456
                    s = 0
                    while (32 * token0ToEarnedPath.length) + 456 > idx + 32:
                        mem[idx + 32] = token0ToEarnedPath[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(uniRouterAddress))
                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token0ToEarnedPath.length, mem[456 len 32 * token0ToEarnedPath.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(token1Address)
                staticcall token1Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if token1Address != earnedAddress:
                    if ext_call.return_data[0] > 0:
                        require ext_code.size(token1Address)
                        staticcall token1Address.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(uniRouterAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                        if ext_code.size(token1Address) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[424 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor7), uint32(stor7), Mask(224, 31, ext_call.return_data[0]) >> 31
                        call token1Address with:
                           funct token0ToEarnedPath.length.field_224
                             gas gas_remaining wei
                            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[488 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor7), uint32(stor7), 2 * ext_call.return_data[0]
                            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor7):
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                            if not token1ToEarnedPath.length:
                                require ext_code.size(address(uniRouterAddress))
                                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token1ToEarnedPath.length
                            else:
                                mem[620] = address(token1ToEarnedPath.field_0)
                                idx = 620
                                s = 0
                                while (32 * token1ToEarnedPath.length) + 620 > idx + 32:
                                    mem[idx + 32] = token1ToEarnedPath[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(address(uniRouterAddress))
                                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token1ToEarnedPath.length, mem[620 len 32 * token1ToEarnedPath.length]
                        else:
                            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[456]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 535 len 22]
                            if not token1ToEarnedPath.length:
                                require ext_code.size(address(uniRouterAddress))
                                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token1ToEarnedPath.length
                            else:
                                mem[ceil32(return_data.size) + 621] = address(token1ToEarnedPath.field_0)
                                idx = ceil32(return_data.size) + 621
                                s = 0
                                while ceil32(return_data.size) + (32 * token1ToEarnedPath.length) + 621 > idx + 32:
                                    mem[idx + 32] = token1ToEarnedPath[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(address(uniRouterAddress))
                                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token1ToEarnedPath.length, mem[ceil32(return_data.size) + 621 len 32 * token1ToEarnedPath.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                if not token0ToEarnedPath.length:
                    require ext_code.size(address(uniRouterAddress))
                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token0ToEarnedPath.length
                else:
                    mem[ceil32(return_data.size) + 457] = address(token0ToEarnedPath.field_0)
                    idx = ceil32(return_data.size) + 457
                    s = 0
                    while ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 457 > idx + 32:
                        mem[idx + 32] = token0ToEarnedPath[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(uniRouterAddress))
                    call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token0ToEarnedPath.length, mem[ceil32(return_data.size) + 457 len 32 * token0ToEarnedPath.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(token1Address)
                staticcall token1Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if token1Address != earnedAddress:
                    if ext_call.return_data[0] > 0:
                        require ext_code.size(token1Address)
                        staticcall token1Address.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), address(uniRouterAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 531 len 26]
                        if ext_code.size(token1Address) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor7), uint32(stor7), Mask(224, 31, ext_call.return_data[0]) >> 31
                        call token1Address with:
                           funct token0ToEarnedPath.length.field_224
                             gas gas_remaining wei
                            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 489 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor7), uint32(stor7), 2 * ext_call.return_data[0]
                            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor7):
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                            if not token1ToEarnedPath.length:
                                require ext_code.size(address(uniRouterAddress))
                                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token1ToEarnedPath.length
                            else:
                                mem[ceil32(return_data.size) + 621] = address(token1ToEarnedPath.field_0)
                                idx = ceil32(return_data.size) + 621
                                s = 0
                                while ceil32(return_data.size) + (32 * token1ToEarnedPath.length) + 621 > idx + 32:
                                    mem[idx + 32] = token1ToEarnedPath[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(address(uniRouterAddress))
                                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token1ToEarnedPath.length, mem[ceil32(return_data.size) + 621 len 32 * token1ToEarnedPath.length]
                        else:
                            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 457]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            if not token1ToEarnedPath.length:
                                require ext_code.size(address(uniRouterAddress))
                                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token1ToEarnedPath.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            else:
                                mem[(2 * ceil32(return_data.size)) + 622] = address(token1ToEarnedPath.field_0)
                                idx = (2 * ceil32(return_data.size)) + 622
                                s = 0
                                while (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) + 622 > idx + 32:
                                    mem[idx + 32] = token1ToEarnedPath[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(address(uniRouterAddress))
                                call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, token1ToEarnedPath.length, mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) + (32 * token1ToEarnedPath.length) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if ext_code.size(wantAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
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
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if wantLockedTotal <= 0:
            sharesTotal += arg2
            if not uint8(stor0.field_176):
                wantLockedTotal += arg2
            else:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(farmContractAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[456 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), Mask(224, 31, ext_call.return_data[0]) >> 31
                call wantAddress with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[520 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                else:
                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[488]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
                require ext_code.size(address(farmContractAddress))
                if not uint8(stor0.field_168):
                    call address(farmContractAddress).0xe2bbb158 with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0]
                else:
                    call address(farmContractAddress).enterStaking(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return arg2
        if not arg2:
            if wantLockedTotal <= 0:
                revert with 0, 'SafeMath: division by zero'
            require wantLockedTotal
            sharesTotal += 0 / wantLockedTotal / 10000
            if not uint8(stor0.field_176):
                wantLockedTotal += arg2
            else:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(farmContractAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[690 len 26]
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[584 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), Mask(224, 31, ext_call.return_data[0]) >> 31
                call wantAddress with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[648 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[694 len 22]
                else:
                    mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[616]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 695 len 22]
                require ext_code.size(address(farmContractAddress))
                if not uint8(stor0.field_168):
                    call address(farmContractAddress).0xe2bbb158 with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0]
                else:
                    call address(farmContractAddress).enterStaking(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return (0 / wantLockedTotal / 10000)
        require arg2
        if arg2 * sharesTotal / arg2 != sharesTotal:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
        if not arg2 * sharesTotal:
            if wantLockedTotal <= 0:
                revert with 0, 'SafeMath: division by zero'
            require wantLockedTotal
            sharesTotal += 0 / wantLockedTotal / 10000
            if not uint8(stor0.field_176):
                wantLockedTotal += arg2
            else:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(farmContractAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[690 len 26]
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[584 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), Mask(224, 31, ext_call.return_data[0]) >> 31
                call wantAddress with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[648 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[694 len 22]
                else:
                    mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[616]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 695 len 22]
                require ext_code.size(address(farmContractAddress))
                if not uint8(stor0.field_168):
                    call address(farmContractAddress).0xe2bbb158 with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0]
                else:
                    call address(farmContractAddress).enterStaking(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            return (0 / wantLockedTotal / 10000)
        require arg2 * sharesTotal
        if arg2 * sharesTotal * entranceFeeFactor / arg2 * sharesTotal != entranceFeeFactor:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
        if wantLockedTotal <= 0:
            revert with 0, 'SafeMath: division by zero'
        require wantLockedTotal
        sharesTotal += arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000
        if not uint8(stor0.field_176):
            wantLockedTotal += arg2
        else:
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            wantLockedTotal += ext_call.return_data[0]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(farmContractAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[690 len 26]
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[584 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), Mask(224, 31, ext_call.return_data[0]) >> 31
            call wantAddress with:
               funct uint32(stor1)
                 gas gas_remaining wei
                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[648 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[694 len 22]
            else:
                mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[616]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 695 len 22]
            require ext_code.size(address(farmContractAddress))
            if not uint8(stor0.field_168):
                call address(farmContractAddress).0xe2bbb158 with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0]
            else:
                call address(farmContractAddress).enterStaking(uint256 rg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return (arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000)
    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[324]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 403 len 22]
    if wantLockedTotal <= 0:
        sharesTotal += arg2
        if not uint8(stor0.field_176):
            wantLockedTotal += arg2
            return arg2
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        wantLockedTotal += ext_call.return_data[0]
        require ext_code.size(wantAddress)
        staticcall wantAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(farmContractAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 563 len 26]
        if ext_code.size(wantAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 457 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), Mask(224, 31, ext_call.return_data[0]) >> 31
        mem[ceil32(return_data.size) + 549 len 4] = 0
        call wantAddress with:
           funct uint32(stor1)
             gas gas_remaining wei
            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 521 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 567 len 22]
            require ext_code.size(address(farmContractAddress))
            if not uint8(stor0.field_168):
                call address(farmContractAddress).0xe2bbb158 with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0]
            else:
                call address(farmContractAddress).enterStaking(uint256 rg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            return arg2
        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 489]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        require ext_code.size(address(farmContractAddress))
        if not uint8(stor0.field_168):
            call address(farmContractAddress).0xe2bbb158 with:
                 gas gas_remaining wei
                args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            call address(farmContractAddress).enterStaking(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return arg2, mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if not arg2:
        if wantLockedTotal <= 0:
            revert with 0, 'SafeMath: division by zero'
        require wantLockedTotal
        sharesTotal += 0 / wantLockedTotal / 10000
        if not uint8(stor0.field_176):
            wantLockedTotal += arg2
            return (0 / wantLockedTotal / 10000)
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        wantLockedTotal += ext_call.return_data[0]
        require ext_code.size(wantAddress)
        staticcall wantAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(farmContractAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 691 len 26]
        if ext_code.size(wantAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 585 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), Mask(224, 31, ext_call.return_data[0]) >> 31
        mem[ceil32(return_data.size) + 677 len 4] = 0
        call wantAddress with:
           funct uint32(stor1)
             gas gas_remaining wei
            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 649 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 695 len 22]
            require ext_code.size(address(farmContractAddress))
            if not uint8(stor0.field_168):
                call address(farmContractAddress).0xe2bbb158 with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0]
            else:
                call address(farmContractAddress).enterStaking(uint256 rg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            return (0 / wantLockedTotal / 10000)
        mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 617]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        require ext_code.size(address(farmContractAddress))
        if not uint8(stor0.field_168):
            call address(farmContractAddress).0xe2bbb158 with:
                 gas gas_remaining wei
                args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            call address(farmContractAddress).enterStaking(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return 0 / wantLockedTotal / 10000, 
               mem[(2 * ceil32(return_data.size)) + 618 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    require arg2
    if arg2 * sharesTotal / arg2 != sharesTotal:
        revert with 0, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[ceil32(return_data.size) + 394 len 31]
    if not arg2 * sharesTotal:
        if wantLockedTotal <= 0:
            revert with 0, 'SafeMath: division by zero'
        require wantLockedTotal
        sharesTotal += 0 / wantLockedTotal / 10000
        if not uint8(stor0.field_176):
            wantLockedTotal += arg2
            return (0 / wantLockedTotal / 10000)
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        wantLockedTotal += ext_call.return_data[0]
        require ext_code.size(wantAddress)
        staticcall wantAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(farmContractAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 691 len 26]
        if ext_code.size(wantAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 585 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), Mask(224, 31, ext_call.return_data[0]) >> 31
        mem[ceil32(return_data.size) + 677 len 4] = 0
        call wantAddress with:
           funct uint32(stor1)
             gas gas_remaining wei
            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 649 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 695 len 22]
            require ext_code.size(address(farmContractAddress))
            if not uint8(stor0.field_168):
                call address(farmContractAddress).0xe2bbb158 with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0]
            else:
                call address(farmContractAddress).enterStaking(uint256 rg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            return (0 / wantLockedTotal / 10000)
        mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 617]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        require ext_code.size(address(farmContractAddress))
        if not uint8(stor0.field_168):
            call address(farmContractAddress).0xe2bbb158 with:
                 gas gas_remaining wei
                args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            call address(farmContractAddress).enterStaking(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return 0 / wantLockedTotal / 10000, 
               mem[(2 * ceil32(return_data.size)) + 618 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    require arg2 * sharesTotal
    if arg2 * sharesTotal * entranceFeeFactor / arg2 * sharesTotal != entranceFeeFactor:
        revert with 0, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[ceil32(return_data.size) + 394 len 31]
    if wantLockedTotal <= 0:
        revert with 0, 'SafeMath: division by zero'
    require wantLockedTotal
    sharesTotal += arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000
    if not uint8(stor0.field_176):
        wantLockedTotal += arg2
        return (arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000)
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    wantLockedTotal += ext_call.return_data[0]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(farmContractAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[ceil32(return_data.size) + 691 len 26]
    if ext_code.size(wantAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 585 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), Mask(224, 31, ext_call.return_data[0]) >> 31
    mem[ceil32(return_data.size) + 677 len 4] = 0
    call wantAddress with:
       funct uint32(stor1)
         gas gas_remaining wei
        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 649 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 695 len 22]
        require ext_code.size(address(farmContractAddress))
        if not uint8(stor0.field_168):
            call address(farmContractAddress).0xe2bbb158 with:
                 gas gas_remaining wei
                args pid, ext_call.return_data[0]
        else:
            call address(farmContractAddress).enterStaking(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return (arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000)
    mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 617]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    require ext_code.size(address(farmContractAddress))
    if not uint8(stor0.field_168):
        call address(farmContractAddress).0xe2bbb158 with:
             gas gas_remaining wei
            args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        call address(farmContractAddress).enterStaking(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000, 
           mem[(2 * ceil32(return_data.size)) + 618 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}



}
